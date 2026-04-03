package com.google.firebase.database.core;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.InternalHelpers;
import com.google.firebase.database.Transaction;
import com.google.firebase.database.ValueEventListener;
import com.google.firebase.database.connection.HostInfo;
import com.google.firebase.database.connection.ListenHashProvider;
import com.google.firebase.database.connection.PersistentConnection;
import com.google.firebase.database.connection.RangeMerge;
import com.google.firebase.database.connection.RequestResultCallback;
import com.google.firebase.database.core.AuthTokenProvider;
import com.google.firebase.database.core.SparseSnapshotTree;
import com.google.firebase.database.core.SyncTree;
import com.google.firebase.database.core.persistence.NoopPersistenceManager;
import com.google.firebase.database.core.persistence.PersistenceManager;
import com.google.firebase.database.core.utilities.DefaultClock;
import com.google.firebase.database.core.utilities.DefaultRunLoop;
import com.google.firebase.database.core.utilities.OffsetClock;
import com.google.firebase.database.core.utilities.Tree;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.core.view.Event;
import com.google.firebase.database.core.view.EventRaiser;
import com.google.firebase.database.core.view.QuerySpec;
import com.google.firebase.database.logging.LogWrapper;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.EmptyNode;
import com.google.firebase.database.snapshot.IndexedNode;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.NodeUtilities;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class Repo implements PersistentConnection.Delegate {
    static final boolean $assertionsDisabled = false;
    private static final int TRANSACTION_MAX_RETRIES = 25;
    private PersistentConnection connection;
    private final Context ctx;
    private final LogWrapper dataLogger;
    private FirebaseDatabase database;
    private final EventRaiser eventRaiser;
    private SnapshotHolder infoData;
    private SyncTree infoSyncTree;
    private SparseSnapshotTree onDisconnect;
    private final LogWrapper operationLogger;
    private final RepoInfo repoInfo;
    private SyncTree serverSyncTree;
    private final LogWrapper transactionLogger;
    private Tree<List<TransactionData>> transactionQueueTree;
    private static final String INTERRUPT_REASON = NPStringFog.decode(new byte[]{20, 0, 67, 13, 61, 91, 8, 17, 86, 16, 16, 71, 22, 17}, "fe3bb2", true);
    private static final String TRANSACTION_OVERRIDE_BY_SET = NPStringFog.decode(new byte[]{88, 20, 3, 67, 64, 80, 83, 6, 3, 95, 112, 64, 100, 7, 18}, "7bf129", -1056691156L);
    private static final String TRANSACTION_TOO_MANY_RETRIES = NPStringFog.decode(new byte[]{9, 81, 64, 66, 84, 77, 22, 89, 93, 67}, "d08019", 2.0979726E9f);
    private final OffsetClock serverClock = new OffsetClock(new DefaultClock(), 0);
    private boolean hijackHash = false;
    public long dataUpdateCount = 0;
    private long nextWriteId = 1;
    private boolean loggedTransactionPersistenceWarning = false;
    private long transactionOrder = 0;

    /* JADX INFO: renamed from: com.google.firebase.database.core.Repo$3, reason: invalid class name */
    class AnonymousClass3 implements SyncTree.ListenProvider {
        final Repo this$0;

        AnonymousClass3(Repo repo) {
            this.this$0 = repo;
        }

        @Override // com.google.firebase.database.core.SyncTree.ListenProvider
        public void startListening(QuerySpec querySpec, Tag tag, ListenHashProvider listenHashProvider, SyncTree.CompletionListener completionListener) {
            this.this$0.scheduleNow(new Runnable(this, querySpec, completionListener) { // from class: com.google.firebase.database.core.Repo.3.1
                final AnonymousClass3 this$1;
                final SyncTree.CompletionListener val$onComplete;
                final QuerySpec val$query;

                {
                    this.this$1 = this;
                    this.val$query = querySpec;
                    this.val$onComplete = completionListener;
                }

                @Override // java.lang.Runnable
                public void run() {
                    Node node = this.this$1.this$0.infoData.getNode(this.val$query.getPath());
                    if (node.isEmpty()) {
                        return;
                    }
                    this.this$1.this$0.postEvents(this.this$1.this$0.infoSyncTree.applyServerOverwrite(this.val$query.getPath(), node));
                    this.val$onComplete.onListenComplete(null);
                }
            });
        }

        @Override // com.google.firebase.database.core.SyncTree.ListenProvider
        public void stopListening(QuerySpec querySpec, Tag tag) {
        }
    }

    /* JADX INFO: renamed from: com.google.firebase.database.core.Repo$4, reason: invalid class name */
    class AnonymousClass4 implements SyncTree.ListenProvider {
        final Repo this$0;

        AnonymousClass4(Repo repo) {
            this.this$0 = repo;
        }

        @Override // com.google.firebase.database.core.SyncTree.ListenProvider
        public void startListening(QuerySpec querySpec, Tag tag, ListenHashProvider listenHashProvider, SyncTree.CompletionListener completionListener) {
            this.this$0.connection.listen(querySpec.getPath().asList(), querySpec.getParams().getWireProtocolParams(), listenHashProvider, tag != null ? Long.valueOf(tag.getTagNumber()) : null, new RequestResultCallback(this, completionListener) { // from class: com.google.firebase.database.core.Repo.4.1
                final AnonymousClass4 this$1;
                final SyncTree.CompletionListener val$onListenComplete;

                {
                    this.this$1 = this;
                    this.val$onListenComplete = completionListener;
                }

                @Override // com.google.firebase.database.connection.RequestResultCallback
                public void onRequestResult(String str, String str2) {
                    this.this$1.this$0.postEvents(this.val$onListenComplete.onListenComplete(Repo.fromErrorCode(str, str2)));
                }
            });
        }

        @Override // com.google.firebase.database.core.SyncTree.ListenProvider
        public void stopListening(QuerySpec querySpec, Tag tag) {
            this.this$0.connection.unlisten(querySpec.getPath().asList(), querySpec.getParams().getWireProtocolParams());
        }
    }

    private static class TransactionData implements Comparable<TransactionData> {
        private DatabaseError abortReason;
        private boolean applyLocally;
        private Node currentInputSnapshot;
        private Node currentOutputSnapshotRaw;
        private Node currentOutputSnapshotResolved;
        private long currentWriteId;
        private Transaction.Handler handler;
        private long order;
        private ValueEventListener outstandingListener;
        private Path path;
        private int retryCount;
        private TransactionStatus status;

        private TransactionData(Path path, Transaction.Handler handler, ValueEventListener valueEventListener, TransactionStatus transactionStatus, boolean z, long j) {
            this.path = path;
            this.handler = handler;
            this.outstandingListener = valueEventListener;
            this.status = transactionStatus;
            this.retryCount = 0;
            this.applyLocally = z;
            this.order = j;
            this.abortReason = null;
            this.currentInputSnapshot = null;
            this.currentOutputSnapshotRaw = null;
            this.currentOutputSnapshotResolved = null;
        }

        static /* synthetic */ int access$2008(TransactionData transactionData) {
            int i = transactionData.retryCount;
            transactionData.retryCount = i + 1;
            return i;
        }

        @Override // java.lang.Comparable
        public int compareTo(TransactionData transactionData) {
            long j = this.order;
            long j2 = transactionData.order;
            if (j < j2) {
                return -1;
            }
            return j == j2 ? 0 : 1;
        }
    }

    private enum TransactionStatus {
        INITIALIZING,
        RUN,
        SENT,
        COMPLETED,
        SENT_NEEDS_ABORT,
        NEEDS_ABORT
    }

    Repo(RepoInfo repoInfo, Context context, FirebaseDatabase firebaseDatabase) {
        this.repoInfo = repoInfo;
        this.ctx = context;
        this.database = firebaseDatabase;
        this.operationLogger = context.getLogger(NPStringFog.decode(new byte[]{52, 4, 68, 12, 44, 71, 3, 19, 85, 23, 10, 88, 8}, "fa4cc7", false));
        this.transactionLogger = context.getLogger(NPStringFog.decode(new byte[]{100, 71, 82, 95, 23, 7, 83, 65, 90, 94, 10}, "0531df", -693093035L));
        this.dataLogger = context.getLogger(NPStringFog.decode(new byte[]{33, 87, 77, 84, 127, 70, 0, 68, 88, 65, 89, 89, 11}, "e69506", -685201630L));
        this.eventRaiser = new EventRaiser(context);
        scheduleNow(new Runnable(this) { // from class: com.google.firebase.database.core.Repo.1
            final Repo this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.deferredInitialization();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Path abortTransactions(Path path, int i) {
        Path path2 = getAncestorTransactionNode(path).getPath();
        if (this.transactionLogger.logsDebug()) {
            this.operationLogger.debug(NPStringFog.decode(new byte[]{119, 7, 91, 23, 67, 88, 88, 2, 20, 17, 69, 80, 88, 22, 85, 6, 67, 88, 89, 11, 71, 69, 81, 94, 68, 69, 68, 4, 67, 89, 12, 69}, "6e4e71", 1144228119L) + path + NPStringFog.decode(new byte[]{76, 65, 117, 0, 4, 93, 1, 21, 81, 2, 88, 24}, "ba4fb8", false, false) + path2, new Object[0]);
        }
        Tree<List<TransactionData>> treeSubTree = this.transactionQueueTree.subTree(path);
        treeSubTree.forEachAncestor(new Tree.TreeFilter<List<TransactionData>>(this, i) { // from class: com.google.firebase.database.core.Repo.21
            final Repo this$0;
            final int val$reason;

            {
                this.this$0 = this;
                this.val$reason = i;
            }

            @Override // com.google.firebase.database.core.utilities.Tree.TreeFilter
            public boolean filterTreeNode(Tree<List<TransactionData>> tree) {
                this.this$0.abortTransactionsAtNode(tree, this.val$reason);
                return false;
            }
        });
        abortTransactionsAtNode(treeSubTree, i);
        treeSubTree.forEachDescendant(new Tree.TreeVisitor<List<TransactionData>>(this, i) { // from class: com.google.firebase.database.core.Repo.22
            final Repo this$0;
            final int val$reason;

            {
                this.this$0 = this;
                this.val$reason = i;
            }

            @Override // com.google.firebase.database.core.utilities.Tree.TreeVisitor
            public void visitTree(Tree<List<TransactionData>> tree) {
                this.this$0.abortTransactionsAtNode(tree, this.val$reason);
            }
        });
        return path2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abortTransactionsAtNode(Tree<List<TransactionData>> tree, int i) {
        DatabaseError databaseErrorFromCode;
        int i2;
        List<TransactionData> value = tree.getValue();
        ArrayList arrayList = new ArrayList();
        if (value != null) {
            ArrayList arrayList2 = new ArrayList();
            if (i == -9) {
                databaseErrorFromCode = DatabaseError.fromStatus(TRANSACTION_OVERRIDE_BY_SET);
            } else {
                Utilities.hardAssert(i == -25, NPStringFog.decode(new byte[]{51, 95, 9, 10, 12, 17, 8, 17, 22, 22, 2, 8, 21, 80, 1, 16, 10, 9, 8, 17, 3, 6, 12, 20, 18, 17, 16, 1, 2, 21, 9, 95, 88, 68}, "f1bdcf", true, false) + i);
                databaseErrorFromCode = DatabaseError.fromCode(-25);
            }
            int i3 = -1;
            int i4 = 0;
            while (true) {
                int i5 = i4;
                i2 = i3;
                if (i5 >= value.size()) {
                    break;
                }
                TransactionData transactionData = value.get(i5);
                if (transactionData.status == TransactionStatus.SENT_NEEDS_ABORT) {
                    i3 = i2;
                } else if (transactionData.status == TransactionStatus.SENT) {
                    transactionData.status = TransactionStatus.SENT_NEEDS_ABORT;
                    transactionData.abortReason = databaseErrorFromCode;
                    i3 = i5;
                } else {
                    removeEventCallback(new ValueEventRegistration(this, transactionData.outstandingListener, QuerySpec.defaultQueryAtPath(transactionData.path)));
                    if (i == -9) {
                        arrayList.addAll(this.serverSyncTree.ackUserWrite(transactionData.currentWriteId, true, false, this.serverClock));
                    } else {
                        Utilities.hardAssert(i == -25, NPStringFog.decode(new byte[]{52, 13, 13, 11, 91, 17, 15, 67, 18, 23, 85, 8, 18, 2, 5, 17, 93, 9, 15, 67, 7, 7, 91, 20, 21, 67, 20, 0, 85, 21, 14, 13, 92, 69}, "acfe4f", 2137138667L) + i);
                    }
                    arrayList2.add(new Runnable(this, transactionData, databaseErrorFromCode) { // from class: com.google.firebase.database.core.Repo.23
                        final Repo this$0;
                        final DatabaseError val$abortError;
                        final TransactionData val$transaction;

                        {
                            this.this$0 = this;
                            this.val$transaction = transactionData;
                            this.val$abortError = databaseErrorFromCode;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            this.val$transaction.handler.onComplete(this.val$abortError, false, null);
                        }
                    });
                    i3 = i2;
                }
                i4 = i5 + 1;
            }
            if (i2 == -1) {
                tree.setValue(null);
            } else {
                tree.setValue(value.subList(0, i2 + 1));
            }
            postEvents(arrayList);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                postEvent((Runnable) it.next());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ackWriteAndRerunTransactions(long j, Path path, DatabaseError databaseError) {
        if (databaseError == null || databaseError.getCode() != -25) {
            List<? extends Event> listAckUserWrite = this.serverSyncTree.ackUserWrite(j, !(databaseError == null), true, this.serverClock);
            if (listAckUserWrite.size() > 0) {
                rerunTransactions(path);
            }
            postEvents(listAckUserWrite);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aggregateTransactionQueues(List<TransactionData> list, Tree<List<TransactionData>> tree) {
        List<TransactionData> value = tree.getValue();
        if (value != null) {
            list.addAll(value);
        }
        tree.forEachChild(new Tree.TreeVisitor<List<TransactionData>>(this, list) { // from class: com.google.firebase.database.core.Repo.20
            final Repo this$0;
            final List val$queue;

            {
                this.this$0 = this;
                this.val$queue = list;
            }

            @Override // com.google.firebase.database.core.utilities.Tree.TreeVisitor
            public void visitTree(Tree<List<TransactionData>> tree2) {
                this.this$0.aggregateTransactionQueues(this.val$queue, tree2);
            }
        });
    }

    private List<TransactionData> buildTransactionQueue(Tree<List<TransactionData>> tree) {
        ArrayList arrayList = new ArrayList();
        aggregateTransactionQueues(arrayList, tree);
        Collections.sort(arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deferredInitialization() {
        this.connection = this.ctx.newPersistentConnection(new HostInfo(this.repoInfo.host, this.repoInfo.namespace, this.repoInfo.secure), this);
        this.ctx.getAuthTokenProvider().addTokenChangeListener(((DefaultRunLoop) this.ctx.getRunLoop()).getExecutorService(), new AuthTokenProvider.TokenChangeListener(this) { // from class: com.google.firebase.database.core.Repo.2
            final Repo this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.firebase.database.core.AuthTokenProvider.TokenChangeListener
            public void onTokenChange() {
                this.this$0.operationLogger.debug(NPStringFog.decode(new byte[]{39, 65, 68, 11, 68, 17, 9, 95, 85, 13, 68, 6, 14, 85, 94, 4, 1, 1, 74, 20, 68, 17, 13, 2, 1, 81, 66, 10, 10, 2, 70, 85, 69, 23, 12, 69, 18, 91, 91, 6, 10, 69, 20, 81, 86, 17, 1, 22, 14}, "f40cde", true), new Object[0]);
                this.this$0.connection.refreshAuthToken();
            }

            @Override // com.google.firebase.database.core.AuthTokenProvider.TokenChangeListener
            public void onTokenChange(String str) {
                this.this$0.operationLogger.debug(NPStringFog.decode(new byte[]{120, 20, 21, 13, 66, 66, 86, 10, 4, 11, 66, 85, 81, 0, 15, 2, 7, 82, 21, 65, 21, 23, 11, 81, 94, 4, 19, 12, 12, 81, 25, 0, 20, 17, 10, 22, 77, 14, 10, 0, 12, 22, 75, 4, 7, 23, 7, 69, 81}, "9aaeb6", 1369247342L), new Object[0]);
                this.this$0.connection.refreshAuthToken(str);
            }
        });
        this.connection.initialize();
        PersistenceManager persistenceManager = this.ctx.getPersistenceManager(this.repoInfo.host);
        this.infoData = new SnapshotHolder();
        this.onDisconnect = new SparseSnapshotTree();
        this.transactionQueueTree = new Tree<>();
        this.infoSyncTree = new SyncTree(this.ctx, new NoopPersistenceManager(), new AnonymousClass3(this));
        this.serverSyncTree = new SyncTree(this.ctx, persistenceManager, new AnonymousClass4(this));
        restoreWrites(persistenceManager);
        updateInfo(Constants.DOT_INFO_AUTHENTICATED, false);
        updateInfo(Constants.DOT_INFO_CONNECTED, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static DatabaseError fromErrorCode(String str, String str2) {
        if (str != null) {
            return DatabaseError.fromStatus(str, str2);
        }
        return null;
    }

    private Tree<List<TransactionData>> getAncestorTransactionNode(Path path) {
        Tree<List<TransactionData>> treeSubTree = this.transactionQueueTree;
        while (!path.isEmpty() && treeSubTree.getValue() == null) {
            treeSubTree = treeSubTree.subTree(new Path(path.getFront()));
            path = path.popFront();
        }
        return treeSubTree;
    }

    private Node getLatestState(Path path) {
        return getLatestState(path, new ArrayList());
    }

    private Node getLatestState(Path path, List<Long> list) {
        Node nodeCalcCompleteEventCache = this.serverSyncTree.calcCompleteEventCache(path, list);
        return nodeCalcCompleteEventCache == null ? EmptyNode.Empty() : nodeCalcCompleteEventCache;
    }

    private long getNextWriteId() {
        long j = this.nextWriteId;
        this.nextWriteId = 1 + j;
        return j;
    }

    private long nextTransactionOrder() {
        long j = this.transactionOrder;
        this.transactionOrder = 1 + j;
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postEvents(List<? extends Event> list) {
        if (list.isEmpty()) {
            return;
        }
        this.eventRaiser.raiseEvents(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pruneCompletedTransactions(Tree<List<TransactionData>> tree) {
        List<TransactionData> value = tree.getValue();
        if (value != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= value.size()) {
                    break;
                }
                if (value.get(i2).status == TransactionStatus.COMPLETED) {
                    value.remove(i2);
                    i = i2;
                } else {
                    i = i2 + 1;
                }
            }
            if (value.size() > 0) {
                tree.setValue(value);
            } else {
                tree.setValue(null);
            }
        }
        tree.forEachChild(new Tree.TreeVisitor<List<TransactionData>>(this) { // from class: com.google.firebase.database.core.Repo.17
            final Repo this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.firebase.database.core.utilities.Tree.TreeVisitor
            public void visitTree(Tree<List<TransactionData>> tree2) {
                this.this$0.pruneCompletedTransactions(tree2);
            }
        });
    }

    private void rerunTransactionQueue(List<TransactionData> list, Path path) {
        boolean z;
        DatabaseError databaseErrorFromStatus;
        Transaction.Result resultAbort;
        if (list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        List<Long> arrayList2 = new ArrayList<>();
        Iterator<TransactionData> it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(Long.valueOf(it.next().currentWriteId));
        }
        for (TransactionData transactionData : list) {
            Path.getRelative(path, transactionData.path);
            ArrayList arrayList3 = new ArrayList();
            if (transactionData.status == TransactionStatus.NEEDS_ABORT) {
                z = true;
                databaseErrorFromStatus = transactionData.abortReason;
                if (databaseErrorFromStatus.getCode() != -25) {
                    arrayList3.addAll(this.serverSyncTree.ackUserWrite(transactionData.currentWriteId, true, false, this.serverClock));
                }
            } else if (transactionData.status != TransactionStatus.RUN) {
                z = false;
                databaseErrorFromStatus = null;
            } else if (transactionData.retryCount >= 25) {
                z = true;
                databaseErrorFromStatus = DatabaseError.fromStatus(TRANSACTION_TOO_MANY_RETRIES);
                arrayList3.addAll(this.serverSyncTree.ackUserWrite(transactionData.currentWriteId, true, false, this.serverClock));
            } else {
                Node latestState = getLatestState(transactionData.path, arrayList2);
                transactionData.currentInputSnapshot = latestState;
                try {
                    resultAbort = transactionData.handler.doTransaction(InternalHelpers.createMutableData(latestState));
                    databaseErrorFromStatus = null;
                } catch (Throwable th) {
                    this.operationLogger.error(NPStringFog.decode(new byte[]{32, 83, 16, 80, 11, 66, 67, 102, 13, 69, 12, 65, 2, 80, 9, 82, 77}, "c2e7c6", -1.264607E9f), th);
                    DatabaseError databaseErrorFromException = DatabaseError.fromException(th);
                    resultAbort = Transaction.abort();
                    databaseErrorFromStatus = databaseErrorFromException;
                }
                if (resultAbort.isSuccess()) {
                    Long lValueOf = Long.valueOf(transactionData.currentWriteId);
                    Map<String, Object> mapGenerateServerValues = ServerValues.generateServerValues(this.serverClock);
                    Node node = resultAbort.getNode();
                    Node nodeResolveDeferredValueSnapshot = ServerValues.resolveDeferredValueSnapshot(node, latestState, mapGenerateServerValues);
                    transactionData.currentOutputSnapshotRaw = node;
                    transactionData.currentOutputSnapshotResolved = nodeResolveDeferredValueSnapshot;
                    transactionData.currentWriteId = getNextWriteId();
                    arrayList2.remove(lValueOf);
                    arrayList3.addAll(this.serverSyncTree.applyUserOverwrite(transactionData.path, node, nodeResolveDeferredValueSnapshot, transactionData.currentWriteId, transactionData.applyLocally, false));
                    arrayList3.addAll(this.serverSyncTree.ackUserWrite(lValueOf.longValue(), true, false, this.serverClock));
                    z = false;
                    databaseErrorFromStatus = null;
                } else {
                    z = true;
                    arrayList3.addAll(this.serverSyncTree.ackUserWrite(transactionData.currentWriteId, true, false, this.serverClock));
                }
            }
            postEvents(arrayList3);
            if (z) {
                transactionData.status = TransactionStatus.COMPLETED;
                DataSnapshot dataSnapshotCreateDataSnapshot = InternalHelpers.createDataSnapshot(InternalHelpers.createReference(this, transactionData.path), IndexedNode.from(transactionData.currentInputSnapshot));
                scheduleNow(new Runnable(this, transactionData) { // from class: com.google.firebase.database.core.Repo.18
                    final Repo this$0;
                    final TransactionData val$transaction;

                    {
                        this.this$0 = this;
                        this.val$transaction = transactionData;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.this$0.removeEventCallback(new ValueEventRegistration(this.this$0, this.val$transaction.outstandingListener, QuerySpec.defaultQueryAtPath(this.val$transaction.path)));
                    }
                });
                arrayList.add(new Runnable(this, transactionData, databaseErrorFromStatus, dataSnapshotCreateDataSnapshot) { // from class: com.google.firebase.database.core.Repo.19
                    final Repo this$0;
                    final DatabaseError val$callbackError;
                    final DataSnapshot val$snapshot;
                    final TransactionData val$transaction;

                    {
                        this.this$0 = this;
                        this.val$transaction = transactionData;
                        this.val$callbackError = databaseErrorFromStatus;
                        this.val$snapshot = dataSnapshotCreateDataSnapshot;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.val$transaction.handler.onComplete(this.val$callbackError, false, this.val$snapshot);
                    }
                });
            }
        }
        pruneCompletedTransactions(this.transactionQueueTree);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= arrayList.size()) {
                sendAllReadyTransactions();
                return;
            } else {
                postEvent((Runnable) arrayList.get(i2));
                i = i2 + 1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Path rerunTransactions(Path path) {
        Tree<List<TransactionData>> ancestorTransactionNode = getAncestorTransactionNode(path);
        Path path2 = ancestorTransactionNode.getPath();
        rerunTransactionQueue(buildTransactionQueue(ancestorTransactionNode), path2);
        return path2;
    }

    private void restoreWrites(PersistenceManager persistenceManager) {
        List<UserWriteRecord> listLoadUserWrites = persistenceManager.loadUserWrites();
        Map<String, Object> mapGenerateServerValues = ServerValues.generateServerValues(this.serverClock);
        long j = Long.MIN_VALUE;
        for (UserWriteRecord userWriteRecord : listLoadUserWrites) {
            RequestResultCallback requestResultCallback = new RequestResultCallback(this, userWriteRecord) { // from class: com.google.firebase.database.core.Repo.5
                final Repo this$0;
                final UserWriteRecord val$write;

                {
                    this.this$0 = this;
                    this.val$write = userWriteRecord;
                }

                @Override // com.google.firebase.database.connection.RequestResultCallback
                public void onRequestResult(String str, String str2) {
                    DatabaseError databaseErrorFromErrorCode = Repo.fromErrorCode(str, str2);
                    this.this$0.warnIfWriteFailed(NPStringFog.decode(new byte[]{96, 86, 66, 70, 95, 18, 68, 86, 84, 21, 65, 19, 89, 71, 85}, "03056a", 1.530479813E9d), this.val$write.getPath(), databaseErrorFromErrorCode);
                    this.this$0.ackWriteAndRerunTransactions(this.val$write.getWriteId(), this.val$write.getPath(), databaseErrorFromErrorCode);
                }
            };
            if (j >= userWriteRecord.getWriteId()) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{102, 16, 11, 71, 83, 25, 88, 6, 17, 19, 65, 92, 67, 7, 66, 93, 89, 77, 17, 11, 12, 19, 89, 75, 85, 7, 16, 29}, "1bb369", 1.004787355E9d));
            }
            long writeId = userWriteRecord.getWriteId();
            this.nextWriteId = userWriteRecord.getWriteId() + 1;
            if (userWriteRecord.isOverwrite()) {
                if (this.operationLogger.logsDebug()) {
                    this.operationLogger.debug(NPStringFog.decode(new byte[]{96, 93, 17, 23, 90, 16, 91, 86, 5, 67, 90, 20, 87, 74, 21, 17, 92, 22, 87, 24, 21, 10, 65, 10, 18, 81, 6, 67}, "28bc5b", -1.5971776E8f) + userWriteRecord.getWriteId(), new Object[0]);
                }
                this.connection.put(userWriteRecord.getPath().asList(), userWriteRecord.getOverwrite().getValue(true), requestResultCallback);
                this.serverSyncTree.applyUserOverwrite(userWriteRecord.getPath(), userWriteRecord.getOverwrite(), ServerValues.resolveDeferredValueSnapshot(userWriteRecord.getOverwrite(), this.serverSyncTree, userWriteRecord.getPath(), mapGenerateServerValues), userWriteRecord.getWriteId(), true, false);
            } else {
                if (this.operationLogger.logsDebug()) {
                    this.operationLogger.debug(NPStringFog.decode(new byte[]{103, 87, 16, 17, 90, 20, 92, 92, 4, 69, 88, 3, 71, 85, 6, 69, 66, 15, 65, 90, 67, 12, 81, 70}, "52ce5f", true) + userWriteRecord.getWriteId(), new Object[0]);
                }
                this.connection.merge(userWriteRecord.getPath().asList(), userWriteRecord.getMerge().getValue(true), requestResultCallback);
                this.serverSyncTree.applyUserMerge(userWriteRecord.getPath(), userWriteRecord.getMerge(), ServerValues.resolveDeferredValueMerge(userWriteRecord.getMerge(), this.serverSyncTree, userWriteRecord.getPath(), mapGenerateServerValues), userWriteRecord.getWriteId(), false);
            }
            j = writeId;
        }
    }

    private void runOnDisconnectEvents() {
        Map<String, Object> mapGenerateServerValues = ServerValues.generateServerValues(this.serverClock);
        ArrayList arrayList = new ArrayList();
        this.onDisconnect.forEachTree(Path.getEmptyPath(), new SparseSnapshotTree.SparseSnapshotTreeVisitor(this, mapGenerateServerValues, arrayList) { // from class: com.google.firebase.database.core.Repo.12
            final Repo this$0;
            final List val$events;
            final Map val$serverValues;

            {
                this.this$0 = this;
                this.val$serverValues = mapGenerateServerValues;
                this.val$events = arrayList;
            }

            @Override // com.google.firebase.database.core.SparseSnapshotTree.SparseSnapshotTreeVisitor
            public void visitTree(Path path, Node node) {
                this.val$events.addAll(this.this$0.serverSyncTree.applyServerOverwrite(path, ServerValues.resolveDeferredValueSnapshot(node, this.this$0.serverSyncTree.calcCompleteEventCache(path, new ArrayList()), (Map<String, Object>) this.val$serverValues)));
                this.this$0.rerunTransactions(this.this$0.abortTransactions(path, -9));
            }
        });
        this.onDisconnect = new SparseSnapshotTree();
        postEvents(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendAllReadyTransactions() {
        Tree<List<TransactionData>> tree = this.transactionQueueTree;
        pruneCompletedTransactions(tree);
        sendReadyTransactions(tree);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendReadyTransactions(Tree<List<TransactionData>> tree) {
        Boolean bool;
        if (tree.getValue() == null) {
            if (tree.hasChildren()) {
                tree.forEachChild(new Tree.TreeVisitor<List<TransactionData>>(this) { // from class: com.google.firebase.database.core.Repo.15
                    final Repo this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // com.google.firebase.database.core.utilities.Tree.TreeVisitor
                    public void visitTree(Tree<List<TransactionData>> tree2) {
                        this.this$0.sendReadyTransactions(tree2);
                    }
                });
                return;
            }
            return;
        }
        List<TransactionData> listBuildTransactionQueue = buildTransactionQueue(tree);
        Iterator<TransactionData> it = listBuildTransactionQueue.iterator();
        while (true) {
            if (!it.hasNext()) {
                bool = true;
                break;
            } else if (it.next().status != TransactionStatus.RUN) {
                bool = false;
                break;
            }
        }
        if (bool.booleanValue()) {
            sendTransactionQueue(listBuildTransactionQueue, tree.getPath());
        }
    }

    private void sendTransactionQueue(List<TransactionData> list, Path path) {
        ArrayList arrayList = new ArrayList();
        Iterator<TransactionData> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Long.valueOf(it.next().currentWriteId));
        }
        Node latestState = getLatestState(path, arrayList);
        String hash = !this.hijackHash ? latestState.getHash() : NPStringFog.decode(new byte[]{3, 85, 87, 95, 89, 74, 9}, "a43789", false);
        for (TransactionData transactionData : list) {
            transactionData.status = TransactionStatus.SENT;
            TransactionData.access$2008(transactionData);
            latestState = latestState.updateChild(Path.getRelative(path, transactionData.path), transactionData.currentOutputSnapshotRaw);
        }
        this.connection.compareAndPut(path.asList(), latestState.getValue(true), hash, new RequestResultCallback(this, path, list, this) { // from class: com.google.firebase.database.core.Repo.16
            final Repo this$0;
            final Path val$path;
            final List val$queue;
            final Repo val$repo;

            {
                this.this$0 = this;
                this.val$path = path;
                this.val$queue = list;
                this.val$repo = this;
            }

            @Override // com.google.firebase.database.connection.RequestResultCallback
            public void onRequestResult(String str, String str2) {
                DatabaseError databaseErrorFromErrorCode = Repo.fromErrorCode(str, str2);
                this.this$0.warnIfWriteFailed(NPStringFog.decode(new byte[]{99, 67, 5, 13, 67, 7, 84, 69, 13, 12, 94}, "71dc0f", -32251), this.val$path, databaseErrorFromErrorCode);
                ArrayList arrayList2 = new ArrayList();
                if (databaseErrorFromErrorCode != null) {
                    if (databaseErrorFromErrorCode.getCode() == -1) {
                        for (TransactionData transactionData2 : this.val$queue) {
                            if (transactionData2.status == TransactionStatus.SENT_NEEDS_ABORT) {
                                transactionData2.status = TransactionStatus.NEEDS_ABORT;
                            } else {
                                transactionData2.status = TransactionStatus.RUN;
                            }
                        }
                    } else {
                        for (TransactionData transactionData3 : this.val$queue) {
                            transactionData3.status = TransactionStatus.NEEDS_ABORT;
                            transactionData3.abortReason = databaseErrorFromErrorCode;
                        }
                    }
                    this.this$0.rerunTransactions(this.val$path);
                    return;
                }
                ArrayList arrayList3 = new ArrayList();
                for (TransactionData transactionData4 : this.val$queue) {
                    transactionData4.status = TransactionStatus.COMPLETED;
                    arrayList2.addAll(this.this$0.serverSyncTree.ackUserWrite(transactionData4.currentWriteId, false, false, this.this$0.serverClock));
                    arrayList3.add(new Runnable(this, transactionData4, InternalHelpers.createDataSnapshot(InternalHelpers.createReference(this.val$repo, transactionData4.path), IndexedNode.from(transactionData4.currentOutputSnapshotResolved))) { // from class: com.google.firebase.database.core.Repo.16.1
                        final AnonymousClass16 this$1;
                        final DataSnapshot val$snap;
                        final TransactionData val$txn;

                        {
                            this.this$1 = this;
                            this.val$txn = transactionData4;
                            this.val$snap = dataSnapshot;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            this.val$txn.handler.onComplete(null, true, this.val$snap);
                        }
                    });
                    this.this$0.removeEventCallback(new ValueEventRegistration(this.this$0, transactionData4.outstandingListener, QuerySpec.defaultQueryAtPath(transactionData4.path)));
                }
                Repo repo = this.this$0;
                repo.pruneCompletedTransactions(repo.transactionQueueTree.subTree(this.val$path));
                this.this$0.sendAllReadyTransactions();
                this.val$repo.postEvents(arrayList2);
                for (int i = 0; i < arrayList3.size(); i++) {
                    this.this$0.postEvent((Runnable) arrayList3.get(i));
                }
            }
        });
    }

    private void updateInfo(ChildKey childKey, Object obj) {
        if (childKey.equals(Constants.DOT_INFO_SERVERTIME_OFFSET)) {
            this.serverClock.setOffset(((Long) obj).longValue());
        }
        Path path = new Path(Constants.DOT_INFO, childKey);
        try {
            Node nodeNodeFromJSON = NodeUtilities.NodeFromJSON(obj);
            this.infoData.update(path, nodeNodeFromJSON);
            postEvents(this.infoSyncTree.applyServerOverwrite(path, nodeNodeFromJSON));
        } catch (DatabaseException e) {
            this.operationLogger.error(NPStringFog.decode(new byte[]{126, 5, 12, 13, 0, 2, 24, 16, 10, 65, 21, 7, 74, 23, 0, 65, 12, 8, 94, 11, 69, 20, 21, 2, 89, 16, 0}, "8deaef", false), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void warnIfWriteFailed(String str, Path path, DatabaseError databaseError) {
        if (databaseError == null || databaseError.getCode() == -1 || databaseError.getCode() == -25) {
            return;
        }
        this.operationLogger.warn(str + NPStringFog.decode(new byte[]{68, 89, 76, 17}, "d881bf", false) + path.toString() + NPStringFog.decode(new byte[]{69, 82, 80, 80, 93, 83, 1, 14, 17}, "e41916", false, true) + databaseError.toString());
    }

    public void addEventCallback(EventRegistration eventRegistration) {
        ChildKey front = eventRegistration.getQuerySpec().getPath().getFront();
        postEvents((front == null || !front.equals(Constants.DOT_INFO)) ? this.serverSyncTree.addEventRegistration(eventRegistration) : this.infoSyncTree.addEventRegistration(eventRegistration));
    }

    void callOnComplete(DatabaseReference.CompletionListener completionListener, DatabaseError databaseError, Path path) {
        if (completionListener != null) {
            ChildKey back = path.getBack();
            postEvent(new Runnable(this, completionListener, databaseError, (back == null || !back.isPriorityChildName()) ? InternalHelpers.createReference(this, path) : InternalHelpers.createReference(this, path.getParent())) { // from class: com.google.firebase.database.core.Repo.6
                final Repo this$0;
                final DatabaseError val$error;
                final DatabaseReference.CompletionListener val$onComplete;
                final DatabaseReference val$ref;

                {
                    this.this$0 = this;
                    this.val$onComplete = completionListener;
                    this.val$error = databaseError;
                    this.val$ref = databaseReference;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.val$onComplete.onComplete(this.val$error, this.val$ref);
                }
            });
        }
    }

    PersistentConnection getConnection() {
        return this.connection;
    }

    public FirebaseDatabase getDatabase() {
        return this.database;
    }

    SyncTree getInfoSyncTree() {
        return this.infoSyncTree;
    }

    public RepoInfo getRepoInfo() {
        return this.repoInfo;
    }

    SyncTree getServerSyncTree() {
        return this.serverSyncTree;
    }

    public long getServerTime() {
        return this.serverClock.millis();
    }

    boolean hasListeners() {
        return (this.infoSyncTree.isEmpty() && this.serverSyncTree.isEmpty()) ? false : true;
    }

    void interrupt() {
        this.connection.interrupt(INTERRUPT_REASON);
    }

    public void keepSynced(QuerySpec querySpec, boolean z) {
        this.serverSyncTree.keepSynced(querySpec, z);
    }

    @Override // com.google.firebase.database.connection.PersistentConnection.Delegate
    public void onAuthStatus(boolean z) {
        onServerInfoUpdate(Constants.DOT_INFO_AUTHENTICATED, Boolean.valueOf(z));
    }

    @Override // com.google.firebase.database.connection.PersistentConnection.Delegate
    public void onConnect() {
        onServerInfoUpdate(Constants.DOT_INFO_CONNECTED, true);
    }

    @Override // com.google.firebase.database.connection.PersistentConnection.Delegate
    public void onDataUpdate(List<String> list, Object obj, boolean z, Long l) {
        List<? extends Event> listApplyServerOverwrite;
        Path path = new Path(list);
        if (this.operationLogger.logsDebug()) {
            this.operationLogger.debug(NPStringFog.decode(new byte[]{92, 95, 38, 82, 64, 3, 102, 65, 6, 82, 64, 7, 9, 17}, "31b34b", false, false) + path, new Object[0]);
        }
        if (this.dataLogger.logsDebug()) {
            this.operationLogger.debug(NPStringFog.decode(new byte[]{11, 87, 112, 5, 21, 3, 49, 73, 80, 5, 21, 7, 94, 25}, "d94dab", true) + path + " " + obj, new Object[0]);
        }
        this.dataUpdateCount++;
        try {
            if (l != null) {
                Tag tag = new Tag(l.longValue());
                if (z) {
                    HashMap map = new HashMap();
                    for (Map.Entry entry : ((Map) obj).entrySet()) {
                        map.put(new Path((String) entry.getKey()), NodeUtilities.NodeFromJSON(entry.getValue()));
                    }
                    listApplyServerOverwrite = this.serverSyncTree.applyTaggedQueryMerge(path, map, tag);
                } else {
                    listApplyServerOverwrite = this.serverSyncTree.applyTaggedQueryOverwrite(path, NodeUtilities.NodeFromJSON(obj), tag);
                }
            } else if (z) {
                HashMap map2 = new HashMap();
                for (Map.Entry entry2 : ((Map) obj).entrySet()) {
                    map2.put(new Path((String) entry2.getKey()), NodeUtilities.NodeFromJSON(entry2.getValue()));
                }
                listApplyServerOverwrite = this.serverSyncTree.applyServerMerge(path, map2);
            } else {
                listApplyServerOverwrite = this.serverSyncTree.applyServerOverwrite(path, NodeUtilities.NodeFromJSON(obj));
            }
            if (listApplyServerOverwrite.size() > 0) {
                rerunTransactions(path);
            }
            postEvents(listApplyServerOverwrite);
        } catch (DatabaseException e) {
            this.operationLogger.error(NPStringFog.decode(new byte[]{115, 113, 48, 117, 113, 119, 102, 125, 66, 121, 125, 98, 112, 106, 44, 113, 127, 22, 112, 106, 48, 127, 97}, "58b036", 16181016L), e);
        }
    }

    @Override // com.google.firebase.database.connection.PersistentConnection.Delegate
    public void onDisconnect() {
        onServerInfoUpdate(Constants.DOT_INFO_CONNECTED, false);
        runOnDisconnectEvents();
    }

    public void onDisconnectCancel(Path path, DatabaseReference.CompletionListener completionListener) {
        this.connection.onDisconnectCancel(path.asList(), new RequestResultCallback(this, path, completionListener) { // from class: com.google.firebase.database.core.Repo.11
            final Repo this$0;
            final DatabaseReference.CompletionListener val$onComplete;
            final Path val$path;

            {
                this.this$0 = this;
                this.val$path = path;
                this.val$onComplete = completionListener;
            }

            @Override // com.google.firebase.database.connection.RequestResultCallback
            public void onRequestResult(String str, String str2) {
                DatabaseError databaseErrorFromErrorCode = Repo.fromErrorCode(str, str2);
                if (databaseErrorFromErrorCode == null) {
                    this.this$0.onDisconnect.forget(this.val$path);
                }
                this.this$0.callOnComplete(this.val$onComplete, databaseErrorFromErrorCode, this.val$path);
            }
        });
    }

    public void onDisconnectSetValue(Path path, Node node, DatabaseReference.CompletionListener completionListener) {
        this.connection.onDisconnectPut(path.asList(), node.getValue(true), new RequestResultCallback(this, path, node, completionListener) { // from class: com.google.firebase.database.core.Repo.9
            final Repo this$0;
            final Node val$newValue;
            final DatabaseReference.CompletionListener val$onComplete;
            final Path val$path;

            {
                this.this$0 = this;
                this.val$path = path;
                this.val$newValue = node;
                this.val$onComplete = completionListener;
            }

            @Override // com.google.firebase.database.connection.RequestResultCallback
            public void onRequestResult(String str, String str2) {
                DatabaseError databaseErrorFromErrorCode = Repo.fromErrorCode(str, str2);
                this.this$0.warnIfWriteFailed(NPStringFog.decode(new byte[]{10, 89, 119, 89, 69, 84, 10, 89, 93, 85, 85, 67, 77, 30, 29, 67, 83, 67, 51, 86, 95, 69, 83}, "e73067", 1171394088L), this.val$path, databaseErrorFromErrorCode);
                if (databaseErrorFromErrorCode == null) {
                    this.this$0.onDisconnect.remember(this.val$path, this.val$newValue);
                }
                this.this$0.callOnComplete(this.val$onComplete, databaseErrorFromErrorCode, this.val$path);
            }
        });
    }

    public void onDisconnectUpdate(Path path, Map<Path, Node> map, DatabaseReference.CompletionListener completionListener, Map<String, Object> map2) {
        this.connection.onDisconnectMerge(path.asList(), map2, new RequestResultCallback(this, path, map, completionListener) { // from class: com.google.firebase.database.core.Repo.10
            final Repo this$0;
            final DatabaseReference.CompletionListener val$listener;
            final Map val$newChildren;
            final Path val$path;

            {
                this.this$0 = this;
                this.val$path = path;
                this.val$newChildren = map;
                this.val$listener = completionListener;
            }

            @Override // com.google.firebase.database.connection.RequestResultCallback
            public void onRequestResult(String str, String str2) {
                DatabaseError databaseErrorFromErrorCode = Repo.fromErrorCode(str, str2);
                this.this$0.warnIfWriteFailed(NPStringFog.decode(new byte[]{89, 94, 38, 88, 17, 81, 89, 94, 12, 84, 1, 70, 30, 25, 76, 68, 18, 86, 87, 68, 7, 114, 10, 91, 90, 84, 16, 84, 12}, "60b1b2", false), this.val$path, databaseErrorFromErrorCode);
                if (databaseErrorFromErrorCode == null) {
                    for (Map.Entry entry : this.val$newChildren.entrySet()) {
                        this.this$0.onDisconnect.remember(this.val$path.child((Path) entry.getKey()), (Node) entry.getValue());
                    }
                }
                this.this$0.callOnComplete(this.val$listener, databaseErrorFromErrorCode, this.val$path);
            }
        });
    }

    @Override // com.google.firebase.database.connection.PersistentConnection.Delegate
    public void onRangeMergeUpdate(List<String> list, List<RangeMerge> list2, Long l) {
        Path path = new Path(list);
        if (this.operationLogger.logsDebug()) {
            this.operationLogger.debug(NPStringFog.decode(new byte[]{95, 87, 98, 82, 12, 87, 85, 116, 85, 65, 5, 85, 101, 73, 84, 82, 22, 85, 10, 25}, "0903b0", true, false) + path, new Object[0]);
        }
        if (this.dataLogger.logsDebug()) {
            this.operationLogger.debug(NPStringFog.decode(new byte[]{11, 12, 102, 2, 11, 87, 1, 47, 81, 17, 2, 85, 49, 18, 80, 2, 17, 85, 94, 66}, "db4ce0", false) + path + " " + list2, new Object[0]);
        }
        this.dataUpdateCount++;
        ArrayList arrayList = new ArrayList(list2.size());
        Iterator<RangeMerge> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(new com.google.firebase.database.snapshot.RangeMerge(it.next()));
        }
        List<? extends Event> listApplyTaggedRangeMerges = l != null ? this.serverSyncTree.applyTaggedRangeMerges(path, arrayList, new Tag(l.longValue())) : this.serverSyncTree.applyServerRangeMerges(path, arrayList);
        if (listApplyTaggedRangeMerges.size() > 0) {
            rerunTransactions(path);
        }
        postEvents(listApplyTaggedRangeMerges);
    }

    public void onServerInfoUpdate(ChildKey childKey, Object obj) {
        updateInfo(childKey, obj);
    }

    @Override // com.google.firebase.database.connection.PersistentConnection.Delegate
    public void onServerInfoUpdate(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            updateInfo(ChildKey.fromString(entry.getKey()), entry.getValue());
        }
    }

    public void postEvent(Runnable runnable) {
        this.ctx.requireStarted();
        this.ctx.getEventTarget().postEvent(runnable);
    }

    public void purgeOutstandingWrites() {
        if (this.operationLogger.logsDebug()) {
            this.operationLogger.debug(NPStringFog.decode(new byte[]{99, 71, 71, 95, 94, 95, 84, 18, 66, 74, 94, 69, 86, 65}, "325871", 11502), new Object[0]);
        }
        postEvents(this.serverSyncTree.removeAllWrites());
        abortTransactions(Path.getEmptyPath(), -25);
        this.connection.purgeOutstandingWrites();
    }

    public void removeEventCallback(EventRegistration eventRegistration) {
        postEvents(Constants.DOT_INFO.equals(eventRegistration.getQuerySpec().getPath().getFront()) ? this.infoSyncTree.removeEventRegistration(eventRegistration) : this.serverSyncTree.removeEventRegistration(eventRegistration));
    }

    void resume() {
        this.connection.resume(INTERRUPT_REASON);
    }

    public void scheduleNow(Runnable runnable) {
        this.ctx.requireStarted();
        this.ctx.getRunLoop().scheduleNow(runnable);
    }

    public void setHijackHash(boolean z) {
        this.hijackHash = z;
    }

    public void setValue(Path path, Node node, DatabaseReference.CompletionListener completionListener) {
        if (this.operationLogger.logsDebug()) {
            this.operationLogger.debug(NPStringFog.decode(new byte[]{65, 1, 71, 95, 23}, "2d3e75", -1.519807218E9d) + path, new Object[0]);
        }
        if (this.dataLogger.logsDebug()) {
            this.dataLogger.debug(NPStringFog.decode(new byte[]{69, 3, 69, 14, 65}, "6f14ae", false, true) + path + " " + node, new Object[0]);
        }
        Node nodeResolveDeferredValueSnapshot = ServerValues.resolveDeferredValueSnapshot(node, this.serverSyncTree.calcCompleteEventCache(path, new ArrayList()), ServerValues.generateServerValues(this.serverClock));
        long nextWriteId = getNextWriteId();
        postEvents(this.serverSyncTree.applyUserOverwrite(path, node, nodeResolveDeferredValueSnapshot, nextWriteId, true, true));
        this.connection.put(path.asList(), node.getValue(true), new RequestResultCallback(this, path, nextWriteId, completionListener) { // from class: com.google.firebase.database.core.Repo.7
            final Repo this$0;
            final DatabaseReference.CompletionListener val$onComplete;
            final Path val$path;
            final long val$writeId;

            {
                this.this$0 = this;
                this.val$path = path;
                this.val$writeId = nextWriteId;
                this.val$onComplete = completionListener;
            }

            @Override // com.google.firebase.database.connection.RequestResultCallback
            public void onRequestResult(String str, String str2) {
                DatabaseError databaseErrorFromErrorCode = Repo.fromErrorCode(str, str2);
                this.this$0.warnIfWriteFailed(NPStringFog.decode(new byte[]{70, 86, 21, 55, 4, 15, 64, 86}, "53aaec", -1539352369L), this.val$path, databaseErrorFromErrorCode);
                this.this$0.ackWriteAndRerunTransactions(this.val$writeId, this.val$path, databaseErrorFromErrorCode);
                this.this$0.callOnComplete(this.val$onComplete, databaseErrorFromErrorCode, this.val$path);
            }
        });
        rerunTransactions(abortTransactions(path, -9));
    }

    public void startTransaction(Path path, Transaction.Handler handler, boolean z) {
        DatabaseError databaseErrorFromException;
        Transaction.Result resultAbort;
        if (this.operationLogger.logsDebug()) {
            this.operationLogger.debug(NPStringFog.decode(new byte[]{69, 75, 89, 10, 65, 3, 82, 77, 81, 11, 92, 88, 17}, "198d2b", 2.823461E8f) + path, new Object[0]);
        }
        if (this.dataLogger.logsDebug()) {
            this.operationLogger.debug(NPStringFog.decode(new byte[]{77, 19, 81, 90, 67, 80, 90, 21, 89, 91, 94, 11, 25}, "9a0401", -496304088L) + path, new Object[0]);
        }
        if (this.ctx.isPersistenceEnabled() && !this.loggedTransactionPersistenceWarning) {
            this.loggedTransactionPersistenceWarning = true;
            this.transactionLogger.info(NPStringFog.decode(new byte[]{70, 19, 10, 97, 67, 89, 90, 21, 5, 86, 69, 81, 91, 8, 76, 28, 17, 77, 71, 7, 3, 80, 17, 92, 81, 18, 1, 86, 69, 93, 80, 70, 19, 93, 88, 84, 81, 70, 20, 80, 67, 75, 93, 21, 16, 80, 95, 91, 81, 70, 13, 70, 17, 93, 90, 7, 6, 89, 84, 92, 26, 70, 52, 89, 84, 89, 71, 3, 68, 87, 84, 24, 85, 17, 5, 71, 84, 24, 64, 14, 5, 65, 17, 76, 70, 7, 10, 70, 80, 91, 64, 15, 11, 91, 66, 24, 30, 17, 13, 89, 93, 24, 90, 9, 16, 31, 17, 90, 81, 70, 20, 80, 67, 75, 93, 21, 16, 80, 85, 24, 85, 5, 22, 90, 66, 75, 20, 2, 5, 65, 80, 90, 85, 21, 1, 21, 67, 93, 71, 18, 5, 71, 69, 75, 26, 70, 68, 102, 84, 93, 20, 14, 16, 65, 65, 75, 14, 73, 75, 66, 70, 79, 26, 0, 13, 71, 84, 90, 85, 21, 1, 27, 82, 87, 89, 73, 0, 90, 82, 75, 27, 7, 10, 81, 67, 87, 93, 2, 75, 82, 68, 81, 80, 3, 75, 90, 87, 94, 88, 15, 10, 80, 28, 91, 85, 22, 5, 87, 88, 84, 93, 18, 13, 80, 66, 22, 92, 18, 9, 89, 18, 75, 81, 5, 16, 92, 94, 86, 25, 14, 5, 91, 85, 84, 93, 8, 3, 24, 69, 74, 85, 8, 23, 84, 82, 76, 93, 9, 10, 70, 28, 87, 82, 0, 8, 92, 95, 93, 20, 0, 11, 71, 17, 85, 91, 20, 1, 21, 85, 93, 64, 7, 13, 89, 66, 22}, "4fd518", -2.64191343E8d));
        }
        DatabaseReference databaseReferenceCreateReference = InternalHelpers.createReference(this, path);
        ValueEventListener valueEventListener = new ValueEventListener(this) { // from class: com.google.firebase.database.core.Repo.13
            final Repo this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.firebase.database.ValueEventListener
            public void onCancelled(DatabaseError databaseError) {
            }

            @Override // com.google.firebase.database.ValueEventListener
            public void onDataChange(DataSnapshot dataSnapshot) {
            }
        };
        addEventCallback(new ValueEventRegistration(this, valueEventListener, databaseReferenceCreateReference.getSpec()));
        TransactionData transactionData = new TransactionData(path, handler, valueEventListener, TransactionStatus.INITIALIZING, z, nextTransactionOrder());
        Node latestState = getLatestState(path);
        transactionData.currentInputSnapshot = latestState;
        try {
            Transaction.Result resultDoTransaction = handler.doTransaction(InternalHelpers.createMutableData(latestState));
            if (resultDoTransaction == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{54, 66, 85, 15, 69, 85, 1, 68, 93, 14, 88, 20, 16, 85, 64, 20, 68, 90, 7, 84, 20, 15, 67, 88, 14, 16, 85, 18, 22, 70, 7, 67, 65, 13, 66}, "b04a64", 9.920082E8f));
            }
            resultAbort = resultDoTransaction;
            databaseErrorFromException = null;
        } catch (Throwable th) {
            this.operationLogger.error(NPStringFog.decode(new byte[]{117, 5, 77, 85, 91, 64, 22, 48, 80, 64, 92, 67, 87, 6, 84, 87, 29}, "6d8234", -317), th);
            databaseErrorFromException = DatabaseError.fromException(th);
            resultAbort = Transaction.abort();
        }
        if (!resultAbort.isSuccess()) {
            transactionData.currentOutputSnapshotRaw = null;
            transactionData.currentOutputSnapshotResolved = null;
            postEvent(new Runnable(this, handler, databaseErrorFromException, InternalHelpers.createDataSnapshot(databaseReferenceCreateReference, IndexedNode.from(transactionData.currentInputSnapshot))) { // from class: com.google.firebase.database.core.Repo.14
                final Repo this$0;
                final Transaction.Handler val$handler;
                final DatabaseError val$innerClassError;
                final DataSnapshot val$snap;

                {
                    this.this$0 = this;
                    this.val$handler = handler;
                    this.val$innerClassError = databaseErrorFromException;
                    this.val$snap = dataSnapshot;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.val$handler.onComplete(this.val$innerClassError, false, this.val$snap);
                }
            });
            return;
        }
        transactionData.status = TransactionStatus.RUN;
        Tree<List<TransactionData>> treeSubTree = this.transactionQueueTree.subTree(path);
        List<TransactionData> value = treeSubTree.getValue();
        if (value == null) {
            value = new ArrayList<>();
        }
        value.add(transactionData);
        treeSubTree.setValue(value);
        Map<String, Object> mapGenerateServerValues = ServerValues.generateServerValues(this.serverClock);
        Node node = resultAbort.getNode();
        Node nodeResolveDeferredValueSnapshot = ServerValues.resolveDeferredValueSnapshot(node, transactionData.currentInputSnapshot, mapGenerateServerValues);
        transactionData.currentOutputSnapshotRaw = node;
        transactionData.currentOutputSnapshotResolved = nodeResolveDeferredValueSnapshot;
        transactionData.currentWriteId = getNextWriteId();
        postEvents(this.serverSyncTree.applyUserOverwrite(path, node, nodeResolveDeferredValueSnapshot, transactionData.currentWriteId, z, false));
        sendAllReadyTransactions();
    }

    public String toString() {
        return this.repoInfo.toString();
    }

    public void updateChildren(Path path, CompoundWrite compoundWrite, DatabaseReference.CompletionListener completionListener, Map<String, Object> map) {
        if (this.operationLogger.logsDebug()) {
            this.operationLogger.debug(NPStringFog.decode(new byte[]{20, 72, 80, 3, 64, 6, 91, 24}, "a84b4c", true, true) + path, new Object[0]);
        }
        if (this.dataLogger.logsDebug()) {
            this.dataLogger.debug(NPStringFog.decode(new byte[]{23, 19, 6, 88, 76, 86, 88, 67}, "bcb983", -1.7757697E9f) + path + " " + map, new Object[0]);
        }
        if (compoundWrite.isEmpty()) {
            if (this.operationLogger.logsDebug()) {
                this.operationLogger.debug(NPStringFog.decode(new byte[]{68, 20, 93, 4, 64, 7, 17, 7, 88, 9, 88, 7, 85, 68, 78, 12, 64, 10, 17, 10, 86, 69, 87, 10, 80, 10, 94, 0, 71, 76, 17, 42, 86, 72, 91, 18}, "1d9e4b", 1329024046L), new Object[0]);
            }
            callOnComplete(completionListener, null, path);
            return;
        }
        CompoundWrite compoundWriteResolveDeferredValueMerge = ServerValues.resolveDeferredValueMerge(compoundWrite, this.serverSyncTree, path, ServerValues.generateServerValues(this.serverClock));
        long nextWriteId = getNextWriteId();
        postEvents(this.serverSyncTree.applyUserMerge(path, compoundWrite, compoundWriteResolveDeferredValueMerge, nextWriteId, true));
        this.connection.merge(path.asList(), map, new RequestResultCallback(this, path, nextWriteId, completionListener) { // from class: com.google.firebase.database.core.Repo.8
            final Repo this$0;
            final DatabaseReference.CompletionListener val$onComplete;
            final Path val$path;
            final long val$writeId;

            {
                this.this$0 = this;
                this.val$path = path;
                this.val$writeId = nextWriteId;
                this.val$onComplete = completionListener;
            }

            @Override // com.google.firebase.database.connection.RequestResultCallback
            public void onRequestResult(String str, String str2) {
                DatabaseError databaseErrorFromErrorCode = Repo.fromErrorCode(str, str2);
                this.this$0.warnIfWriteFailed(NPStringFog.decode(new byte[]{65, 73, 5, 85, 21, 0, 119, 81, 8, 88, 5, 23, 81, 87}, "49a4ae", 19934), this.val$path, databaseErrorFromErrorCode);
                this.this$0.ackWriteAndRerunTransactions(this.val$writeId, this.val$path, databaseErrorFromErrorCode);
                this.this$0.callOnComplete(this.val$onComplete, databaseErrorFromErrorCode, this.val$path);
            }
        });
        Iterator<Map.Entry<Path, Node>> it = compoundWrite.iterator();
        while (it.hasNext()) {
            rerunTransactions(abortTransactions(path.child(it.next().getKey()), -9));
        }
    }
}

package com.google.firebase.database;

import com.google.android.gms.common.internal.Objects;
import com.google.firebase.database.core.ChildEventRegistration;
import com.google.firebase.database.core.EventRegistration;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.Repo;
import com.google.firebase.database.core.ValueEventRegistration;
import com.google.firebase.database.core.ZombieEventManager;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.core.utilities.Validation;
import com.google.firebase.database.core.view.QueryParams;
import com.google.firebase.database.core.view.QuerySpec;
import com.google.firebase.database.snapshot.BooleanNode;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.DoubleNode;
import com.google.firebase.database.snapshot.EmptyNode;
import com.google.firebase.database.snapshot.KeyIndex;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.PathIndex;
import com.google.firebase.database.snapshot.PriorityIndex;
import com.google.firebase.database.snapshot.PriorityUtilities;
import com.google.firebase.database.snapshot.StringNode;
import com.google.firebase.database.snapshot.ValueIndex;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class Query {
    static final boolean $assertionsDisabled = false;
    private final boolean orderByCalled;
    protected final QueryParams params;
    protected final Path path;
    protected final Repo repo;

    Query(Repo repo, Path path) {
        this.repo = repo;
        this.path = path;
        this.params = QueryParams.DEFAULT_PARAMS;
        this.orderByCalled = false;
    }

    Query(Repo repo, Path path, QueryParams queryParams, boolean z) throws DatabaseException {
        this.repo = repo;
        this.path = path;
        this.params = queryParams;
        this.orderByCalled = z;
        Utilities.hardAssert(queryParams.isValid(), NPStringFog.decode(new byte[]{53, 5, 90, 94, 84, 81, 23, 13, 89, 89, 16, 95, 5, 68, 71, 66, 85, 66, 10, 1, 69, 23, 86, 81, 10, 8, 83, 83, 30}, "cd6700", -1467952485L));
    }

    private void addEventRegistration(EventRegistration eventRegistration) {
        ZombieEventManager.getInstance().recordEventRegistration(eventRegistration);
        this.repo.scheduleNow(new Runnable(this, eventRegistration) { // from class: com.google.firebase.database.Query.3
            final Query this$0;
            final EventRegistration val$listener;

            {
                this.this$0 = this;
                this.val$listener = eventRegistration;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.repo.addEventCallback(this.val$listener);
            }
        });
    }

    private Query endAt(Node node, String str) {
        Validation.validateNullableKey(str);
        if (!node.isLeafNode() && !node.isEmpty()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 84, 89, 20, 95, 93, 91, 76, 23, 65, 67, 86, 23, 70, 94, 89, 64, 95, 82, 21, 65, 85, 92, 70, 82, 70, 23, 82, 95, 65, 23, 80, 89, 80, 113, 71, 31, 28}, "757403", false));
        }
        ChildKey childKeyFromString = str != null ? ChildKey.fromString(str) : null;
        if (this.params.hasEnd()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{117, 5, 92, 66, 64, 22, 85, 5, 94, 9, 20, 83, 88, 0, 115, 17, 28, 31, 22, 11, 64, 69, 81, 71, 67, 5, 94, 49, 91, 30, 31, 68, 95, 16, 88, 66, 95, 20, 94, 0, 20, 66, 95, 9, 87, 22}, "6d2e46", 887049068L));
        }
        QueryParams queryParamsEndAt = this.params.endAt(node, childKeyFromString);
        validateLimit(queryParamsEndAt);
        validateQueryEndpoints(queryParamsEndAt);
        return new Query(this.repo, this.path, queryParamsEndAt, this.orderByCalled);
    }

    private void removeEventRegistration(EventRegistration eventRegistration) {
        ZombieEventManager.getInstance().zombifyForRemove(eventRegistration);
        this.repo.scheduleNow(new Runnable(this, eventRegistration) { // from class: com.google.firebase.database.Query.2
            final Query this$0;
            final EventRegistration val$registration;

            {
                this.this$0 = this;
                this.val$registration = eventRegistration;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.repo.removeEventCallback(this.val$registration);
            }
        });
    }

    private Query startAt(Node node, String str) {
        Validation.validateNullableKey(str);
        if (!node.isLeafNode() && !node.isEmpty()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{39, 81, 86, 17, 14, 94, 8, 73, 24, 68, 18, 85, 68, 67, 81, 92, 17, 92, 1, 16, 78, 80, 13, 69, 1, 67, 24, 87, 14, 66, 68, 67, 76, 80, 19, 68, 37, 68, 16, 24}, "d081a0", 514854878L));
        }
        if (this.params.hasStart()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 82, 92, 31, 64, 69, 83, 82, 94, 84, 20, 22, 68, 82, 64, 76, 117, 17, 24, 26, 18, 87, 70, 69, 85, 66, 71, 89, 88, 49, 95, 27, 27, 24, 89, 16, 92, 71, 91, 72, 88, 0, 16, 71, 91, 85, 81, 22}, "03284e", -1.836290604E9d));
        }
        QueryParams queryParamsStartAt = this.params.startAt(node, str != null ? ChildKey.fromString(str) : null);
        validateLimit(queryParamsStartAt);
        validateQueryEndpoints(queryParamsStartAt);
        return new Query(this.repo, this.path, queryParamsStartAt, this.orderByCalled);
    }

    private void validateEqualToCall() {
        if (this.params.hasStart()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 86, 8, 69, 70, 18, 91, 86, 10, 14, 18, 87, 73, 66, 7, 14, 102, 93, 16, 30, 70, 3, 92, 86, 24, 68, 18, 3, 64, 70, 121, 67, 78, 75, 18, 81, 87, 90, 4, 11, 92, 87, 92}, "87fb22", -17803));
        }
        if (this.params.hasEnd()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{114, 5, 90, 17, 21, 69, 82, 5, 88, 90, 65, 0, 64, 17, 85, 90, 53, 10, 25, 77, 20, 87, 15, 1, 17, 1, 90, 82, 32, 17, 25, 77, 20, 85, 14, 8, 83, 13, 90, 83, 5}, "1d46ae", 1519956251L));
        }
    }

    private void validateLimit(QueryParams queryParams) {
        if (queryParams.hasStart() && queryParams.hasEnd() && queryParams.hasLimit() && !queryParams.hasAnchoredLimit()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 84, 91, 17, 23, 17, 83, 90, 88, 84, 10, 95, 85, 21, 70, 66, 2, 67, 68, 116, 65, 30, 74, 29, 16, 80, 91, 82, 34, 69, 24, 28, 21, 87, 13, 85, 16, 89, 92, 91, 10, 69, 24, 28, 27, 22, 54, 66, 85, 21, 89, 95, 14, 88, 68, 97, 90, 112, 10, 67, 67, 65, 29, 31, 67, 94, 66, 21, 89, 95, 14, 88, 68, 97, 90, 122, 2, 66, 68, 29, 28, 22, 10, 95, 67, 65, 80, 87, 7}, "0556c1", -1.80395969E9d));
        }
    }

    private void validateNoOrderByCall() {
        if (this.orderByCalled) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{108, 86, 19, 25, 1, 2, 91, 30, 18, 25, 1, 12, 88, 91, 15, 87, 7, 67, 88, 76, 10, 77, 11, 19, 89, 92, 70, 86, 16, 7, 80, 75, 36, 64, 66, 0, 84, 85, 10, 74, 67}, "59f9bc", 1.240970019E9d));
        }
    }

    private void validateQueryEndpoints(QueryParams queryParams) {
        if (!queryParams.getIndex().equals(KeyIndex.getInstance())) {
            if (queryParams.getIndex().equals(PriorityIndex.getInstance())) {
                if ((queryParams.hasStart() && !PriorityUtilities.isValidPriority(queryParams.getIndexStartValue())) || (queryParams.hasEnd() && !PriorityUtilities.isValidPriority(queryParams.getIndexEndValue()))) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{98, 94, 7, 12, 70, 20, 70, 95, 12, 5, 70, 14, 71, 82, 7, 16, 36, 24, 101, 68, 11, 13, 20, 8, 65, 79, 74, 75, 74, 65, 67, 87, 14, 23, 3, 18, 21, 70, 16, 13, 16, 8, 81, 83, 6, 66, 18, 14, 21, 69, 22, 3, 20, 21, 116, 66, 74, 75, 74, 65, 80, 88, 6, 35, 18, 73, 28, 26, 66, 13, 20, 65, 80, 71, 23, 3, 10, 53, 90, 30, 75, 66, 11, 20, 70, 66, 66, 0, 3, 65, 67, 87, 14, 11, 2, 65, 69, 68, 11, 13, 20, 8, 65, 95, 7, 17, 72}, "56bbfa", 32432));
                }
                return;
            }
            return;
        }
        if (queryParams.hasStart()) {
            Node indexStartValue = queryParams.getIndexStartValue();
            if (!Objects.equal(queryParams.getIndexStartName(), ChildKey.getMinName()) || !(indexStartValue instanceof StringNode)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{97, 13, 68, 68, 93, 64, 75, 22, 17, 17, 67, 80, 24, 17, 69, 5, 66, 65, 121, 22, 25, 55, 68, 71, 81, 12, 86, 68, 70, 84, 84, 23, 84, 77, 28, 21, 93, 12, 85, 37, 68, 29, 107, 22, 67, 13, 94, 82, 24, 20, 80, 8, 69, 80, 17, 66, 94, 22, 16, 80, 73, 23, 80, 8, 100, 90, 16, 49, 69, 22, 89, 91, 95, 66, 71, 5, 92, 64, 93, 75, 17, 13, 94, 21, 91, 13, 92, 6, 89, 91, 89, 22, 88, 11, 94, 21, 79, 11, 69, 12, 16, 90, 74, 6, 84, 22, 114, 76, 115, 7, 72, 76, 25, 27, 24, 45, 69, 12, 85, 71, 24, 22, 72, 20, 85, 21, 87, 4, 17, 18, 81, 89, 77, 7, 66, 68, 95, 71, 24, 23, 66, 13, 94, 82, 24, 22, 89, 1, 16, 67, 93, 16, 66, 13, 95, 91, 24, 21, 88, 16, 88, 21, 10, 66, 65, 5, 66, 84, 85, 7, 69, 1, 66, 70, 24, 11, 66, 68, 94, 90, 76, 66, 66, 17, 64, 69, 87, 16, 69, 1, 84}, "8b1d05", -17767));
            }
        }
        if (queryParams.hasEnd()) {
            Node indexEndValue = queryParams.getIndexEndValue();
            if (!queryParams.getIndexEndName().equals(ChildKey.getMaxName()) || !(indexEndValue instanceof StringNode)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{111, 13, 64, 20, 89, 69, 69, 22, 21, 65, 71, 85, 22, 17, 65, 85, 70, 68, 119, 22, 29, 103, 64, 66, 95, 12, 82, 20, 66, 81, 90, 23, 80, 29, 24, 16, 83, 12, 81, 117, 64, 24, 101, 22, 71, 93, 90, 87, 22, 20, 84, 88, 65, 85, 31, 66, 90, 70, 20, 85, 71, 23, 84, 88, 96, 95, 30, 49, 65, 70, 93, 94, 81, 66, 67, 85, 88, 69, 83, 75, 21, 93, 90, 16, 85, 13, 88, 86, 93, 94, 87, 22, 92, 91, 90, 16, 65, 11, 65, 92, 20, 95, 68, 6, 80, 70, 118, 73, 125, 7, 76, 28, 29, 30, 22, 45, 65, 92, 81, 66, 22, 22, 76, 68, 81, 16, 89, 4, 21, 66, 85, 92, 67, 7, 70, 20, 91, 66, 22, 23, 70, 93, 90, 87, 22, 22, 93, 81, 20, 70, 83, 16, 70, 93, 91, 94, 22, 21, 92, 64, 92, 16, 4, 66, 69, 85, 70, 81, 91, 7, 65, 81, 70, 67, 22, 11, 70, 20, 90, 95, 66, 66, 70, 65, 68, 64, 89, 16, 65, 81, 80}, "6b5440", 2.48024378E8d));
            }
        }
    }

    public ChildEventListener addChildEventListener(ChildEventListener childEventListener) {
        addEventRegistration(new ChildEventRegistration(this.repo, childEventListener, getSpec()));
        return childEventListener;
    }

    public void addListenerForSingleValueEvent(ValueEventListener valueEventListener) {
        addEventRegistration(new ValueEventRegistration(this.repo, new ValueEventListener(this, valueEventListener) { // from class: com.google.firebase.database.Query.1
            final Query this$0;
            final ValueEventListener val$listener;

            {
                this.this$0 = this;
                this.val$listener = valueEventListener;
            }

            @Override // com.google.firebase.database.ValueEventListener
            public void onCancelled(DatabaseError databaseError) {
                this.val$listener.onCancelled(databaseError);
            }

            @Override // com.google.firebase.database.ValueEventListener
            public void onDataChange(DataSnapshot dataSnapshot) {
                this.this$0.removeEventListener(this);
                this.val$listener.onDataChange(dataSnapshot);
            }
        }, getSpec()));
    }

    public ValueEventListener addValueEventListener(ValueEventListener valueEventListener) {
        addEventRegistration(new ValueEventRegistration(this.repo, valueEventListener, getSpec()));
        return valueEventListener;
    }

    public Query endAt(double d) {
        return endAt(d, (String) null);
    }

    public Query endAt(double d, String str) {
        return endAt(new DoubleNode(Double.valueOf(d), PriorityUtilities.NullPriority()), str);
    }

    public Query endAt(String str) {
        return endAt(str, (String) null);
    }

    public Query endAt(String str, String str2) {
        return endAt(str != null ? new StringNode(str, PriorityUtilities.NullPriority()) : EmptyNode.Empty(), str2);
    }

    public Query endAt(boolean z) {
        return endAt(z, (String) null);
    }

    public Query endAt(boolean z, String str) {
        return endAt(new BooleanNode(Boolean.valueOf(z), PriorityUtilities.NullPriority()), str);
    }

    public Query equalTo(double d) {
        validateEqualToCall();
        return startAt(d).endAt(d);
    }

    public Query equalTo(double d, String str) {
        validateEqualToCall();
        return startAt(d, str).endAt(d, str);
    }

    public Query equalTo(String str) {
        validateEqualToCall();
        return startAt(str).endAt(str);
    }

    public Query equalTo(String str, String str2) {
        validateEqualToCall();
        return startAt(str, str2).endAt(str, str2);
    }

    public Query equalTo(boolean z) {
        validateEqualToCall();
        return startAt(z).endAt(z);
    }

    public Query equalTo(boolean z, String str) {
        validateEqualToCall();
        return startAt(z, str).endAt(z, str);
    }

    public Path getPath() {
        return this.path;
    }

    public DatabaseReference getRef() {
        return new DatabaseReference(this.repo, getPath());
    }

    public Repo getRepo() {
        return this.repo;
    }

    public QuerySpec getSpec() {
        return new QuerySpec(this.path, this.params);
    }

    public void keepSynced(boolean z) {
        if (!this.path.isEmpty() && this.path.getFront().equals(ChildKey.getInfoKey())) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{37, 5, 12, 22, 67, 18, 5, 5, 14, 93, 23, 89, 3, 1, 18, 98, 78, 92, 5, 1, 6, 25, 30, 18, 9, 10, 66, 31, 94, 92, 0, 11, 66, 65, 86, 70, 14, 23, 76}, "fdb172", 1462350.0f));
        }
        this.repo.scheduleNow(new Runnable(this, z) { // from class: com.google.firebase.database.Query.4
            final Query this$0;
            final boolean val$keepSynced;

            {
                this.this$0 = this;
                this.val$keepSynced = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.repo.keepSynced(this.this$0.getSpec(), this.val$keepSynced);
            }
        });
    }

    public Query limitToFirst(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{125, 8, 94, 93, 69, 17, 92, 20, 64, 64, 17, 83, 84, 65, 82, 20, 65, 94, 66, 8, 71, 93, 71, 84, 17, 8, 93, 64, 84, 86, 84, 19, 18}, "1a3411", 6352));
        }
        if (this.params.hasLimit()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 0, 90, 65, 71, 70, 83, 0, 88, 10, 19, 10, 89, 12, 93, 18, 103, 9, 124, 0, 71, 18, 19, 9, 94, 65, 69, 19, 86, 20, 73, 65, 67, 15, 71, 14, 16, 17, 70, 3, 69, 15, 95, 20, 71, 10, 74, 70, 67, 4, 64, 70, 95, 15, 93, 8, 64, 71}, "0a4f3f", -914));
        }
        return new Query(this.repo, this.path, this.params.limitToFirst(i), this.orderByCalled);
    }

    public Query limitToLast(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{126, 89, 12, 95, 18, 65, 95, 69, 18, 66, 70, 3, 87, 16, 0, 22, 22, 14, 65, 89, 21, 95, 16, 4, 18, 89, 15, 66, 3, 6, 87, 66, 64}, "20a6fa", 1.020918221E9d));
        }
        if (this.params.hasLimit()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{122, 89, 13, 68, 16, 16, 90, 89, 15, 15, 68, 92, 80, 85, 10, 23, 48, 95, 117, 89, 16, 23, 68, 95, 87, 24, 18, 22, 1, 66, 64, 24, 20, 10, 16, 88, 25, 72, 17, 6, 18, 89, 86, 77, 16, 15, 29, 16, 74, 93, 23, 67, 8, 89, 84, 81, 23, 66}, "98ccd0", true, false));
        }
        return new Query(this.repo, this.path, this.params.limitToLast(i), this.orderByCalled);
    }

    public Query orderByChild(String str) {
        if (str == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{41, 80, 76, 22, 2, 5, 12, 18, 65, 22, 3, 1, 66, 91, 64, 90, 13}, "b556ad", 2.4659669E8f));
        }
        if (str.equals(NPStringFog.decode(new byte[]{65, 95, 6, 76}, "e4c536", 1930610214L)) || str.equals(NPStringFog.decode(new byte[]{77, 15, 3, 24}, "cdfaf3", 7.86633873E8d))) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{114, 7, 15, 23, 69, 23, 68, 21, 4, 16, 22}, "1fa017", -3.43652788E8d) + str + NPStringFog.decode(new byte[]{31, 70, 86, 69, 23, 67, 89, 18, 95, 26, 23, 67, 84, 3, 86, 69, 82, 19, 77, 21, 82, 22, 88, 65, 92, 3, 69, 116, 78, 120, 93, 31, 31, 31, 23, 90, 86, 21, 67, 83, 86, 87, 25}, "8f7673", -1.49005134E9d));
        }
        if (str.equals(NPStringFog.decode(new byte[]{17, 70, 74, 93, 13, 22, 92, 66, 65}, "5684bd", true)) || str.equals(NPStringFog.decode(new byte[]{22, 73, 65, 93, 13, 19, 81, 77, 74}, "8934ba", -1.23118877E9d))) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 86, 15, 16, 65, 16, 19, 68, 4, 23, 18}, "f7a750", false, false) + str + NPStringFog.decode(new byte[]{20, 69, 7, 70, 18, 70, 82, 17, 14, 25, 18, 70, 95, 0, 7, 70, 87, 22, 70, 22, 3, 21, 93, 68, 87, 0, 20, 119, 75, 102, 65, 12, 9, 71, 91, 66, 74, 77, 79, 21, 91, 88, 64, 17, 3, 84, 86, 23}, "3ef526", -9.308844E8f));
        }
        if (str.equals(NPStringFog.decode(new byte[]{23, 66, 7, 92, 70, 92}, "34f039", -1.0611228E9f)) || str.equals(NPStringFog.decode(new byte[]{25, 70, 3, 91, 70, 4}, "70b73a", true, true))) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 84, 90, 21, 69, 21, 77, 70, 81, 18, 22}, "854215", -8.111565E8f) + str + NPStringFog.decode(new byte[]{30, 21, 88, 17, 17, 67, 88, 65, 81, 78, 17, 67, 85, 80, 88, 17, 84, 19, 76, 70, 92, 66, 94, 65, 93, 80, 75, 32, 72, 101, 88, 89, 76, 7, 25, 26, 25, 92, 87, 17, 69, 86, 88, 81, 24}, "959b13", 9.16557708E8d));
        }
        Validation.validatePathString(str);
        validateNoOrderByCall();
        Path path = new Path(str);
        if (path.size() == 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 80, 92, 18, 65, 24, 19, 66, 87, 21, 80, 85, 22, 69, 75, 21, 69, 89, 18, 89, 30, 21, 64, 75, 3, 17, 93, 71, 81, 93, 20, 115, 75, 99, 84, 84, 19, 84, 26, 28, 21, 81, 8, 66, 70, 80, 84, 92, 71}, "f12558", 1.7455031E9f));
        }
        return new Query(this.repo, this.path, this.params.orderBy(new PathIndex(path)), true);
    }

    public Query orderByKey() {
        validateNoOrderByCall();
        QueryParams queryParamsOrderBy = this.params.orderBy(KeyIndex.getInstance());
        validateQueryEndpoints(queryParamsOrderBy);
        return new Query(this.repo, this.path, queryParamsOrderBy, true);
    }

    public Query orderByPriority() {
        validateNoOrderByCall();
        QueryParams queryParamsOrderBy = this.params.orderBy(PriorityIndex.getInstance());
        validateQueryEndpoints(queryParamsOrderBy);
        return new Query(this.repo, this.path, queryParamsOrderBy, true);
    }

    public Query orderByValue() {
        validateNoOrderByCall();
        return new Query(this.repo, this.path, this.params.orderBy(ValueIndex.getInstance()), true);
    }

    public void removeEventListener(ChildEventListener childEventListener) {
        if (childEventListener == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{92, 92, 65, 68, 92, 91, 85, 71, 18, 93, 76, 70, 68, 21, 92, 95, 77, 21, 82, 80, 18, 94, 76, 89, 92}, "052095", false, true));
        }
        removeEventRegistration(new ChildEventRegistration(this.repo, childEventListener, getSpec()));
    }

    public void removeEventListener(ValueEventListener valueEventListener) {
        if (valueEventListener == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{84, 15, 17, 17, 0, 15, 93, 20, 66, 8, 16, 18, 76, 70, 12, 10, 17, 65, 90, 3, 66, 11, 16, 13, 84}, "8fbeea", false));
        }
        removeEventRegistration(new ValueEventRegistration(this.repo, valueEventListener, getSpec()));
    }

    public Query startAt(double d) {
        return startAt(d, (String) null);
    }

    public Query startAt(double d, String str) {
        return startAt(new DoubleNode(Double.valueOf(d), PriorityUtilities.NullPriority()), str);
    }

    public Query startAt(String str) {
        return startAt(str, (String) null);
    }

    public Query startAt(String str, String str2) {
        return startAt(str != null ? new StringNode(str, PriorityUtilities.NullPriority()) : EmptyNode.Empty(), str2);
    }

    public Query startAt(boolean z) {
        return startAt(z, (String) null);
    }

    public Query startAt(boolean z, String str) {
        return startAt(new BooleanNode(Boolean.valueOf(z), PriorityUtilities.NullPriority()), str);
    }
}

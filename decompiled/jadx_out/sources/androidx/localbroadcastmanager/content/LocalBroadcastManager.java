package androidx.localbroadcastmanager.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes47.dex */
public final class LocalBroadcastManager {
    private static final boolean DEBUG = false;
    static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    private static LocalBroadcastManager mInstance;
    private final Context mAppContext;
    private final Handler mHandler;
    private static final String TAG = NPStringFog.decode(new byte[]{116, 91, 0, 0, 15, 36, 74, 91, 2, 5, 0, 7, 75, 64, 46, 0, 13, 7, 95, 81, 17}, "84cacf", true);
    private static final Object mLock = new Object();
    private final HashMap<BroadcastReceiver, ArrayList<ReceiverRecord>> mReceivers = new HashMap<>();
    private final HashMap<String, ArrayList<ReceiverRecord>> mActions = new HashMap<>();
    private final ArrayList<BroadcastRecord> mPendingBroadcasts = new ArrayList<>();

    private static final class BroadcastRecord {
        final Intent intent;
        final ArrayList<ReceiverRecord> receivers;

        BroadcastRecord(Intent intent, ArrayList<ReceiverRecord> arrayList) {
            this.intent = intent;
            this.receivers = arrayList;
        }
    }

    private static final class ReceiverRecord {
        boolean broadcasting;
        boolean dead;
        final IntentFilter filter;
        final BroadcastReceiver receiver;

        ReceiverRecord(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.filter = intentFilter;
            this.receiver = broadcastReceiver;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append(NPStringFog.decode(new byte[]{52, 4, 80, 86, 80, 78, 3, 19, 72}, "fa3398", false, false));
            sb.append(this.receiver);
            sb.append(NPStringFog.decode(new byte[]{24, 84, 81, 91, 77, 0, 74, 15}, "82879e", false));
            sb.append(this.filter);
            if (this.dead) {
                sb.append(NPStringFog.decode(new byte[]{19, 118, 112, 32, 112}, "325a45", -5.3696704E7f));
            }
            sb.append(NPStringFog.decode(new byte[]{68}, "91b1c8", -4.7898752E8f));
            return sb.toString();
        }
    }

    private LocalBroadcastManager(Context context) {
        this.mAppContext = context;
        this.mHandler = new Handler(this, context.getMainLooper()) { // from class: androidx.localbroadcastmanager.content.LocalBroadcastManager.1
            final LocalBroadcastManager this$0;

            {
                this.this$0 = this;
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) throws Throwable {
                switch (message.what) {
                    case 1:
                        this.this$0.executePendingBroadcasts();
                        break;
                    default:
                        super.handleMessage(message);
                        break;
                }
            }
        };
    }

    public static LocalBroadcastManager getInstance(Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = mInstance;
        }
        return localBroadcastManager;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:22:0x0047
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1182)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    void executePendingBroadcasts() throws java.lang.Throwable {
        /*
            r9 = this;
            r2 = 0
        L1:
            java.util.HashMap<android.content.BroadcastReceiver, java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$ReceiverRecord>> r1 = r9.mReceivers
            monitor-enter(r1)
            java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$BroadcastRecord> r0 = r9.mPendingBroadcasts     // Catch: java.lang.Throwable -> L4a
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L4a
            if (r0 > 0) goto Le
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L4a
            return
        Le:
            androidx.localbroadcastmanager.content.LocalBroadcastManager$BroadcastRecord[] r4 = new androidx.localbroadcastmanager.content.LocalBroadcastManager.BroadcastRecord[r0]     // Catch: java.lang.Throwable -> L4a
            java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$BroadcastRecord> r0 = r9.mPendingBroadcasts     // Catch: java.lang.Throwable -> L47
            r0.toArray(r4)     // Catch: java.lang.Throwable -> L47
            java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$BroadcastRecord> r0 = r9.mPendingBroadcasts     // Catch: java.lang.Throwable -> L47
            r0.clear()     // Catch: java.lang.Throwable -> L47
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L47
            r1 = r2
        L1c:
            int r0 = r4.length
            if (r1 >= r0) goto L1
            r5 = r4[r1]
            java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$ReceiverRecord> r0 = r5.receivers
            int r6 = r0.size()
            r3 = r2
        L28:
            if (r3 >= r6) goto L43
            java.util.ArrayList<androidx.localbroadcastmanager.content.LocalBroadcastManager$ReceiverRecord> r0 = r5.receivers
            java.lang.Object r0 = r0.get(r3)
            androidx.localbroadcastmanager.content.LocalBroadcastManager$ReceiverRecord r0 = (androidx.localbroadcastmanager.content.LocalBroadcastManager.ReceiverRecord) r0
            boolean r7 = r0.dead
            if (r7 != 0) goto L3f
            android.content.BroadcastReceiver r0 = r0.receiver
            android.content.Context r7 = r9.mAppContext
            android.content.Intent r8 = r5.intent
            r0.onReceive(r7, r8)
        L3f:
            int r0 = r3 + 1
            r3 = r0
            goto L28
        L43:
            int r0 = r1 + 1
            r1 = r0
            goto L1c
        L47:
            r0 = move-exception
        L48:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L47
            throw r0
        L4a:
            r0 = move-exception
            goto L48
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.localbroadcastmanager.content.LocalBroadcastManager.executePendingBroadcasts():void");
    }

    public void registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.mReceivers) {
            ReceiverRecord receiverRecord = new ReceiverRecord(intentFilter, broadcastReceiver);
            ArrayList<ReceiverRecord> arrayList = this.mReceivers.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList<>(1);
                this.mReceivers.put(broadcastReceiver, arrayList);
            }
            arrayList.add(receiverRecord);
            for (int i = 0; i < intentFilter.countActions(); i++) {
                String action = intentFilter.getAction(i);
                ArrayList<ReceiverRecord> arrayList2 = this.mActions.get(action);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>(1);
                    this.mActions.put(action, arrayList2);
                }
                arrayList2.add(receiverRecord);
            }
        }
    }

    public boolean sendBroadcast(Intent intent) {
        ArrayList arrayList;
        String strDecode;
        synchronized (this.mReceivers) {
            String action = intent.getAction();
            String strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set<String> categories = intent.getCategories();
            boolean z = (intent.getFlags() & 8) != 0;
            if (z) {
                Log.v(TAG, NPStringFog.decode(new byte[]{106, 92, 17, 9, 13, 19, 81, 87, 5, 70, 21, 28, 72, 92, 66}, "89bfae", -1.9090168E9f) + strResolveTypeIfNeeded + NPStringFog.decode(new byte[]{19, 66, 5, 93, 6, 12, 86, 17}, "31f5ca", 1.7383264E9f) + scheme + NPStringFog.decode(new byte[]{22, 93, 81, 69, 8, 89, 66, 87, 89, 17, 65}, "627ea7", -1836916264L) + intent);
            }
            ArrayList<ReceiverRecord> arrayList2 = this.mActions.get(intent.getAction());
            if (arrayList2 != null) {
                if (z) {
                    Log.v(TAG, NPStringFog.decode(new byte[]{121, 80, 71, 93, 90, 93, 24, 95, 90, 71, 65, 9, 24}, "833453", 2.0290144E9f) + arrayList2);
                }
                ArrayList arrayList3 = null;
                int i = 0;
                while (i < arrayList2.size()) {
                    ReceiverRecord receiverRecord = arrayList2.get(i);
                    if (z) {
                        Log.v(TAG, NPStringFog.decode(new byte[]{41, 7, 21, 80, 14, 94, 10, 1, 65, 82, 1, 86, 13, 8, 18, 71, 70, 81, 13, 10, 21, 86, 20, 23}, "dfa3f7", -9.4072703E8d) + receiverRecord.filter);
                    }
                    if (!receiverRecord.broadcasting) {
                        int iMatch = receiverRecord.filter.match(action, strResolveTypeIfNeeded, scheme, data, categories, TAG);
                        if (iMatch >= 0) {
                            if (z) {
                                Log.v(TAG, NPStringFog.decode(new byte[]{69, 66, 39, 81, 85, 16, 0, 16, 65, 85, 88, 16, 6, 10, 4, 92, 24, 68, 69, 15, 0, 76, 90, 12, 88, 82, 25}, "eba89d", 15829) + Integer.toHexString(iMatch));
                            }
                            arrayList = arrayList3 == null ? new ArrayList() : arrayList3;
                            arrayList.add(receiverRecord);
                            receiverRecord.broadcasting = true;
                        } else {
                            if (z) {
                                switch (iMatch) {
                                    case -4:
                                        strDecode = NPStringFog.decode(new byte[]{84, 89, 23, 1, 2, 91, 69, 65}, "78cde4", false, true);
                                        break;
                                    case -3:
                                        strDecode = NPStringFog.decode(new byte[]{84, 6, 21, 15, 88, 94}, "5eaf70", true, false);
                                        break;
                                    case -2:
                                        strDecode = NPStringFog.decode(new byte[]{5, 88, 64, 84}, "a94560", true, false);
                                        break;
                                    case -1:
                                        strDecode = NPStringFog.decode(new byte[]{23, 31, 73, 92}, "cf994d", -1.259730579E9d);
                                        break;
                                    default:
                                        strDecode = NPStringFog.decode(new byte[]{23, 8, 95, 89, 11, 64, 12, 70, 70, 82, 5, 68, 13, 8}, "bf47d7", true);
                                        break;
                                }
                                Log.v(TAG, NPStringFog.decode(new byte[]{22, 66, 35, 94, 93, 67, 83, 16, 69, 83, 88, 83, 22, 12, 10, 67, 17, 90, 87, 22, 6, 95, 11, 23}, "6be717", 16029990L) + strDecode);
                            }
                            arrayList = arrayList3;
                        }
                    } else if (z) {
                        Log.v(TAG, NPStringFog.decode(new byte[]{66, 16, 118, 91, 88, 67, 7, 66, 23, 65, 20, 67, 3, 66, 87, 87, 64, 23, 3, 92, 66, 87, 85, 83, 27, 16, 81, 86, 80, 82, 6}, "b00247", false));
                        arrayList = arrayList3;
                    } else {
                        arrayList = arrayList3;
                    }
                    i++;
                    arrayList3 = arrayList;
                }
                if (arrayList3 != null) {
                    for (int i2 = 0; i2 < arrayList3.size(); i2++) {
                        ((ReceiverRecord) arrayList3.get(i2)).broadcasting = false;
                    }
                    this.mPendingBroadcasts.add(new BroadcastRecord(intent, arrayList3));
                    if (!this.mHandler.hasMessages(1)) {
                        this.mHandler.sendEmptyMessage(1);
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public void sendBroadcastSync(Intent intent) throws Throwable {
        if (sendBroadcast(intent)) {
            executePendingBroadcasts();
        }
    }

    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        synchronized (this.mReceivers) {
            ArrayList<ReceiverRecord> arrayListRemove = this.mReceivers.remove(broadcastReceiver);
            if (arrayListRemove == null) {
                return;
            }
            for (int size = arrayListRemove.size() - 1; size >= 0; size--) {
                ReceiverRecord receiverRecord = arrayListRemove.get(size);
                receiverRecord.dead = true;
                for (int i = 0; i < receiverRecord.filter.countActions(); i++) {
                    String action = receiverRecord.filter.getAction(i);
                    ArrayList<ReceiverRecord> arrayList = this.mActions.get(action);
                    if (arrayList != null) {
                        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                            ReceiverRecord receiverRecord2 = arrayList.get(size2);
                            if (receiverRecord2.receiver == broadcastReceiver) {
                                receiverRecord2.dead = true;
                                arrayList.remove(size2);
                            }
                        }
                        if (arrayList.size() <= 0) {
                            this.mActions.remove(action);
                        }
                    }
                }
            }
        }
    }
}

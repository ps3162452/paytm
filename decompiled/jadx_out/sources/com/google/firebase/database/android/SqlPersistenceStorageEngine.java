package com.google.firebase.database.android;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.core.CompoundWrite;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.UserWriteRecord;
import com.google.firebase.database.core.persistence.PersistenceStorageEngine;
import com.google.firebase.database.core.persistence.PruneForest;
import com.google.firebase.database.core.persistence.TrackedQuery;
import com.google.firebase.database.core.utilities.ImmutableTree;
import com.google.firebase.database.core.utilities.NodeSizeEstimator;
import com.google.firebase.database.core.utilities.Pair;
import com.google.firebase.database.core.utilities.Utilities;
import com.google.firebase.database.core.view.QuerySpec;
import com.google.firebase.database.logging.LogWrapper;
import com.google.firebase.database.snapshot.ChildKey;
import com.google.firebase.database.snapshot.ChildrenNode;
import com.google.firebase.database.snapshot.EmptyNode;
import com.google.firebase.database.snapshot.NamedNode;
import com.google.firebase.database.snapshot.Node;
import com.google.firebase.database.snapshot.NodeUtilities;
import com.google.firebase.database.util.JsonMapper;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class SqlPersistenceStorageEngine implements PersistenceStorageEngine {
    static final boolean $assertionsDisabled = false;
    private static final int CHILDREN_NODE_SPLIT_SIZE_THRESHOLD = 16384;
    private static final int ROW_SPLIT_SIZE = 262144;
    private final SQLiteDatabase database;
    private boolean insideTransaction;
    private final LogWrapper logger;
    private long transactionStart = 0;
    private static final String CREATE_SERVER_CACHE = NPStringFog.decode(new byte[]{123, 51, 117, 112, 102, 38, 24, 53, 113, 115, 126, 38, 24, 18, 85, 67, 68, 6, 74, 34, 81, 82, 90, 6, 24, 73, 64, 80, 70, 11, 24, 53, 117, 105, 102, 67, 104, 51, 121, 124, 115, 49, 97, 65, 123, 116, 107, 79, 24, 23, 81, 93, 71, 6, 24, 35, 124, 126, 112, 74, 3}, "8a012c", true);
    private static final String CREATE_TRACKED_KEYS = NPStringFog.decode(new byte[]{118, 48, 117, 36, 55, 124, 21, 54, 113, 39, 47, 124, 21, 22, 66, 4, 0, 82, 80, 6, 123, 0, 26, 74, 21, 74, 89, 1, 67, 112, 123, 54, 117, 34, 38, 107, 25, 66, 91, 0, 26, 25, 97, 39, 104, 49, 74, 2}, "5b0ec9", -12342);
    private static final String CREATE_TRACKED_QUERIES = NPStringFog.decode(new byte[]{32, 107, 114, 113, 55, 125, 67, 109, 118, 114, 47, 125, 67, 77, 69, 81, 0, 83, 6, 93, 102, 69, 6, 74, 10, 92, 68, 16, 75, 81, 7, 25, 126, 126, 55, 125, 36, 124, 101, 16, 51, 106, 42, 116, 118, 98, 58, 24, 40, 124, 110, 28, 67, 72, 2, 77, 95, 16, 55, 125, 59, 109, 27, 16, 18, 77, 6, 75, 78, 96, 2, 74, 2, 84, 68, 16, 55, 125, 59, 109, 27, 16, 15, 89, 16, 77, 98, 67, 6, 24, 42, 119, 99, 117, 36, 125, 49, 21, 23, 83, 12, 85, 19, 85, 82, 68, 6, 24, 42, 119, 99, 117, 36, 125, 49, 21, 23, 81, 0, 76, 10, 79, 82, 16, 42, 118, 55, 124, 112, 117, 49, 17, 88}, "c970c8", -9.95604115E8d);
    private static final String CREATE_WRITES = NPStringFog.decode(new byte[]{118, 97, 112, 35, 96, 115, 21, 103, 116, 32, 120, 115, 21, 68, 71, 11, 64, 83, 70, 19, 29, 11, 80, 22, 124, 125, 97, 39, 115, 115, 103, 31, 21, 18, 85, 66, 93, 19, 97, 39, 108, 98, 25, 19, 65, 27, 68, 83, 21, 103, 112, 58, 96, 26, 21, 67, 84, 16, 64, 22, 124, 125, 97, 39, 115, 115, 103, 31, 21, 12, 91, 82, 80, 19, 119, 46, 123, 116, 25, 19, 96, 44, 125, 103, 96, 118, 21, 74, 93, 82, 25, 19, 69, 3, 70, 66, 28, 26, 14}, "535b46", 7.765879E8f);
    private static final String FIRST_PART_KEY = NPStringFog.decode(new byte[]{27, 70, 2, 23, 66, 73, 5, 6, 83, 85}, "56ce6d", -1630113506L);
    private static final String LOGGER_COMPONENT = NPStringFog.decode(new byte[]{99, 86, 70, 65, 80, 71, 71, 86, 90, 81, 92}, "334294", 1.680698E9d);
    private static final String PART_KEY_FORMAT = NPStringFog.decode(new byte[]{76, 66, 88, 66, 18, 31, 71, 2, 13, 84}, "b290f2", -1.377533352E9d);
    private static final String PART_KEY_PREFIX = NPStringFog.decode(new byte[]{22, 20, 82, 70, 23, 21}, "8d34c8", -2.145853E9f);
    private static final String PATH_COLUMN_NAME = NPStringFog.decode(new byte[]{73, 82, 68, 11}, "930c38", -29654);
    private static final String ROW_ID_COLUMN_NAME = NPStringFog.decode(new byte[]{68, 88, 66, 89, 85}, "67501a", 1605703612L);
    private static final String SERVER_CACHE_TABLE = NPStringFog.decode(new byte[]{65, 80, 20, 16, 81, 19, 113, 84, 5, 14, 81}, "25ff4a", 7.8813514E8d);
    private static final String TRACKED_KEYS_ID_COLUMN_NAME = NPStringFog.decode(new byte[]{80, 84}, "902c38", 1996519456L);
    private static final String TRACKED_KEYS_KEY_COLUMN_NAME = NPStringFog.decode(new byte[]{95, 84, 28}, "41e0e6", false);
    private static final String TRACKED_KEYS_TABLE = NPStringFog.decode(new byte[]{23, 23, 87, 91, 8, 85, 7, 46, 83, 65, 16}, "ce68c0", -126);
    private static final String TRACKED_QUERY_ACTIVE_COLUMN_NAME = NPStringFog.decode(new byte[]{85, 86, 23, 91, 21, 1}, "45c2cd", 4629);
    private static final String TRACKED_QUERY_COMPLETE_COLUMN_NAME = NPStringFog.decode(new byte[]{85, 94, 90, 69, 95, 92, 66, 84}, "617539", false);
    private static final String TRACKED_QUERY_ID_COLUMN_NAME = NPStringFog.decode(new byte[]{12, 7}, "ec7ec3", false);
    private static final String TRACKED_QUERY_LAST_USE_COLUMN_NAME = NPStringFog.decode(new byte[]{9, 3, 69, 18, 100, 68, 0}, "eb6f17", false);
    private static final String TRACKED_QUERY_PARAMS_COLUMN_NAME = NPStringFog.decode(new byte[]{66, 77, 81, 75, 64, 100, 82, 74, 85, 84, 74}, "384994", false);
    private static final String TRACKED_QUERY_PATH_COLUMN_NAME = NPStringFog.decode(new byte[]{72, 4, 17, 92}, "8ee494", 4432858L);
    private static final String TRACKED_QUERY_TABLE = NPStringFog.decode(new byte[]{16, 19, 85, 84, 14, 3, 0, 48, 65, 82, 23, 15, 1, 18}, "da47ef", 1.786014126E9d);
    private static final String VALUE_COLUMN_NAME = NPStringFog.decode(new byte[]{23, 81, 93, 20, 85}, "a01a0f", 29496);
    private static final String WRITES_TABLE = NPStringFog.decode(new byte[]{66, 71, 80, 67, 87, 23}, "55972d", 1.7204141E9f);
    private static final String WRITE_ID_COLUMN_NAME = NPStringFog.decode(new byte[]{15, 86}, "f293c1", false);
    private static final String WRITE_NODE_COLUMN_NAME = NPStringFog.decode(new byte[]{10, 14, 0, 6}, "dadcfb", 21196);
    private static final String WRITE_PART_COLUMN_NAME = NPStringFog.decode(new byte[]{20, 89, 16, 71}, "d8b332", true);
    private static final String WRITE_TYPE_COLUMN_NAME = NPStringFog.decode(new byte[]{70, 77, 73, 80}, "24955c", false, true);
    private static final String WRITE_TYPE_MERGE = NPStringFog.decode(new byte[]{9}, "d1b975", 286117765L);
    private static final String WRITE_TYPE_OVERWRITE = NPStringFog.decode(new byte[]{12}, "ce6861", -1.7767064E9f);
    private static final Charset UTF8_CHARSET = Charset.forName(NPStringFog.decode(new byte[]{49, 53, 39, 78, 11}, "daac3d", 399969683L));

    private static class PersistentCacheOpenHelper extends SQLiteOpenHelper {
        static final boolean $assertionsDisabled = false;
        private static final int DATABASE_VERSION = 2;

        public PersistentCacheOpenHelper(Context context, String str) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, 2);
        }

        private void dropTable(SQLiteDatabase sQLiteDatabase, String str) {
            sQLiteDatabase.execSQL(NPStringFog.decode(new byte[]{124, 100, 43, 103, 18, 53, 121, 116, 40, 114, 18, 40, 126, 22, 33, 111, 123, 50, 108, 101, 68}, "86d72a", false) + str);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(NPStringFog.decode(new byte[]{34, 99, 116, 116, 100, 35, 65, 101, 112, 119, 124, 35, 65, 66, 84, 71, 70, 3, 19, 114, 80, 86, 88, 3, 65, 25, 65, 84, 68, 14, 65, 101, 116, 109, 100, 70, 49, 99, 120, 120, 113, 52, 56, 17, 122, 112, 105, 74, 65, 71, 80, 89, 69, 3, 65, 115, 125, 122, 114, 79, 90}, "a1150f", -2.3334675E8f));
            sQLiteDatabase.execSQL(NPStringFog.decode(new byte[]{34, 48, 125, 32, 100, 119, 65, 54, 121, 35, 124, 119, 65, 21, 74, 8, 68, 87, 18, 66, 16, 8, 84, 18, 40, 44, 108, 36, 119, 119, 51, 78, 24, 17, 81, 70, 9, 66, 108, 36, 104, 102, 77, 66, 76, 24, 64, 87, 65, 54, 125, 57, 100, 30, 65, 18, 89, 19, 68, 18, 40, 44, 108, 36, 119, 119, 51, 78, 24, 15, 95, 86, 4, 66, 122, 45, 127, 112, 77, 66, 109, 47, 121, 99, 52, 39, 24, 73, 89, 86, 77, 66, 72, 0, 66, 70, 72, 75, 3}, "ab8a02", -29461));
            sQLiteDatabase.execSQL(NPStringFog.decode(new byte[]{119, 101, 38, 32, 48, 35, 20, 99, 34, 35, 40, 35, 20, 67, 17, 0, 7, 13, 81, 83, 50, 20, 1, 20, 93, 82, 16, 65, 76, 15, 80, 23, 42, 47, 48, 35, 115, 114, 49, 65, 52, 52, 125, 122, 34, 51, 61, 70, 127, 114, 58, 77, 68, 22, 85, 67, 11, 65, 48, 35, 108, 99, 79, 65, 21, 19, 81, 69, 26, 49, 5, 20, 85, 90, 16, 65, 48, 35, 108, 99, 79, 65, 8, 7, 71, 67, 54, 18, 1, 70, 125, 121, 55, 36, 35, 35, 102, 27, 67, 2, 11, 11, 68, 91, 6, 21, 1, 70, 125, 121, 55, 36, 35, 35, 102, 27, 67, 0, 7, 18, 93, 65, 6, 65, 45, 40, 96, 114, 36, 36, 54, 79, 15}, "47cadf", true, false));
            sQLiteDatabase.execSQL(NPStringFog.decode(new byte[]{119, 49, 124, 39, 100, 119, 20, 55, 120, 36, 124, 119, 20, 23, 75, 7, 83, 89, 81, 7, 114, 3, 73, 65, 20, 75, 80, 2, 16, 123, 122, 55, 124, 33, 117, 96, 24, 67, 82, 3, 73, 18, 96, 38, 97, 50, 25, 9}, "4c9f02", true, false));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i > 1) {
                throw new AssertionError(NPStringFog.decode(new byte[]{98, 1, 21, 83, 11, 94, 18, 16, 21, 95, 5, 94, 81, 8, 80, 23, 17, 64, 82, 22, 84, 83, 13, 94, 82, 68, 65, 88, 68}, "5d57d0", -9212) + i2);
            }
            dropTable(sQLiteDatabase, NPStringFog.decode(new byte[]{16, 3, 23, 71, 83, 22, 32, 7, 6, 89, 83}, "cfe16d", 29528));
            sQLiteDatabase.execSQL(NPStringFog.decode(new byte[]{123, 52, 35, 121, 54, 116, 24, 50, 39, 122, 46, 116, 24, 21, 3, 74, 20, 84, 74, 37, 7, 91, 10, 84, 24, 78, 22, 89, 22, 89, 24, 50, 35, 96, 54, 17, 104, 52, 47, 117, 35, 99, 97, 70, 45, 125, 59, 29, 24, 16, 7, 84, 23, 84, 24, 36, 42, 119, 32, 24, 3}, "8ff8b1", -1411478915L));
            dropTable(sQLiteDatabase, NPStringFog.decode(new byte[]{6, 13, 91, 19, 90, 81, 17, 7}, "eb6c64", true, false));
            sQLiteDatabase.execSQL(NPStringFog.decode(new byte[]{118, 101, 38, 37, 108, 118, 21, 99, 34, 38, 116, 118, 21, 67, 17, 5, 91, 88, 80, 83, 40, 1, 65, 64, 21, 31, 10, 0, 24, 122, 123, 99, 38, 35, 125, 97, 25, 23, 8, 1, 65, 19, 97, 114, 59, 48, 17, 8}, "57cd83", false));
            sQLiteDatabase.execSQL(NPStringFog.decode(new byte[]{115, 49, 39, 121, 100, 125, 16, 55, 35, 122, 124, 125, 16, 23, 16, 89, 83, 83, 85, 7, 51, 77, 85, 74, 89, 6, 17, 24, 24, 81, 84, 67, 43, 118, 100, 125, 119, 38, 48, 24, 96, 106, 121, 46, 35, 106, 105, 24, 123, 38, 59, 20, 16, 72, 81, 23, 10, 24, 100, 125, 104, 55, 78, 24, 65, 77, 85, 17, 27, 104, 81, 74, 81, 14, 17, 24, 100, 125, 104, 55, 78, 24, 92, 89, 67, 23, 55, 75, 85, 24, 121, 45, 54, 125, 119, 125, 98, 79, 66, 91, 95, 85, 64, 15, 7, 76, 85, 24, 121, 45, 54, 125, 119, 125, 98, 79, 66, 89, 83, 76, 89, 21, 7, 24, 121, 118, 100, 38, 37, 125, 98, 17, 11}, "0cb808", true, true));
        }
    }

    public SqlPersistenceStorageEngine(Context context, com.google.firebase.database.core.Context context2, String str) {
        try {
            String strEncode = URLEncoder.encode(str, NPStringFog.decode(new byte[]{20, 16, 95, 25, 15}, "ad9475", 1560876441L));
            this.logger = context2.getLogger(NPStringFog.decode(new byte[]{97, 86, 68, 18, 10, 66, 69, 86, 88, 2, 6}, "136ac1", false, true));
            this.database = openDatabase(context, strEncode);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static String buildAncestorWhereClause(Path path, String[] strArr) {
        int i = 0;
        StringBuilder sb = new StringBuilder(NPStringFog.decode(new byte[]{25}, "1feea8", -1807493103L));
        while (!path.isEmpty()) {
            sb.append(PATH_COLUMN_NAME);
            sb.append(NPStringFog.decode(new byte[]{20, 8, 23, 7, 24, 127, 102, 21}, "457880", true, true));
            strArr[i] = pathToKey(path);
            path = path.getParent();
            i++;
        }
        sb.append(PATH_COLUMN_NAME);
        sb.append(NPStringFog.decode(new byte[]{70, 89, 70, 8, 72}, "fdf7a8", 13885));
        strArr[i] = pathToKey(Path.getEmptyPath());
        return sb.toString();
    }

    private String commaSeparatedList(Collection<Long> collection) {
        StringBuilder sb = new StringBuilder();
        Iterator<Long> it = collection.iterator();
        boolean z = true;
        while (it.hasNext()) {
            long jLongValue = it.next().longValue();
            if (!z) {
                sb.append(NPStringFog.decode(new byte[]{29}, "135d71", false));
            }
            sb.append(jLongValue);
            z = false;
        }
        return sb.toString();
    }

    private Node deserializeNode(byte[] bArr) {
        try {
            return NodeUtilities.NodeFromJSON(JsonMapper.parseJsonValue(new String(bArr, UTF8_CHARSET)));
        } catch (IOException e) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{112, 88, 77, 15, 7, 68, 93, 88, 76, 67, 7, 1, 64, 82, 74, 10, 2, 8, 90, 77, 93, 67, 13, 11, 87, 82, 2, 67}, "378ccd", -1.67570433E8d) + new String(bArr, UTF8_CHARSET), e);
        }
    }

    private byte[] joinBytes(List<byte[]> list) {
        Iterator<byte[]> it = list.iterator();
        int length = 0;
        while (it.hasNext()) {
            length = it.next().length + length;
        }
        byte[] bArr = new byte[length];
        int length2 = 0;
        for (byte[] bArr2 : list) {
            System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
            length2 = bArr2.length + length2;
        }
        return bArr;
    }

    private Node loadNested(Path path) throws Throwable {
        Node nodeDeserializeNode;
        int i;
        Path path2;
        Node nodeUpdateChild;
        boolean z;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Cursor cursorLoadNestedQuery = loadNestedQuery(path, new String[]{PATH_COLUMN_NAME, VALUE_COLUMN_NAME});
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        long jCurrentTimeMillis3 = System.currentTimeMillis();
        while (cursorLoadNestedQuery.moveToNext()) {
            try {
                try {
                    arrayList.add(cursorLoadNestedQuery.getString(0));
                    arrayList2.add(cursorLoadNestedQuery.getBlob(1));
                } catch (Throwable th) {
                    th = th;
                    cursorLoadNestedQuery.close();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        cursorLoadNestedQuery.close();
        long jCurrentTimeMillis4 = System.currentTimeMillis();
        long jCurrentTimeMillis5 = System.currentTimeMillis();
        Node nodeEmpty = EmptyNode.Empty();
        boolean z2 = false;
        HashMap map = new HashMap();
        int i2 = 0;
        while (i2 < arrayList2.size()) {
            if (arrayList.get(i2).endsWith(FIRST_PART_KEY)) {
                String str = arrayList.get(i2);
                Path path3 = new Path(str.substring(0, str.length() - FIRST_PART_KEY.length()));
                int iSplitNodeRunLength = splitNodeRunLength(path3, arrayList, i2);
                if (this.logger.logsDebug()) {
                    this.logger.debug(NPStringFog.decode(new byte[]{126, 89, 83, 84, 13, 8, 85, 22, 65, 64, 8, 15, 70, 22, 92, 95, 0, 3, 18, 65, 91, 68, 12, 70}, "2620df", -1.867875146E9d) + iSplitNodeRunLength + NPStringFog.decode(new byte[]{24, 73, 81, 23, 66, 69, 22}, "890e66", -820819306L), new Object[0]);
                }
                nodeDeserializeNode = deserializeNode(joinBytes(arrayList2.subList(i2, i2 + iSplitNodeRunLength)));
                i = (i2 + iSplitNodeRunLength) - 1;
                path2 = path3;
            } else {
                nodeDeserializeNode = deserializeNode((byte[]) arrayList2.get(i2));
                i = i2;
                path2 = new Path(arrayList.get(i2));
            }
            if (path2.getBack() != null && path2.getBack().isPriorityChildName()) {
                map.put(path2, nodeDeserializeNode);
                z = z2;
                nodeUpdateChild = nodeEmpty;
            } else if (path2.contains(path)) {
                Utilities.hardAssert(!z2, NPStringFog.decode(new byte[]{115, 1, 67, 7, 81, 11, 83, 5, 94, 16, 71, 69, 88, 2, 16, 20, 85, 17, 95, 68, 93, 17, 71, 17, 23, 7, 95, 9, 81, 69, 86, 2, 68, 1, 70, 69, 86, 10, 83, 1, 71, 17, 88, 22, 67, 74}, "7d0d4e", -1.0154023E8f));
                boolean z3 = z2;
                nodeUpdateChild = nodeDeserializeNode.getChild(Path.getRelative(path2, path));
                z = z3;
            } else {
                if (!path.contains(path2)) {
                    throw new IllegalStateException(String.format(NPStringFog.decode(new byte[]{46, 87, 7, 82, 12, 93, 5, 24, 7, 88, 69, 70, 12, 74, 3, 90, 4, 71, 7, 92, 70, 68, 10, 68, 66, 79, 15, 66, 13, 19, 18, 89, 18, 94, 69, 22, 17, 24, 0, 89, 23, 19, 71, 75}, "b8f6e3", false), path2, path));
                }
                nodeUpdateChild = nodeEmpty.updateChild(Path.getRelative(path, path2), nodeDeserializeNode);
                z = true;
            }
            i2 = i + 1;
            nodeEmpty = nodeUpdateChild;
            z2 = z;
        }
        for (Map.Entry entry : map.entrySet()) {
            nodeEmpty = nodeEmpty.updateChild(Path.getRelative(path, (Path) entry.getKey()), (Node) entry.getValue());
        }
        long jCurrentTimeMillis6 = System.currentTimeMillis();
        long jCurrentTimeMillis7 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{41, 91, 5, 92, 92, 0, 69, 85, 68, 76, 86, 16, 4, 88, 68, 87, 95, 68, 64, 80, 68, 74, 86, 19, 22, 20, 2, 87, 75, 68, 4, 20, 16, 87, 77, 5, 9, 20, 11, 94, 25, 65, 1, 20, 10, 87, 93, 1, 22, 20, 5, 76, 25, 65, 22, 20, 13, 86, 25, 65, 1, 89, 23, 24, 17, 53, 16, 81, 22, 65, 3, 68, 64, 80, 9, 75, 21, 68, 41, 91, 5, 92, 80, 10, 2, 14, 68, 29, 93, 9, 22, 24, 68, 107, 92, 22, 12, 85, 8, 81, 67, 13, 11, 83, 94, 24, 28, 0, 8, 71, 77}, "e4d89d", -11093), Integer.valueOf(arrayList2.size()), Integer.valueOf(NodeSizeEstimator.nodeCount(nodeEmpty)), path, Long.valueOf(jCurrentTimeMillis7 - jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis), Long.valueOf(jCurrentTimeMillis4 - jCurrentTimeMillis3), Long.valueOf(jCurrentTimeMillis6 - jCurrentTimeMillis5)), new Object[0]);
        }
        return nodeEmpty;
    }

    private Cursor loadNestedQuery(Path path, String[] strArr) {
        String strPathToKey = pathToKey(path);
        String strPathPrefixStartToPrefixEnd = pathPrefixStartToPrefixEnd(strPathToKey);
        String[] strArr2 = new String[path.size() + 3];
        String str = buildAncestorWhereClause(path, strArr2) + NPStringFog.decode(new byte[]{66, 127, 49, 23, 24, 68, 3, 68, 11, 23, 14, 20, 93, 16, 34, 121, 116, 20, 18, 81, 23, 95, 16, 8, 66, 15, 74}, "b0c704", 1203567474L);
        strArr2[path.size() + 1] = strPathToKey;
        strArr2[path.size() + 2] = strPathPrefixStartToPrefixEnd;
        return this.database.query(SERVER_CACHE_TABLE, strArr, str, strArr2, null, null, PATH_COLUMN_NAME);
    }

    private SQLiteDatabase openDatabase(Context context, String str) {
        try {
            SQLiteDatabase writableDatabase = new PersistentCacheOpenHelper(context, str).getWritableDatabase();
            writableDatabase.rawQuery(NPStringFog.decode(new byte[]{49, 51, 115, 116, 121, 117, 65, 13, 93, 80, 95, 93, 15, 6, 109, 94, 91, 80, 4, 65, 15, 19, 113, 108, 34, 45, 103, 96, 125, 98, 36}, "aa2344", -2.39246061E8d), null).close();
            writableDatabase.beginTransaction();
            writableDatabase.endTransaction();
            return writableDatabase;
        } catch (SQLiteException e) {
            if (e instanceof SQLiteDatabaseLockedException) {
                throw new DatabaseException(NPStringFog.decode(new byte[]{35, 80, 10, 92, 93, 1, 69, 69, 12, 16, 95, 4, 12, 95, 67, 85, 64, 6, 9, 68, 16, 89, 78, 0, 69, 93, 12, 83, 83, 69, 17, 94, 67, 118, 81, 23, 0, 83, 2, 67, 93, 69, 33, 80, 23, 81, 90, 4, 22, 84, 68, 67, 24, 10, 3, 87, 15, 89, 86, 0, 69, 65, 6, 66, 75, 12, 22, 69, 6, 94, 91, 0, 75, 17, 55, 88, 81, 22, 69, 86, 6, 94, 93, 23, 4, 93, 15, 73, 24, 8, 0, 80, 13, 67, 24, 28, 10, 68, 67, 81, 74, 0, 69, 68, 16, 89, 86, 2, 69, 119, 10, 66, 93, 7, 4, 66, 6, 16, 124, 4, 17, 80, 1, 81, 75, 0, 69, 87, 17, 95, 85, 69, 8, 68, 15, 68, 81, 21, 9, 84, 67, 64, 74, 10, 6, 84, 16, 67, 93, 22, 69, 88, 13, 16, 65, 10, 16, 67, 67, 81, 72, 21, 75, 17, 40, 85, 93, 21, 69, 88, 13, 16, 85, 12, 11, 85, 67, 68, 80, 4, 17, 17, 14, 69, 84, 17, 12, 28, 19, 66, 87, 6, 0, 66, 16, 16, 121, 11, 1, 67, 12, 89, 92, 69, 4, 65, 19, 67, 24, 0, 29, 84, 0, 69, 76, 0, 69, 69, 11, 85, 24, 6, 10, 85, 6, 16, 81, 11, 69, 72, 12, 69, 74, 69, 36, 65, 19, 92, 81, 6, 4, 69, 10, 95, 86, 69, 6, 93, 2, 67, 75, 69, 12, 95, 67, 81, 84, 9, 69, 65, 17, 95, 91, 0, 22, 66, 6, 67, 20, 69, 22, 94, 67, 73, 87, 16, 69, 92, 2, 73, 24, 11, 0, 84, 7, 16, 76, 10, 69, 80, 21, 95, 81, 1, 69, 88, 13, 89, 76, 12, 4, 93, 10, 74, 81, 11, 2, 17, 37, 89, 74, 0, 7, 80, 16, 85, 124, 4, 17, 80, 1, 81, 75, 0, 69, 88, 13, 16, 65, 10, 16, 67, 67, 113, 72, 21, 9, 88, 0, 81, 76, 12, 10, 95, 67, 83, 84, 4, 22, 66, 77, 16, 113, 3, 69, 72, 12, 69, 24, 4, 23, 84, 67, 89, 86, 17, 0, 95, 23, 89, 87, 11, 4, 93, 15, 73, 24, 16, 22, 88, 13, 87, 24, 35, 12, 67, 6, 82, 89, 22, 0, 17, 39, 81, 76, 4, 7, 80, 16, 85, 24, 3, 23, 94, 14, 16, 85, 16, 9, 69, 10, 64, 84, 0, 69, 65, 17, 95, 91, 0, 22, 66, 6, 67, 20, 69, 28, 94, 22, 16, 91, 4, 11, 17, 12, 94, 84, 28, 69, 84, 13, 81, 90, 9, 0, 17, 12, 86, 94, 9, 12, 95, 6, 16, 72, 0, 23, 66, 10, 67, 76, 0, 11, 82, 6, 16, 16, 12, 75, 84, 77, 16, 91, 4, 9, 93, 67, 67, 93, 17, 53, 84, 17, 67, 81, 22, 17, 84, 13, 83, 93, 32, 11, 80, 1, 92, 93, 1, 77, 69, 17, 69, 93, 76, 76, 17, 10, 94, 24, 10, 11, 84, 67, 95, 94, 69, 17, 89, 6, 93, 22}, "e1c08e", -11381), e);
            }
            throw e;
        }
    }

    private String partKey(Path path, int i) {
        return pathToKey(path) + String.format(PART_KEY_FORMAT, Integer.valueOf(i));
    }

    private static String pathPrefixStartToPrefixEnd(String str) {
        return str.substring(0, str.length() - 1) + '0';
    }

    private static String pathToKey(Path path) {
        return path.isEmpty() ? NPStringFog.decode(new byte[]{25}, "6a8183", -4.653517E8f) : path.toString() + NPStringFog.decode(new byte[]{29}, "2cb44f", 17129);
    }

    private void pruneTreeRecursive(Path path, Path path2, ImmutableTree<Long> immutableTree, ImmutableTree<Long> immutableTree2, PruneForest pruneForest, List<Pair<Path, Node>> list) {
        if (immutableTree.getValue() == null) {
            for (Map.Entry<ChildKey, ImmutableTree<Long>> entry : immutableTree.getChildren()) {
                ChildKey key = entry.getKey();
                pruneTreeRecursive(path, path2.child(key), entry.getValue(), immutableTree2.getChild(key), pruneForest.child(entry.getKey()), list);
            }
            return;
        }
        int iIntValue = ((Integer) pruneForest.foldKeptNodes(0, new ImmutableTree.TreeVisitor<Void, Integer>(this, immutableTree2) { // from class: com.google.firebase.database.android.SqlPersistenceStorageEngine.1
            final SqlPersistenceStorageEngine this$0;
            final ImmutableTree val$rowIdsToKeep;

            {
                this.this$0 = this;
                this.val$rowIdsToKeep = immutableTree2;
            }

            @Override // com.google.firebase.database.core.utilities.ImmutableTree.TreeVisitor
            public Integer onNodeValue(Path path3, Void r3, Integer num) {
                return Integer.valueOf(this.val$rowIdsToKeep.get(path3) == null ? num.intValue() + 1 : num.intValue());
            }
        })).intValue();
        if (iIntValue > 0) {
            Path pathChild = path.child(path2);
            if (this.logger.logsDebug()) {
                this.logger.debug(String.format(NPStringFog.decode(new byte[]{124, 85, 92, 80, 25, 22, 93, 16, 75, 81, 78, 16, 91, 68, 92, 20, 28, 6, 18, 94, 86, 80, 92, 17, 18, 82, 92, 88, 86, 21, 18, 64, 88, 64, 81, 66, 23, 67}, "20949b", true), Integer.valueOf(iIntValue), pathChild), new Object[0]);
            }
            pruneForest.foldKeptNodes(null, new ImmutableTree.TreeVisitor<Void, Void>(this, immutableTree2, list, path2, loadNested(pathChild)) { // from class: com.google.firebase.database.android.SqlPersistenceStorageEngine.2
                final SqlPersistenceStorageEngine this$0;
                final Node val$currentNode;
                final Path val$relativePath;
                final ImmutableTree val$rowIdsToKeep;
                final List val$rowsToResaveAccumulator;

                {
                    this.this$0 = this;
                    this.val$rowIdsToKeep = immutableTree2;
                    this.val$rowsToResaveAccumulator = list;
                    this.val$relativePath = path2;
                    this.val$currentNode = node;
                }

                @Override // com.google.firebase.database.core.utilities.ImmutableTree.TreeVisitor
                public Void onNodeValue(Path path3, Void r6, Void r7) {
                    if (this.val$rowIdsToKeep.get(path3) != null) {
                        return null;
                    }
                    this.val$rowsToResaveAccumulator.add(new Pair(this.val$relativePath.child(path3), this.val$currentNode.getChild(path3)));
                    return null;
                }
            });
        }
    }

    private int removeNested(String str, Path path) {
        String strPathToKey = pathToKey(path);
        return this.database.delete(str, NPStringFog.decode(new byte[]{19, 5, 21, 94, 66, 6, 94, 68, 94, 22, 35, 118, 39, 68, 17, 87, 22, 80, 67, 88, 65, 9}, "cda6b8", false, false), new String[]{strPathToKey, pathPrefixStartToPrefixEnd(strPathToKey)});
    }

    private int saveNested(Path path, Node node) {
        int i;
        int iSaveNested = 0;
        long jEstimateSerializedNodeSize = NodeSizeEstimator.estimateSerializedNodeSize(node);
        if (!(node instanceof ChildrenNode) || jEstimateSerializedNodeSize <= 16384) {
            saveNode(path, node);
            return 1;
        }
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{42, 13, 84, 81, 70, 1, 23, 22, 89, 89, 7, 16, 1, 6, 16, 71, 3, 22, 13, 3, 92, 93, 28, 1, 0, 66, 67, 93, 28, 1, 68, 3, 68, 20, 22, 5, 16, 10, 16, 17, 21, 68, 11, 4, 16, 17, 2, 68, 6, 27, 68, 81, 21, 68, 1, 26, 83, 81, 3, 0, 23, 66, 92, 93, 11, 13, 16, 66, 95, 82, 70, 65, 0, 66, 82, 77, 18, 1, 23, 76, 16, 103, 22, 8, 13, 22, 68, 93, 8, 3, 68, 23, 64, 26}, "db04fd", true, false), path, Long.valueOf(jEstimateSerializedNodeSize), 16384), new Object[0]);
        }
        Iterator<NamedNode> it = node.iterator();
        while (true) {
            i = iSaveNested;
            if (!it.hasNext()) {
                break;
            }
            NamedNode next = it.next();
            iSaveNested = saveNested(path.child(next.getName()), next.getNode()) + i;
        }
        if (!node.getPriority().isEmpty()) {
            saveNode(path.child(ChildKey.getPriorityKey()), node.getPriority());
            i++;
        }
        saveNode(path, EmptyNode.Empty());
        return i + 1;
    }

    private void saveNode(Path path, Node node) {
        int i = 0;
        byte[] bArrSerializeObject = serializeObject(node.getValue(true));
        if (bArrSerializeObject.length < 262144) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(PATH_COLUMN_NAME, pathToKey(path));
            contentValues.put(VALUE_COLUMN_NAME, bArrSerializeObject);
            this.database.insertWithOnConflict(SERVER_CACHE_TABLE, null, contentValues, 5);
            return;
        }
        List<byte[]> listSplitBytes = splitBytes(bArrSerializeObject, 262144);
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{50, 7, 65, 13, 8, 4, 65, 14, 66, 3, 3, 67, 13, 3, 86, 2, 70, 13, 14, 2, 82, 68, 17, 10, 21, 14, 23}, "af7dfc", true, false) + listSplitBytes.size() + NPStringFog.decode(new byte[]{20, 22, 85, 75, 77, 68, 26}, "4f4997", false, true), new Object[0]);
        }
        while (true) {
            int i2 = i;
            if (i2 >= listSplitBytes.size()) {
                return;
            }
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put(PATH_COLUMN_NAME, partKey(path, i2));
            contentValues2.put(VALUE_COLUMN_NAME, listSplitBytes.get(i2));
            this.database.insertWithOnConflict(SERVER_CACHE_TABLE, null, contentValues2, 5);
            i = i2 + 1;
        }
    }

    private void saveWrite(Path path, long j, String str, byte[] bArr) {
        int i = 0;
        verifyInsideTransaction();
        this.database.delete(WRITES_TABLE, NPStringFog.decode(new byte[]{11, 7, 17, 89, 21, 12}, "bc1d53", -2.028441834E9d), new String[]{String.valueOf(j)});
        if (bArr.length < 262144) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(TRACKED_KEYS_ID_COLUMN_NAME, Long.valueOf(j));
            contentValues.put(PATH_COLUMN_NAME, pathToKey(path));
            contentValues.put(WRITE_TYPE_COLUMN_NAME, str);
            contentValues.put(WRITE_PART_COLUMN_NAME, (Integer) null);
            contentValues.put(WRITE_NODE_COLUMN_NAME, bArr);
            this.database.insertWithOnConflict(WRITES_TABLE, null, contentValues, 5);
            return;
        }
        List<byte[]> listSplitBytes = splitBytes(bArr, 262144);
        while (true) {
            int i2 = i;
            if (i2 >= listSplitBytes.size()) {
                return;
            }
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put(TRACKED_KEYS_ID_COLUMN_NAME, Long.valueOf(j));
            contentValues2.put(PATH_COLUMN_NAME, pathToKey(path));
            contentValues2.put(WRITE_TYPE_COLUMN_NAME, str);
            contentValues2.put(WRITE_PART_COLUMN_NAME, Integer.valueOf(i2));
            contentValues2.put(WRITE_NODE_COLUMN_NAME, listSplitBytes.get(i2));
            this.database.insertWithOnConflict(WRITES_TABLE, null, contentValues2, 5);
            i = i2 + 1;
        }
    }

    private byte[] serializeObject(Object obj) {
        try {
            return JsonMapper.serializeJsonValue(obj).getBytes(UTF8_CHARSET);
        } catch (IOException e) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{114, 90, 23, 10, 6, 70, 95, 90, 22, 70, 17, 3, 67, 92, 3, 10, 11, 28, 84, 21, 14, 3, 3, 0, 17, 91, 13, 2, 7}, "15bfbf", -8.6256435E8f), e);
        }
    }

    private static List<byte[]> splitBytes(byte[] bArr, int i) {
        int length = ((bArr.length - 1) / i) + 1;
        ArrayList arrayList = new ArrayList(length);
        for (int i2 = 0; i2 < length; i2++) {
            int iMin = Math.min(i, bArr.length - (i2 * i));
            byte[] bArr2 = new byte[iMin];
            System.arraycopy(bArr, i2 * i, bArr2, 0, iMin);
            arrayList.add(bArr2);
        }
        return arrayList;
    }

    private int splitNodeRunLength(Path path, List<String> list, int i) {
        int i2 = i + 1;
        String strPathToKey = pathToKey(path);
        if (!list.get(i).startsWith(strPathToKey)) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{38, 64, 67, 20, 88, 5, 23, 81, 89, 1, 25, 21, 19, 84, 94, 18, 25, 8, 12, 92, 82, 21, 25, 8, 6, 93, 83, 21, 25, 18, 12, 24, 68, 18, 88, 20, 23, 24, 64, 15, 77, 14, 67, 72, 86, 18, 81, 70, 19, 74, 82, 0, 80, 30}, "c87f9f", 1925632431L));
        }
        while (i2 < list.size() && list.get(i2).equals(partKey(path, i2 - i))) {
            i2++;
        }
        if (i2 >= list.size() || !list.get(i2).startsWith(strPathToKey + PART_KEY_PREFIX)) {
            return i2 - i;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{96, 16, 89, 20, 5, 12, 86, 69, 89, 91, 21, 69, 84, 12, 89, 93, 18, 13, 18, 18, 94, 64, 9, 69, 83, 9, 91, 20, 17, 4, 64, 17, 68}, "2e74ae", -20412));
    }

    private void updateServerCache(Path path, Node node, boolean z) {
        int iSaveNested;
        int iRemoveNested;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (z) {
            iSaveNested = 0;
            iRemoveNested = 0;
            for (NamedNode namedNode : node) {
                iRemoveNested += removeNested(SERVER_CACHE_TABLE, path.child(namedNode.getName()));
                iSaveNested = saveNested(path.child(namedNode.getName()), namedNode.getNode()) + iSaveNested;
            }
        } else {
            iRemoveNested = removeNested(SERVER_CACHE_TABLE, path);
            iSaveNested = saveNested(path, node);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{99, 84, 22, 69, 81, 22, 71, 84, 0, 22, 89, 69, 71, 94, 16, 87, 84, 69, 92, 87, 68, 19, 92, 69, 65, 94, 19, 69, 24, 4, 93, 85, 68, 82, 93, 9, 86, 69, 1, 82, 24, 64, 87, 17, 22, 89, 79, 22, 19, 87, 11, 68, 24, 4, 19, 66, 1, 66, 24, 4, 71, 17, 65, 69, 24, 12, 93, 17, 65, 82, 85, 22}, "31d68e", 1.3505801E9f), Integer.valueOf(iSaveNested), Integer.valueOf(iRemoveNested), path.toString(), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
    }

    private void verifyInsideTransaction() {
        Utilities.hardAssert(this.insideTransaction, NPStringFog.decode(new byte[]{109, 65, 3, 86, 18, 82, 90, 71, 11, 87, 15, 19, 92, 75, 18, 93, 2, 71, 92, 87, 66, 76, 14, 19, 88, 95, 16, 93, 0, 87, 64, 19, 0, 93, 65, 90, 87, 19, 18, 74, 14, 84, 75, 86, 17, 75, 79}, "93b8a3", 1053951116L));
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void beginTransaction() {
        Utilities.hardAssert(!this.insideTransaction, NPStringFog.decode(new byte[]{16, 20, 95, 113, 91, 97, 16, 0, 95, 75, 84, 86, 22, 8, 94, 86, 21, 86, 3, 13, 93, 93, 81, 21, 21, 9, 84, 86, 21, 84, 12, 65, 84, 64, 92, 70, 22, 8, 95, 95, 21, 65, 16, 0, 95, 75, 84, 86, 22, 8, 94, 86, 21, 92, 17, 65, 80, 84, 71, 80, 3, 5, 72, 24, 92, 91, 66, 17, 67, 87, 82, 71, 7, 18, 66, 22}, "ba1855", 404911983L));
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{49, 64, 0, 66, 64, 80, 12, 83, 65, 68, 70, 88, 12, 71, 0, 83, 64, 80, 13, 90, 79}, "b4a049", false), new Object[0]);
        }
        this.database.beginTransaction();
        this.insideTransaction = true;
        this.transactionStart = System.currentTimeMillis();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void close() {
        this.database.close();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void deleteTrackedQuery(long j) {
        verifyInsideTransaction();
        String strValueOf = String.valueOf(j);
        this.database.delete(TRACKED_QUERY_TABLE, NPStringFog.decode(new byte[]{90, 85, 16, 4, 67, 7}, "3109c8", -1.9883848E9f), new String[]{strValueOf});
        this.database.delete(TRACKED_KEYS_TABLE, NPStringFog.decode(new byte[]{95, 0, 16, 15, 65, 93}, "6d02ab", -12693), new String[]{strValueOf});
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void endTransaction() {
        this.database.endTransaction();
        this.insideTransaction = false;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.transactionStart;
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{48, 68, 4, 11, 68, 4, 7, 66, 12, 10, 89, 69, 7, 89, 8, 21, 91, 0, 16, 83, 1, 75, 23, 32, 8, 87, 21, 22, 82, 1, 94, 22, 64, 1, 90, 22}, "d6ee7e", 7.52610984E8d), Long.valueOf(jCurrentTimeMillis - j)), new Object[0]);
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public List<TrackedQuery> loadTrackedQueries() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Cursor cursorQuery = this.database.query(TRACKED_QUERY_TABLE, new String[]{TRACKED_KEYS_ID_COLUMN_NAME, PATH_COLUMN_NAME, TRACKED_QUERY_PARAMS_COLUMN_NAME, TRACKED_QUERY_LAST_USE_COLUMN_NAME, TRACKED_QUERY_COMPLETE_COLUMN_NAME, TRACKED_QUERY_ACTIVE_COLUMN_NAME}, null, null, null, null, TRACKED_KEYS_ID_COLUMN_NAME);
        ArrayList arrayList = new ArrayList();
        while (cursorQuery.moveToNext()) {
            try {
                try {
                    arrayList.add(new TrackedQuery(cursorQuery.getLong(0), QuerySpec.fromPathAndQueryObject(new Path(cursorQuery.getString(1)), JsonMapper.parseJson(cursorQuery.getString(2))), cursorQuery.getLong(3), cursorQuery.getInt(4) != 0, cursorQuery.getInt(5) != 0));
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            } finally {
                cursorQuery.close();
            }
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{127, 9, 83, 83, 85, 83, 19, 67, 86, 23, 68, 69, 82, 5, 89, 82, 84, 23, 66, 19, 87, 69, 89, 82, 64, 70, 91, 89, 16, 18, 87, 11, 65}, "3f2707", -8.495527E8f), Integer.valueOf(arrayList.size()), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
        return arrayList;
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public Set<ChildKey> loadTrackedQueryKeys(long j) {
        return loadTrackedQueryKeys(Collections.singleton(Long.valueOf(j)));
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public Set<ChildKey> loadTrackedQueryKeys(Set<Long> set) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Cursor cursorQuery = this.database.query(true, TRACKED_KEYS_TABLE, new String[]{TRACKED_KEYS_KEY_COLUMN_NAME}, NPStringFog.decode(new byte[]{80, 82, 19, 113, 45, 23, 17}, "9638c7", 1282809258L) + commaSeparatedList(set) + NPStringFog.decode(new byte[]{27}, "21b062", 1.609661085E9d), null, null, null, null, null);
        HashSet hashSet = new HashSet();
        while (cursorQuery.moveToNext()) {
            try {
                hashSet.add(ChildKey.fromString(cursorQuery.getString(0)));
            } finally {
                cursorQuery.close();
            }
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{42, 95, 4, 84, 80, 87, 70, 21, 1, 16, 65, 65, 7, 83, 14, 85, 81, 19, 23, 69, 0, 66, 92, 86, 21, 16, 14, 85, 76, 64, 70, 86, 10, 66, 21, 71, 20, 81, 6, 91, 80, 87, 70, 65, 16, 85, 71, 90, 3, 67, 69, 21, 70, 19, 15, 94, 69, 21, 81, 94, 21}, "f0e053", 1272931060L), Integer.valueOf(hashSet.size()), set.toString(), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
        return hashSet;
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public List<UserWriteRecord> loadUserWrites() {
        byte[] bArrJoinBytes;
        UserWriteRecord userWriteRecord;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Cursor cursorQuery = this.database.query(WRITES_TABLE, new String[]{TRACKED_KEYS_ID_COLUMN_NAME, PATH_COLUMN_NAME, WRITE_TYPE_COLUMN_NAME, WRITE_PART_COLUMN_NAME, WRITE_NODE_COLUMN_NAME}, null, null, null, null, NPStringFog.decode(new byte[]{88, 2, 31, 18, 18, 83, 67, 18}, "1f32b2", true));
        ArrayList arrayList = new ArrayList();
        while (cursorQuery.moveToNext()) {
            try {
                try {
                    long j = cursorQuery.getLong(0);
                    Path path = new Path(cursorQuery.getString(1));
                    String string = cursorQuery.getString(2);
                    if (cursorQuery.isNull(3)) {
                        bArrJoinBytes = cursorQuery.getBlob(4);
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        do {
                            arrayList2.add(cursorQuery.getBlob(4));
                            if (!cursorQuery.moveToNext()) {
                                break;
                            }
                        } while (cursorQuery.getLong(0) == j);
                        cursorQuery.moveToPrevious();
                        bArrJoinBytes = joinBytes(arrayList2);
                    }
                    Object jsonValue = JsonMapper.parseJsonValue(new String(bArrJoinBytes, UTF8_CHARSET));
                    if (WRITE_TYPE_OVERWRITE.equals(string)) {
                        userWriteRecord = new UserWriteRecord(j, path, NodeUtilities.NodeFromJSON(jsonValue), true);
                    } else {
                        if (!WRITE_TYPE_MERGE.equals(string)) {
                            throw new IllegalStateException(NPStringFog.decode(new byte[]{35, 86, 21, 24, 94, 87, 18, 88, 13, 81, 83, 25, 19, 75, 8, 76, 82, 25, 16, 64, 17, 93, 13, 25}, "d9a879", -628168283L) + string);
                        }
                        userWriteRecord = new UserWriteRecord(j, path, CompoundWrite.fromValue((Map) jsonValue));
                    }
                    arrayList.add(userWriteRecord);
                } catch (IOException e) {
                    throw new RuntimeException(NPStringFog.decode(new byte[]{119, 5, 91, 8, 87, 86, 17, 16, 93, 68, 94, 93, 80, 0, 18, 19, 64, 91, 69, 1, 65}, "1d2d22", 19893), e);
                }
            } finally {
                cursorQuery.close();
            }
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{120, 14, 89, 1, 85, 82, 20, 68, 92, 69, 71, 68, 93, 21, 93, 22, 16, 95, 90, 65, 29, 1, 93, 69}, "4a8e06", -1.155486897E9d), Integer.valueOf(arrayList.size()), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
        return arrayList;
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void mergeIntoServerCache(Path path, CompoundWrite compoundWrite) {
        verifyInsideTransaction();
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iRemoveNested = 0;
        int iSaveNested = 0;
        for (Map.Entry<Path, Node> entry : compoundWrite) {
            iRemoveNested += removeNested(SERVER_CACHE_TABLE, path.child(entry.getKey()));
            iSaveNested = saveNested(path.child(entry.getKey()), entry.getValue()) + iSaveNested;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{96, 7, 66, 22, 94, 74, 68, 7, 84, 69, 86, 25, 68, 13, 68, 4, 91, 25, 95, 4, 16, 64, 83, 25, 66, 13, 71, 22, 23, 88, 94, 6, 16, 1, 82, 85, 85, 22, 85, 1, 23, 28, 84, 66, 66, 10, 64, 74, 16, 4, 95, 23, 23, 88, 16, 15, 85, 23, 80, 92, 16, 3, 68, 69, 18, 74, 16, 11, 94, 69, 18, 93, 93, 17}, "0b0e79", -789606646L), Integer.valueOf(iSaveNested), Integer.valueOf(iRemoveNested), path.toString(), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void mergeIntoServerCache(Path path, Node node) {
        verifyInsideTransaction();
        updateServerCache(path, node, true);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void overwriteServerCache(Path path, Node node) {
        verifyInsideTransaction();
        updateServerCache(path, node, false);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void pruneCache(Path path, PruneForest pruneForest) {
        if (pruneForest.prunesAnything()) {
            verifyInsideTransaction();
            long jCurrentTimeMillis = System.currentTimeMillis();
            Cursor cursorLoadNestedQuery = loadNestedQuery(path, new String[]{ROW_ID_COLUMN_NAME, PATH_COLUMN_NAME});
            ImmutableTree<Long> immutableTree = new ImmutableTree<>(null);
            ImmutableTree<Long> immutableTree2 = new ImmutableTree<>(null);
            while (cursorLoadNestedQuery.moveToNext()) {
                long j = cursorLoadNestedQuery.getLong(0);
                Path path2 = new Path(cursorLoadNestedQuery.getString(1));
                if (path.contains(path2)) {
                    Path relative = Path.getRelative(path, path2);
                    if (pruneForest.shouldPruneUnkeptDescendants(relative)) {
                        immutableTree = immutableTree.set(relative, Long.valueOf(j));
                    } else if (pruneForest.shouldKeep(relative)) {
                        immutableTree2 = immutableTree2.set(relative, Long.valueOf(j));
                    } else {
                        this.logger.warn(NPStringFog.decode(new byte[]{101, 82, 23, 82, 22, 80, 18, 71, 69, 70, 10, 92, 92, 80, 23, 82, 16, 21}, "2773d5", false) + path + NPStringFog.decode(new byte[]{23, 82, 89, 84, 17, 93, 86, 69, 82, 16, 85, 84, 67, 82, 23, 81, 69, 21}, "737015", true) + path2 + NPStringFog.decode(new byte[]{67, 66, 92, 7, 23, 69, 10, 69, 90, 65, 23, 69, 14, 87, 70, 13, 6, 1, 67, 80, 91, 20, 67, 21, 17, 67, 90, 15, 13, 2, 67, 89, 70, 70, 8, 0, 6, 70, 93, 8, 4, 75, 67, 127, 83, 8, 12, 23, 10, 88, 83, 72}, "c64fce", -16003));
                    }
                } else {
                    this.logger.warn(NPStringFog.decode(new byte[]{102, 0, 70, 85, 23, 82, 17, 21, 20, 65, 11, 94, 95, 2, 70, 85, 17, 23}, "1ef4e7", -46284440L) + path + NPStringFog.decode(new byte[]{69, 7, 69, 76, 21, 66, 0, 69, 88, 89, 67, 80, 69, 1, 81, 76, 84, 21, 22, 17, 95, 74, 80, 81, 69, 13, 89, 95, 93, 80, 23, 69, 69, 72, 21, 84, 17, 69}, "ee0855", false) + path2 + NPStringFog.decode(new byte[]{28, 22, 126, 84, 86, 86, 64, 95, 89, 84, 22}, "267389", -11411));
                }
            }
            int size = 0;
            int size2 = 0;
            if (!immutableTree.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                pruneTreeRecursive(path, Path.getEmptyPath(), immutableTree, immutableTree2, pruneForest, arrayList);
                Collection<Long> collectionValues = immutableTree.values();
                this.database.delete(SERVER_CACHE_TABLE, NPStringFog.decode(new byte[]{23, 86, 79, 80, 84, 65, 44, 119, 24, 17}, "e9890a", 557216244L) + commaSeparatedList(collectionValues) + NPStringFog.decode(new byte[]{27}, "2913c7", true, false), null);
                for (Pair<Path, Node> pair : arrayList) {
                    saveNested(path.child(pair.getFirst()), pair.getSecond());
                }
                size = collectionValues.size();
                size2 = arrayList.size();
            }
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (this.logger.logsDebug()) {
                this.logger.debug(String.format(NPStringFog.decode(new byte[]{105, 68, 71, 93, 4, 7, 25, 19, 86, 19, 19, 12, 78, 69, 18, 68, 8, 23, 81, 22, 23, 87, 65, 13, 86, 82, 87, 64, 65, 17, 92, 69, 83, 69, 4, 7, 25, 95, 92, 19, 68, 7, 84, 69}, "9623ac", 1.6449765E9f), Integer.valueOf(size), Integer.valueOf(size2), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
            }
        }
    }

    public void purgeCache() {
        verifyInsideTransaction();
        this.database.delete(SERVER_CACHE_TABLE, null, null);
        this.database.delete(WRITES_TABLE, null, null);
        this.database.delete(TRACKED_QUERY_TABLE, null, null);
        this.database.delete(TRACKED_KEYS_TABLE, null, null);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void removeAllUserWrites() {
        verifyInsideTransaction();
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iDelete = this.database.delete(WRITES_TABLE, null, null);
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{34, 4, 84, 1, 17, 1, 2, 65, 29, 0, 69, 76, 7, 13, 84, 77, 69, 19, 20, 8, 76, 1, 77, 23, 79, 65, 81, 10, 69, 65, 2, 12, 75}, "fa8ded", 8.542893E8f), Integer.valueOf(iDelete), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void removeUserWrite(long j) {
        verifyInsideTransaction();
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iDelete = this.database.delete(WRITES_TABLE, NPStringFog.decode(new byte[]{80, 1, 66, 14, 20, 8}, "9eb347", true, true), new String[]{String.valueOf(j)});
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{116, 4, 95, 85, 69, 0, 84, 65, 22, 84, 17, 18, 66, 8, 71, 85, 25, 22, 25, 65, 68, 89, 69, 13, 16, 22, 65, 89, 69, 0, 121, 5, 19, 21, 85, 69, 89, 15, 19, 21, 85, 8, 67}, "0a301e", 2.0571158E9f), Integer.valueOf(iDelete), Long.valueOf(j), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void resetPreviouslyActiveTrackedQueries(long j) {
        verifyInsideTransaction();
        long jCurrentTimeMillis = System.currentTimeMillis();
        ContentValues contentValues = new ContentValues();
        contentValues.put(TRACKED_QUERY_ACTIVE_COLUMN_NAME, (Boolean) false);
        contentValues.put(TRACKED_QUERY_LAST_USE_COLUMN_NAME, Long.valueOf(j));
        this.database.updateWithOnConflict(TRACKED_QUERY_TABLE, contentValues, NPStringFog.decode(new byte[]{3, 5, 65, 89, 20, 85, 66, 91, 21, 1}, "bf50b0", 1.141951704E9d), new String[0], 5);
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{98, 1, 67, 3, 66, 68, 81, 7, 68, 15, 64, 1, 16, 16, 66, 7, 85, 15, 85, 0, 16, 23, 67, 1, 66, 13, 85, 21, 22, 13, 94, 68, 21, 2, 91, 23}, "0d0f6d", 1.227682E9f), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void saveTrackedQuery(TrackedQuery trackedQuery) {
        verifyInsideTransaction();
        long jCurrentTimeMillis = System.currentTimeMillis();
        ContentValues contentValues = new ContentValues();
        contentValues.put(TRACKED_KEYS_ID_COLUMN_NAME, Long.valueOf(trackedQuery.id));
        contentValues.put(PATH_COLUMN_NAME, pathToKey(trackedQuery.querySpec.getPath()));
        contentValues.put(TRACKED_QUERY_PARAMS_COLUMN_NAME, trackedQuery.querySpec.getParams().toJSON());
        contentValues.put(TRACKED_QUERY_LAST_USE_COLUMN_NAME, Long.valueOf(trackedQuery.lastUse));
        contentValues.put(TRACKED_QUERY_COMPLETE_COLUMN_NAME, Boolean.valueOf(trackedQuery.complete));
        contentValues.put(TRACKED_QUERY_ACTIVE_COLUMN_NAME, Boolean.valueOf(trackedQuery.active));
        this.database.insertWithOnConflict(TRACKED_QUERY_TABLE, null, contentValues, 5);
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{107, 87, 19, 81, 93, 70, 86, 83, 18, 20, 77, 20, 89, 85, 14, 81, 93, 70, 73, 67, 0, 70, 64, 70, 81, 88, 69, 17, 93, 11, 75}, "86e49f", 7198), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void saveTrackedQueryKeys(long j, Set<ChildKey> set) {
        verifyInsideTransaction();
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.database.delete(TRACKED_KEYS_TABLE, NPStringFog.decode(new byte[]{91, 81, 20, 11, 17, 13}, "254612", false), new String[]{String.valueOf(j)});
        for (ChildKey childKey : set) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(TRACKED_KEYS_ID_COLUMN_NAME, Long.valueOf(j));
            contentValues.put(TRACKED_KEYS_KEY_COLUMN_NAME, childKey.asString());
            this.database.insertWithOnConflict(TRACKED_KEYS_TABLE, null, contentValues, 5);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{103, 82, 77, 23, 29, 87, 20, 67, 75, 86, 91, 88, 81, 83, 25, 70, 77, 86, 70, 78, 25, 92, 93, 74, 71, 23, 95, 88, 74, 19, 64, 69, 88, 84, 83, 86, 80, 23, 72, 66, 93, 65, 77, 23, 28, 83, 24, 90, 90, 23, 28, 83, 85, 64}, "479783", true), Integer.valueOf(set.size()), Long.valueOf(j), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void saveUserMerge(Path path, CompoundWrite compoundWrite, long j) {
        verifyInsideTransaction();
        long jCurrentTimeMillis = System.currentTimeMillis();
        saveWrite(path, j, WRITE_TYPE_MERGE, serializeObject(compoundWrite.getValue(true)));
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{100, 3, 74, 66, 12, 23, 64, 3, 92, 17, 16, 23, 81, 20, 24, 92, 0, 22, 83, 3, 24, 88, 11, 68, 17, 2, 85, 66}, "4f81ed", false), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void saveUserOverwrite(Path path, Node node, long j) {
        verifyInsideTransaction();
        long jCurrentTimeMillis = System.currentTimeMillis();
        saveWrite(path, j, WRITE_TYPE_OVERWRITE, serializeObject(node.getValue(true)));
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{103, 6, 19, 23, 15, 75, 67, 6, 5, 68, 19, 75, 82, 17, 65, 11, 16, 93, 69, 20, 19, 13, 18, 93, 23, 10, 15, 68, 67, 92, 90, 16}, "7cadf8", false), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public Node serverCache(Path path) {
        return loadNested(path);
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public long serverCacheEstimatedSizeInBytes() {
        Cursor cursorRawQuery = this.database.rawQuery(String.format(NPStringFog.decode(new byte[]{54, 112, 123, 113, 33, 54, 69, 70, 66, 89, 74, 14, 0, 91, 80, 64, 10, 74, 64, 70, 30, 20, 73, 66, 9, 80, 89, 83, 22, 10, 77, 16, 68, 29, 75, 66, 35, 103, 120, 121, 66, 71, 22}, "e574bb", -1142860041L), VALUE_COLUMN_NAME, PATH_COLUMN_NAME, SERVER_CACHE_TABLE), null);
        try {
            if (cursorRawQuery.moveToFirst()) {
                return cursorRawQuery.getLong(0);
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{113, 87, 71, 9, 87, 92, 21, 76, 18, 23, 86, 83, 86, 24, 86, 4, 71, 83, 80, 89, 65, 0, 19, 64, 87, 75, 71, 9, 71, 19}, "282e32", 29260));
        } finally {
            cursorRawQuery.close();
        }
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void setTransactionSuccessful() {
        this.database.setTransactionSuccessful();
    }

    @Override // com.google.firebase.database.core.persistence.PersistenceStorageEngine
    public void updateTrackedQueryKeys(long j, Set<ChildKey> set, Set<ChildKey> set2) {
        verifyInsideTransaction();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Iterator<ChildKey> it = set2.iterator();
        while (it.hasNext()) {
            this.database.delete(TRACKED_KEYS_TABLE, NPStringFog.decode(new byte[]{88, 83, 25, 92, 19, 91, 17, 118, 119, 37, 19, 15, 84, 78, 25, 92, 19, 91}, "179a3d", false, false), new String[]{String.valueOf(j), it.next().asString()});
        }
        for (ChildKey childKey : set) {
            ContentValues contentValues = new ContentValues();
            contentValues.put(TRACKED_KEYS_ID_COLUMN_NAME, Long.valueOf(j));
            contentValues.put(TRACKED_KEYS_KEY_COLUMN_NAME, childKey.asString());
            this.database.insertWithOnConflict(TRACKED_KEYS_TABLE, null, contentValues, 5);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        if (this.logger.logsDebug()) {
            this.logger.debug(String.format(NPStringFog.decode(new byte[]{109, 68, 82, 2, 67, 4, 92, 20, 66, 17, 86, 2, 83, 81, 82, 67, 70, 20, 93, 70, 79, 67, 92, 4, 65, 71, 22, 75, 18, 5, 24, 85, 82, 7, 82, 5, 20, 20, 19, 7, 23, 19, 93, 89, 89, 21, 82, 5, 17, 20, 80, 12, 69, 65, 76, 70, 87, 0, 92, 4, 92, 20, 71, 22, 82, 19, 65, 20, 95, 7, 23, 68, 92, 20, 95, 13, 23, 68, 92, 89, 69}, "846c7a", false), Integer.valueOf(set.size()), Integer.valueOf(set2.size()), Long.valueOf(j), Long.valueOf(jCurrentTimeMillis2 - jCurrentTimeMillis)), new Object[0]);
        }
    }
}

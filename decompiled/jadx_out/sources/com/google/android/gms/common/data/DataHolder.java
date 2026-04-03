package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.sqlite.CursorWrapper;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new zaf();
    private static final Builder zaf = new zab(new String[0], null);
    final int zaa;
    Bundle zab;
    int[] zac;
    int zad;
    boolean zae;
    private final String[] zag;
    private final CursorWindow[] zah;
    private final int zai;
    private final Bundle zaj;
    private boolean zak;

    public static class Builder {
        private final String[] zaa;
        private final ArrayList zab = new ArrayList();
        private final HashMap zac = new HashMap();

        /* synthetic */ Builder(String[] strArr, String str, zac zacVar) {
            this.zaa = (String[]) Preconditions.checkNotNull(strArr);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public DataHolder build(int i) {
            return new DataHolder(this, i);
        }

        public DataHolder build(int i, Bundle bundle) {
            return new DataHolder(this, i, bundle);
        }

        public Builder withRow(ContentValues contentValues) {
            Asserts.checkNotNull(contentValues);
            HashMap map = new HashMap(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                map.put(entry.getKey(), entry.getValue());
            }
            return zaa(map);
        }

        public Builder zaa(HashMap map) {
            Asserts.checkNotNull(map);
            this.zab.add(map);
            return this;
        }
    }

    DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.zae = false;
        this.zak = true;
        this.zaa = i;
        this.zag = strArr;
        this.zah = cursorWindowArr;
        this.zai = i2;
        this.zaj = bundle;
    }

    public DataHolder(Cursor cursor, int i, Bundle bundle) {
        int numRows;
        CursorWrapper cursorWrapper = new CursorWrapper(cursor);
        String[] columnNames = cursorWrapper.getColumnNames();
        ArrayList arrayList = new ArrayList();
        try {
            int count = cursorWrapper.getCount();
            CursorWindow window = cursorWrapper.getWindow();
            if (window == null || window.getStartPosition() != 0) {
                numRows = 0;
            } else {
                window.acquireReference();
                cursorWrapper.setWindow(null);
                arrayList.add(window);
                numRows = window.getNumRows();
            }
            while (numRows < count) {
                if (!cursorWrapper.moveToPosition(numRows)) {
                    break;
                }
                CursorWindow window2 = cursorWrapper.getWindow();
                if (window2 != null) {
                    window2.acquireReference();
                    cursorWrapper.setWindow(null);
                } else {
                    window2 = new CursorWindow(false);
                    window2.setStartPosition(numRows);
                    cursorWrapper.fillWindow(numRows, window2);
                }
                if (window2.getNumRows() == 0) {
                    break;
                }
                arrayList.add(window2);
                numRows = window2.getNumRows() + window2.getStartPosition();
            }
            cursorWrapper.close();
            this(columnNames, (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]), i, bundle);
        } catch (Throwable th) {
            cursorWrapper.close();
            throw th;
        }
    }

    private DataHolder(Builder builder, int i, Bundle bundle) {
        this(builder.zaa, zaf(builder, -1), i, (Bundle) null);
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.zae = false;
        this.zak = true;
        this.zaa = 1;
        this.zag = (String[]) Preconditions.checkNotNull(strArr);
        this.zah = (CursorWindow[]) Preconditions.checkNotNull(cursorWindowArr);
        this.zai = i;
        this.zaj = bundle;
        zad();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Builder builder(String[] strArr) {
        return new Builder(strArr, null, 0 == true ? 1 : 0);
    }

    public static DataHolder empty(int i) {
        return new DataHolder(zaf, i, (Bundle) null);
    }

    private final void zae(String str, int i) {
        Bundle bundle = this.zab;
        if (bundle == null || !bundle.containsKey(str)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{43, 13, 22, 64, 66, 87, 13, 66, 85, 92, 91, 65, 8, 12, 12, 19}, "eb6374", 3.372309E8f).concat(String.valueOf(str)));
        }
        if (isClosed()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{114, 70, 4, 85, 0, 22, 16, 90, 17, 19, 6, 8, 95, 64, 7, 87, 75}, "03b3ed", -4.60015107E8d));
        }
        if (i < 0 || i >= this.zad) {
            throw new CursorIndexOutOfBoundsException(i, this.zad);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x01af, code lost:
    
        r5 = r4 + 1;
        r9 = r0;
        r4 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01b5, code lost:
    
        if (r9 != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01b7, code lost:
    
        android.util.Log.d(n.NPStringFog.decode(new byte[]{124, 83, 76, 88, 42, 95, 84, 86, 93, 75}, "8289b0", true), n.NPStringFog.decode(new byte[]{112, 12, 76, 94, 92, 92, 20, 23, 25, 66, 87, 66, 70, 15, 88, 70, 93, 18, 68, 10, 87, 86, 87, 69, 19, 7, 88, 70, 89, 18, 85, 12, 75, 18, 74, 93, 68, 67}, "3c9282", -1.8047215E9f) + r5 + n.NPStringFog.decode(new byte[]{19, 72, 67, 80, 91, 94, 92, 6, 2, 69, 94, 92, 84, 69, 13, 84, 64, 18, 68, 12, 13, 85, 88, 69, 29}, "3ec172", -3.13560764E8d));
        r4.freeLastRow();
        r0 = new android.database.CursorWindow(false);
        r0.setStartPosition(r5);
        r0.setNumColumns(r13.zaa.length);
        r12.add(r0);
        r4 = r5 - 1;
        r1 = r0;
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x022c, code lost:
    
        throw new com.google.android.gms.common.data.zad(n.NPStringFog.decode(new byte[]{123, 90, 69, 84, 5, 65, 86, 90, 68, 24, 0, 5, 92, 21, 68, 80, 4, 65, 78, 84, 92, 77, 4, 65, 76, 90, 16, 89, 65, 15, 93, 66, 16, 123, 20, 19, 75, 90, 66, 111, 8, 15, 92, 90, 71, 22, 65, 53, 80, 80, 16, 75, 8, 27, 93, 21, 95, 94, 65, 23, 89, 89, 69, 93, 65, 12, 89, 76, 16, 90, 4, 65, 84, 84, 66, 95, 4, 19, 24, 65, 88, 89, 15, 65, 79, 93, 81, 76, 65, 0, 24, 118, 69, 74, 18, 14, 74, 98, 89, 86, 5, 14, 79, 21, 83, 89, 15, 65, 80, 84, 94, 92, 13, 4, 22}, "8508aa", false));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.database.CursorWindow[] zaf(com.google.android.gms.common.data.DataHolder.Builder r13, int r14) {
        /*
            Method dump skipped, instruction units count: 788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.data.DataHolder.zaf(com.google.android.gms.common.data.DataHolder$Builder, int):android.database.CursorWindow[]");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.zae) {
                this.zae = true;
                int i = 0;
                while (true) {
                    CursorWindow[] cursorWindowArr = this.zah;
                    if (i >= cursorWindowArr.length) {
                        break;
                    }
                    cursorWindowArr[i].close();
                    i++;
                }
            }
        }
    }

    protected final void finalize() throws Throwable {
        try {
            if (this.zak && this.zah.length > 0 && !isClosed()) {
                close();
                Log.e(NPStringFog.decode(new byte[]{113, 83, 23, 3, 116, 23, 83, 84, 6, 16}, "52cb6b", false, true), NPStringFog.decode(new byte[]{126, 86, 23, 6, 69, 95, 86, 84, 67, 7, 86, 69, 86, 24, 15, 6, 86, 90, 23, 79, 10, 23, 95, 88, 89, 24, 2, 67, 115, 80, 67, 89, 33, 22, 81, 87, 82, 74, 67, 12, 85, 91, 82, 91, 23, 67, 83, 84, 67, 93, 0, 23, 82, 85, 22, 24, 67, 33, 82, 17, 68, 77, 17, 6, 23, 69, 88, 24, 6, 27, 71, 93, 94, 91, 10, 23, 91, 72, 23, 91, 2, 15, 91, 17, 69, 93, 15, 6, 86, 66, 82, 16, 74, 67, 88, 95, 23, 89, 15, 15, 23, 117, 86, 76, 2, 33, 66, 87, 81, 93, 17, 67, 82, 73, 67, 93, 13, 7, 94, 95, 80, 24, 12, 1, 93, 84, 84, 76, 16, 67, 64, 89, 82, 86, 67, 26, 88, 68, 23, 89, 17, 6, 23, 85, 88, 86, 6, 67, 64, 88, 67, 80, 67, 23, 95, 84, 90, 22, 67, 75, 94, 95, 67, 93, 17, 13, 86, 93, 23, 87, 1, 9, 82, 82, 67, 2, 67}, "78cc71", false, true) + toString() + NPStringFog.decode(new byte[]{17}, "8dd59f", 1.312351047E9d));
            }
        } finally {
            super.finalize();
        }
    }

    public boolean getBoolean(String str, int i, int i2) {
        zae(str, i);
        return Long.valueOf(this.zah[i2].getLong(i, this.zab.getInt(str))).longValue() == 1;
    }

    public byte[] getByteArray(String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getBlob(i, this.zab.getInt(str));
    }

    public int getCount() {
        return this.zad;
    }

    public int getInteger(String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getInt(i, this.zab.getInt(str));
    }

    public long getLong(String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getLong(i, this.zab.getInt(str));
    }

    public Bundle getMetadata() {
        return this.zaj;
    }

    public int getStatusCode() {
        return this.zai;
    }

    public String getString(String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getString(i, this.zab.getInt(str));
    }

    public int getWindowIndex(int i) {
        int length;
        int i2;
        int i3 = 0;
        Preconditions.checkState(i >= 0 && i < this.zad);
        while (true) {
            int[] iArr = this.zac;
            length = iArr.length;
            if (i3 >= length) {
                i2 = i3;
                break;
            }
            if (i < iArr[i3]) {
                i2 = i3 - 1;
                break;
            }
            i3++;
        }
        return i2 == length ? i2 - 1 : i2;
    }

    public boolean hasColumn(String str) {
        return this.zab.containsKey(str);
    }

    public boolean hasNull(String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].isNull(i, this.zab.getInt(str));
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.zae;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringArray(parcel, 1, this.zag, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.zah, i, false);
        SafeParcelWriter.writeInt(parcel, 3, getStatusCode());
        SafeParcelWriter.writeBundle(parcel, 4, getMetadata(), false);
        SafeParcelWriter.writeInt(parcel, 1000, this.zaa);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        if ((i & 1) != 0) {
            close();
        }
    }

    public final double zaa(String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getDouble(i, this.zab.getInt(str));
    }

    public final float zab(String str, int i, int i2) {
        zae(str, i);
        return this.zah[i2].getFloat(i, this.zab.getInt(str));
    }

    public final void zac(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        zae(str, i);
        this.zah[i2].copyStringToBuffer(i, this.zab.getInt(str), charArrayBuffer);
    }

    public final void zad() {
        int numRows = 0;
        this.zab = new Bundle();
        int i = 0;
        while (true) {
            String[] strArr = this.zag;
            if (i >= strArr.length) {
                break;
            }
            this.zab.putInt(strArr[i], i);
            i++;
        }
        this.zac = new int[this.zah.length];
        int i2 = 0;
        while (true) {
            CursorWindow[] cursorWindowArr = this.zah;
            if (i2 >= cursorWindowArr.length) {
                this.zad = numRows;
                return;
            }
            this.zac[i2] = numRows;
            numRows += this.zah[i2].getNumRows() - (numRows - cursorWindowArr[i2].getStartPosition());
            i2++;
        }
    }
}

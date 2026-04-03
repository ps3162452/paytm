package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Comparator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes27.dex */
public class Table {
    protected ByteBuffer bb;
    protected int bb_pos;
    Utf8 utf8 = Utf8.getDefault();
    private int vtable_size;
    private int vtable_start;

    protected static boolean __has_identifier(ByteBuffer byteBuffer, String str) {
        if (str.length() != 4) {
            throw new AssertionError(NPStringFog.decode(new byte[]{113, 10, 87, 66, 36, 68, 81, 0, 83, 68, 21, 11, 23, 0, 95, 90, 3, 17, 94, 2, 83, 88, 18, 88, 81, 15, 83, 68, 70, 92, 66, 21, 66, 22, 4, 84, 23, 10, 83, 88, 1, 69, 95, 70, 2}, "7f66f1", -1.6253317E9f));
        }
        for (int i = 0; i < 4; i++) {
            if (str.charAt(i) != ((char) byteBuffer.get(byteBuffer.position() + 4 + i))) {
                return false;
            }
        }
        return true;
    }

    protected static int __indirect(int i, ByteBuffer byteBuffer) {
        return byteBuffer.getInt(i) + i;
    }

    protected static int __offset(int i, int i2, ByteBuffer byteBuffer) {
        int iCapacity = byteBuffer.capacity() - i2;
        return iCapacity + byteBuffer.getShort((iCapacity + i) - byteBuffer.getInt(iCapacity));
    }

    protected static String __string(int i, ByteBuffer byteBuffer, Utf8 utf8) {
        int i2 = byteBuffer.getInt(i) + i;
        return utf8.decodeUtf8(byteBuffer, i2 + 4, byteBuffer.getInt(i2));
    }

    protected static Table __union(Table table, int i, ByteBuffer byteBuffer) {
        table.__reset(__indirect(i, byteBuffer), byteBuffer);
        return table;
    }

    protected static int compareStrings(int i, int i2, ByteBuffer byteBuffer) {
        int i3 = byteBuffer.getInt(i) + i;
        int i4 = byteBuffer.getInt(i2) + i2;
        int i5 = byteBuffer.getInt(i3);
        int i6 = byteBuffer.getInt(i4);
        int i7 = i3 + 4;
        int i8 = i4 + 4;
        int iMin = Math.min(i5, i6);
        for (int i9 = 0; i9 < iMin; i9++) {
            if (byteBuffer.get(i9 + i7) != byteBuffer.get(i9 + i8)) {
                return byteBuffer.get(i9 + i7) - byteBuffer.get(i9 + i8);
            }
        }
        return i5 - i6;
    }

    protected static int compareStrings(int i, byte[] bArr, ByteBuffer byteBuffer) {
        int i2 = byteBuffer.getInt(i) + i;
        int i3 = byteBuffer.getInt(i2);
        int length = bArr.length;
        int i4 = i2 + 4;
        int iMin = Math.min(i3, length);
        for (int i5 = 0; i5 < iMin; i5++) {
            if (byteBuffer.get(i5 + i4) != bArr[i5]) {
                return byteBuffer.get(i5 + i4) - bArr[i5];
            }
        }
        return i3 - length;
    }

    protected int __indirect(int i) {
        return this.bb.getInt(i) + i;
    }

    protected int __offset(int i) {
        if (i < this.vtable_size) {
            return this.bb.getShort(this.vtable_start + i);
        }
        return 0;
    }

    public void __reset() {
        __reset(0, null);
    }

    protected void __reset(int i, ByteBuffer byteBuffer) {
        this.bb = byteBuffer;
        if (byteBuffer == null) {
            this.bb_pos = 0;
            this.vtable_start = 0;
            this.vtable_size = 0;
        } else {
            this.bb_pos = i;
            int i2 = i - byteBuffer.getInt(i);
            this.vtable_start = i2;
            this.vtable_size = this.bb.getShort(i2);
        }
    }

    protected String __string(int i) {
        return __string(i, this.bb, this.utf8);
    }

    protected Table __union(Table table, int i) {
        return __union(table, i, this.bb);
    }

    protected int __vector(int i) {
        int i2 = this.bb_pos + i;
        return i2 + this.bb.getInt(i2) + 4;
    }

    protected ByteBuffer __vector_as_bytebuffer(int i, int i2) {
        int i__offset = __offset(i);
        if (i__offset == 0) {
            return null;
        }
        ByteBuffer byteBufferOrder = this.bb.duplicate().order(ByteOrder.LITTLE_ENDIAN);
        int i__vector = __vector(i__offset);
        byteBufferOrder.position(i__vector);
        byteBufferOrder.limit((__vector_len(i__offset) * i2) + i__vector);
        return byteBufferOrder;
    }

    protected ByteBuffer __vector_in_bytebuffer(ByteBuffer byteBuffer, int i, int i2) {
        int i__offset = __offset(i);
        if (i__offset == 0) {
            return null;
        }
        int i__vector = __vector(i__offset);
        byteBuffer.rewind();
        byteBuffer.limit((__vector_len(i__offset) * i2) + i__vector);
        byteBuffer.position(i__vector);
        return byteBuffer;
    }

    protected int __vector_len(int i) {
        int i2 = this.bb_pos + i;
        return this.bb.getInt(i2 + this.bb.getInt(i2));
    }

    public ByteBuffer getByteBuffer() {
        return this.bb;
    }

    protected int keysCompare(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return 0;
    }

    protected void sortTables(int[] iArr, ByteBuffer byteBuffer) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        Arrays.sort(numArr, new Comparator<Integer>(this, byteBuffer) { // from class: androidx.emoji2.text.flatbuffer.Table.1
            final Table this$0;
            final ByteBuffer val$bb;

            {
                this.this$0 = this;
                this.val$bb = byteBuffer;
            }

            @Override // java.util.Comparator
            public int compare(Integer num, Integer num2) {
                return this.this$0.keysCompare(num, num2, this.val$bb);
            }
        });
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = numArr[i2].intValue();
        }
    }
}

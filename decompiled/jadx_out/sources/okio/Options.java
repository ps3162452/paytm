package okio;

import java.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes63.dex */
public final class Options extends AbstractList<ByteString> implements RandomAccess {
    final ByteString[] byteStrings;
    final int[] trie;

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    private static void buildTrieRecursive(long j, Buffer buffer, int i, List<ByteString> list, int i2, int i3, List<Integer> list2) {
        int iIntValue;
        int i4;
        ByteString byteString;
        if (i2 >= i3) {
            throw new AssertionError();
        }
        for (int i5 = i2; i5 < i3; i5++) {
            if (list.get(i5).size() < i) {
                throw new AssertionError();
            }
        }
        ByteString byteString2 = list.get(i2);
        ByteString byteString3 = list.get(i3 - 1);
        if (i == byteString2.size()) {
            i4 = i2 + 1;
            iIntValue = list2.get(i2).intValue();
            byteString = list.get(i4);
        } else {
            iIntValue = -1;
            i4 = i2;
            byteString = byteString2;
        }
        if (byteString.getByte(i) == byteString3.getByte(i)) {
            int iMin = Math.min(byteString.size(), byteString3.size());
            int i6 = 0;
            for (int i7 = i; i7 < iMin && byteString.getByte(i7) == byteString3.getByte(i7); i7++) {
                i6++;
            }
            long jIntCount = ((long) intCount(buffer)) + j + 2 + ((long) i6) + 1;
            buffer.writeInt(-i6);
            buffer.writeInt(iIntValue);
            for (int i8 = i; i8 < i + i6; i8++) {
                buffer.writeInt(byteString.getByte(i8) & 255);
            }
            if (i4 + 1 == i3) {
                if (i + i6 != list.get(i4).size()) {
                    throw new AssertionError();
                }
                buffer.writeInt(list2.get(i4).intValue());
                return;
            } else {
                Buffer buffer2 = new Buffer();
                buffer.writeInt((int) ((-1) * (((long) intCount(buffer2)) + jIntCount)));
                buildTrieRecursive(jIntCount, buffer2, i + i6, list, i4, i3, list2);
                buffer.write(buffer2, buffer2.size());
                return;
            }
        }
        int i9 = 1;
        int i10 = i4 + 1;
        while (i10 < i3) {
            int i11 = list.get(i10 + (-1)).getByte(i) != list.get(i10).getByte(i) ? i9 + 1 : i9;
            i10++;
            i9 = i11;
        }
        long jIntCount2 = ((long) intCount(buffer)) + j + 2 + ((long) (i9 * 2));
        buffer.writeInt(i9);
        buffer.writeInt(iIntValue);
        for (int i12 = i4; i12 < i3; i12++) {
            byte b = list.get(i12).getByte(i);
            if (i12 == i4 || b != list.get(i12 - 1).getByte(i)) {
                buffer.writeInt(b & 255);
            }
        }
        Buffer buffer3 = new Buffer();
        while (i4 < i3) {
            byte b2 = list.get(i4).getByte(i);
            int i13 = i4 + 1;
            while (true) {
                if (i13 >= i3) {
                    i13 = i3;
                    break;
                } else if (b2 != list.get(i13).getByte(i)) {
                    break;
                } else {
                    i13++;
                }
            }
            if (i4 + 1 == i13 && i + 1 == list.get(i4).size()) {
                buffer.writeInt(list2.get(i4).intValue());
            } else {
                buffer.writeInt((int) ((-1) * (((long) intCount(buffer3)) + jIntCount2)));
                buildTrieRecursive(jIntCount2, buffer3, i + 1, list, i4, i13, list2);
            }
            i4 = i13;
        }
        buffer.write(buffer3, buffer3.size());
    }

    private static int intCount(Buffer buffer) {
        return (int) (buffer.size() / 4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0092, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static okio.Options of(okio.ByteString... r9) {
        /*
            Method dump skipped, instruction units count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Options.of(okio.ByteString[]):okio.Options");
    }

    @Override // java.util.AbstractList, java.util.List
    public ByteString get(int i) {
        return this.byteStrings[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.byteStrings.length;
    }
}

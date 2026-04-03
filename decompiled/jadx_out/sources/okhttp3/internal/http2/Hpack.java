package okhttp3.internal.http2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import n.NPStringFog;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes62.dex */
final class Hpack {
    private static final int PREFIX_4_BITS = 15;
    private static final int PREFIX_5_BITS = 31;
    private static final int PREFIX_6_BITS = 63;
    private static final int PREFIX_7_BITS = 127;
    static final Header[] STATIC_HEADER_TABLE = {new Header(Header.TARGET_AUTHORITY, ""), new Header(Header.TARGET_METHOD, NPStringFog.decode(new byte[]{119, 38, 54}, "0cb58c", -1265075748L)), new Header(Header.TARGET_METHOD, NPStringFog.decode(new byte[]{54, 41, 48, 101}, "ffc146", false)), new Header(Header.TARGET_PATH, NPStringFog.decode(new byte[]{78}, "af1ec0", true, true)), new Header(Header.TARGET_PATH, NPStringFog.decode(new byte[]{77, 92, 91, 7, 6, 74, 76, 93, 65, 14, 15}, "b55cc2", 58431751L)), new Header(Header.TARGET_SCHEME, NPStringFog.decode(new byte[]{88, 66, 21, 21}, "06aee6", -5.307902E8f)), new Header(Header.TARGET_SCHEME, NPStringFog.decode(new byte[]{94, 66, 65, 18, 71}, "665b43", false, false)), new Header(Header.RESPONSE_STATUS, NPStringFog.decode(new byte[]{83, 3, 5}, "a353c5", 1.761708239E9d)), new Header(Header.RESPONSE_STATUS, NPStringFog.decode(new byte[]{83, 3, 85}, "a3ad76", -1454745013L)), new Header(Header.RESPONSE_STATUS, NPStringFog.decode(new byte[]{84, 5, 5}, "f53bdf", 1.8980161E9f)), new Header(Header.RESPONSE_STATUS, NPStringFog.decode(new byte[]{1, 1, 0}, "214f6d", -1.2023967E9f)), new Header(Header.RESPONSE_STATUS, NPStringFog.decode(new byte[]{0, 6, 7}, "467221", 753685211L)), new Header(Header.RESPONSE_STATUS, NPStringFog.decode(new byte[]{5, 3, 5}, "131a6c", -14940)), new Header(Header.RESPONSE_STATUS, NPStringFog.decode(new byte[]{5, 0, 0}, "0000d5", -1.8766039E9f)), new Header(NPStringFog.decode(new byte[]{82, 1, 6, 86, 17, 77, 30, 1, 13, 82, 19, 74, 86, 22}, "3be3a9", true, true), ""), new Header(NPStringFog.decode(new byte[]{87, 0, 84, 84, 21, 71, 27, 6, 89, 82, 10, 87, 95, 13, 80}, "6c71e3", 15663), NPStringFog.decode(new byte[]{4, 67, 95, 17, 74, 65, 7, 92, 80, 13, 7, 21, 6}, "c96afa", -521402189L)), new Header(NPStringFog.decode(new byte[]{82, 82, 5, 87, 70, 66, 30, 93, 7, 92, 81, 67, 82, 86, 3}, "31f266", 9.45670692E8d), ""), new Header(NPStringFog.decode(new byte[]{3, 80, 80, 4, 70, 17, 79, 65, 82, 15, 81, 0, 17}, "b33a6e", 31272), ""), new Header(NPStringFog.decode(new byte[]{85, 6, 80, 84, 71, 16}, "4e317d", -7.881344E8f), ""), new Header(NPStringFog.decode(new byte[]{86, 81, 91, 7, 70, 16, 26, 81, 87, 12, 65, 17, 88, 94, 21, 3, 89, 15, 88, 69, 21, 13, 71, 10, 80, 91, 86}, "728b5c", -1122711503L), ""), new Header(NPStringFog.decode(new byte[]{87, 84, 81}, "6340c8", 30119), ""), new Header(NPStringFog.decode(new byte[]{82, 85, 85, 90, 65}, "399569", 1.0411822E8d), ""), new Header(NPStringFog.decode(new byte[]{88, 16, 22, 95, 92, 71, 80, 31, 3, 67, 90, 90, 87}, "9eb735", 4.70215069E8d), ""), new Header(NPStringFog.decode(new byte[]{1, 89, 83, 90, 0, 24, 1, 87, 94, 70, 23, 90, 14}, "b802e5", 19391), ""), new Header(NPStringFog.decode(new byte[]{91, 92, 94, 64, 1, 8, 76, 30, 84, 93, 23, 22, 87, 64, 89, 64, 13, 9, 86}, "8304df", 2.23374118E8d), ""), new Header(NPStringFog.decode(new byte[]{90, 91, 12, 17, 83, 92, 77, 25, 7, 11, 85, 93, 93, 93, 12, 2}, "94be62", true, true), ""), new Header(NPStringFog.decode(new byte[]{1, 94, 86, 17, 6, 8, 22, 28, 84, 4, 13, 1, 23, 80, 95, 0}, "b18ecf", true, true), ""), new Header(NPStringFog.decode(new byte[]{85, 13, 94, 76, 83, 13, 66, 79, 92, 93, 88, 4, 66, 10}, "6b086c", false), ""), new Header(NPStringFog.decode(new byte[]{6, 91, 89, 18, 92, 95, 17, 25, 91, 9, 90, 80, 17, 93, 88, 8}, "e47f91", 1718572164L), ""), new Header(NPStringFog.decode(new byte[]{90, 14, 89, 22, 87, 92, 77, 76, 69, 3, 92, 85, 92}, "9a7b22", 15495), ""), new Header(NPStringFog.decode(new byte[]{2, 95, 94, 77, 81, 90, 21, 29, 68, 64, 68, 81}, "a00944", 11934), ""), new Header(NPStringFog.decode(new byte[]{82, 11, 10, 14, 15, 93}, "1deef8", 7978), ""), new Header(NPStringFog.decode(new byte[]{85, 84, 66, 87}, "1562f6", 1944482830L), ""), new Header(NPStringFog.decode(new byte[]{86, 16, 83, 83}, "3d24c3", true), ""), new Header(NPStringFog.decode(new byte[]{0, 77, 72, 7, 2, 16}, "e58bad", 2.128048124E9d), ""), new Header(NPStringFog.decode(new byte[]{86, 75, 64, 95, 23, 81, 64}, "3306e4", -412069514L), ""), new Header(NPStringFog.decode(new byte[]{83, 74, 94, 93}, "5810d0", -5.5943155E8f), ""), new Header(NPStringFog.decode(new byte[]{81, 90, 66, 70}, "951267", -1.5890657E9f), ""), new Header(NPStringFog.decode(new byte[]{90, 0, 79, 90, 89, 21, 80, 14}, "3fb78a", true, true), ""), new Header(NPStringFog.decode(new byte[]{88, 4, 72, 85, 11, 81, 88, 4, 12, 93, 0, 24, 66, 11, 11, 91, 1}, "1be8d5", 1125240043L), ""), new Header(NPStringFog.decode(new byte[]{93, 7, 29, 94, 95, 11, 81, 76, 93, 81, 68, 6, 92}, "4a000e", -1.3873989E9f), ""), new Header(NPStringFog.decode(new byte[]{88, 95, 28, 64, 0, 94, 86, 92}, "1912a0", 9049), ""), new Header(NPStringFog.decode(new byte[]{88, 85, 72, 69, 15, 91, 94, 87, 12, 86, 8, 83, 85, 30, 22, 89, 15, 85, 84}, "13e0a6", true), ""), new Header(NPStringFog.decode(new byte[]{15, 3, 21, 76, 25, 89, 12, 6, 15, 94, 93, 81, 7}, "cbf844", -1.882566933E9d), ""), new Header(NPStringFog.decode(new byte[]{88, 10, 8, 9}, "4cfb76", -1937842183L), ""), new Header(NPStringFog.decode(new byte[]{95, 13, 81, 2, 17, 81, 92, 12}, "3b2ce8", -12176), ""), new Header(NPStringFog.decode(new byte[]{8, 88, 26, 25, 84, 86, 23, 78, 3, 70, 86, 74}, "e9b429", 4.1322944E8f), ""), new Header(NPStringFog.decode(new byte[]{67, 64, 87, 75, 77, 79, 82, 71, 76, 91, 81, 12, 71, 91, 91, 82, 64, 7}, "32834b", false, true), ""), new Header(NPStringFog.decode(new byte[]{67, 68, 94, 25, 73, 79, 82, 67, 69, 9, 95, 16, 90, 76, 80, 21, 89, 13, 93}, "361a0b", 29167), ""), new Header(NPStringFog.decode(new byte[]{68, 81, 88, 82, 6}, "6065c4", -5745), ""), new Header(NPStringFog.decode(new byte[]{17, 7, 2, 92, 17, 82, 17}, "cbd9c7", true), ""), new Header(NPStringFog.decode(new byte[]{75, 6, 84, 75, 82, 16, 81}, "9c297c", false, false), ""), new Header(NPStringFog.decode(new byte[]{64, 4, 16, 66, 76, 76, 83, 7, 16, 85, 71}, "2ad05a", true), ""), new Header(NPStringFog.decode(new byte[]{18, 3, 71, 71, 80, 74}, "af5158", -27833), ""), new Header(NPStringFog.decode(new byte[]{21, 83, 71, 78, 85, 9, 9, 93, 90, 6}, "f63c6f", -69026829L), ""), new Header(NPStringFog.decode(new byte[]{67, 65, 67, 80, 87, 16, 29, 65, 67, 88, 90, 23, 64, 90, 67, 77, 25, 23, 85, 86, 68, 75, 93, 16, 73}, "05194d", -1.518884104E9d), ""), new Header(NPStringFog.decode(new byte[]{18, 70, 0, 90, 18, 84, 3, 70, 76, 81, 15, 81, 9, 80, 8, 90, 6}, "f4a4a2", true), ""), new Header(NPStringFog.decode(new byte[]{17, 23, 3, 16, 78, 83, 3, 1, 8, 22}, "ddfbc2", 2048), ""), new Header(NPStringFog.decode(new byte[]{23, 82, 22, 74}, "a3d3eb", -8.268095E8f), ""), new Header(NPStringFog.decode(new byte[]{19, 90, 86}, "e3715a", true, true), ""), new Header(NPStringFog.decode(new byte[]{21, 78, 64, 24, 83, 69, 22, 81, 82, 91, 70, 89, 1, 88, 67, 80}, "b97520", 6.74039995E8d), "")};
    static final Map<ByteString, Integer> NAME_TO_FIRST_INDEX = nameToFirstIndex();

    static final class Reader {
        Header[] dynamicTable;
        int dynamicTableByteCount;
        int headerCount;
        private final List<Header> headerList;
        private final int headerTableSizeSetting;
        private int maxDynamicTableByteCount;
        int nextHeaderIndex;
        private final BufferedSource source;

        Reader(int i, int i2, Source source) {
            this.headerList = new ArrayList();
            this.dynamicTable = new Header[8];
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
            this.headerTableSizeSetting = i;
            this.maxDynamicTableByteCount = i2;
            this.source = Okio.buffer(source);
        }

        Reader(int i, Source source) {
            this(i, i, source);
        }

        private void adjustDynamicTableByteCount() {
            if (this.maxDynamicTableByteCount < this.dynamicTableByteCount) {
                if (this.maxDynamicTableByteCount == 0) {
                    clearDynamicTable();
                } else {
                    evictToRecoverBytes(this.dynamicTableByteCount - this.maxDynamicTableByteCount);
                }
            }
        }

        private void clearDynamicTable() {
            Arrays.fill(this.dynamicTable, (Object) null);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private int dynamicTableIndex(int i) {
            return this.nextHeaderIndex + 1 + i;
        }

        private int evictToRecoverBytes(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    if (length < this.nextHeaderIndex || i <= 0) {
                        break;
                    }
                    i -= this.dynamicTable[length].hpackSize;
                    this.dynamicTableByteCount -= this.dynamicTable[length].hpackSize;
                    this.headerCount--;
                    i2++;
                }
                System.arraycopy(this.dynamicTable, this.nextHeaderIndex + 1, this.dynamicTable, this.nextHeaderIndex + 1 + i2, this.headerCount);
                this.nextHeaderIndex += i2;
            }
            return i2;
        }

        private ByteString getName(int i) {
            return isStaticHeader(i) ? Hpack.STATIC_HEADER_TABLE[i].name : this.dynamicTable[dynamicTableIndex(i - Hpack.STATIC_HEADER_TABLE.length)].name;
        }

        private void insertIntoDynamicTable(int i, Header header) {
            this.headerList.add(header);
            int i2 = header.hpackSize;
            if (i != -1) {
                i2 -= this.dynamicTable[dynamicTableIndex(i)].hpackSize;
            }
            if (i2 > this.maxDynamicTableByteCount) {
                clearDynamicTable();
                return;
            }
            int iEvictToRecoverBytes = evictToRecoverBytes((this.dynamicTableByteCount + i2) - this.maxDynamicTableByteCount);
            if (i == -1) {
                if (this.headerCount + 1 > this.dynamicTable.length) {
                    Header[] headerArr = new Header[this.dynamicTable.length * 2];
                    System.arraycopy(this.dynamicTable, 0, headerArr, this.dynamicTable.length, this.dynamicTable.length);
                    this.nextHeaderIndex = this.dynamicTable.length - 1;
                    this.dynamicTable = headerArr;
                }
                int i3 = this.nextHeaderIndex;
                this.nextHeaderIndex = i3 - 1;
                this.dynamicTable[i3] = header;
                this.headerCount++;
            } else {
                this.dynamicTable[iEvictToRecoverBytes + dynamicTableIndex(i) + i] = header;
            }
            this.dynamicTableByteCount = i2 + this.dynamicTableByteCount;
        }

        private boolean isStaticHeader(int i) {
            return i >= 0 && i <= Hpack.STATIC_HEADER_TABLE.length + (-1);
        }

        private int readByte() throws IOException {
            return this.source.readByte() & 255;
        }

        private void readIndexedHeader(int i) throws IOException {
            if (isStaticHeader(i)) {
                this.headerList.add(Hpack.STATIC_HEADER_TABLE[i]);
                return;
            }
            int iDynamicTableIndex = dynamicTableIndex(i - Hpack.STATIC_HEADER_TABLE.length);
            if (iDynamicTableIndex < 0 || iDynamicTableIndex > this.dynamicTable.length - 1) {
                throw new IOException(NPStringFog.decode(new byte[]{45, 7, 86, 83, 7, 65, 69, 11, 89, 83, 7, 75, 69, 22, 88, 88, 66, 95, 4, 16, 80, 82, 66}, "eb77b3", 3899) + (i + 1));
            }
            this.headerList.add(this.dynamicTable[iDynamicTableIndex]);
        }

        private void readLiteralHeaderWithIncrementalIndexingIndexedName(int i) throws IOException {
            insertIntoDynamicTable(-1, new Header(getName(i), readByteString()));
        }

        private void readLiteralHeaderWithIncrementalIndexingNewName() throws IOException {
            insertIntoDynamicTable(-1, new Header(Hpack.checkLowercase(readByteString()), readByteString()));
        }

        private void readLiteralHeaderWithoutIndexingIndexedName(int i) throws IOException {
            this.headerList.add(new Header(getName(i), readByteString()));
        }

        private void readLiteralHeaderWithoutIndexingNewName() throws IOException {
            this.headerList.add(new Header(Hpack.checkLowercase(readByteString()), readByteString()));
        }

        public List<Header> getAndResetHeaderList() {
            ArrayList arrayList = new ArrayList(this.headerList);
            this.headerList.clear();
            return arrayList;
        }

        int maxDynamicTableByteCount() {
            return this.maxDynamicTableByteCount;
        }

        ByteString readByteString() throws IOException {
            int i = readByte();
            boolean z = (i & 128) == 128;
            int i2 = readInt(i, Hpack.PREFIX_7_BITS);
            return z ? ByteString.of(Huffman.get().decode(this.source.readByteArray(i2))) : this.source.readByteString(i2);
        }

        void readHeaders() throws IOException {
            while (!this.source.exhausted()) {
                int i = this.source.readByte() & 255;
                if (i == 128) {
                    throw new IOException(NPStringFog.decode(new byte[]{15, 92, 1, 82, 28, 69, 91, 15, 69, 7}, "f2e7de", -8.622746E7f));
                }
                if ((i & 128) == 128) {
                    readIndexedHeader(readInt(i, Hpack.PREFIX_7_BITS) - 1);
                } else if (i == 64) {
                    readLiteralHeaderWithIncrementalIndexingNewName();
                } else if ((i & 64) == 64) {
                    readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(i, 63) - 1);
                } else if ((i & 32) == 32) {
                    this.maxDynamicTableByteCount = readInt(i, 31);
                    if (this.maxDynamicTableByteCount < 0 || this.maxDynamicTableByteCount > this.headerTableSizeSetting) {
                        throw new IOException(NPStringFog.decode(new byte[]{127, 8, 71, 3, 92, 11, 82, 70, 85, 27, 94, 3, 91, 15, 82, 66, 68, 3, 84, 10, 84, 66, 67, 11, 76, 3, 17, 23, 64, 6, 87, 18, 84, 66}, "6f1b0b", false, false) + this.maxDynamicTableByteCount);
                    }
                    adjustDynamicTableByteCount();
                } else if (i == 16 || i == 0) {
                    readLiteralHeaderWithoutIndexingNewName();
                } else {
                    readLiteralHeaderWithoutIndexingIndexedName(readInt(i, 15) - 1);
                }
            }
        }

        int readInt(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int i5 = readByte();
                if ((i5 & 128) == 0) {
                    return (i5 << i4) + i2;
                }
                i2 += (i5 & Hpack.PREFIX_7_BITS) << i4;
                i4 += 7;
            }
        }
    }

    static final class Writer {
        private static final int SETTINGS_HEADER_TABLE_SIZE = 4096;
        private static final int SETTINGS_HEADER_TABLE_SIZE_LIMIT = 16384;
        Header[] dynamicTable;
        int dynamicTableByteCount;
        private boolean emitDynamicTableSizeUpdate;
        int headerCount;
        int headerTableSizeSetting;
        int maxDynamicTableByteCount;
        int nextHeaderIndex;
        private final Buffer out;
        private int smallestHeaderTableSizeSetting;
        private final boolean useCompression;

        Writer(int i, boolean z, Buffer buffer) {
            this.smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
            this.dynamicTable = new Header[8];
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
            this.headerTableSizeSetting = i;
            this.maxDynamicTableByteCount = i;
            this.useCompression = z;
            this.out = buffer;
        }

        Writer(Buffer buffer) {
            this(4096, true, buffer);
        }

        private void adjustDynamicTableByteCount() {
            if (this.maxDynamicTableByteCount < this.dynamicTableByteCount) {
                if (this.maxDynamicTableByteCount == 0) {
                    clearDynamicTable();
                } else {
                    evictToRecoverBytes(this.dynamicTableByteCount - this.maxDynamicTableByteCount);
                }
            }
        }

        private void clearDynamicTable() {
            Arrays.fill(this.dynamicTable, (Object) null);
            this.nextHeaderIndex = this.dynamicTable.length - 1;
            this.headerCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private int evictToRecoverBytes(int i) {
            int i2 = 0;
            if (i > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    if (length < this.nextHeaderIndex || i <= 0) {
                        break;
                    }
                    i -= this.dynamicTable[length].hpackSize;
                    this.dynamicTableByteCount -= this.dynamicTable[length].hpackSize;
                    this.headerCount--;
                    i2++;
                }
                System.arraycopy(this.dynamicTable, this.nextHeaderIndex + 1, this.dynamicTable, this.nextHeaderIndex + 1 + i2, this.headerCount);
                Arrays.fill(this.dynamicTable, this.nextHeaderIndex + 1, this.nextHeaderIndex + 1 + i2, (Object) null);
                this.nextHeaderIndex += i2;
            }
            return i2;
        }

        private void insertIntoDynamicTable(Header header) {
            int i = header.hpackSize;
            if (i > this.maxDynamicTableByteCount) {
                clearDynamicTable();
                return;
            }
            evictToRecoverBytes((this.dynamicTableByteCount + i) - this.maxDynamicTableByteCount);
            if (this.headerCount + 1 > this.dynamicTable.length) {
                Header[] headerArr = new Header[this.dynamicTable.length * 2];
                System.arraycopy(this.dynamicTable, 0, headerArr, this.dynamicTable.length, this.dynamicTable.length);
                this.nextHeaderIndex = this.dynamicTable.length - 1;
                this.dynamicTable = headerArr;
            }
            int i2 = this.nextHeaderIndex;
            this.nextHeaderIndex = i2 - 1;
            this.dynamicTable[i2] = header;
            this.headerCount++;
            this.dynamicTableByteCount = i + this.dynamicTableByteCount;
        }

        void setHeaderTableSizeSetting(int i) {
            this.headerTableSizeSetting = i;
            int iMin = Math.min(i, 16384);
            if (this.maxDynamicTableByteCount == iMin) {
                return;
            }
            if (iMin < this.maxDynamicTableByteCount) {
                this.smallestHeaderTableSizeSetting = Math.min(this.smallestHeaderTableSizeSetting, iMin);
            }
            this.emitDynamicTableSizeUpdate = true;
            this.maxDynamicTableByteCount = iMin;
            adjustDynamicTableByteCount();
        }

        void writeByteString(ByteString byteString) throws IOException {
            if (!this.useCompression || Huffman.get().encodedLength(byteString) >= byteString.size()) {
                writeInt(byteString.size(), Hpack.PREFIX_7_BITS, 0);
                this.out.write(byteString);
                return;
            }
            Buffer buffer = new Buffer();
            Huffman.get().encode(byteString, buffer);
            ByteString byteString2 = buffer.readByteString();
            writeInt(byteString2.size(), Hpack.PREFIX_7_BITS, 128);
            this.out.write(byteString2);
        }

        /* JADX WARN: Removed duplicated region for block: B:45:0x00ef  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void writeHeaders(java.util.List<okhttp3.internal.http2.Header> r15) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 251
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Hpack.Writer.writeHeaders(java.util.List):void");
        }

        void writeInt(int i, int i2, int i3) {
            if (i < i2) {
                this.out.writeByte(i3 | i);
                return;
            }
            this.out.writeByte(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.out.writeByte((i4 & Hpack.PREFIX_7_BITS) | 128);
                i4 >>>= 7;
            }
            this.out.writeByte(i4);
        }
    }

    private Hpack() {
    }

    static ByteString checkLowercase(ByteString byteString) throws IOException {
        int size = byteString.size();
        for (int i = 0; i < size; i++) {
            byte b = byteString.getByte(i);
            if (b >= 65 && b <= 90) {
                throw new IOException(NPStringFog.decode(new byte[]{101, 101, 124, 99, 123, 32, 122, 123, 108, 114, 102, 49, 122, 101, 19, 69, 81, 16, 69, 88, 93, 68, 81, 67, 88, 86, 95, 81, 91, 17, 88, 82, 87, 13, 20, 14, 92, 79, 86, 83, 20, 0, 84, 68, 86, 23, 90, 2, 88, 82, 9, 23}, "57374c", -5017) + byteString.utf8());
            }
        }
        return byteString;
    }

    private static Map<ByteString, Integer> nameToFirstIndex() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(STATIC_HEADER_TABLE.length);
        for (int i = 0; i < STATIC_HEADER_TABLE.length; i++) {
            if (!linkedHashMap.containsKey(STATIC_HEADER_TABLE[i].name)) {
                linkedHashMap.put(STATIC_HEADER_TABLE[i].name, Integer.valueOf(i));
            }
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }
}

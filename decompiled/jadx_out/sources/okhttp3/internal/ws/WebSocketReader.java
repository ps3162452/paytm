package okhttp3.internal.ws;

import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: loaded from: classes62.dex */
final class WebSocketReader {
    boolean closed;
    long frameBytesRead;
    final FrameCallback frameCallback;
    long frameLength;
    final boolean isClient;
    boolean isControlFrame;
    boolean isFinalFrame;
    boolean isMasked;
    int opcode;
    final BufferedSource source;
    final byte[] maskKey = new byte[4];
    final byte[] maskBuffer = new byte[8192];

    public interface FrameCallback {
        void onReadClose(int i, String str);

        void onReadMessage(String str) throws IOException;

        void onReadMessage(ByteString byteString) throws IOException;

        void onReadPing(ByteString byteString);

        void onReadPong(ByteString byteString);
    }

    WebSocketReader(boolean z, BufferedSource bufferedSource, FrameCallback frameCallback) {
        if (bufferedSource == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{67, 93, 76, 67, 0, 87, 16, 15, 4, 17, 13, 71, 92, 94}, "0291c2", 1.057030342E9d));
        }
        if (frameCallback == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{86, 22, 89, 11, 81, 34, 81, 8, 84, 4, 85, 2, 91, 68, 5, 91, 20, 15, 69, 8, 84}, "0d8f4a", true));
        }
        this.isClient = z;
        this.source = bufferedSource;
        this.frameCallback = frameCallback;
    }

    private void readControlFrame() throws IOException {
        Buffer buffer = new Buffer();
        if (this.frameBytesRead < this.frameLength) {
            if (this.isClient) {
                this.source.readFully(buffer, this.frameLength);
            } else {
                while (this.frameBytesRead < this.frameLength) {
                    int i = this.source.read(this.maskBuffer, 0, (int) Math.min(this.frameLength - this.frameBytesRead, this.maskBuffer.length));
                    if (i == -1) {
                        throw new EOFException();
                    }
                    WebSocketProtocol.toggleMask(this.maskBuffer, i, this.maskKey, this.frameBytesRead);
                    buffer.write(this.maskBuffer, 0, i);
                    this.frameBytesRead += (long) i;
                }
            }
        }
        switch (this.opcode) {
            case 8:
                short s = 1005;
                String utf8 = "";
                long size = buffer.size();
                if (size == 1) {
                    throw new ProtocolException(NPStringFog.decode(new byte[]{124, 86, 93, 85, 95, 16, 92, 82, 85, 19, 83, 14, 94, 68, 84, 19, 64, 3, 72, 91, 94, 82, 84, 66, 93, 82, 95, 84, 68, 10, 17, 88, 87, 19, 1, 76}, "17130b", -2125941793L));
                }
                if (size != 0) {
                    s = buffer.readShort();
                    utf8 = buffer.readUtf8();
                    String strCloseCodeExceptionMessage = WebSocketProtocol.closeCodeExceptionMessage(s);
                    if (strCloseCodeExceptionMessage != null) {
                        throw new ProtocolException(strCloseCodeExceptionMessage);
                    }
                }
                this.frameCallback.onReadClose(s, utf8);
                this.closed = true;
                return;
            case 9:
                this.frameCallback.onReadPing(buffer.readByteString());
                return;
            case 10:
                this.frameCallback.onReadPong(buffer.readByteString());
                return;
            default:
                throw new ProtocolException(NPStringFog.decode(new byte[]{54, 90, 89, 8, 95, 78, 13, 20, 81, 9, 94, 77, 17, 91, 94, 70, 95, 73, 0, 91, 86, 3, 10, 25}, "c42f09", false) + Integer.toHexString(this.opcode));
        }
    }

    /* JADX WARN: Finally extract failed */
    private void readHeader() throws IOException {
        if (this.closed) {
            throw new IOException(NPStringFog.decode(new byte[]{90, 10, 92, 16, 3, 85}, "9f3cf1", -7.07123118E8d));
        }
        long jTimeoutNanos = this.source.timeout().timeoutNanos();
        this.source.timeout().clearTimeout();
        try {
            int i = this.source.readByte() & 255;
            this.source.timeout().timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            this.opcode = i & 15;
            this.isFinalFrame = (i & 128) != 0;
            this.isControlFrame = (i & 8) != 0;
            if (this.isControlFrame && !this.isFinalFrame) {
                throw new ProtocolException(NPStringFog.decode(new byte[]{33, 91, 15, 17, 70, 90, 14, 20, 7, 23, 85, 88, 7, 71, 65, 8, 65, 70, 22, 20, 3, 0, 20, 83, 11, 90, 0, 9, 26}, "b4ae45", 7.625475E8f));
            }
            boolean z = (i & 64) != 0;
            boolean z2 = (i & 32) != 0;
            boolean z3 = (i & 16) != 0;
            if (z || z2 || z3) {
                throw new ProtocolException(NPStringFog.decode(new byte[]{103, 81, 64, 82, 23, 65, 80, 80, 19, 81, 9, 86, 82, 71, 19, 86, 23, 82, 21, 65, 93, 68, 16, 71, 69, 91, 65, 67, 0, 83, 27}, "5437e7", -20978));
            }
            this.isMasked = ((this.source.readByte() & 255) & 128) != 0;
            if (this.isMasked == this.isClient) {
                throw new ProtocolException(this.isClient ? NPStringFog.decode(new byte[]{54, 1, 19, 64, 85, 67, 72, 23, 4, 88, 68, 17, 3, 22, 0, 91, 85, 66, 69, 9, 20, 69, 68, 17, 11, 11, 21, 22, 82, 84, 69, 9, 0, 69, 91, 84, 1, 74}, "eda601", -1463579128L) : NPStringFog.decode(new byte[]{34, 90, 89, 1, 95, 67, 76, 69, 85, 10, 69, 23, 7, 68, 81, 9, 84, 68, 65, 91, 69, 23, 69, 23, 3, 83, 16, 9, 80, 68, 10, 83, 84, 74}, "a60d17", true));
            }
            this.frameLength = r0 & 127;
            if (this.frameLength == 126) {
                this.frameLength = ((long) this.source.readShort()) & 65535;
            } else if (this.frameLength == 127) {
                this.frameLength = this.source.readLong();
                if (this.frameLength < 0) {
                    throw new ProtocolException(NPStringFog.decode(new byte[]{114, 23, 89, 12, 80, 17, 88, 0, 86, 6, 65, 89, 20, 85, 64}, "4e8a51", -1896128063L) + Long.toHexString(this.frameLength) + NPStringFog.decode(new byte[]{69, 14, 69, 9, 75, 3, 35, 118, 35, 127, 117, 114, 35, 118, 35, 127, 117, 114, 35, 118, 35}, "e0e934", 1604093514L));
                }
            }
            this.frameBytesRead = 0L;
            if (this.isControlFrame && this.frameLength > 125) {
                throw new ProtocolException(NPStringFog.decode(new byte[]{38, 91, 94, 69, 23, 93, 9, 20, 86, 67, 4, 95, 0, 20, 93, 68, 22, 70, 69, 86, 85, 17, 9, 87, 22, 71, 16, 69, 13, 83, 11, 20, 1, 3, 80, 112, 75}, "e401e2", -17253));
            }
            if (this.isMasked) {
                this.source.readFully(this.maskKey);
            }
        } catch (Throwable th) {
            this.source.timeout().timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
            throw th;
        }
    }

    private void readMessage(Buffer buffer) throws IOException {
        long j;
        while (!this.closed) {
            if (this.frameBytesRead == this.frameLength) {
                if (this.isFinalFrame) {
                    return;
                }
                readUntilNonControlFrame();
                if (this.opcode != 0) {
                    throw new ProtocolException(NPStringFog.decode(new byte[]{38, 72, 70, 0, 0, 76, 6, 84, 22, 6, 12, 86, 23, 89, 88, 16, 2, 76, 10, 95, 88, 69, 12, 72, 0, 95, 82, 0, 77, 24, 36, 95, 66, 95, 67}, "c06ec8", -1.960484101E9d) + Integer.toHexString(this.opcode));
                }
                if (this.isFinalFrame && this.frameLength == 0) {
                    return;
                }
            }
            long j2 = this.frameLength - this.frameBytesRead;
            if (this.isMasked) {
                j = this.source.read(this.maskBuffer, 0, (int) Math.min(j2, this.maskBuffer.length));
                if (j == -1) {
                    throw new EOFException();
                }
                WebSocketProtocol.toggleMask(this.maskBuffer, j, this.maskKey, this.frameBytesRead);
                buffer.write(this.maskBuffer, 0, (int) j);
            } else {
                j = this.source.read(buffer, j2);
                if (j == -1) {
                    throw new EOFException();
                }
            }
            this.frameBytesRead += j;
        }
        throw new IOException(NPStringFog.decode(new byte[]{81, 95, 91, 74, 80, 87}, "234953", false));
    }

    private void readMessageFrame() throws IOException {
        int i = this.opcode;
        if (i != 1 && i != 2) {
            throw new ProtocolException(NPStringFog.decode(new byte[]{48, 87, 92, 88, 14, 18, 11, 25, 88, 70, 2, 10, 1, 92, 13, 22}, "e976ae", 2.085320448E9d) + Integer.toHexString(i));
        }
        Buffer buffer = new Buffer();
        readMessage(buffer);
        if (i == 1) {
            this.frameCallback.onReadMessage(buffer.readUtf8());
        } else {
            this.frameCallback.onReadMessage(buffer.readByteString());
        }
    }

    void processNextFrame() throws IOException {
        readHeader();
        if (this.isControlFrame) {
            readControlFrame();
        } else {
            readMessageFrame();
        }
    }

    void readUntilNonControlFrame() throws IOException {
        while (!this.closed) {
            readHeader();
            if (!this.isControlFrame) {
                return;
            } else {
                readControlFrame();
            }
        }
    }
}

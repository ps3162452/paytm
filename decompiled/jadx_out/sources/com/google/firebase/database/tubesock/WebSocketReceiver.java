package com.google.firebase.database.tubesock;

import com.google.firebase.database.tubesock.MessageBuilderFactory;
import java.io.DataInputStream;
import java.io.IOException;
import java.net.SocketTimeoutException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
class WebSocketReceiver {
    private MessageBuilderFactory.Builder pendingBuilder;
    private WebSocket websocket;
    private DataInputStream input = null;
    private WebSocketEventHandler eventHandler = null;
    private byte[] inputHeader = new byte[112];
    private volatile boolean stop = false;

    WebSocketReceiver(WebSocket webSocket) {
        this.websocket = null;
        this.websocket = webSocket;
    }

    private void appendBytes(boolean z, byte b, byte[] bArr) {
        if (b == 9) {
            if (!z) {
                throw new WebSocketException(NPStringFog.decode(new byte[]{105, 120, 126, 36, 70, 95, 76, 66, 68, 67, 8, 93, 77, 17, 86, 17, 7, 85, 84, 84, 94, 23, 70, 83, 90, 67, 95, 16, 21, 18, 95, 67, 81, 14, 3, 65}, "910cf2", 4498));
            }
            handlePing(bArr);
            return;
        }
        MessageBuilderFactory.Builder builder = this.pendingBuilder;
        if (builder != null && b != 0) {
            throw new WebSocketException(NPStringFog.decode(new byte[]{32, 7, 93, 9, 86, 0, 70, 18, 91, 69, 80, 11, 8, 18, 93, 11, 70, 1, 70, 9, 65, 17, 64, 16, 7, 8, 80, 12, 93, 3, 70, 0, 70, 4, 94, 1}, "ff4e3d", -2.10562176E8d));
        }
        if (builder == null && b == 0) {
            throw new WebSocketException(NPStringFog.decode(new byte[]{96, 83, 82, 83, 88, 79, 87, 82, 17, 85, 94, 87, 70, 95, 95, 67, 88, 87, 85, 22, 87, 68, 80, 84, 87, 26, 17, 84, 68, 77, 18, 66, 89, 83, 67, 92, 21, 69, 17, 88, 94, 77, 90, 95, 95, 81, 17, 77, 93, 22, 82, 89, 95, 77, 91, 88, 68, 83}, "261619", true, true));
        }
        if (builder == null) {
            this.pendingBuilder = MessageBuilderFactory.builder(b);
        }
        if (!this.pendingBuilder.appendBytes(bArr)) {
            throw new WebSocketException(NPStringFog.decode(new byte[]{39, 80, 10, 84, 84, 82, 65, 69, 12, 24, 85, 83, 2, 94, 7, 93, 17, 80, 19, 80, 14, 93}, "a1c816", 376));
        }
        if (z) {
            WebSocketMessage message = this.pendingBuilder.toMessage();
            this.pendingBuilder = null;
            if (message == null) {
                throw new WebSocketException(NPStringFog.decode(new byte[]{34, 85, 90, 13, 1, 85, 68, 64, 92, 65, 0, 84, 7, 91, 87, 4, 68, 70, 12, 91, 95, 4, 68, 92, 1, 71, 64, 0, 3, 84}, "d43ad1", 13323));
            }
            this.eventHandler.onMessage(message);
        }
    }

    private void handleError(WebSocketException webSocketException) {
        stopit();
        this.websocket.handleReceiverError(webSocketException);
    }

    private void handlePing(byte[] bArr) {
        if (bArr.length > 125) {
            throw new WebSocketException(NPStringFog.decode(new byte[]{49, 121, 45, 34, 17, 80, 19, 81, 14, 0, 17, 66, 14, 95, 67, 9, 94, 88, 6}, "a0ce16", 361670641L));
        }
        this.websocket.pong(bArr);
    }

    private long parseLong(byte[] bArr, int i) {
        return (((long) bArr[i + 0]) << 56) + (((long) (bArr[i + 1] & 255)) << 48) + (((long) (bArr[i + 2] & 255)) << 40) + (((long) (bArr[i + 3] & 255)) << 32) + (((long) (bArr[i + 4] & 255)) << 24) + ((long) ((bArr[i + 5] & 255) << 16)) + ((long) ((bArr[i + 6] & 255) << 8)) + ((long) ((bArr[i + 7] & 255) << 0));
    }

    private int read(byte[] bArr, int i, int i2) throws IOException {
        this.input.readFully(bArr, i, i2);
        return i2;
    }

    boolean isRunning() {
        return !this.stop;
    }

    void run() {
        int i;
        byte[] bArr;
        byte b;
        boolean z;
        this.eventHandler = this.websocket.getEventHandler();
        while (!this.stop) {
            try {
                i = read(this.inputHeader, 0, 1) + 0;
                bArr = this.inputHeader;
                b = bArr[0];
                z = (b & 128) != 0;
            } catch (WebSocketException e) {
                handleError(e);
            } catch (SocketTimeoutException e2) {
            } catch (IOException e3) {
                handleError(new WebSocketException(NPStringFog.decode(new byte[]{113, 125, 69, 114, 17, 71, 87, 64}, "82e7c5", -16137), e3));
            }
            if ((b & 112) != 0) {
                throw new WebSocketException(NPStringFog.decode(new byte[]{44, 91, 65, 0, 95, 92, 1, 21, 81, 19, 82, 88, 0, 21, 69, 4, 80, 80, 12, 67, 82, 5}, "e57a35", true));
            }
            byte b2 = (byte) (b & 15);
            int i2 = i + read(bArr, i, 1);
            byte[] bArr2 = this.inputHeader;
            byte b3 = bArr2[1];
            long j = 0;
            if (b3 < 126) {
                j = b3;
            } else if (b3 == 126) {
                read(bArr2, i2, 2);
                byte[] bArr3 = this.inputHeader;
                j = ((long) (bArr3[3] & 255)) | (((long) (bArr3[2] & 255)) << 8);
            } else if (b3 == 127) {
                j = parseLong(this.inputHeader, (read(bArr2, i2, 8) + i2) - 8);
            }
            byte[] bArr4 = new byte[(int) j];
            read(bArr4, 0, (int) j);
            if (b2 == 8) {
                this.websocket.onCloseOpReceived();
            } else if (b2 == 10) {
                continue;
            } else {
                if (b2 != 1 && b2 != 2 && b2 != 9 && b2 != 0) {
                    throw new WebSocketException(NPStringFog.decode(new byte[]{99, 87, 65, 66, 69, 19, 89, 75, 70, 82, 81, 67, 89, 73, 81, 88, 81, 6, 12, 25}, "69275c", 10368) + ((int) b2));
                }
                appendBytes(z, b2, bArr4);
            }
        }
    }

    void setInput(DataInputStream dataInputStream) {
        this.input = dataInputStream;
    }

    void stopit() {
        this.stop = true;
    }
}

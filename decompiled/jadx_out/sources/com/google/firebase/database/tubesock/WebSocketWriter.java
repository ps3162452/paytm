package com.google.firebase.database.tubesock;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.Random;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
class WebSocketWriter {
    private WritableByteChannel channel;
    private BlockingQueue<ByteBuffer> pendingBuffers;
    private WebSocket websocket;
    private final Random random = new Random();
    private volatile boolean stop = false;
    private boolean closeSent = false;
    private final Thread innerThread = WebSocket.getThreadFactory().newThread(new Runnable(this) { // from class: com.google.firebase.database.tubesock.WebSocketWriter.1
        final WebSocketWriter this$0;

        {
            this.this$0 = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.runWriter();
        }
    });

    WebSocketWriter(WebSocket webSocket, String str, int i) {
        WebSocket.getIntializer().setName(getInnerThread(), str + NPStringFog.decode(new byte[]{101, 67, 91, 70, 4, 70, 31}, "2122a4", false) + i);
        this.websocket = webSocket;
        this.pendingBuffers = new LinkedBlockingQueue();
    }

    private ByteBuffer frameInBuffer(byte b, boolean z, byte[] bArr) throws IOException {
        int i = z ? 6 : 2;
        int length = bArr.length;
        if (length >= 126) {
            i = length <= 65535 ? i + 2 : i + 8;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i + bArr.length);
        byteBufferAllocate.put((byte) (b | (-128)));
        if (length < 126) {
            byteBufferAllocate.put((byte) (z ? length | 128 : length));
        } else if (length <= 65535) {
            byteBufferAllocate.put((byte) (z ? 254 : 126));
            byteBufferAllocate.putShort((short) length);
        } else {
            byteBufferAllocate.put((byte) (z ? 255 : 127));
            byteBufferAllocate.putInt(0);
            byteBufferAllocate.putInt(length);
        }
        if (z) {
            byte[] bArrGenerateMask = generateMask();
            byteBufferAllocate.put(bArrGenerateMask);
            for (int i2 = 0; i2 < bArr.length; i2++) {
                byteBufferAllocate.put((byte) (bArr[i2] ^ bArrGenerateMask[i2 % 4]));
            }
        }
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    private byte[] generateMask() {
        byte[] bArr = new byte[4];
        this.random.nextBytes(bArr);
        return bArr;
    }

    private void handleError(WebSocketException webSocketException) {
        this.websocket.handleReceiverError(webSocketException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runWriter() {
        while (!this.stop && !Thread.interrupted()) {
            try {
                writeMessage();
            } catch (IOException e) {
                handleError(new WebSocketException(NPStringFog.decode(new byte[]{124, 124, 16, 36, 65, 90, 80, 67, 68, 8, 86, 87}, "530a99", -1.445688434E9d), e));
                return;
            } catch (InterruptedException e2) {
                return;
            }
        }
        for (int i = 0; i < this.pendingBuffers.size(); i++) {
            writeMessage();
        }
    }

    private void writeMessage() throws InterruptedException, IOException {
        this.channel.write(this.pendingBuffers.take());
    }

    Thread getInnerThread() {
        return this.innerThread;
    }

    void send(byte b, boolean z, byte[] bArr) throws IOException {
        synchronized (this) {
            ByteBuffer byteBufferFrameInBuffer = frameInBuffer(b, z, bArr);
            if (this.stop && (this.closeSent || b != 8)) {
                throw new WebSocketException(NPStringFog.decode(new byte[]{106, 80, 13, 23, 84, 5, 87, 31, 22, 66, 90, 4, 25, 75, 7, 12, 92, 8, 87, 95}, "98bb8a", 16771));
            }
            if (b == 8) {
                this.closeSent = true;
            }
            this.pendingBuffers.add(byteBufferFrameInBuffer);
        }
    }

    void setOutput(OutputStream outputStream) {
        this.channel = Channels.newChannel(outputStream);
    }

    void stopIt() {
        this.stop = true;
    }
}

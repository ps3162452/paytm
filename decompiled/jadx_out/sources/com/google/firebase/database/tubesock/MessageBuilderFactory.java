package com.google.firebase.database.tubesock;

import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
class MessageBuilderFactory {

    static class BinaryBuilder implements Builder {
        private int pendingByteCount = 0;
        private List<byte[]> pendingBytes = new ArrayList();

        BinaryBuilder() {
        }

        @Override // com.google.firebase.database.tubesock.MessageBuilderFactory.Builder
        public boolean appendBytes(byte[] bArr) {
            this.pendingBytes.add(bArr);
            this.pendingByteCount += bArr.length;
            return true;
        }

        @Override // com.google.firebase.database.tubesock.MessageBuilderFactory.Builder
        public WebSocketMessage toMessage() {
            byte[] bArr = new byte[this.pendingByteCount];
            int length = 0;
            for (int i = 0; i < this.pendingBytes.size(); i++) {
                byte[] bArr2 = this.pendingBytes.get(i);
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return new WebSocketMessage(bArr);
        }
    }

    interface Builder {
        boolean appendBytes(byte[] bArr);

        WebSocketMessage toMessage();
    }

    static class TextBuilder implements Builder {
        private static ThreadLocal<CharsetDecoder> localDecoder = new ThreadLocal<CharsetDecoder>() { // from class: com.google.firebase.database.tubesock.MessageBuilderFactory.TextBuilder.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public CharsetDecoder initialValue() {
                CharsetDecoder charsetDecoderNewDecoder = Charset.forName(NPStringFog.decode(new byte[]{96, 98, 119, 11}, "5613e4", 316318151L)).newDecoder();
                charsetDecoderNewDecoder.onMalformedInput(CodingErrorAction.REPORT);
                charsetDecoderNewDecoder.onUnmappableCharacter(CodingErrorAction.REPORT);
                return charsetDecoderNewDecoder;
            }
        };
        private static ThreadLocal<CharsetEncoder> localEncoder = new ThreadLocal<CharsetEncoder>() { // from class: com.google.firebase.database.tubesock.MessageBuilderFactory.TextBuilder.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public CharsetEncoder initialValue() {
                CharsetEncoder charsetEncoderNewEncoder = Charset.forName(NPStringFog.decode(new byte[]{52, 109, 127, 0}, "a9982b", 12168)).newEncoder();
                charsetEncoderNewEncoder.onMalformedInput(CodingErrorAction.REPORT);
                charsetEncoderNewEncoder.onUnmappableCharacter(CodingErrorAction.REPORT);
                return charsetEncoderNewEncoder;
            }
        };
        private StringBuilder builder = new StringBuilder();
        private ByteBuffer carryOver;

        TextBuilder() {
        }

        private String decodeString(byte[] bArr) {
            try {
                return localDecoder.get().decode(ByteBuffer.wrap(bArr)).toString();
            } catch (CharacterCodingException e) {
                return null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
        
            if (r4.remaining() <= 0) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
        
            r6.carryOver = r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x003f, code lost:
        
            com.google.firebase.database.tubesock.MessageBuilderFactory.TextBuilder.localEncoder.get().encode(java.nio.CharBuffer.wrap(r2));
            r2.flip();
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:?, code lost:
        
            return r2.toString();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String decodeStringStreaming(byte[] r7) {
            /*
                r6 = this;
                r3 = 0
                java.nio.ByteBuffer r4 = r6.getBuffer(r7)     // Catch: java.nio.charset.CharacterCodingException -> L6d
                int r0 = r4.remaining()     // Catch: java.nio.charset.CharacterCodingException -> L6d
                float r1 = (float) r0     // Catch: java.nio.charset.CharacterCodingException -> L6d
                java.lang.ThreadLocal<java.nio.charset.CharsetDecoder> r0 = com.google.firebase.database.tubesock.MessageBuilderFactory.TextBuilder.localDecoder     // Catch: java.nio.charset.CharacterCodingException -> L6d
                java.lang.Object r0 = r0.get()     // Catch: java.nio.charset.CharacterCodingException -> L6d
                java.nio.charset.CharsetDecoder r0 = (java.nio.charset.CharsetDecoder) r0     // Catch: java.nio.charset.CharacterCodingException -> L6d
                float r0 = r0.averageCharsPerByte()     // Catch: java.nio.charset.CharacterCodingException -> L6d
                float r0 = r0 * r1
                int r1 = (int) r0     // Catch: java.nio.charset.CharacterCodingException -> L6d
                java.nio.CharBuffer r2 = java.nio.CharBuffer.allocate(r1)     // Catch: java.nio.charset.CharacterCodingException -> L6d
            L1c:
                java.lang.ThreadLocal<java.nio.charset.CharsetDecoder> r0 = com.google.firebase.database.tubesock.MessageBuilderFactory.TextBuilder.localDecoder     // Catch: java.nio.charset.CharacterCodingException -> L6d
                java.lang.Object r0 = r0.get()     // Catch: java.nio.charset.CharacterCodingException -> L6d
                java.nio.charset.CharsetDecoder r0 = (java.nio.charset.CharsetDecoder) r0     // Catch: java.nio.charset.CharacterCodingException -> L6d
                r5 = 0
                java.nio.charset.CoderResult r0 = r0.decode(r4, r2, r5)     // Catch: java.nio.charset.CharacterCodingException -> L6d
                boolean r5 = r0.isError()     // Catch: java.nio.charset.CharacterCodingException -> L6d
                if (r5 == 0) goto L31
                r0 = r3
            L30:
                return r0
            L31:
                boolean r5 = r0.isUnderflow()     // Catch: java.nio.charset.CharacterCodingException -> L6d
                if (r5 == 0) goto L56
                int r0 = r4.remaining()     // Catch: java.nio.charset.CharacterCodingException -> L6d
                if (r0 <= 0) goto L3f
                r6.carryOver = r4     // Catch: java.nio.charset.CharacterCodingException -> L6d
            L3f:
                java.nio.CharBuffer r1 = java.nio.CharBuffer.wrap(r2)     // Catch: java.nio.charset.CharacterCodingException -> L6d
                java.lang.ThreadLocal<java.nio.charset.CharsetEncoder> r0 = com.google.firebase.database.tubesock.MessageBuilderFactory.TextBuilder.localEncoder     // Catch: java.nio.charset.CharacterCodingException -> L6d
                java.lang.Object r0 = r0.get()     // Catch: java.nio.charset.CharacterCodingException -> L6d
                java.nio.charset.CharsetEncoder r0 = (java.nio.charset.CharsetEncoder) r0     // Catch: java.nio.charset.CharacterCodingException -> L6d
                r0.encode(r1)     // Catch: java.nio.charset.CharacterCodingException -> L6d
                r2.flip()     // Catch: java.nio.charset.CharacterCodingException -> L6d
                java.lang.String r0 = r2.toString()     // Catch: java.nio.charset.CharacterCodingException -> L6d
                goto L30
            L56:
                boolean r0 = r0.isOverflow()     // Catch: java.nio.charset.CharacterCodingException -> L6d
                if (r0 == 0) goto L70
                int r0 = r1 * 2
                int r0 = r0 + 1
                java.nio.CharBuffer r1 = java.nio.CharBuffer.allocate(r0)     // Catch: java.nio.charset.CharacterCodingException -> L6d
                r2.flip()     // Catch: java.nio.charset.CharacterCodingException -> L6d
                r1.put(r2)     // Catch: java.nio.charset.CharacterCodingException -> L6d
            L6a:
                r2 = r1
                r1 = r0
                goto L1c
            L6d:
                r0 = move-exception
                r0 = r3
                goto L30
            L70:
                r0 = r1
                r1 = r2
                goto L6a
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.database.tubesock.MessageBuilderFactory.TextBuilder.decodeStringStreaming(byte[]):java.lang.String");
        }

        private ByteBuffer getBuffer(byte[] bArr) {
            ByteBuffer byteBuffer = this.carryOver;
            if (byteBuffer == null) {
                return ByteBuffer.wrap(bArr);
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.remaining() + bArr.length);
            byteBufferAllocate.put(this.carryOver);
            this.carryOver = null;
            byteBufferAllocate.put(bArr);
            byteBufferAllocate.flip();
            return byteBufferAllocate;
        }

        @Override // com.google.firebase.database.tubesock.MessageBuilderFactory.Builder
        public boolean appendBytes(byte[] bArr) {
            String strDecodeString = decodeString(bArr);
            if (strDecodeString == null) {
                return false;
            }
            this.builder.append(strDecodeString);
            return true;
        }

        @Override // com.google.firebase.database.tubesock.MessageBuilderFactory.Builder
        public WebSocketMessage toMessage() {
            if (this.carryOver != null) {
                return null;
            }
            return new WebSocketMessage(this.builder.toString());
        }
    }

    MessageBuilderFactory() {
    }

    static Builder builder(byte b) {
        return b == 2 ? new BinaryBuilder() : new TextBuilder();
    }
}

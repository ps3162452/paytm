package okio;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public final class HashingSink extends ForwardingSink {

    @Nullable
    private final Mac mac;

    @Nullable
    private final MessageDigest messageDigest;

    private HashingSink(Sink sink, String str) {
        super(sink);
        try {
            this.messageDigest = MessageDigest.getInstance(str);
            this.mac = null;
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        }
    }

    private HashingSink(Sink sink, ByteString byteString, String str) {
        super(sink);
        try {
            this.mac = Mac.getInstance(str);
            this.mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            this.messageDigest = null;
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError();
        }
    }

    public static HashingSink hmacSha1(Sink sink, ByteString byteString) {
        return new HashingSink(sink, byteString, NPStringFog.decode(new byte[]{122, 90, 81, 86, 106, 44, 115, 6}, "27059d", -3.4999248E8f));
    }

    public static HashingSink hmacSha256(Sink sink, ByteString byteString) {
        return new HashingSink(sink, byteString, NPStringFog.decode(new byte[]{121, 9, 81, 82, 48, 46, 112, 86, 5, 7}, "1d01cf", -1.631263091E9d));
    }

    public static HashingSink hmacSha512(Sink sink, ByteString byteString) {
        return new HashingSink(sink, byteString, NPStringFog.decode(new byte[]{46, 92, 84, 0, 107, 41, 39, 4, 4, 81}, "f15c8a", false, true));
    }

    public static HashingSink md5(Sink sink) {
        return new HashingSink(sink, NPStringFog.decode(new byte[]{46, 33, 4}, "ce1ecd", false, false));
    }

    public static HashingSink sha1(Sink sink) {
        return new HashingSink(sink, NPStringFog.decode(new byte[]{99, 41, 113, 72, 4}, "0a0e5d", 997042612L));
    }

    public static HashingSink sha256(Sink sink) {
        return new HashingSink(sink, NPStringFog.decode(new byte[]{100, 42, 36, 20, 11, 2, 1}, "7be997", false, true));
    }

    public static HashingSink sha512(Sink sink) {
        return new HashingSink(sink, NPStringFog.decode(new byte[]{99, 127, 112, 30, 4, 80, 2}, "07131a", false, false));
    }

    public final ByteString hash() {
        return ByteString.of(this.messageDigest != null ? this.messageDigest.digest() : this.mac.doFinal());
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(Buffer buffer, long j) throws IOException {
        long j2 = 0;
        Util.checkOffsetAndCount(buffer.size, 0L, j);
        Segment segment = buffer.head;
        while (j2 < j) {
            int iMin = (int) Math.min(j - j2, segment.limit - segment.pos);
            if (this.messageDigest != null) {
                this.messageDigest.update(segment.data, segment.pos, iMin);
            } else {
                this.mac.update(segment.data, segment.pos, iMin);
            }
            j2 += (long) iMin;
            segment = segment.next;
        }
        super.write(buffer, j);
    }
}

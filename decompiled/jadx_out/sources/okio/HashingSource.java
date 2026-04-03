package okio;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import n.NPStringFog;

/* JADX INFO: loaded from: classes63.dex */
public final class HashingSource extends ForwardingSource {
    private final Mac mac;
    private final MessageDigest messageDigest;

    private HashingSource(Source source, String str) {
        super(source);
        try {
            this.messageDigest = MessageDigest.getInstance(str);
            this.mac = null;
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        }
    }

    private HashingSource(Source source, ByteString byteString, String str) {
        super(source);
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

    public static HashingSource hmacSha1(Source source, ByteString byteString) {
        return new HashingSource(source, byteString, NPStringFog.decode(new byte[]{126, 9, 80, 7, 102, 121, 119, 85}, "6d1d51", 28926));
    }

    public static HashingSource hmacSha256(Source source, ByteString byteString) {
        return new HashingSource(source, byteString, NPStringFog.decode(new byte[]{125, 11, 85, 6, 100, 45, 116, 84, 1, 83}, "5f4e7e", -6.41522004E8d));
    }

    public static HashingSource md5(Source source) {
        return new HashingSource(source, NPStringFog.decode(new byte[]{120, 116, 87}, "50b006", false, false));
    }

    public static HashingSource sha1(Source source) {
        return new HashingSource(source, NPStringFog.decode(new byte[]{98, 45, 114, 76, 80}, "1e3aad", 1.275856308E9d));
    }

    public static HashingSource sha256(Source source) {
        return new HashingSource(source, NPStringFog.decode(new byte[]{54, 120, 37, 31, 11, 7, 83}, "e0d292", -7.1667795E8f));
    }

    public final ByteString hash() {
        return ByteString.of(this.messageDigest != null ? this.messageDigest.digest() : this.mac.doFinal());
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(Buffer buffer, long j) throws IOException {
        long j2 = super.read(buffer, j);
        if (j2 != -1) {
            long j3 = buffer.size - j2;
            long j4 = buffer.size;
            Segment segment = buffer.head;
            while (j4 > j3) {
                segment = segment.prev;
                j4 -= (long) (segment.limit - segment.pos);
            }
            while (j4 < buffer.size) {
                int i = (int) ((j3 + ((long) segment.pos)) - j4);
                if (this.messageDigest != null) {
                    this.messageDigest.update(segment.data, i, segment.limit - i);
                } else {
                    this.mac.update(segment.data, i, segment.limit - i);
                }
                j3 = ((long) (segment.limit - segment.pos)) + j4;
                segment = segment.next;
                j4 = j3;
            }
        }
        return j2;
    }
}

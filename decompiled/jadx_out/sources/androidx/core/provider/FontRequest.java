package androidx.core.provider;

import android.util.Base64;
import androidx.core.util.Preconditions;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class FontRequest {
    private final List<List<byte[]>> mCertificates;
    private final int mCertificatesArray;
    private final String mIdentifier;
    private final String mProviderAuthority;
    private final String mProviderPackage;
    private final String mQuery;

    public FontRequest(String str, String str2, String str3, int i) {
        this.mProviderAuthority = (String) Preconditions.checkNotNull(str);
        this.mProviderPackage = (String) Preconditions.checkNotNull(str2);
        this.mQuery = (String) Preconditions.checkNotNull(str3);
        this.mCertificates = null;
        Preconditions.checkArgument(i != 0);
        this.mCertificatesArray = i;
        this.mIdentifier = createIdentifier(str, str2, str3);
    }

    public FontRequest(String str, String str2, String str3, List<List<byte[]>> list) {
        this.mProviderAuthority = (String) Preconditions.checkNotNull(str);
        this.mProviderPackage = (String) Preconditions.checkNotNull(str2);
        this.mQuery = (String) Preconditions.checkNotNull(str3);
        this.mCertificates = (List) Preconditions.checkNotNull(list);
        this.mCertificatesArray = 0;
        this.mIdentifier = createIdentifier(str, str2, str3);
    }

    private String createIdentifier(String str, String str2, String str3) {
        return str + NPStringFog.decode(new byte[]{25}, "46c3df", -7922) + str2 + NPStringFog.decode(new byte[]{78}, "cdf690", -1.24980668E8d) + str3;
    }

    public List<List<byte[]>> getCertificates() {
        return this.mCertificates;
    }

    public int getCertificatesArrayResId() {
        return this.mCertificatesArray;
    }

    String getId() {
        return this.mIdentifier;
    }

    @Deprecated
    public String getIdentifier() {
        return this.mIdentifier;
    }

    public String getProviderAuthority() {
        return this.mProviderAuthority;
    }

    public String getProviderPackage() {
        return this.mProviderPackage;
    }

    public String getQuery() {
        return this.mQuery;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(NPStringFog.decode(new byte[]{116, 12, 91, 67, 99, 85, 67, 22, 80, 68, 69, 16, 73, 14, 101, 69, 94, 70, 91, 7, 80, 69, 112, 69, 70, 11, 90, 69, 88, 68, 75, 89, 21}, "2c5710", false, true) + this.mProviderAuthority + NPStringFog.decode(new byte[]{77, 22, 92, 103, 70, 11, 23, 95, 85, 82, 70, 52, 0, 85, 90, 86, 83, 1, 91, 22}, "a6174d", -3.2294102E8f) + this.mProviderPackage + NPStringFog.decode(new byte[]{27, 68, 89, 55, 22, 3, 69, 29, 14, 70}, "7d4fcf", 31651) + this.mQuery + NPStringFog.decode(new byte[]{73, 22, 8, 119, 3, 23, 17, 95, 3, 93, 5, 4, 17, 83, 22, 14}, "e6e4fe", false, false));
        for (int i = 0; i < this.mCertificates.size(); i++) {
            sb.append(NPStringFog.decode(new byte[]{70, 104}, "f357fb", 1.65530221E9d));
            List<byte[]> list = this.mCertificates.get(i);
            for (int i2 = 0; i2 < list.size(); i2++) {
                sb.append(NPStringFog.decode(new byte[]{69, 71}, "ee64e1", -2.7280548E7f));
                sb.append(Base64.encodeToString(list.get(i2), 0));
                sb.append(NPStringFog.decode(new byte[]{18}, "0d7c49", 5.53028188E8d));
            }
            sb.append(NPStringFog.decode(new byte[]{23, 105}, "7474fa", true, false));
        }
        sb.append(NPStringFog.decode(new byte[]{25}, "dad7bf", false));
        sb.append(NPStringFog.decode(new byte[]{9, 122, 86, 68, 76, 8, 2, 80, 80, 87, 76, 4, 23, 120, 65, 68, 89, 24, 94, 25}, "d9368a", 1508940076L) + this.mCertificatesArray);
        return sb.toString();
    }
}

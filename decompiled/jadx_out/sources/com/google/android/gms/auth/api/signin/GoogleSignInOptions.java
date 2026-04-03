package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n.NPStringFog;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes59.dex */
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;
    public static final GoogleSignInOptions DEFAULT_GAMES_SIGN_IN;
    public static final GoogleSignInOptions DEFAULT_SIGN_IN;
    public static final Scope zaa = new Scope(NPStringFog.decode(new byte[]{68, 23, 86, 86, 11, 85, 81}, "4e90b9", true, false));
    public static final Scope zab = new Scope(NPStringFog.decode(new byte[]{7, 84, 7, 8, 9}, "b9fae4", false));
    public static final Scope zac = new Scope(NPStringFog.decode(new byte[]{90, 22, 86, 86, 88, 2}, "5f381f", 1.472070663E9d));
    public static final Scope zad;
    public static final Scope zae;
    private static final Comparator zag;
    final int zaf;
    private final ArrayList zah;
    private Account zai;
    private boolean zaj;
    private final boolean zak;
    private final boolean zal;
    private String zam;
    private String zan;
    private ArrayList zao;
    private String zap;
    private Map zaq;

    public static final class Builder {
        private Set zaa;
        private boolean zab;
        private boolean zac;
        private boolean zad;
        private String zae;
        private Account zaf;
        private String zag;
        private Map zah;
        private String zai;

        public Builder() {
            this.zaa = new HashSet();
            this.zah = new HashMap();
        }

        public Builder(GoogleSignInOptions googleSignInOptions) {
            this.zaa = new HashSet();
            this.zah = new HashMap();
            Preconditions.checkNotNull(googleSignInOptions);
            this.zaa = new HashSet(googleSignInOptions.zah);
            this.zab = googleSignInOptions.zak;
            this.zac = googleSignInOptions.zal;
            this.zad = googleSignInOptions.zaj;
            this.zae = googleSignInOptions.zam;
            this.zaf = googleSignInOptions.zai;
            this.zag = googleSignInOptions.zan;
            this.zah = GoogleSignInOptions.zam(googleSignInOptions.zao);
            this.zai = googleSignInOptions.zap;
        }

        private final String zaa(String str) {
            Preconditions.checkNotEmpty(str);
            String str2 = this.zae;
            boolean z = true;
            if (str2 != null && !str2.equals(str)) {
                z = false;
            }
            Preconditions.checkArgument(z, NPStringFog.decode(new byte[]{21, 68, 10, 19, 83, 13, 7, 85, 0, 65, 82, 10, 21, 19, 22, 86, 69, 18, 4, 65, 69, 80, 91, 13, 4, 93, 17, 19, 94, 0, 18, 19, 21, 65, 88, 18, 8, 87, 0, 87}, "a3e37d", false, false));
            return str;
        }

        public Builder addExtension(GoogleSignInOptionsExtension googleSignInOptionsExtension) {
            if (this.zah.containsKey(Integer.valueOf(googleSignInOptionsExtension.getExtensionType()))) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{124, 89, 10, 76, 18, 12, 93, 82, 70, 80, 74, 23, 86, 89, 21, 92, 93, 13, 19, 71, 3, 71, 18, 23, 74, 71, 3, 21, 95, 2, 74, 23, 4, 80, 18, 2, 87, 83, 3, 81}, "37f52c", -1534833066L));
            }
            List<Scope> impliedScopes = googleSignInOptionsExtension.getImpliedScopes();
            if (impliedScopes != null) {
                this.zaa.addAll(impliedScopes);
            }
            this.zah.put(Integer.valueOf(googleSignInOptionsExtension.getExtensionType()), new GoogleSignInOptionsExtensionParcelable(googleSignInOptionsExtension));
            return this;
        }

        public GoogleSignInOptions build() {
            if (this.zaa.contains(GoogleSignInOptions.zae) && this.zaa.contains(GoogleSignInOptions.zad)) {
                this.zaa.remove(GoogleSignInOptions.zad);
            }
            if (this.zad && (this.zaf == null || !this.zaa.isEmpty())) {
                requestId();
            }
            return new GoogleSignInOptions(new ArrayList(this.zaa), this.zaf, this.zad, this.zab, this.zac, this.zae, this.zag, this.zah, this.zai);
        }

        public Builder requestEmail() {
            this.zaa.add(GoogleSignInOptions.zab);
            return this;
        }

        public Builder requestId() {
            this.zaa.add(GoogleSignInOptions.zac);
            return this;
        }

        public Builder requestIdToken(String str) {
            this.zad = true;
            zaa(str);
            this.zae = str;
            return this;
        }

        public Builder requestProfile() {
            this.zaa.add(GoogleSignInOptions.zaa);
            return this;
        }

        public Builder requestScopes(Scope scope, Scope... scopeArr) {
            this.zaa.add(scope);
            this.zaa.addAll(Arrays.asList(scopeArr));
            return this;
        }

        public Builder requestServerAuthCode(String str) {
            requestServerAuthCode(str, false);
            return this;
        }

        public Builder requestServerAuthCode(String str, boolean z) {
            this.zab = true;
            zaa(str);
            this.zae = str;
            this.zac = z;
            return this;
        }

        public Builder setAccountName(String str) {
            this.zaf = new Account(Preconditions.checkNotEmpty(str), NPStringFog.decode(new byte[]{2, 89, 11, 28, 5, 12, 14, 81, 10, 87}, "a6f2bc", -4.8593829E8d));
            return this;
        }

        public Builder setHostedDomain(String str) {
            this.zag = Preconditions.checkNotEmpty(str);
            return this;
        }

        public Builder setLogSessionId(String str) {
            this.zai = str;
            return this;
        }
    }

    static {
        Scope scope = new Scope(NPStringFog.decode(new byte[]{91, 16, 23, 64, 64, 14, 28, 75, 20, 71, 68, 26, 84, 11, 12, 87, 95, 81, 82, 20, 10, 67, 29, 87, 92, 9, 76, 81, 70, 64, 91, 75, 4, 81, 94, 81, 64, 59, 15, 89, 71, 81}, "3dc034", true, false));
        zad = scope;
        zae = new Scope(NPStringFog.decode(new byte[]{93, 17, 21, 18, 71, 2, 26, 74, 22, 21, 67, 22, 82, 10, 14, 5, 88, 93, 84, 21, 8, 17, 26, 91, 90, 8, 78, 3, 65, 76, 93, 74, 6, 3, 89, 93, 70}, "5eab48", -344930647L));
        Builder builder = new Builder();
        builder.requestId();
        builder.requestProfile();
        DEFAULT_SIGN_IN = builder.build();
        Builder builder2 = new Builder();
        builder2.requestScopes(scope, new Scope[0]);
        DEFAULT_GAMES_SIGN_IN = builder2.build();
        CREATOR = new zae();
        zag = new zac();
    }

    GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, ArrayList arrayList2, String str3) {
        this(i, arrayList, account, z, z2, z3, str, str2, zam(arrayList2), str3);
    }

    private GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, Map map, String str3) {
        this.zaf = i;
        this.zah = arrayList;
        this.zai = account;
        this.zaj = z;
        this.zak = z2;
        this.zal = z3;
        this.zam = str;
        this.zan = str2;
        this.zao = new ArrayList(map.values());
        this.zaq = map;
        this.zap = str3;
    }

    public static GoogleSignInOptions zab(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray(NPStringFog.decode(new byte[]{64, 90, 13, 70, 92, 69}, "39b696", -362362021L));
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String strOptString = jSONObject.has(NPStringFog.decode(new byte[]{0, 5, 80, 93, 77, 12, 21, 40, 82, 95, 93}, "af328b", false)) ? jSONObject.optString(NPStringFog.decode(new byte[]{89, 80, 81, 92, 71, 93, 76, 125, 83, 94, 87}, "832323", false)) : null;
        return new GoogleSignInOptions(3, new ArrayList(hashSet), !TextUtils.isEmpty(strOptString) ? new Account(strOptString, NPStringFog.decode(new byte[]{0, 10, 91, 75, 3, 93, 12, 2, 90, 0}, "ce6ed2", true, false)) : null, jSONObject.getBoolean(NPStringFog.decode(new byte[]{81, 2, 103, 12, 82, 92, 86, 52, 86, 18, 76, 92, 75, 18, 86, 7}, "8f3c99", 1650397749L)), jSONObject.getBoolean(NPStringFog.decode(new byte[]{21, 83, 68, 23, 87, 71, 39, 67, 66, 9, 96, 80, 23, 67, 83, 18, 70, 80, 2}, "f66a25", true)), jSONObject.getBoolean(NPStringFog.decode(new byte[]{7, 87, 65, 90, 83, 32, 14, 92, 86, 127, 89, 17, 51, 93, 85, 75, 83, 16, 9, 108, 92, 82, 83, 13}, "a8396c", 1.1507773E9f)), jSONObject.has(NPStringFog.decode(new byte[]{71, 92, 74, 18, 87, 20, 119, 85, 81, 1, 92, 18, 125, 93}, "498d2f", -1.317661076E9d)) ? jSONObject.optString(NPStringFog.decode(new byte[]{74, 3, 75, 66, 4, 66, 122, 10, 80, 81, 15, 68, 112, 2}, "9f94a0", true)) : null, jSONObject.has(NPStringFog.decode(new byte[]{88, 90, 21, 21, 85, 7, 116, 90, 11, 0, 89, 13}, "05fa0c", true)) ? jSONObject.optString(NPStringFog.decode(new byte[]{10, 11, 71, 68, 93, 2, 38, 11, 89, 81, 81, 8}, "bd408f", false)) : null, new HashMap(), (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map zam(List list) {
        HashMap map = new HashMap();
        if (list == null) {
            return map;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable = (GoogleSignInOptionsExtensionParcelable) it.next();
            map.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.getType()), googleSignInOptionsExtensionParcelable);
        }
        return map;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
            if (this.zao.size() > 0 || googleSignInOptions.zao.size() > 0 || this.zah.size() != googleSignInOptions.getScopes().size() || !this.zah.containsAll(googleSignInOptions.getScopes())) {
                return false;
            }
            Account account = this.zai;
            if (account == null) {
                if (googleSignInOptions.getAccount() != null) {
                    return false;
                }
            } else if (!account.equals(googleSignInOptions.getAccount())) {
                return false;
            }
            if (TextUtils.isEmpty(this.zam)) {
                if (!TextUtils.isEmpty(googleSignInOptions.getServerClientId())) {
                    return false;
                }
            } else if (!this.zam.equals(googleSignInOptions.getServerClientId())) {
                return false;
            }
            if (this.zal == googleSignInOptions.isForceCodeForRefreshToken() && this.zaj == googleSignInOptions.isIdTokenRequested() && this.zak == googleSignInOptions.isServerAuthCodeRequested()) {
                return TextUtils.equals(this.zap, googleSignInOptions.getLogSessionId());
            }
            return false;
        } catch (ClassCastException e) {
            return false;
        }
    }

    public Account getAccount() {
        return this.zai;
    }

    public ArrayList<GoogleSignInOptionsExtensionParcelable> getExtensions() {
        return this.zao;
    }

    public String getLogSessionId() {
        return this.zap;
    }

    public Scope[] getScopeArray() {
        ArrayList arrayList = this.zah;
        return (Scope[]) arrayList.toArray(new Scope[arrayList.size()]);
    }

    public ArrayList<Scope> getScopes() {
        return new ArrayList<>(this.zah);
    }

    public String getServerClientId() {
        return this.zam;
    }

    public int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.zah;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(((Scope) arrayList2.get(i)).getScopeUri());
        }
        Collections.sort(arrayList);
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.addObject(arrayList);
        hashAccumulator.addObject(this.zai);
        hashAccumulator.addObject(this.zam);
        hashAccumulator.zaa(this.zal);
        hashAccumulator.zaa(this.zaj);
        hashAccumulator.zaa(this.zak);
        hashAccumulator.addObject(this.zap);
        return hashAccumulator.hash();
    }

    public boolean isForceCodeForRefreshToken() {
        return this.zal;
    }

    public boolean isIdTokenRequested() {
        return this.zaj;
    }

    public boolean isServerAuthCodeRequested() {
        return this.zak;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaf);
        SafeParcelWriter.writeTypedList(parcel, 2, getScopes(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, getAccount(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 4, isIdTokenRequested());
        SafeParcelWriter.writeBoolean(parcel, 5, isServerAuthCodeRequested());
        SafeParcelWriter.writeBoolean(parcel, 6, isForceCodeForRefreshToken());
        SafeParcelWriter.writeString(parcel, 7, getServerClientId(), false);
        SafeParcelWriter.writeString(parcel, 8, this.zan, false);
        SafeParcelWriter.writeTypedList(parcel, 9, getExtensions(), false);
        SafeParcelWriter.writeString(parcel, 10, getLogSessionId(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final String zaf() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            Collections.sort(this.zah, zag);
            Iterator it = this.zah.iterator();
            while (it.hasNext()) {
                jSONArray.put(((Scope) it.next()).getScopeUri());
            }
            jSONObject.put(NPStringFog.decode(new byte[]{66, 81, 86, 71, 87, 21}, "12972f", -6186), jSONArray);
            Account account = this.zai;
            if (account != null) {
                jSONObject.put(NPStringFog.decode(new byte[]{87, 80, 81, 95, 77, 10, 66, 125, 83, 93, 93}, "63208d", -1136090370L), account.name);
            }
            jSONObject.put(NPStringFog.decode(new byte[]{89, 2, 102, 90, 93, 85, 94, 52, 87, 68, 67, 85, 67, 18, 87, 81}, "0f2560", true), this.zaj);
            jSONObject.put(NPStringFog.decode(new byte[]{84, 88, 71, 0, 93, 118, 93, 83, 80, 37, 87, 71, 96, 82, 83, 17, 93, 70, 90, 99, 90, 8, 93, 91}, "275c85", -7.19159663E8d), this.zal);
            jSONObject.put(NPStringFog.decode(new byte[]{65, 84, 70, 69, 4, 66, 115, 68, 64, 91, 51, 85, 67, 68, 81, 64, 21, 85, 86}, "2143a0", true, true), this.zak);
            if (!TextUtils.isEmpty(this.zam)) {
                jSONObject.put(NPStringFog.decode(new byte[]{21, 1, 16, 21, 93, 19, 37, 8, 11, 6, 86, 21, 47, 0}, "fdbc8a", 1454394788L), this.zam);
            }
            if (!TextUtils.isEmpty(this.zan)) {
                jSONObject.put(NPStringFog.decode(new byte[]{92, 90, 75, 71, 0, 86, 112, 90, 85, 82, 12, 92}, "4583e2", true, true), this.zan);
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }
}

package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.collection.ArraySet;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import n.NPStringFog;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes59.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new zab();
    public static final Clock zaa = DefaultClock.getInstance();
    final int zab;
    final List zac;
    private final String zad;
    private final String zae;
    private final String zaf;
    private final String zag;
    private final Uri zah;
    private String zai;
    private final long zaj;
    private final String zak;
    private final String zal;
    private final String zam;
    private final Set zan = new HashSet();

    GoogleSignInAccount(int i, String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, List list, String str7, String str8) {
        this.zab = i;
        this.zad = str;
        this.zae = str2;
        this.zaf = str3;
        this.zag = str4;
        this.zah = uri;
        this.zai = str5;
        this.zaj = j;
        this.zak = str6;
        this.zac = list;
        this.zal = str7;
        this.zam = str8;
    }

    public static GoogleSignInAccount createDefault() {
        return zae(new Account(NPStringFog.decode(new byte[]{88, 4, 85, 87, 4, 81, 17, 84, 69, 18, 3, 83, 7, 87, 68, 92, 22, 14, 90}, "d812b0", false), NPStringFog.decode(new byte[]{1, 14, 94, 26, 80, 88, 13, 6, 95, 81}, "ba3477", -4.2619446E8f)), new HashSet());
    }

    public static GoogleSignInAccount fromAccount(Account account) {
        return zae(account, new ArraySet());
    }

    public static GoogleSignInAccount zaa(String str, String str2, String str3, String str4, String str5, String str6, Uri uri, Long l, String str7, Set set) {
        return new GoogleSignInAccount(3, str, str2, str3, str4, uri, null, l.longValue(), Preconditions.checkNotEmpty(str7), new ArrayList((Collection) Preconditions.checkNotNull(set)), str5, str6);
    }

    public static GoogleSignInAccount zab(String str) throws JSONException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString(NPStringFog.decode(new byte[]{17, 9, 95, 64, 89, 98, 19, 13}, "aa0467", false));
        Uri uri = !TextUtils.isEmpty(strOptString) ? Uri.parse(strOptString) : null;
        long j = Long.parseLong(jSONObject.getString(NPStringFog.decode(new byte[]{4, 29, 68, 92, 65, 80, 21, 12, 91, 91, 103, 88, 12, 0}, "ae4531", -5332)));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray(NPStringFog.decode(new byte[]{1, 19, 84, 15, 17, 4, 2, 50, 86, 14, 21, 4, 21}, "fa5aea", false, true));
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        GoogleSignInAccount googleSignInAccountZaa = zaa(jSONObject.optString(NPStringFog.decode(new byte[]{12, 2}, "ef24e5", 1.542733989E9d)), jSONObject.has(NPStringFog.decode(new byte[]{67, 88, 9, 6, 93, 122, 83}, "77bc33", 1619492710L)) ? jSONObject.optString(NPStringFog.decode(new byte[]{69, 11, 90, 1, 94, 120, 85}, "1d1d01", -26159)) : null, jSONObject.has(NPStringFog.decode(new byte[]{6, 90, 0, 10, 15}, "c7acc9", 1906684287L)) ? jSONObject.optString(NPStringFog.decode(new byte[]{85, 9, 89, 92, 15}, "0d85c8", true)) : null, jSONObject.has(NPStringFog.decode(new byte[]{5, 12, 23, 17, 15, 3, 24, 43, 5, 12, 6}, "aedacb", -1.9492484E9f)) ? jSONObject.optString(NPStringFog.decode(new byte[]{83, 92, 75, 65, 85, 84, 78, 123, 89, 92, 92}, "758195", -18360)) : null, jSONObject.has(NPStringFog.decode(new byte[]{85, 15, 68, 85, 15, 121, 83, 11, 87}, "2f20a7", 1001836633L)) ? jSONObject.optString(NPStringFog.decode(new byte[]{80, 10, 68, 6, 93, 43, 86, 14, 87}, "7c2c3e", -18823)) : null, jSONObject.has(NPStringFog.decode(new byte[]{2, 7, 88, 94, 8, 29, 42, 7, 88, 82}, "df57dd", -1.8922945E9f)) ? jSONObject.optString(NPStringFog.decode(new byte[]{82, 84, 14, 15, 85, 64, 122, 84, 14, 3}, "45cf99", -1.4194888E9f)) : null, uri, Long.valueOf(j), jSONObject.getString(NPStringFog.decode(new byte[]{89, 3, 95, 64, 16, 82, 87, 21, 92, 81, 42, 85, 83, 15, 77, 92, 5, 88, 83, 19}, "6a95c1", false)), hashSet);
        googleSignInAccountZaa.zai = jSONObject.has(NPStringFog.decode(new byte[]{67, 0, 20, 19, 83, 68, 113, 16, 18, 13, 117, 89, 84, 0}, "0efe66", 28738)) ? jSONObject.optString(NPStringFog.decode(new byte[]{69, 83, 68, 16, 6, 66, 119, 67, 66, 14, 32, 95, 82, 83}, "666fc0", 1306645905L)) : null;
        return googleSignInAccountZaa;
    }

    private static GoogleSignInAccount zae(Account account, Set set) {
        return zaa(null, null, account.name, null, null, null, null, 0L, account.name, set);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof GoogleSignInAccount)) {
            return false;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
        return googleSignInAccount.zak.equals(this.zak) && googleSignInAccount.getRequestedScopes().equals(getRequestedScopes());
    }

    public Account getAccount() {
        String str = this.zaf;
        if (str == null) {
            return null;
        }
        return new Account(str, NPStringFog.decode(new byte[]{7, 95, 14, 72, 80, 12, 11, 87, 15, 3}, "d0cf7c", -4063));
    }

    public String getDisplayName() {
        return this.zag;
    }

    public String getEmail() {
        return this.zaf;
    }

    public String getFamilyName() {
        return this.zam;
    }

    public String getGivenName() {
        return this.zal;
    }

    public Set<Scope> getGrantedScopes() {
        return new HashSet(this.zac);
    }

    public String getId() {
        return this.zad;
    }

    public String getIdToken() {
        return this.zae;
    }

    public Uri getPhotoUrl() {
        return this.zah;
    }

    public Set<Scope> getRequestedScopes() {
        HashSet hashSet = new HashSet(this.zac);
        hashSet.addAll(this.zan);
        return hashSet;
    }

    public String getServerAuthCode() {
        return this.zai;
    }

    public int hashCode() {
        return ((this.zak.hashCode() + 527) * 31) + getRequestedScopes().hashCode();
    }

    public boolean isExpired() {
        return zaa.currentTimeMillis() / 1000 >= this.zaj - 300;
    }

    public GoogleSignInAccount requestExtraScopes(Scope... scopeArr) {
        if (scopeArr != null) {
            Collections.addAll(this.zan, scopeArr);
        }
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zab);
        SafeParcelWriter.writeString(parcel, 2, getId(), false);
        SafeParcelWriter.writeString(parcel, 3, getIdToken(), false);
        SafeParcelWriter.writeString(parcel, 4, getEmail(), false);
        SafeParcelWriter.writeString(parcel, 5, getDisplayName(), false);
        SafeParcelWriter.writeParcelable(parcel, 6, getPhotoUrl(), i, false);
        SafeParcelWriter.writeString(parcel, 7, getServerAuthCode(), false);
        SafeParcelWriter.writeLong(parcel, 8, this.zaj);
        SafeParcelWriter.writeString(parcel, 9, this.zak, false);
        SafeParcelWriter.writeTypedList(parcel, 10, this.zac, false);
        SafeParcelWriter.writeString(parcel, 11, getGivenName(), false);
        SafeParcelWriter.writeString(parcel, 12, getFamilyName(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final String zac() {
        return this.zak;
    }

    public final String zad() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (getId() != null) {
                jSONObject.put(NPStringFog.decode(new byte[]{90, 86}, "324422", false, false), getId());
            }
            if (getIdToken() != null) {
                jSONObject.put(NPStringFog.decode(new byte[]{21, 11, 91, 4, 88, 42, 5}, "ad0a6c", -26840), getIdToken());
            }
            if (getEmail() != null) {
                jSONObject.put(NPStringFog.decode(new byte[]{92, 91, 87, 81, 89}, "966856", false), getEmail());
            }
            if (getDisplayName() != null) {
                jSONObject.put(NPStringFog.decode(new byte[]{92, 81, 70, 69, 14, 89, 65, 118, 84, 88, 7}, "8855b8", true), getDisplayName());
            }
            if (getGivenName() != null) {
                jSONObject.put(NPStringFog.decode(new byte[]{2, 93, 68, 0, 11, 120, 4, 89, 87}, "e42ee6", true), getGivenName());
            }
            if (getFamilyName() != null) {
                jSONObject.put(NPStringFog.decode(new byte[]{7, 87, 84, 80, 91, 72, 47, 87, 84, 92}, "a69971", -22559), getFamilyName());
            }
            Uri photoUrl = getPhotoUrl();
            if (photoUrl != null) {
                jSONObject.put(NPStringFog.decode(new byte[]{66, 90, 12, 64, 95, 96, 64, 94}, "22c405", 312664614L), photoUrl.toString());
            }
            if (getServerAuthCode() != null) {
                jSONObject.put(NPStringFog.decode(new byte[]{22, 1, 74, 21, 86, 16, 36, 17, 76, 11, 112, 13, 1, 1}, "ed8c3b", false, false), getServerAuthCode());
            }
            jSONObject.put(NPStringFog.decode(new byte[]{7, 74, 72, 88, 16, 80, 22, 91, 87, 95, 54, 88, 15, 87}, "b281b1", -7.658168E7f), this.zaj);
            jSONObject.put(NPStringFog.decode(new byte[]{93, 4, 87, 23, 65, 91, 83, 18, 84, 6, 123, 92, 87, 8, 69, 11, 84, 81, 87, 20}, "2f1b28", -1.97878902E9d), this.zak);
            JSONArray jSONArray = new JSONArray();
            List list = this.zac;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, new Comparator() { // from class: com.google.android.gms.auth.api.signin.zaa
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;
                    return ((Scope) obj).getScopeUri().compareTo(((Scope) obj2).getScopeUri());
                }
            });
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.getScopeUri());
            }
            jSONObject.put(NPStringFog.decode(new byte[]{85, 75, 87, 92, 23, 82, 86, 106, 85, 93, 19, 82, 65}, "2962c7", 2.133525359E9d), jSONArray);
            jSONObject.remove(NPStringFog.decode(new byte[]{18, 82, 74, 69, 81, 65, 32, 66, 76, 91, 119, 92, 5, 82}, "a78343", -4174));
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }
}

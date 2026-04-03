package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public class AvailabilityException extends Exception {
    private final ArrayMap zaa;

    public AvailabilityException(ArrayMap arrayMap) {
        this.zaa = arrayMap;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public ConnectionResult getConnectionResult(GoogleApi<? extends Api.ApiOptions> googleApi) {
        ApiKey<O> apiKey = googleApi.getApiKey();
        Preconditions.checkArgument(this.zaa.get(apiKey) != null, NPStringFog.decode(new byte[]{49, 88, 84, 19, 83, 88, 19, 85, 95, 19, 117, 97, 44, 16, 25}, "e01341", 4.15666185E8d) + apiKey.zaa() + NPStringFog.decode(new byte[]{29, 65, 68, 89, 23, 20, 90, 14, 71, 24, 20, 85, 70, 21, 19, 87, 2, 20, 64, 9, 86, 24, 5, 66, 85, 8, 95, 89, 6, 93, 88, 8, 71, 65, 68, 70, 81, 16, 70, 93, 23, 64, 26}, "4a38d4", 31298));
        return (ConnectionResult) Preconditions.checkNotNull((ConnectionResult) this.zaa.get(apiKey));
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public ConnectionResult getConnectionResult(HasApiKey<? extends Api.ApiOptions> hasApiKey) {
        ApiKey<O> apiKey = hasApiKey.getApiKey();
        Preconditions.checkArgument(this.zaa.get(apiKey) != null, NPStringFog.decode(new byte[]{102, 9, 83, 67, 95, 94, 68, 4, 88, 67, 121, 103, 123, 65, 30}, "2a6c87", 431489731L) + apiKey.zaa() + NPStringFog.decode(new byte[]{30, 18, 19, 3, 16, 22, 89, 93, 16, 66, 19, 87, 69, 70, 68, 13, 5, 22, 67, 90, 1, 66, 2, 64, 86, 91, 8, 3, 1, 95, 91, 91, 16, 27, 67, 68, 82, 67, 17, 7, 16, 66, 25}, "72dbc6", true, true));
        return (ConnectionResult) Preconditions.checkNotNull((ConnectionResult) this.zaa.get(apiKey));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (ApiKey apiKey : this.zaa.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) Preconditions.checkNotNull((ConnectionResult) this.zaa.get(apiKey));
            z &= !connectionResult.isSuccess();
            arrayList.add(apiKey.zaa() + NPStringFog.decode(new byte[]{94, 18}, "d21e50", 617024994L) + String.valueOf(connectionResult));
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(NPStringFog.decode(new byte[]{45, 87, 94, 4, 67, 88, 5, 24, 68, 9, 6, 23, 18, 77, 85, 19, 10, 82, 7, 24, 113, 49, 42, 68, 67, 89, 66, 4, 67, 86, 21, 89, 89, 13, 2, 85, 15, 93, 30, 65}, "c80ac7", -4.96402202E8d));
        } else {
            sb.append(NPStringFog.decode(new byte[]{97, 92, 11, 83, 16, 87, 84, 19, 18, 94, 85, 24, 67, 70, 3, 68, 89, 93, 86, 19, 39, 102, 121, 75, 18, 82, 20, 83, 16, 77, 92, 82, 16, 87, 89, 84, 83, 81, 10, 83, 30, 24}, "23f608", false, true));
        }
        sb.append(TextUtils.join(NPStringFog.decode(new byte[]{14, 16}, "50f7ee", -1300137975L), arrayList));
        return sb.toString();
    }
}

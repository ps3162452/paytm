package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public abstract class RemoteCreator<T> {
    private final String zza;
    private Object zzb;

    public static class RemoteCreatorException extends Exception {
        public RemoteCreatorException(String str) {
            super(str);
        }

        public RemoteCreatorException(String str, Throwable th) {
            super(str, th);
        }
    }

    protected RemoteCreator(String str) {
        this.zza = str;
    }

    protected abstract T getRemoteCreator(IBinder iBinder);

    protected final T getRemoteCreatorInstance(Context context) throws RemoteCreatorException {
        if (this.zzb == null) {
            Preconditions.checkNotNull(context);
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (remoteContext == null) {
                throw new RemoteCreatorException(NPStringFog.decode(new byte[]{114, 11, 17, 90, 82, 20, 95, 11, 16, 22, 81, 81, 69, 68, 22, 83, 91, 91, 69, 1, 68, 85, 89, 90, 69, 1, 28, 66, 24}, "1dd664", -1.9216694E9f));
            }
            try {
                this.zzb = getRemoteCreator((IBinder) remoteContext.getClassLoader().loadClass(this.zza).newInstance());
            } catch (ClassNotFoundException e) {
                throw new RemoteCreatorException(NPStringFog.decode(new byte[]{37, 12, 16, 92, 85, 17, 8, 12, 17, 16, 93, 94, 7, 7, 69, 83, 67, 84, 7, 23, 10, 66, 17, 82, 10, 2, 22, 67, 31}, "fce011", false), e);
            } catch (IllegalAccessException e2) {
                throw new RemoteCreatorException(NPStringFog.decode(new byte[]{122, 95, 77, 94, 0, 65, 87, 95, 76, 18, 5, 2, 90, 85, 75, 65, 68, 2, 75, 85, 89, 70, 11, 19, 23}, "9082da", -1.8794002E9f), e2);
            } catch (InstantiationException e3) {
                throw new RemoteCreatorException(NPStringFog.decode(new byte[]{38, 93, 70, 14, 0, 66, 11, 93, 71, 66, 13, 12, 22, 70, 82, 12, 16, 11, 4, 70, 86, 66, 7, 16, 0, 83, 71, 13, 22, 76}, "e23bdb", 2.014788783E9d), e3);
            }
        }
        return (T) this.zzb;
    }
}

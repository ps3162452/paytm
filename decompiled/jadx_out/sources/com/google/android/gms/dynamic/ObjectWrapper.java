package com.google.android.gms.dynamic;

import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.lang.reflect.Field;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class ObjectWrapper<T> extends IObjectWrapper.Stub {
    private final Object zza;

    private ObjectWrapper(Object obj) {
        this.zza = obj;
    }

    @ResultIgnorabilityUnspecified
    public static <T> T unwrap(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper instanceof ObjectWrapper) {
            return (T) ((ObjectWrapper) iObjectWrapper).zza;
        }
        IBinder iBinderAsBinder = iObjectWrapper.asBinder();
        Field[] declaredFields = iBinderAsBinder.getClass().getDeclaredFields();
        int length = declaredFields.length;
        Field field = null;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            Field field2 = declaredFields[i2];
            if (field2.isSynthetic()) {
                field2 = field;
            } else {
                i++;
            }
            i2++;
            field = field2;
        }
        if (i != 1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{99, 12, 85, 73, 71, 84, 85, 22, 85, 85, 23, 95, 67, 15, 82, 84, 69, 17, 89, 4, 16, 120, 120, 83, 92, 7, 83, 69, 96, 67, 87, 18, 64, 84, 69, 17, 82, 7, 83, 93, 86, 67, 83, 6, 16, 87, 94, 84, 90, 6, 67, 11, 23}, "6b0171", 1.633680927E9d) + declaredFields.length);
        }
        Preconditions.checkNotNull(field);
        if (field.isAccessible()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{112, 126, 6, 89, 7, 83, 77, 102, 22, 82, 18, 64, 92, 67, 68, 87, 7, 83, 85, 80, 22, 86, 6, 16, 95, 88, 1, 95, 6, 16, 87, 94, 16, 19, 18, 66, 80, 71, 5, 71, 7, 17}, "91d3b0", -5.399556E8f));
        }
        field.setAccessible(true);
        try {
            return (T) field.get(iBinderAsBinder);
        } catch (IllegalAccessException e) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 91, 70, 92, 6, 25, 8, 91, 71, 16, 3, 90, 5, 81, 64, 67, 66, 77, 14, 81, 19, 86, 11, 92, 10, 80, 19, 89, 12, 25, 20, 81, 94, 95, 22, 92, 36, 93, 93, 84, 7, 75, 72}, "f430b9", true, false), e);
        } catch (NullPointerException e2) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 91, 95, 93, 4, 74, 19, 93, 83, 83, 4, 91, 71, 18, 88, 74, 65, 86, 70, 94, 93, 23}, "3219a8", 1519046231L), e2);
        }
    }

    public static <T> IObjectWrapper wrap(T t) {
        return new ObjectWrapper(t);
    }
}

package com.google.android.gms.common.internal.safeparcel;

import android.os.Parcelable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public interface SafeParcelable extends Parcelable {
    public static final String NULL = NPStringFog.decode(new byte[]{55, 120, 113, 117, 62, 100, 37, 107, 116, 117, 45, 117, 38, 117, 114, 111, 47, 97, 40, 117, 104, 99, 53, 102, 45, 119, 112}, "d970a4", 6.52884534E8d);

    public @interface Class {
        String creator();

        boolean doNotParcelTypeDefaultValues() default false;

        boolean validate() default false;
    }

    public @interface Constructor {
    }

    public @interface Field {
        String defaultValue() default "SAFE_PARCELABLE_NULL_STRING";

        String defaultValueUnchecked() default "SAFE_PARCELABLE_NULL_STRING";

        String getter() default "SAFE_PARCELABLE_NULL_STRING";

        int id();

        String type() default "SAFE_PARCELABLE_NULL_STRING";
    }

    public @interface Indicator {
        String getter() default "SAFE_PARCELABLE_NULL_STRING";
    }

    public @interface Param {
        int id();
    }

    public @interface RemovedParam {
        String defaultValue() default "SAFE_PARCELABLE_NULL_STRING";

        String defaultValueUnchecked() default "SAFE_PARCELABLE_NULL_STRING";

        int id();
    }

    public @interface Reserved {
        int[] value();
    }

    public @interface VersionField {
        String getter() default "SAFE_PARCELABLE_NULL_STRING";

        int id();

        String type() default "SAFE_PARCELABLE_NULL_STRING";
    }
}

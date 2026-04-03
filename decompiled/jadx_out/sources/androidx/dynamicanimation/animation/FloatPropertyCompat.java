package androidx.dynamicanimation.animation;

import android.util.FloatProperty;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes41.dex */
public abstract class FloatPropertyCompat<T> {
    final String mPropertyName;

    public FloatPropertyCompat(String str) {
        this.mPropertyName = str;
    }

    @RequiresApi(24)
    public static <T> FloatPropertyCompat<T> createFloatPropertyCompat(FloatProperty<T> floatProperty) {
        return new FloatPropertyCompat<T>(floatProperty.getName(), floatProperty) { // from class: androidx.dynamicanimation.animation.FloatPropertyCompat.1
            final FloatProperty val$property;

            {
                this.val$property = floatProperty;
            }

            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public float getValue(T t) {
                return ((Float) this.val$property.get(t)).floatValue();
            }

            @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
            public void setValue(T t, float f) {
                this.val$property.setValue(t, f);
            }
        };
    }

    public abstract float getValue(T t);

    public abstract void setValue(T t, float f);
}

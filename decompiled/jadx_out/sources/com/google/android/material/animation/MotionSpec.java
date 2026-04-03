package com.google.android.material.animation;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class MotionSpec {
    private static final String TAG = NPStringFog.decode(new byte[]{121, 14, 16, 91, 95, 95, 103, 17, 1, 81}, "4ad201", false, true);
    private final SimpleArrayMap<String, MotionTiming> timings = new SimpleArrayMap<>();
    private final SimpleArrayMap<String, PropertyValuesHolder[]> propertyValues = new SimpleArrayMap<>();

    private static void addInfoFromAnimator(MotionSpec motionSpec, Animator animator) {
        if (!(animator instanceof ObjectAnimator)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{37, 91, 15, 15, 81, 68, 11, 71, 70, 15, 69, 67, 16, 21, 4, 7, 16, 81, 10, 21, 41, 0, 90, 85, 7, 65, 39, 12, 89, 93, 5, 65, 9, 16, 10, 16}, "d5fb00", false, false) + animator);
        }
        ObjectAnimator objectAnimator = (ObjectAnimator) animator;
        motionSpec.setPropertyValues(objectAnimator.getPropertyName(), objectAnimator.getValues());
        motionSpec.setTiming(objectAnimator.getPropertyName(), MotionTiming.createFromAnimator(objectAnimator));
    }

    private PropertyValuesHolder[] clonePropertyValuesHolder(PropertyValuesHolder[] propertyValuesHolderArr) {
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i = 0; i < propertyValuesHolderArr.length; i++) {
            propertyValuesHolderArr2[i] = propertyValuesHolderArr[i].clone();
        }
        return propertyValuesHolderArr2;
    }

    public static MotionSpec createFromAttribute(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return createFromResource(context, resourceId);
    }

    public static MotionSpec createFromResource(Context context, int i) {
        MotionSpec motionSpecCreateSpecFromAnimators;
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                motionSpecCreateSpecFromAnimators = createSpecFromAnimators(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            } else if (animatorLoadAnimator != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(animatorLoadAnimator);
                motionSpecCreateSpecFromAnimators = createSpecFromAnimators(arrayList);
            } else {
                motionSpecCreateSpecFromAnimators = null;
            }
            return motionSpecCreateSpecFromAnimators;
        } catch (Exception e) {
            Log.w(TAG, NPStringFog.decode(new byte[]{114, 84, 89, 20, 68, 19, 93, 90, 86, 87, 16, 82, 95, 92, 90, 82, 68, 90, 94, 91, 23, 65, 85, 64, 94, 64, 69, 80, 85, 19, 120, 113, 23, 16, 0, 75}, "157303", false) + Integer.toHexString(i), e);
            return null;
        }
    }

    private static MotionSpec createSpecFromAnimators(List<Animator> list) {
        MotionSpec motionSpec = new MotionSpec();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            addInfoFromAnimator(motionSpec, list.get(i));
        }
        return motionSpec;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MotionSpec) {
            return this.timings.equals(((MotionSpec) obj).timings);
        }
        return false;
    }

    public <T> ObjectAnimator getAnimator(String str, T t, Property<T, ?> property) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t, getPropertyValues(str));
        objectAnimatorOfPropertyValuesHolder.setProperty(property);
        getTiming(str).apply(objectAnimatorOfPropertyValuesHolder);
        return objectAnimatorOfPropertyValuesHolder;
    }

    public PropertyValuesHolder[] getPropertyValues(String str) {
        if (hasPropertyValues(str)) {
            return clonePropertyValuesHolder(this.propertyValues.get(str));
        }
        throw new IllegalArgumentException();
    }

    public MotionTiming getTiming(String str) {
        if (hasTiming(str)) {
            return this.timings.get(str);
        }
        throw new IllegalArgumentException();
    }

    public long getTotalDuration() {
        long jMax = 0;
        int size = this.timings.size();
        for (int i = 0; i < size; i++) {
            MotionTiming motionTimingValueAt = this.timings.valueAt(i);
            jMax = Math.max(jMax, motionTimingValueAt.getDelay() + motionTimingValueAt.getDuration());
        }
        return jMax;
    }

    public boolean hasPropertyValues(String str) {
        return this.propertyValues.get(str) != null;
    }

    public boolean hasTiming(String str) {
        return this.timings.get(str) != null;
    }

    public int hashCode() {
        return this.timings.hashCode();
    }

    public void setPropertyValues(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.propertyValues.put(str, propertyValuesHolderArr);
    }

    public void setTiming(String str, MotionTiming motionTiming) {
        this.timings.put(str, motionTiming);
    }

    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + NPStringFog.decode(new byte[]{19, 68, 94, 84, 95, 88, 84, 67, 13, 25}, "307966", -1710841741L) + this.timings + NPStringFog.decode(new byte[]{75, 110}, "6dd1b7", 5.65291533E8d);
    }
}

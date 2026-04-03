package com.google.android.material.animation;

import android.util.Property;
import android.view.ViewGroup;
import com.google.android.material.R;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class ChildrenAlphaProperty extends Property<ViewGroup, Float> {
    public static final Property<ViewGroup, Float> CHILDREN_ALPHA = new ChildrenAlphaProperty(NPStringFog.decode(new byte[]{80, 10, 8, 10, 85, 68, 86, 12, 32, 10, 65, 94, 82}, "3baf16", 2.123559E9f));

    private ChildrenAlphaProperty(String str) {
        super(Float.class, str);
    }

    @Override // android.util.Property
    public Float get(ViewGroup viewGroup) {
        Float f = (Float) viewGroup.getTag(R.id.mtrl_internal_children_alpha_tag);
        return f != null ? f : Float.valueOf(1.0f);
    }

    @Override // android.util.Property
    public void set(ViewGroup viewGroup, Float f) {
        float fFloatValue = f.floatValue();
        viewGroup.setTag(R.id.mtrl_internal_children_alpha_tag, Float.valueOf(fFloatValue));
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            viewGroup.getChildAt(i).setAlpha(fFloatValue);
        }
    }
}

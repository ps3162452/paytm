package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.value.Keyframe;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
abstract class BaseAnimatableValue<V, O> implements AnimatableValue<V, O> {
    final List<Keyframe<V>> keyframes;

    BaseAnimatableValue(V v) {
        this(Collections.singletonList(new Keyframe(v)));
    }

    BaseAnimatableValue(List<Keyframe<V>> list) {
        this.keyframes = list;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public List<Keyframe<V>> getKeyframes() {
        return this.keyframes;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public boolean isStatic() {
        return this.keyframes.isEmpty() || (this.keyframes.size() == 1 && this.keyframes.get(0).isStatic());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.keyframes.isEmpty()) {
            sb.append(NPStringFog.decode(new byte[]{67, 84, 90, 71, 0, 65, 8}, "5562e2", true)).append(Arrays.toString(this.keyframes.toArray()));
        }
        return sb.toString();
    }
}

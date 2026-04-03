package com.airbnb.lottie.model.layer;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.value.Keyframe;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class Layer {
    private final LottieComposition composition;
    private final boolean hidden;
    private final List<Keyframe<Float>> inOutKeyframes;
    private final long layerId;
    private final String layerName;
    private final LayerType layerType;
    private final List<Mask> masks;
    private final MatteType matteType;
    private final long parentId;
    private final int preCompHeight;
    private final int preCompWidth;

    @Nullable
    private final String refId;
    private final List<ContentModel> shapes;
    private final int solidColor;
    private final int solidHeight;
    private final int solidWidth;
    private final float startFrame;

    @Nullable
    private final AnimatableTextFrame text;

    @Nullable
    private final AnimatableTextProperties textProperties;

    @Nullable
    private final AnimatableFloatValue timeRemapping;
    private final float timeStretch;
    private final AnimatableTransform transform;

    public enum LayerType {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    public enum MatteType {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public Layer(List<ContentModel> list, LottieComposition lottieComposition, String str, long j, LayerType layerType, long j2, @Nullable String str2, List<Mask> list2, AnimatableTransform animatableTransform, int i, int i2, int i3, float f, float f2, int i4, int i5, @Nullable AnimatableTextFrame animatableTextFrame, @Nullable AnimatableTextProperties animatableTextProperties, List<Keyframe<Float>> list3, MatteType matteType, @Nullable AnimatableFloatValue animatableFloatValue, boolean z) {
        this.shapes = list;
        this.composition = lottieComposition;
        this.layerName = str;
        this.layerId = j;
        this.layerType = layerType;
        this.parentId = j2;
        this.refId = str2;
        this.masks = list2;
        this.transform = animatableTransform;
        this.solidWidth = i;
        this.solidHeight = i2;
        this.solidColor = i3;
        this.timeStretch = f;
        this.startFrame = f2;
        this.preCompWidth = i4;
        this.preCompHeight = i5;
        this.text = animatableTextFrame;
        this.textProperties = animatableTextProperties;
        this.inOutKeyframes = list3;
        this.matteType = matteType;
        this.timeRemapping = animatableFloatValue;
        this.hidden = z;
    }

    LottieComposition getComposition() {
        return this.composition;
    }

    public long getId() {
        return this.layerId;
    }

    List<Keyframe<Float>> getInOutKeyframes() {
        return this.inOutKeyframes;
    }

    public LayerType getLayerType() {
        return this.layerType;
    }

    List<Mask> getMasks() {
        return this.masks;
    }

    MatteType getMatteType() {
        return this.matteType;
    }

    String getName() {
        return this.layerName;
    }

    long getParentId() {
        return this.parentId;
    }

    int getPreCompHeight() {
        return this.preCompHeight;
    }

    int getPreCompWidth() {
        return this.preCompWidth;
    }

    @Nullable
    String getRefId() {
        return this.refId;
    }

    List<ContentModel> getShapes() {
        return this.shapes;
    }

    int getSolidColor() {
        return this.solidColor;
    }

    int getSolidHeight() {
        return this.solidHeight;
    }

    int getSolidWidth() {
        return this.solidWidth;
    }

    float getStartProgress() {
        return this.startFrame / this.composition.getDurationFrames();
    }

    @Nullable
    AnimatableTextFrame getText() {
        return this.text;
    }

    @Nullable
    AnimatableTextProperties getTextProperties() {
        return this.textProperties;
    }

    @Nullable
    AnimatableFloatValue getTimeRemapping() {
        return this.timeRemapping;
    }

    float getTimeStretch() {
        return this.timeStretch;
    }

    AnimatableTransform getTransform() {
        return this.transform;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public String toString() {
        return toString("");
    }

    public String toString(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str).append(getName()).append("\n");
        Layer layerLayerModelForId = this.composition.layerModelForId(getParentId());
        if (layerLayerModelForId != null) {
            sb.append(NPStringFog.decode(new byte[]{62, 111, 99, 89, 20, 0, 89, 18, 64, 2, 70}, "7f38fe", -1010294997L)).append(layerLayerModelForId.getName());
            Layer layerLayerModelForId2 = this.composition.layerModelForId(layerLayerModelForId.getParentId());
            while (layerLayerModelForId2 != null) {
                sb.append(NPStringFog.decode(new byte[]{31, 10}, "243318", 1.1485798E9f)).append(layerLayerModelForId2.getName());
                layerLayerModelForId2 = this.composition.layerModelForId(layerLayerModelForId2.getParentId());
            }
            sb.append(str).append("\n");
        }
        if (!getMasks().isEmpty()) {
            sb.append(str).append(NPStringFog.decode(new byte[]{106, 117, 4, 68, 9, 68, 89, 24}, "c8e7b7", -8.8975334E8d)).append(getMasks().size()).append("\n");
        }
        if (getSolidWidth() != 0 && getSolidHeight() != 0) {
            sb.append(str).append(NPStringFog.decode(new byte[]{59, 122, 4, 87, 82, 80, 64, 87, 16, 90, 93, 13, 18}, "28e497", 2.124989E9f)).append(String.format(Locale.US, NPStringFog.decode(new byte[]{68, 81, 77, 19, 87, 65, 68, 109, 63}, "a5563a", 9.4887417E8d), Integer.valueOf(getSolidWidth()), Integer.valueOf(getSolidHeight()), Integer.valueOf(getSolidColor())));
        }
        if (!this.shapes.isEmpty()) {
            sb.append(str).append(NPStringFog.decode(new byte[]{109, 50, 94, 5, 71, 86, 23, 91, 60}, "da6d73", 1.83051E9f));
            Iterator<ContentModel> it = this.shapes.iterator();
            while (it.hasNext()) {
                sb.append(str).append("\t\t").append(it.next()).append("\n");
            }
        }
        return sb.toString();
    }
}

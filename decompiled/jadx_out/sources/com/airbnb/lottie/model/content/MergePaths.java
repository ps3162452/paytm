package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.MergePathsContent;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.Logger;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class MergePaths implements ContentModel {
    private final boolean hidden;
    private final MergePathsMode mode;
    private final String name;

    public enum MergePathsMode {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static MergePathsMode forId(int i) {
            switch (i) {
            }
            return MERGE;
        }
    }

    public MergePaths(String str, MergePathsMode mergePathsMode, boolean z) {
        this.name = str;
        this.mode = mergePathsMode;
        this.hidden = z;
    }

    public MergePathsMode getMode() {
        return this.mode;
    }

    public String getName() {
        return this.name;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    @Nullable
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        if (lottieDrawable.enableMergePathsForKitKatAndAbove()) {
            return new MergePathsContent(this);
        }
        Logger.warning(NPStringFog.decode(new byte[]{121, 11, 15, 94, 89, 64, 81, 10, 8, 19, 91, 91, 86, 17, 7, 90, 86, 71, 24, 8, 3, 65, 95, 81, 24, 21, 7, 71, 80, 71, 24, 7, 19, 71, 24, 64, 80, 0, 31, 19, 89, 70, 93, 69, 2, 90, 75, 85, 90, 9, 3, 87, 22}, "8ef384", -2.088546878E9d));
        return null;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{126, 84, 19, 2, 85, 103, 82, 69, 9, 22, 75, 90, 92, 85, 4, 88}, "31ae07", 9.9293984E8f) + this.mode + '}';
    }
}

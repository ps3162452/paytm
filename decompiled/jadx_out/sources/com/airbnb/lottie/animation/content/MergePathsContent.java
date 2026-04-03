package com.airbnb.lottie.animation.content;

import android.annotation.TargetApi;
import android.graphics.Path;
import android.os.Build;
import com.airbnb.lottie.model.content.MergePaths;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
@TargetApi(19)
public class MergePathsContent implements PathContent, GreedyContent {
    private final MergePaths mergePaths;
    private final String name;
    private final Path firstPath = new Path();
    private final Path remainderPath = new Path();
    private final Path path = new Path();
    private final List<PathContent> pathContents = new ArrayList();

    /* JADX INFO: renamed from: com.airbnb.lottie.animation.content.MergePathsContent$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode = new int[MergePaths.MergePathsMode.values().length];

        static {
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.MERGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.ADD.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.SUBTRACT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.INTERSECT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[MergePaths.MergePathsMode.EXCLUDE_INTERSECTIONS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public MergePathsContent(MergePaths mergePaths) {
        if (Build.VERSION.SDK_INT < 19) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{41, 92, 64, 94, 4, 24, 20, 88, 70, 81, 18, 24, 5, 75, 87, 25, 15, 87, 16, 25, 65, 76, 17, 72, 11, 75, 70, 92, 5, 24, 20, 75, 87, 20, 42, 81, 16, 114, 83, 77, 79}, "d929a8", true));
        }
        this.name = mergePaths.getName();
        this.mergePaths = mergePaths;
    }

    private void addPaths() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.pathContents.size()) {
                return;
            }
            this.path.addPath(this.pathContents.get(i2).getPath());
            i = i2 + 1;
        }
    }

    @TargetApi(19)
    private void opFirstPathWithRest(Path.Op op) {
        this.remainderPath.reset();
        this.firstPath.reset();
        int size = this.pathContents.size() - 1;
        while (true) {
            int i = size;
            if (i < 1) {
                break;
            }
            PathContent pathContent = this.pathContents.get(i);
            if (pathContent instanceof ContentGroup) {
                List<PathContent> pathList = ((ContentGroup) pathContent).getPathList();
                for (int size2 = pathList.size() - 1; size2 >= 0; size2--) {
                    Path path = pathList.get(size2).getPath();
                    path.transform(((ContentGroup) pathContent).getTransformationMatrix());
                    this.remainderPath.addPath(path);
                }
            } else {
                this.remainderPath.addPath(pathContent.getPath());
            }
            size = i - 1;
        }
        PathContent pathContent2 = this.pathContents.get(0);
        if (pathContent2 instanceof ContentGroup) {
            List<PathContent> pathList2 = ((ContentGroup) pathContent2).getPathList();
            for (int i2 = 0; i2 < pathList2.size(); i2++) {
                Path path2 = pathList2.get(i2).getPath();
                path2.transform(((ContentGroup) pathContent2).getTransformationMatrix());
                this.firstPath.addPath(path2);
            }
        } else {
            this.firstPath.set(pathContent2.getPath());
        }
        this.path.op(this.firstPath, this.remainderPath, op);
    }

    @Override // com.airbnb.lottie.animation.content.GreedyContent
    public void absorbContent(ListIterator<Content> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            Content contentPrevious = listIterator.previous();
            if (contentPrevious instanceof PathContent) {
                this.pathContents.add((PathContent) contentPrevious);
                listIterator.remove();
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.name;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        this.path.reset();
        if (this.mergePaths.isHidden()) {
            return this.path;
        }
        switch (AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$MergePaths$MergePathsMode[this.mergePaths.getMode().ordinal()]) {
            case 1:
                addPaths();
                break;
            case 2:
                opFirstPathWithRest(Path.Op.UNION);
                break;
            case 3:
                opFirstPathWithRest(Path.Op.REVERSE_DIFFERENCE);
                break;
            case 4:
                opFirstPathWithRest(Path.Op.INTERSECT);
                break;
            case 5:
                opFirstPathWithRest(Path.Op.XOR);
                break;
        }
        return this.path;
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.pathContents.size()) {
                return;
            }
            this.pathContents.get(i2).setContents(list, list2);
            i = i2 + 1;
        }
    }
}

package androidx.constraintlayout.motion.widget;

import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.ConstraintSet;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class TransitionBuilder {
    private static final String TAG = NPStringFog.decode(new byte[]{100, 75, 82, 94, 65, 10, 68, 80, 92, 94, 112, 22, 89, 85, 87, 85, 64}, "09302c", 2606);

    public static MotionScene.Transition buildTransition(MotionScene motionScene, int i, int i2, ConstraintSet constraintSet, int i3, ConstraintSet constraintSet2) {
        MotionScene.Transition transition = new MotionScene.Transition(i, motionScene, i2, i3);
        updateConstraintSetInMotionScene(motionScene, transition, constraintSet, constraintSet2);
        return transition;
    }

    private static void updateConstraintSetInMotionScene(MotionScene motionScene, MotionScene.Transition transition, ConstraintSet constraintSet, ConstraintSet constraintSet2) {
        int startConstraintSetId = transition.getStartConstraintSetId();
        int endConstraintSetId = transition.getEndConstraintSetId();
        motionScene.setConstraintSet(startConstraintSetId, constraintSet);
        motionScene.setConstraintSet(endConstraintSetId, constraintSet2);
    }

    public static void validate(MotionLayout motionLayout) {
        if (motionLayout.mScene == null) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{123, 13, 21, 89, 10, 12, 86, 67, 14, 87, 18, 12, 93, 13, 67, 84, 7, 28, 93, 22, 23, 22, 70, 41, 83, 26, 12, 77, 18, 69, 95, 10, 16, 75, 15, 11, 85, 67, 46, 87, 18, 12, 93, 13, 67, 107, 5, 0, 92, 6, 77}, "2cc8fe", -1.220083198E9d));
        }
        MotionScene motionScene = motionLayout.mScene;
        if (!motionScene.validateLayout(motionLayout)) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{40, 93, 70, 90, 86, 90, 41, 83, 75, 92, 76, 64, 69, 86, 93, 86, 74, 90, 66, 70, 18, 91, 88, 66, 0, 18, 70, 91, 92, 20, 23, 91, 85, 91, 77, 20, 8, 93, 70, 90, 86, 90, 69, 65, 81, 86, 87, 81, 75}, "e22394", 1615668604L));
        }
        if (motionScene.mCurrentTransition == null || motionScene.getDefinedTransitions().isEmpty()) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{120, 15, 67, 2, 90, 80, 85, 65, 88, 12, 66, 80, 94, 15, 21, 15, 87, 64, 94, 20, 65, 77, 22, 116, 94, 21, 92, 12, 88, 25, 98, 2, 80, 13, 83, 25, 85, 14, 80, 16, 88, 30, 69, 65, 93, 2, 64, 92, 17, 0, 91, 26, 22, 77, 67, 0, 91, 16, 95, 77, 88, 14, 91, 77}, "1a5c69", -10024));
        }
    }
}

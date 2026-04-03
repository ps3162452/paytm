package androidx.transition;

import android.view.View;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
public abstract class VisibilityPropagation extends TransitionPropagation {
    private static final String PROPNAME_VIEW_CENTER = NPStringFog.decode(new byte[]{87, 92, 83, 67, 93, 10, 82, 8, 65, 88, 65, 10, 84, 91, 91, 88, 70, 26, 102, 64, 88, 65, 83, 4, 87, 70, 94, 94, 92, 89, 85, 87, 89, 69, 87, 17}, "62712c", false);
    private static final String PROPNAME_VISIBILITY = NPStringFog.decode(new byte[]{4, 12, 85, 65, 89, 89, 1, 88, 71, 90, 69, 89, 7, 11, 93, 90, 66, 73, 53, 16, 94, 67, 87, 87, 4, 22, 88, 92, 88, 10, 19, 11, 66, 90, 84, 89, 9, 11, 69, 74}, "eb1360", false, true);
    private static final String[] VISIBILITY_PROPAGATION_VALUES = {NPStringFog.decode(new byte[]{83, 95, 5, 20, 92, 80, 86, 11, 23, 15, 64, 80, 80, 88, 13, 15, 71, 64, 98, 67, 14, 22, 82, 94, 83, 69, 8, 9, 93, 3, 68, 88, 18, 15, 81, 80, 94, 88, 21, 31}, "21af39", false), NPStringFog.decode(new byte[]{84, 86, 87, 66, 9, 15, 81, 2, 69, 89, 21, 15, 87, 81, 95, 89, 18, 31, 101, 74, 92, 64, 7, 1, 84, 76, 90, 95, 8, 92, 86, 93, 93, 68, 3, 20}, "5830ff", true)};

    private static int getViewCoordinate(TransitionValues transitionValues, int i) {
        int[] iArr;
        if (transitionValues == null || (iArr = (int[]) transitionValues.values.get(PROPNAME_VIEW_CENTER)) == null) {
            return -1;
        }
        return iArr[i];
    }

    @Override // androidx.transition.TransitionPropagation
    public void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        Integer numValueOf = (Integer) transitionValues.values.get(NPStringFog.decode(new byte[]{2, 91, 81, 20, 86, 13, 7, 15, 67, 15, 74, 13, 1, 92, 89, 15, 77, 29, 89, 67, 92, 21, 80, 6, 10, 89, 92, 18, 64}, "c55f9d", 599));
        if (numValueOf == null) {
            numValueOf = Integer.valueOf(view.getVisibility());
        }
        transitionValues.values.put(PROPNAME_VISIBILITY, numValueOf);
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        iArr[0] = iArr[0] + Math.round(view.getTranslationX());
        iArr[0] = iArr[0] + (view.getWidth() / 2);
        iArr[1] = iArr[1] + Math.round(view.getTranslationY());
        iArr[1] = (view.getHeight() / 2) + iArr[1];
        transitionValues.values.put(PROPNAME_VIEW_CENTER, iArr);
    }

    @Override // androidx.transition.TransitionPropagation
    public String[] getPropagationProperties() {
        return VISIBILITY_PROPAGATION_VALUES;
    }

    public int getViewVisibility(TransitionValues transitionValues) {
        Integer num;
        if (transitionValues == null || (num = (Integer) transitionValues.values.get(PROPNAME_VISIBILITY)) == null) {
            return 8;
        }
        return num.intValue();
    }

    public int getViewX(TransitionValues transitionValues) {
        return getViewCoordinate(transitionValues, 0);
    }

    public int getViewY(TransitionValues transitionValues) {
        return getViewCoordinate(transitionValues, 1);
    }
}

package androidx.constraintlayout.motion.widget;

import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintSet;
import java.io.PrintStream;
import java.util.HashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class DesignTool implements ProxyInterface {
    private static final boolean DEBUG = false;
    private static final String TAG = NPStringFog.decode(new byte[]{39, 6, 69, 10, 95, 13, 55, 12, 89, 15}, "cc6c8c", false, true);
    static final HashMap<Pair<Integer, Integer>, String> allAttributes;
    static final HashMap<String, String> allMargins;
    private final MotionLayout mMotionLayout;
    private MotionScene mSceneCache;
    private String mLastStartState = null;
    private String mLastEndState = null;
    private int mLastStartStateId = -1;
    private int mLastEndStateId = -1;

    static {
        HashMap<Pair<Integer, Integer>, String> map = new HashMap<>();
        allAttributes = map;
        HashMap<String, String> map2 = new HashMap<>();
        allMargins = map2;
        map.put(Pair.create(4, 4), NPStringFog.decode(new byte[]{95, 7, 73, 10, 19, 68, 108, 5, 95, 11, 21, 68, 65, 7, 89, 11, 18, 114, 92, 18, 68, 10, 11, 111, 71, 9, 114, 10, 18, 68, 92, 11, 127, 3}, "3f0ef0", 14329));
        map.put(Pair.create(4, 3), NPStringFog.decode(new byte[]{8, 88, 76, 92, 69, 76, 59, 90, 90, 93, 67, 76, 22, 88, 92, 93, 68, 122, 11, 77, 65, 92, 93, 103, 16, 86, 97, 92, 64, 119, 2}, "d95308", 2.3501681E7d));
        map.put(Pair.create(3, 4), NPStringFog.decode(new byte[]{84, 88, 64, 87, 69, 16, 103, 90, 86, 86, 67, 16, 74, 88, 80, 86, 68, 48, 87, 73, 102, 76, 95, 38, 87, 77, 77, 87, 93, 43, 94}, "89980d", -21219));
        map.put(Pair.create(3, 3), NPStringFog.decode(new byte[]{90, 81, 79, 11, 77, 77, 105, 83, 89, 10, 75, 77, 68, 81, 95, 10, 76, 109, 89, 64, 105, 16, 87, 109, 89, 64, 121, 2}, "606d89", -1.8318685E8f));
        map.put(Pair.create(6, 6), NPStringFog.decode(new byte[]{90, 5, 65, 89, 20, 70, 105, 7, 87, 88, 18, 70, 68, 5, 81, 88, 21, 97, 66, 5, 74, 66, 62, 70, 89, 55, 76, 87, 19, 70, 121, 2}, "6d86a2", true));
        map.put(Pair.create(6, 7), NPStringFog.decode(new byte[]{10, 85, 26, 11, 17, 16, 57, 87, 12, 10, 23, 16, 20, 85, 10, 10, 16, 55, 18, 85, 17, 16, 59, 16, 9, 113, 13, 0, 43, 2}, "f4cddd", -2025603589L));
        map.put(Pair.create(7, 6), NPStringFog.decode(new byte[]{8, 86, 75, 14, 71, 67, 59, 84, 93, 15, 65, 67, 22, 86, 91, 15, 70, 114, 10, 83, 109, 21, 93, 100, 16, 86, 64, 21, 125, 81}, "d72a27", 1.074137131E9d));
        map.put(Pair.create(7, 7), NPStringFog.decode(new byte[]{9, 82, 77, 14, 68, 17, 58, 80, 91, 15, 66, 17, 23, 82, 93, 15, 69, 32, 11, 87, 107, 21, 94, 32, 11, 87, 123, 7}, "e34a1e", 1292112393L));
        map.put(Pair.create(1, 1), NPStringFog.decode(new byte[]{91, 3, 79, 89, 71, 68, 104, 1, 89, 88, 65, 68, 69, 3, 95, 88, 70, 124, 82, 4, 66, 105, 70, 95, 123, 7, 80, 66, 125, 86}, "7b6620", true));
        map.put(Pair.create(1, 2), NPStringFog.decode(new byte[]{9, 3, 28, 95, 65, 66, 58, 1, 10, 94, 71, 66, 23, 3, 12, 94, 64, 122, 0, 4, 17, 111, 64, 89, 55, 11, 2, 88, 64, 121, 3}, "ebe046", -1508254507L));
        map.put(Pair.create(2, 2), NPStringFog.decode(new byte[]{95, 89, 65, 13, 19, 18, 108, 91, 87, 12, 21, 18, 65, 89, 81, 12, 18, 52, 90, 95, 80, 22, 57, 18, 92, 106, 81, 5, 14, 18, 124, 94}, "388bff", 1.424446453E9d));
        map.put(Pair.create(2, 1), NPStringFog.decode(new byte[]{88, 82, 28, 10, 71, 69, 107, 80, 10, 11, 65, 69, 70, 82, 12, 11, 70, 99, 93, 84, 13, 17, 109, 69, 91, 127, 0, 3, 70, 126, 82}, "43ee21", -1676951000L));
        map.put(Pair.create(5, 5), NPStringFog.decode(new byte[]{88, 2, 24, 9, 77, 71, 107, 0, 14, 8, 75, 71, 70, 2, 8, 8, 76, 113, 85, 16, 4, 10, 81, 93, 81, 60, 21, 9, 122, 82, 71, 6, 13, 15, 86, 86, 123, 5}, "4caf83", 1250719761L));
        map2.put(NPStringFog.decode(new byte[]{9, 2, 73, 9, 66, 68, 58, 0, 95, 8, 68, 68, 23, 2, 89, 8, 67, 114, 10, 23, 68, 9, 90, 111, 17, 12, 114, 9, 67, 68, 10, 14, 127, 0}, "ec0f70", false, false), NPStringFog.decode(new byte[]{90, 3, 64, 87, 20, 22, 105, 15, 88, 74, 6, 11, 88, 32, 86, 76, 21, 13, 91}, "6b98ab", false, false));
        map2.put(NPStringFog.decode(new byte[]{14, 80, 76, 10, 70, 76, 61, 82, 90, 11, 64, 76, 16, 80, 92, 11, 71, 122, 13, 69, 65, 10, 94, 103, 22, 94, 97, 10, 67, 119, 4}, "b15e38", false), NPStringFog.decode(new byte[]{10, 84, 64, 9, 70, 21, 57, 88, 88, 20, 84, 8, 8, 119, 86, 18, 71, 14, 11}, "f59f3a", 32334));
        map2.put(NPStringFog.decode(new byte[]{9, 5, 31, 10, 76, 71, 58, 7, 9, 11, 74, 71, 23, 5, 15, 11, 77, 103, 10, 20, 57, 17, 86, 113, 10, 16, 18, 10, 84, 124, 3}, "edfe93", 14256), NPStringFog.decode(new byte[]{85, 4, 76, 90, 22, 76, 102, 8, 84, 71, 4, 81, 87, 49, 90, 69}, "9e55c8", -922651347L));
        map2.put(NPStringFog.decode(new byte[]{13, 84, 27, 89, 17, 68, 62, 86, 13, 88, 23, 68, 19, 84, 11, 88, 16, 100, 14, 69, 61, 66, 11, 100, 14, 69, 45, 80}, "a5b6d0", 7.706153E8f), NPStringFog.decode(new byte[]{9, 89, 28, 92, 19, 77, 58, 85, 4, 65, 1, 80, 11, 108, 10, 67}, "e8e3f9", 7233));
        map2.put(NPStringFog.decode(new byte[]{8, 2, 72, 90, 67, 65, 59, 0, 94, 91, 69, 65, 22, 2, 88, 91, 66, 102, 16, 2, 67, 65, 105, 65, 11, 48, 69, 84, 68, 65, 43, 5}, "dc1565", 1739271300L), NPStringFog.decode(new byte[]{9, 82, 78, 12, 77, 70, 58, 94, 86, 17, 95, 91, 11, 96, 67, 2, 74, 70}, "e37c82", 153501802L));
        map2.put(NPStringFog.decode(new byte[]{84, 83, 26, 13, 16, 22, 103, 81, 12, 12, 22, 22, 74, 83, 10, 12, 17, 49, 76, 83, 17, 22, 58, 22, 87, 119, 13, 6, 42, 4}, "82cbeb", false), NPStringFog.decode(new byte[]{90, 5, 29, 95, 66, 67, 105, 9, 5, 66, 80, 94, 88, 55, 16, 81, 69, 67}, "6dd077", -1.036469015E9d));
        map2.put(NPStringFog.decode(new byte[]{14, 89, 65, 13, 77, 66, 61, 91, 87, 12, 75, 66, 16, 89, 81, 12, 76, 115, 12, 92, 103, 22, 87, 101, 22, 89, 74, 22, 119, 80}, "b88b86", true), NPStringFog.decode(new byte[]{85, 81, 64, 12, 71, 16, 102, 93, 88, 17, 85, 13, 87, 117, 87, 7}, "909c2d", true));
        map2.put(NPStringFog.decode(new byte[]{89, 0, 31, 87, 76, 76, 106, 2, 9, 86, 74, 76, 71, 0, 15, 86, 77, 125, 91, 5, 57, 76, 86, 125, 91, 5, 41, 94}, "5af898", -1.892892247E9d), NPStringFog.decode(new byte[]{89, 0, 77, 86, 64, 21, 106, 12, 85, 75, 82, 8, 91, 36, 90, 93}, "5a495a", true));
        map2.put(NPStringFog.decode(new byte[]{95, 2, 79, 89, 64, 66, 108, 0, 89, 88, 70, 66, 65, 2, 95, 88, 65, 122, 86, 5, 66, 105, 65, 89, 127, 6, 80, 66, 122, 80}, "3c6656", true), NPStringFog.decode(new byte[]{92, 3, 64, 92, 19, 65, 111, 15, 88, 65, 1, 92, 94, 46, 92, 85, 18}, "0b93f5", -15905));
        map2.put(NPStringFog.decode(new byte[]{9, 3, 65, 94, 67, 67, 58, 1, 87, 95, 69, 67, 23, 3, 81, 95, 66, 123, 0, 4, 76, 110, 66, 88, 55, 11, 95, 89, 66, 120, 3}, "eb8167", 9299), NPStringFog.decode(new byte[]{13, 83, 79, 9, 19, 68, 62, 95, 87, 20, 1, 89, 15, 126, 83, 0, 18}, "a26ff0", true, false));
        map2.put(NPStringFog.decode(new byte[]{95, 88, 75, 89, 16, 16, 108, 90, 93, 88, 22, 16, 65, 88, 91, 88, 17, 54, 90, 94, 90, 66, 58, 16, 92, 107, 91, 81, 13, 16, 124, 95}, "3926ed", false), NPStringFog.decode(new byte[]{88, 88, 72, 89, 68, 67, 107, 84, 80, 68, 86, 94, 90, 107, 88, 81, 89, 67}, "491617", 12438));
        map2.put(NPStringFog.decode(new byte[]{91, 5, 24, 86, 64, 23, 104, 7, 14, 87, 70, 23, 69, 5, 8, 87, 65, 49, 94, 3, 9, 77, 106, 23, 88, 40, 4, 95, 65, 44, 81}, "7da95c", 1.04696934E9f), NPStringFog.decode(new byte[]{14, 87, 29, 12, 67, 22, 61, 91, 5, 17, 81, 11, 12, 100, 13, 4, 94, 22}, "b6dc6b", 1205603541L));
    }

    public DesignTool(MotionLayout motionLayout) {
        this.mMotionLayout = motionLayout;
    }

    private static void Connect(int i, ConstraintSet constraintSet, View view, HashMap<String, String> map, int i2, int i3) {
        String str = allAttributes.get(Pair.create(Integer.valueOf(i2), Integer.valueOf(i3)));
        String str2 = map.get(str);
        if (str2 != null) {
            String str3 = allMargins.get(str);
            constraintSet.connect(view.getId(), i2, Integer.parseInt(str2), i3, str3 != null ? GetPxFromDp(i, map.get(str3)) : 0);
        }
    }

    private static int GetPxFromDp(int i, String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(100)) == -1) {
            return 0;
        }
        return (int) ((Integer.valueOf(str.substring(0, iIndexOf)).intValue() * i) / 160.0f);
    }

    private static void SetAbsolutePositions(int i, ConstraintSet constraintSet, View view, HashMap<String, String> map) {
        String str = map.get(NPStringFog.decode(new byte[]{15, 4, 72, 86, 23, 70, 60, 0, 85, 80, 22, 93, 17, 58, 80, 91, 17, 93, 15, 16, 69, 92, 58}, "ce19b2", -8.4435193E7d));
        if (str != null) {
            constraintSet.setEditorAbsoluteX(view.getId(), GetPxFromDp(i, str));
        }
        String str2 = map.get(NPStringFog.decode(new byte[]{89, 3, 72, 12, 19, 21, 106, 7, 85, 10, 18, 14, 71, 61, 80, 1, 21, 14, 89, 23, 69, 6, 63}, "5b1cfa", false));
        if (str2 != null) {
            constraintSet.setEditorAbsoluteY(view.getId(), GetPxFromDp(i, str2));
        }
    }

    private static void SetBias(ConstraintSet constraintSet, View view, HashMap<String, String> map, int i) {
        String strDecode = NPStringFog.decode(new byte[]{10, 7, 26, 94, 69, 68, 57, 5, 12, 95, 67, 68, 20, 7, 10, 95, 68, 120, 9, 20, 10, 75, 95, 94, 18, 7, 15, 110, 82, 89, 7, 21}, "ffc100", false);
        if (i == 1) {
            strDecode = NPStringFog.decode(new byte[]{91, 87, 27, 92, 17, 16, 104, 85, 13, 93, 23, 16, 69, 87, 11, 93, 16, 50, 82, 68, 22, 90, 7, 5, 91, 105, 0, 90, 5, 23}, "76b3dd", -1.0765335E9f);
        }
        String str = map.get(strDecode);
        if (str != null) {
            if (i == 0) {
                constraintSet.setHorizontalBias(view.getId(), Float.parseFloat(str));
            } else if (i == 1) {
                constraintSet.setVerticalBias(view.getId(), Float.parseFloat(str));
            }
        }
    }

    private static void SetDimensions(int i, ConstraintSet constraintSet, View view, HashMap<String, String> map, int i2) {
        String strDecode = NPStringFog.decode(new byte[]{90, 80, 28, 92, 20, 67, 105, 70, 12, 87, 21, 95}, "61e3a7", 1724828253L);
        if (i2 == 1) {
            strDecode = NPStringFog.decode(new byte[]{84, 5, 78, 10, 66, 16, 103, 12, 82, 12, 80, 12, 76}, "8d7e7d", false);
        }
        String str = map.get(strDecode);
        if (str != null) {
            int iGetPxFromDp = !str.equalsIgnoreCase(NPStringFog.decode(new byte[]{19, 17, 86, 68, 109, 1, 11, 13, 67, 81, 92, 22}, "dc742b", 30513)) ? GetPxFromDp(i, str) : -2;
            if (i2 == 0) {
                constraintSet.constrainWidth(view.getId(), iGetPxFromDp);
            } else {
                constraintSet.constrainHeight(view.getId(), iGetPxFromDp);
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public int designAccess(int i, String str, Object obj, float[] fArr, int i2, float[] fArr2, int i3) {
        MotionController motionController;
        MotionController motionController2;
        View view = (View) obj;
        if (i != 0) {
            if (this.mMotionLayout.mScene != null && view != null && (motionController2 = this.mMotionLayout.mFrameArrayList.get(view)) != null) {
                motionController = motionController2;
            }
            return -1;
        }
        motionController = null;
        switch (i) {
            case 1:
                int duration = this.mMotionLayout.mScene.getDuration() / 16;
                motionController.buildPath(fArr2, duration);
                break;
            case 2:
                int duration2 = this.mMotionLayout.mScene.getDuration() / 16;
                motionController.buildKeyFrames(fArr2, null);
                break;
            case 3:
                int duration3 = this.mMotionLayout.mScene.getDuration() / 16;
                break;
        }
        return -1;
    }

    public void disableAutoTransition(boolean z) {
        this.mMotionLayout.disableAutoTransition(z);
    }

    public void dumpConstraintSet(String str) {
        if (this.mMotionLayout.mScene == null) {
            this.mMotionLayout.mScene = this.mSceneCache;
        }
        int iLookUpConstraintId = this.mMotionLayout.lookUpConstraintId(str);
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 24);
        sb.append(NPStringFog.decode(new byte[]{67, 80, 17, 14, 69, 12, 13, 83, 68, 67}, "c4dc5e", 3.69857264E8d));
        sb.append(str);
        sb.append(NPStringFog.decode(new byte[]{25, 73}, "9a6148", -1.470756938E9d));
        sb.append(iLookUpConstraintId);
        sb.append(NPStringFog.decode(new byte[]{77}, "d86706", false, false));
        printStream.println(sb.toString());
        try {
            this.mMotionLayout.mScene.getConstraintSet(iLookUpConstraintId).dump(this.mMotionLayout.mScene, new int[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getAnimationKeyFrames(Object obj, float[] fArr) {
        if (this.mMotionLayout.mScene == null) {
            return -1;
        }
        int duration = this.mMotionLayout.mScene.getDuration() / 16;
        MotionController motionController = this.mMotionLayout.mFrameArrayList.get(obj);
        if (motionController == null) {
            return 0;
        }
        motionController.buildKeyFrames(fArr, null);
        return duration;
    }

    public int getAnimationPath(Object obj, float[] fArr, int i) {
        if (this.mMotionLayout.mScene == null) {
            return -1;
        }
        MotionController motionController = this.mMotionLayout.mFrameArrayList.get(obj);
        if (motionController == null) {
            return 0;
        }
        motionController.buildPath(fArr, i);
        return i;
    }

    public void getAnimationRectangles(Object obj, float[] fArr) {
        if (this.mMotionLayout.mScene == null) {
            return;
        }
        int duration = this.mMotionLayout.mScene.getDuration() / 16;
        MotionController motionController = this.mMotionLayout.mFrameArrayList.get(obj);
        if (motionController != null) {
            motionController.buildRectangles(fArr, duration);
        }
    }

    public String getEndState() {
        int endState = this.mMotionLayout.getEndState();
        if (this.mLastEndStateId == endState) {
            return this.mLastEndState;
        }
        String constraintSetNames = this.mMotionLayout.getConstraintSetNames(endState);
        if (constraintSetNames == null) {
            return constraintSetNames;
        }
        this.mLastEndState = constraintSetNames;
        this.mLastEndStateId = endState;
        return constraintSetNames;
    }

    public int getKeyFrameInfo(Object obj, int i, int[] iArr) {
        MotionController motionController = this.mMotionLayout.mFrameArrayList.get((View) obj);
        if (motionController == null) {
            return 0;
        }
        return motionController.getKeyFrameInfo(i, iArr);
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public float getKeyFramePosition(Object obj, int i, float f, float f2) {
        MotionController motionController;
        if ((obj instanceof View) && (motionController = this.mMotionLayout.mFrameArrayList.get((View) obj)) != null) {
            return motionController.getKeyFrameParameter(i, f, f2);
        }
        return 0.0f;
    }

    public int getKeyFramePositions(Object obj, int[] iArr, float[] fArr) {
        MotionController motionController = this.mMotionLayout.mFrameArrayList.get((View) obj);
        if (motionController == null) {
            return 0;
        }
        return motionController.getKeyFramePositions(iArr, fArr);
    }

    public Object getKeyframe(int i, int i2, int i3) {
        if (this.mMotionLayout.mScene == null) {
            return null;
        }
        return this.mMotionLayout.mScene.getKeyFrame(this.mMotionLayout.getContext(), i, i2, i3);
    }

    public Object getKeyframe(Object obj, int i, int i2) {
        if (this.mMotionLayout.mScene == null) {
            return null;
        }
        return this.mMotionLayout.mScene.getKeyFrame(this.mMotionLayout.getContext(), i, ((View) obj).getId(), i2);
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public Object getKeyframeAtLocation(Object obj, float f, float f2) {
        MotionController motionController;
        View view = (View) obj;
        if (this.mMotionLayout.mScene == null) {
            return -1;
        }
        if (view != null && (motionController = this.mMotionLayout.mFrameArrayList.get(view)) != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            return motionController.getPositionKeyframe(viewGroup.getWidth(), viewGroup.getHeight(), f, f2);
        }
        return null;
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public Boolean getPositionKeyframe(Object obj, Object obj2, float f, float f2, String[] strArr, float[] fArr) {
        if (!(obj instanceof KeyPositionBase)) {
            return false;
        }
        this.mMotionLayout.mFrameArrayList.get((View) obj2).positionKeyframe((View) obj2, (KeyPositionBase) obj, f, f2, strArr, fArr);
        this.mMotionLayout.rebuildScene();
        this.mMotionLayout.mInTransition = true;
        return true;
    }

    public float getProgress() {
        return this.mMotionLayout.getProgress();
    }

    public String getStartState() {
        int startState = this.mMotionLayout.getStartState();
        if (this.mLastStartStateId == startState) {
            return this.mLastStartState;
        }
        String constraintSetNames = this.mMotionLayout.getConstraintSetNames(startState);
        if (constraintSetNames != null) {
            this.mLastStartState = constraintSetNames;
            this.mLastStartStateId = startState;
        }
        return this.mMotionLayout.getConstraintSetNames(startState);
    }

    public String getState() {
        if (this.mLastStartState != null && this.mLastEndState != null) {
            float progress = getProgress();
            if (progress <= 0.01f) {
                return this.mLastStartState;
            }
            if (progress >= 1.0f - 0.01f) {
                return this.mLastEndState;
            }
        }
        return this.mLastStartState;
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public long getTransitionTimeMs() {
        return this.mMotionLayout.getTransitionTimeMs();
    }

    public boolean isInTransition() {
        return (this.mLastStartState == null || this.mLastEndState == null) ? false : true;
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public void setAttributes(int i, String str, Object obj, Object obj2) {
        View view = (View) obj;
        HashMap map = (HashMap) obj2;
        int iLookUpConstraintId = this.mMotionLayout.lookUpConstraintId(str);
        ConstraintSet constraintSet = this.mMotionLayout.mScene.getConstraintSet(iLookUpConstraintId);
        if (constraintSet == null) {
            return;
        }
        constraintSet.clear(view.getId());
        SetDimensions(i, constraintSet, view, map, 0);
        SetDimensions(i, constraintSet, view, map, 1);
        Connect(i, constraintSet, view, map, 6, 6);
        Connect(i, constraintSet, view, map, 6, 7);
        Connect(i, constraintSet, view, map, 7, 7);
        Connect(i, constraintSet, view, map, 7, 6);
        Connect(i, constraintSet, view, map, 1, 1);
        Connect(i, constraintSet, view, map, 1, 2);
        Connect(i, constraintSet, view, map, 2, 2);
        Connect(i, constraintSet, view, map, 2, 1);
        Connect(i, constraintSet, view, map, 3, 3);
        Connect(i, constraintSet, view, map, 3, 4);
        Connect(i, constraintSet, view, map, 4, 3);
        Connect(i, constraintSet, view, map, 4, 4);
        Connect(i, constraintSet, view, map, 5, 5);
        SetBias(constraintSet, view, map, 0);
        SetBias(constraintSet, view, map, 1);
        SetAbsolutePositions(i, constraintSet, view, map);
        this.mMotionLayout.updateState(iLookUpConstraintId, constraintSet);
        this.mMotionLayout.requestLayout();
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public void setKeyFrame(Object obj, int i, String str, Object obj2) {
        if (this.mMotionLayout.mScene != null) {
            this.mMotionLayout.mScene.setKeyframe((View) obj, i, str, obj2);
            this.mMotionLayout.mTransitionGoalPosition = i / 100.0f;
            this.mMotionLayout.mTransitionLastPosition = 0.0f;
            this.mMotionLayout.rebuildScene();
            this.mMotionLayout.evaluate(true);
        }
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public boolean setKeyFramePosition(Object obj, int i, int i2, float f, float f2) {
        if ((obj instanceof View) && this.mMotionLayout.mScene != null) {
            MotionController motionController = this.mMotionLayout.mFrameArrayList.get(obj);
            int i3 = (int) (this.mMotionLayout.mTransitionPosition * 100.0f);
            if (motionController != null && this.mMotionLayout.mScene.hasKeyFramePosition((View) obj, i3)) {
                float keyFrameParameter = motionController.getKeyFrameParameter(2, f, f2);
                float keyFrameParameter2 = motionController.getKeyFrameParameter(5, f, f2);
                this.mMotionLayout.mScene.setKeyframe((View) obj, i3, NPStringFog.decode(new byte[]{88, 11, 67, 95, 86, 94, 15, 20, 82, 68, 90, 85, 91, 16, 111}, "5d7690", -1.388245858E9d), Float.valueOf(keyFrameParameter));
                this.mMotionLayout.mScene.setKeyframe((View) obj, i3, NPStringFog.decode(new byte[]{90, 88, 66, 92, 12, 94, 13, 71, 83, 71, 0, 85, 89, 67, 111}, "7765c0", -18737), Float.valueOf(keyFrameParameter2));
                this.mMotionLayout.rebuildScene();
                this.mMotionLayout.evaluate(true);
                this.mMotionLayout.invalidate();
                return true;
            }
        }
        return false;
    }

    public void setKeyframe(Object obj, String str, Object obj2) {
        if (obj instanceof Key) {
            ((Key) obj).setValue(str, obj2);
            this.mMotionLayout.rebuildScene();
            this.mMotionLayout.mInTransition = true;
        }
    }

    public void setState(String str) {
        if (str == null) {
            str = NPStringFog.decode(new byte[]{90, 88, 21, 13, 13, 10, 104, 85, 0, 23, 7}, "77adbd", -3.42571025E8d);
        }
        if (this.mLastStartState == str) {
            return;
        }
        this.mLastStartState = str;
        this.mLastEndState = null;
        if (this.mMotionLayout.mScene == null) {
            this.mMotionLayout.mScene = this.mSceneCache;
        }
        int iLookUpConstraintId = this.mMotionLayout.lookUpConstraintId(str);
        this.mLastStartStateId = iLookUpConstraintId;
        if (iLookUpConstraintId != 0) {
            if (iLookUpConstraintId == this.mMotionLayout.getStartState()) {
                this.mMotionLayout.setProgress(0.0f);
            } else if (iLookUpConstraintId == this.mMotionLayout.getEndState()) {
                this.mMotionLayout.setProgress(1.0f);
            } else {
                this.mMotionLayout.transitionToState(iLookUpConstraintId);
                this.mMotionLayout.setProgress(1.0f);
            }
        }
        this.mMotionLayout.requestLayout();
    }

    @Override // androidx.constraintlayout.motion.widget.ProxyInterface
    public void setToolPosition(float f) {
        if (this.mMotionLayout.mScene == null) {
            this.mMotionLayout.mScene = this.mSceneCache;
        }
        this.mMotionLayout.setProgress(f);
        this.mMotionLayout.evaluate(true);
        this.mMotionLayout.requestLayout();
        this.mMotionLayout.invalidate();
    }

    public void setTransition(String str, String str2) {
        if (this.mMotionLayout.mScene == null) {
            this.mMotionLayout.mScene = this.mSceneCache;
        }
        int iLookUpConstraintId = this.mMotionLayout.lookUpConstraintId(str);
        int iLookUpConstraintId2 = this.mMotionLayout.lookUpConstraintId(str2);
        this.mMotionLayout.setTransition(iLookUpConstraintId, iLookUpConstraintId2);
        this.mLastStartStateId = iLookUpConstraintId;
        this.mLastEndStateId = iLookUpConstraintId2;
        this.mLastStartState = str;
        this.mLastEndState = str2;
    }

    public void setViewDebug(Object obj, int i) {
        MotionController motionController;
        if ((obj instanceof View) && (motionController = this.mMotionLayout.mFrameArrayList.get(obj)) != null) {
            motionController.setDrawPath(i);
            this.mMotionLayout.invalidate();
        }
    }
}

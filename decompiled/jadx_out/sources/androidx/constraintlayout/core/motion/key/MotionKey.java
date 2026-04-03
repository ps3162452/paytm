package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.HashMap;
import java.util.HashSet;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public abstract class MotionKey implements TypedValues {
    public HashMap<String, CustomVariable> mCustom;
    public int mFramePosition;
    int mTargetId;
    String mTargetString;
    public int mType;
    public static final String ALPHA = NPStringFog.decode(new byte[]{2, 95, 20, 89, 85}, "c3d14f", false);
    public static final String CUSTOM = NPStringFog.decode(new byte[]{33, 109, 103, 96, 121, 40}, "b8446e", -5.272298E8f);
    public static final String ELEVATION = NPStringFog.decode(new byte[]{92, 15, 6, 65, 84, 70, 80, 12, 13}, "9cc752", false);
    public static final String ROTATION = NPStringFog.decode(new byte[]{67, 95, 17, 89, 70, 13, 94, 94, 63}, "10e82d", 1135675608L);
    public static final String ROTATION_X = NPStringFog.decode(new byte[]{66, 87, 18, 5, 22, 11, 95, 86, 62}, "08fdbb", -718332841L);
    public static final String SCALE_X = NPStringFog.decode(new byte[]{69, 90, 7, 93, 86, 58}, "69f13b", 1.304801439E9d);
    public static final String SCALE_Y = NPStringFog.decode(new byte[]{68, 91, 85, 92, 83, 105}, "784060", true, true);
    public static final String TRANSITION_PATH_ROTATE = NPStringFog.decode(new byte[]{68, 75, 80, 90, 68, 93, 68, 80, 94, 90, 103, 85, 68, 81, 99, 91, 67, 85, 68, 92}, "091474", 1.8646797E9f);
    public static final String TRANSLATION_X = NPStringFog.decode(new byte[]{18, 20, 88, 8, 21, 85, 7, 18, 80, 9, 8, 97}, "ff9ff9", 15437);
    public static final String TRANSLATION_Y = NPStringFog.decode(new byte[]{18, 68, 81, 91, 22, 94, 7, 66, 89, 90, 11, 107}, "f605e2", -1.075640531E9d);
    public static final String VISIBILITY = NPStringFog.decode(new byte[]{18, 12, 69, 91, 7, 8, 8, 12, 66, 75}, "de62ea", false);
    public static int UNSET = -1;

    public MotionKey() {
        int i = UNSET;
        this.mFramePosition = i;
        this.mTargetId = i;
        this.mTargetString = null;
    }

    public abstract void addValues(HashMap<String, SplineSet> map);

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public abstract MotionKey mo2clone();

    public MotionKey copy(MotionKey motionKey) {
        this.mFramePosition = motionKey.mFramePosition;
        this.mTargetId = motionKey.mTargetId;
        this.mTargetString = motionKey.mTargetString;
        this.mType = motionKey.mType;
        return this;
    }

    public abstract void getAttributeNames(HashSet<String> hashSet);

    public int getFramePosition() {
        return this.mFramePosition;
    }

    boolean matches(String str) {
        String str2 = this.mTargetString;
        if (str2 == null || str == null) {
            return false;
        }
        return str.matches(str2);
    }

    public void setCustomAttribute(String str, int i, float f) {
        this.mCustom.put(str, new CustomVariable(str, i, f));
    }

    public void setCustomAttribute(String str, int i, int i2) {
        this.mCustom.put(str, new CustomVariable(str, i, i2));
    }

    public void setCustomAttribute(String str, int i, String str2) {
        this.mCustom.put(str, new CustomVariable(str, i, str2));
    }

    public void setCustomAttribute(String str, int i, boolean z) {
        this.mCustom.put(str, new CustomVariable(str, i, z));
    }

    public void setFramePosition(int i) {
        this.mFramePosition = i;
    }

    public void setInterpolation(HashMap<String, Integer> map) {
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, float f) {
        return false;
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, int i2) {
        switch (i) {
            case 100:
                this.mFramePosition = i2;
                return true;
            default:
                return false;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, String str) {
        switch (i) {
            case 101:
                this.mTargetString = str;
                return true;
            default:
                return false;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i, boolean z) {
        return false;
    }

    public MotionKey setViewId(int i) {
        this.mTargetId = i;
        return this;
    }

    boolean toBoolean(Object obj) {
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : Boolean.parseBoolean(obj.toString());
    }

    float toFloat(Object obj) {
        return obj instanceof Float ? ((Float) obj).floatValue() : Float.parseFloat(obj.toString());
    }

    int toInt(Object obj) {
        return obj instanceof Integer ? ((Integer) obj).intValue() : Integer.parseInt(obj.toString());
    }
}

package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.HashMap;
import java.util.HashSet;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public abstract class Key {
    HashMap<String, ConstraintAttribute> mCustomConstraints;
    int mFramePosition;
    int mTargetId;
    String mTargetString;
    protected int mType;
    public static final String ALPHA = NPStringFog.decode(new byte[]{88, 95, 71, 91, 85}, "93734f", true);
    public static final String CURVEFIT = NPStringFog.decode(new byte[]{5, 19, 19, 79, 6, 39, 15, 18}, "ffa9ca", -1.317461946E9d);
    public static final String CUSTOM = NPStringFog.decode(new byte[]{123, 109, 102, 97, 120, 44}, "88557a", false, true);
    public static final String ELEVATION = NPStringFog.decode(new byte[]{83, 91, 84, 23, 3, 77, 95, 88, 95}, "671ab9", true);
    public static final String MOTIONPROGRESS = NPStringFog.decode(new byte[]{95, 14, 21, 12, 12, 15, 98, 19, 14, 2, 17, 4, 65, 18}, "2aaeca", -4859);
    public static final String PIVOT_X = NPStringFog.decode(new byte[]{21, 64, 0, 8, 74, 7, 14, 64, 12, 54, 80, 23, 14, 70, 57}, "a2af9a", -22403);
    public static final String PIVOT_Y = NPStringFog.decode(new byte[]{67, 22, 4, 93, 67, 4, 88, 22, 8, 99, 89, 20, 88, 16, 60}, "7de30b", 1.05170822E8d);
    public static final String PROGRESS = NPStringFog.decode(new byte[]{65, 23, 92, 3, 69, 0, 66, 22}, "1e3d7e", true);
    public static final String ROTATION = NPStringFog.decode(new byte[]{66, 9, 23, 81, 18, 91, 95, 8}, "0fc0f2", 2108186397L);
    public static final String ROTATION_X = NPStringFog.decode(new byte[]{67, 89, 66, 81, 22, 88, 94, 88, 110}, "1660b1", 1.727395E9f);
    public static final String ROTATION_Y = NPStringFog.decode(new byte[]{20, 86, 17, 2, 66, 95, 9, 87, 60}, "f9ec66", -2055675646L);
    public static final String SCALE_X = NPStringFog.decode(new byte[]{75, 91, 0, 91, 92, 106}, "88a792", 3.4316746E8f);
    public static final String SCALE_Y = NPStringFog.decode(new byte[]{18, 81, 84, 9, 83, 104}, "a25e61", 27751);
    public static final String TRANSITIONEASING = NPStringFog.decode(new byte[]{21, 20, 83, 86, 69, 89, 21, 15, 93, 86, 115, 81, 18, 15, 92, 95}, "af2860", 3.36314526E8d);
    public static final String TRANSITION_PATH_ROTATE = NPStringFog.decode(new byte[]{69, 69, 4, 91, 69, 11, 69, 94, 10, 91, 102, 3, 69, 95, 55, 90, 66, 3, 69, 82}, "17e56b", -3.66188516E8d);
    public static final String TRANSLATION_X = NPStringFog.decode(new byte[]{23, 66, 5, 12, 66, 9, 2, 68, 13, 13, 95, 61}, "c0db1e", -5.788039E8f);
    public static final String TRANSLATION_Y = NPStringFog.decode(new byte[]{65, 71, 7, 15, 18, 9, 84, 65, 15, 14, 15, 60}, "55faae", -1514926634L);
    public static final String TRANSLATION_Z = NPStringFog.decode(new byte[]{22, 74, 85, 15, 69, 9, 3, 76, 93, 14, 88, 63}, "b84a6e", -6.13106E7f);
    public static final String VISIBILITY = NPStringFog.decode(new byte[]{67, 92, 67, 10, 84, 8, 89, 92, 68, 26}, "550c6a", -3.4368715E8d);
    public static final String WAVE_OFFSET = NPStringFog.decode(new byte[]{19, 0, 19, 93, 118, 5, 2, 18, 0, 76}, "dae89c", 22393);
    public static final String WAVE_PERIOD = NPStringFog.decode(new byte[]{21, 83, 68, 83, 105, 6, 16, 91, 93, 82}, "b2269c", 2.7001962E8f);
    public static final String WAVE_PHASE = NPStringFog.decode(new byte[]{78, 83, 23, 7, 49, 11, 88, 65, 4}, "92abac", 196915580L);
    public static final String WAVE_VARIES_BY = NPStringFog.decode(new byte[]{17, 84, 79, 80, 100, 83, 20, 92, 92, 70, 112, 75}, "f59522", false, true);
    public static int UNSET = -1;

    public Key() {
        int i = UNSET;
        this.mFramePosition = i;
        this.mTargetId = i;
        this.mTargetString = null;
    }

    public abstract void addValues(HashMap<String, ViewSpline> map);

    @Override // 
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public abstract Key mo3clone();

    public Key copy(Key key) {
        this.mFramePosition = key.mFramePosition;
        this.mTargetId = key.mTargetId;
        this.mTargetString = key.mTargetString;
        this.mType = key.mType;
        this.mCustomConstraints = key.mCustomConstraints;
        return this;
    }

    abstract void getAttributeNames(HashSet<String> hashSet);

    public int getFramePosition() {
        return this.mFramePosition;
    }

    abstract void load(Context context, AttributeSet attributeSet);

    boolean matches(String str) {
        String str2 = this.mTargetString;
        if (str2 == null || str == null) {
            return false;
        }
        return str.matches(str2);
    }

    public void setFramePosition(int i) {
        this.mFramePosition = i;
    }

    public void setInterpolation(HashMap<String, Integer> map) {
    }

    public abstract void setValue(String str, Object obj);

    public Key setViewId(int i) {
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

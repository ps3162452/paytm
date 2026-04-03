package androidx.constraintlayout.motion.utils;

import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public abstract class ViewOscillator extends KeyCycleOscillator {
    private static final String TAG = NPStringFog.decode(new byte[]{48, 88, 87, 68, 41, 70, 5, 88, 94, 95, 7, 65, 9, 67}, "f123f5", true);

    static class AlphaSet extends ViewOscillator {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
            view.setAlpha(get(f));
        }
    }

    static class CustomSet extends ViewOscillator {
        protected ConstraintAttribute mCustom;
        float[] value = new float[1];

        CustomSet() {
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        protected void setCustom(Object obj) {
            this.mCustom = (ConstraintAttribute) obj;
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
            this.value[0] = get(f);
            this.mCustom.setInterpolatedValue(view, this.value);
        }
    }

    static class ElevationSet extends ViewOscillator {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(get(f));
            }
        }
    }

    public static class PathRotateSet extends ViewOscillator {
        public void setPathRotate(View view, float f, double d, double d2) {
            view.setRotation(get(f) + ((float) Math.toDegrees(Math.atan2(d2, d))));
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
        }
    }

    static class ProgressSet extends ViewOscillator {
        boolean mNoMethod = false;

        ProgressSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(f));
                return;
            }
            if (this.mNoMethod) {
                return;
            }
            Method method = null;
            try {
                method = view.getClass().getMethod(NPStringFog.decode(new byte[]{69, 92, 16, 53, 75, 87, 81, 75, 1, 22, 74}, "69de98", 1.89597855E8d), Float.TYPE);
            } catch (NoSuchMethodException e) {
                this.mNoMethod = true;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(get(f)));
                } catch (IllegalAccessException e2) {
                    Log.e(NPStringFog.decode(new byte[]{53, 90, 0, 21, 126, 16, 0, 90, 9, 14, 80, 23, 12, 65}, "c3eb1c", 1339452655L), NPStringFog.decode(new byte[]{19, 94, 89, 85, 14, 82, 70, 68, 87, 23, 17, 82, 18, 96, 74, 88, 5, 69, 3, 67, 75}, "f087b7", 2075421661L), e2);
                } catch (InvocationTargetException e3) {
                    Log.e(NPStringFog.decode(new byte[]{51, 94, 92, 64, 118, 64, 6, 94, 85, 91, 88, 71, 10, 69}, "e79793", false, false), NPStringFog.decode(new byte[]{20, 13, 88, 81, 9, 6, 65, 23, 86, 19, 22, 6, 21, 51, 75, 92, 2, 17, 4, 16, 74}, "ac93ec", -1.569002335E9d), e3);
                }
            }
        }
    }

    static class RotationSet extends ViewOscillator {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
            view.setRotation(get(f));
        }
    }

    static class RotationXset extends ViewOscillator {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
            view.setRotationX(get(f));
        }
    }

    static class RotationYset extends ViewOscillator {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
            view.setRotationY(get(f));
        }
    }

    static class ScaleXset extends ViewOscillator {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
            view.setScaleX(get(f));
        }
    }

    static class ScaleYset extends ViewOscillator {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
            view.setScaleY(get(f));
        }
    }

    static class TranslationXset extends ViewOscillator {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
            view.setTranslationX(get(f));
        }
    }

    static class TranslationYset extends ViewOscillator {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
            view.setTranslationY(get(f));
        }
    }

    static class TranslationZset extends ViewOscillator {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewOscillator
        public void setProperty(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(get(f));
            }
        }
    }

    public static ViewOscillator makeSpline(String str) {
        if (str.startsWith(NPStringFog.decode(new byte[]{38, 49, 48, 102, 119, 116}, "edc289", 3.77252277E8d))) {
            return new CustomSet();
        }
        byte b = -1;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals(NPStringFog.decode(new byte[]{71, 95, 22, 89, 76, 95, 90, 94, 58}, "50b886", -1498836559L))) {
                    b = 3;
                }
                break;
            case -1249320805:
                if (str.equals(NPStringFog.decode(new byte[]{19, 86, 21, 83, 16, 8, 14, 87, 56}, "a9a2da", true, false))) {
                    b = 4;
                }
                break;
            case -1225497657:
                if (str.equals(NPStringFog.decode(new byte[]{69, 68, 87, 13, 70, 13, 80, 66, 95, 12, 91, 57}, "166c5a", -541199768L))) {
                    b = 10;
                }
                break;
            case -1225497656:
                if (str.equals(NPStringFog.decode(new byte[]{23, 68, 4, 86, 69, 93, 2, 66, 12, 87, 88, 104}, "c6e861", -3386))) {
                    b = 11;
                }
                break;
            case -1225497655:
                if (str.equals(NPStringFog.decode(new byte[]{71, 75, 85, 93, 67, 9, 82, 77, 93, 92, 94, 63}, "39430e", -24637))) {
                    b = 12;
                }
                break;
            case -1001078227:
                if (str.equals(NPStringFog.decode(new byte[]{68, 19, 92, 80, 70, 86, 71, 18}, "4a3743", true, false))) {
                    b = 13;
                }
                break;
            case -908189618:
                if (str.equals(NPStringFog.decode(new byte[]{65, 83, 86, 88, 0, 61}, "2074ee", -909542689L))) {
                    b = 6;
                }
                break;
            case -908189617:
                if (str.equals(NPStringFog.decode(new byte[]{74, 81, 7, 95, 86, 110}, "92f337", true))) {
                    b = 7;
                }
                break;
            case -797520672:
                if (str.equals(NPStringFog.decode(new byte[]{66, 86, 19, 81, 103, 3, 71, 94, 0, 71, 115, 27}, "57e41b", true))) {
                    b = 9;
                }
                break;
            case -40300674:
                if (str.equals(NPStringFog.decode(new byte[]{68, 91, 76, 0, 22, 90, 89, 90}, "648ab3", -1.2655154E9f))) {
                    b = 2;
                }
                break;
            case -4379043:
                if (str.equals(NPStringFog.decode(new byte[]{93, 94, 85, 64, 84, 69, 81, 93, 94}, "820651", 2.129166925E9d))) {
                    b = 1;
                }
                break;
            case 37232917:
                if (str.equals(NPStringFog.decode(new byte[]{16, 66, 7, 86, 67, 81, 16, 89, 9, 86, 96, 89, 16, 88, 52, 87, 68, 89, 16, 85}, "d0f808", -10053))) {
                    b = 5;
                }
                break;
            case 92909918:
                if (str.equals(NPStringFog.decode(new byte[]{3, 91, 64, 92, 5}, "b704de", false))) {
                    b = 0;
                }
                break;
            case 156108012:
                if (str.equals(NPStringFog.decode(new byte[]{18, 7, 65, 7, 42, 87, 3, 21, 82, 22}, "ef7be1", true, false))) {
                    b = 8;
                }
                break;
        }
        switch (b) {
            case 0:
                return new AlphaSet();
            case 1:
                return new ElevationSet();
            case 2:
                return new RotationSet();
            case 3:
                return new RotationXset();
            case 4:
                return new RotationYset();
            case 5:
                return new PathRotateSet();
            case 6:
                return new ScaleXset();
            case 7:
                return new ScaleYset();
            case 8:
                return new AlphaSet();
            case 9:
                return new AlphaSet();
            case 10:
                return new TranslationXset();
            case 11:
                return new TranslationYset();
            case 12:
                return new TranslationZset();
            case 13:
                return new ProgressSet();
            default:
                return null;
        }
    }

    public abstract void setProperty(View view, float f);
}

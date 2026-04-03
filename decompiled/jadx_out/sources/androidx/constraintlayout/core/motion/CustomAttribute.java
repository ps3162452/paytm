package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.utils.Utils;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class CustomAttribute {
    private static final String TAG = NPStringFog.decode(new byte[]{96, 67, 89, 15, 64, 81, 64, 88, 87, 15, 127, 89, 77, 94, 77, 21}, "418a38", 6.827964E7f);
    boolean mBooleanValue;
    private int mColorValue;
    private float mFloatValue;
    private int mIntegerValue;
    private boolean mMethod;
    String mName;
    private String mStringValue;
    private AttributeType mType;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.motion.CustomAttribute$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType;

        static {
            int[] iArr = new int[AttributeType.values().length];
            $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType = iArr;
            try {
                iArr[AttributeType.REFERENCE_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.BOOLEAN_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.STRING_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.COLOR_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.INT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.FLOAT_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.DIMENSION_TYPE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    public enum AttributeType {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE,
        REFERENCE_TYPE
    }

    public CustomAttribute(CustomAttribute customAttribute, Object obj) {
        this.mMethod = false;
        this.mName = customAttribute.mName;
        this.mType = customAttribute.mType;
        setValue(obj);
    }

    public CustomAttribute(String str, AttributeType attributeType) {
        this.mMethod = false;
        this.mName = str;
        this.mType = attributeType;
    }

    public CustomAttribute(String str, AttributeType attributeType, Object obj, boolean z) {
        this.mMethod = false;
        this.mName = str;
        this.mType = attributeType;
        this.mMethod = z;
        setValue(obj);
    }

    private static int clamp(int i) {
        int i2 = (((i >> 31) ^ (-1)) & i) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    public static HashMap<String, CustomAttribute> extractAttributes(HashMap<String, CustomAttribute> map, Object obj) {
        HashMap<String, CustomAttribute> map2 = new HashMap<>();
        Class<?> cls = obj.getClass();
        for (String str : map.keySet()) {
            try {
                map2.put(str, new CustomAttribute(map.get(str), cls.getMethod(NPStringFog.decode(new byte[]{86, 86, 21, 123, 83, 18}, "13a62b", true, false) + str, new Class[0]).invoke(obj, new Object[0])));
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
        return map2;
    }

    public static int hsvToRgb(float f, float f2, float f3) {
        int i = (int) (f * 6.0f);
        float f4 = (6.0f * f) - i;
        int i2 = (int) ((f3 * 255.0f * (1.0f - f2)) + 0.5f);
        int i3 = (int) ((f3 * 255.0f * (1.0f - (f4 * f2))) + 0.5f);
        int i4 = (int) (((1.0f - ((1.0f - f4) * f2)) * f3 * 255.0f) + 0.5f);
        int i5 = (int) ((255.0f * f3) + 0.5f);
        switch (i) {
            case 0:
                return ((i5 << 16) + (i4 << 8) + i2) | ViewCompat.MEASURED_STATE_MASK;
            case 1:
                return ((i3 << 16) + (i5 << 8) + i2) | ViewCompat.MEASURED_STATE_MASK;
            case 2:
                return ((i2 << 16) + (i5 << 8) + i4) | ViewCompat.MEASURED_STATE_MASK;
            case 3:
                return ((i2 << 16) + (i3 << 8) + i5) | ViewCompat.MEASURED_STATE_MASK;
            case 4:
                return ((i4 << 16) + (i2 << 8) + i5) | ViewCompat.MEASURED_STATE_MASK;
            case 5:
                return ((i5 << 16) + (i2 << 8) + i3) | ViewCompat.MEASURED_STATE_MASK;
            default:
                return 0;
        }
    }

    public static void setAttributes(Object obj, HashMap<String, CustomAttribute> map) {
        Class<?> cls = obj.getClass();
        for (String str : map.keySet()) {
            CustomAttribute customAttribute = map.get(str);
            String str2 = customAttribute.mMethod ? str : NPStringFog.decode(new byte[]{21, 82, 23}, "f7c846", -3.29235392E8d) + str;
            try {
                switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[customAttribute.mType.ordinal()]) {
                    case 1:
                        cls.getMethod(str2, Integer.TYPE).invoke(obj, Integer.valueOf(customAttribute.mIntegerValue));
                        break;
                    case 2:
                        cls.getMethod(str2, Boolean.TYPE).invoke(obj, Boolean.valueOf(customAttribute.mBooleanValue));
                        break;
                    case 3:
                        cls.getMethod(str2, CharSequence.class).invoke(obj, customAttribute.mStringValue);
                        break;
                    case 4:
                        cls.getMethod(str2, Integer.TYPE).invoke(obj, Integer.valueOf(customAttribute.mColorValue));
                        break;
                    case 6:
                        cls.getMethod(str2, Integer.TYPE).invoke(obj, Integer.valueOf(customAttribute.mIntegerValue));
                        break;
                    case 7:
                        cls.getMethod(str2, Float.TYPE).invoke(obj, Float.valueOf(customAttribute.mFloatValue));
                        break;
                    case 8:
                        cls.getMethod(str2, Float.TYPE).invoke(obj, Float.valueOf(customAttribute.mFloatValue));
                        break;
                }
            } catch (IllegalAccessException e) {
                Utils.loge(TAG, NPStringFog.decode(new byte[]{23, 39, 71, 17, 71, 13, 90, 68, 115, 22, 71, 16, 94, 6, 71, 22, 86, 66, 21}, "7d2b3b", 1.71471704E9d) + str + NPStringFog.decode(new byte[]{17, 25, 93, 93, 21, 21, 85, 86, 70, 92, 5, 21, 92, 87, 19}, "3932a5", false, true) + cls.getName());
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                Utils.loge(TAG, e2.getMessage());
                Utils.loge(TAG, NPStringFog.decode(new byte[]{16, 34, 76, 68, 68, 10, 93, 65, 120, 67, 68, 23, 89, 3, 76, 67, 85, 69, 18}, "0a970e", true, false) + str + NPStringFog.decode(new byte[]{70, 25, 93, 94, 69, 25, 2, 86, 70, 95, 85, 25, 11, 87, 19}, "d93119", -1089854093L) + cls.getName());
                StringBuilder sb = new StringBuilder();
                sb.append(cls.getName());
                sb.append(NPStringFog.decode(new byte[]{17, 85, 22, 74, 16, 66, 89, 89, 21, 92, 68, 3, 17, 85, 6, 77, 12, 13, 85, 24}, "18c9db", 348496375L));
                sb.append(str2);
                Utils.loge(TAG, sb.toString());
            } catch (InvocationTargetException e3) {
                Utils.loge(TAG, NPStringFog.decode(new byte[]{68, 118, 70, 75, 23, 86, 9, 21, 114, 76, 23, 75, 13, 87, 70, 76, 6, 25, 70}, "d538c9", 28728) + str + NPStringFog.decode(new byte[]{64, 17, 15, 89, 65, 70, 4, 94, 20, 88, 81, 70, 13, 95, 65}, "b1a65f", false, false) + cls.getName());
                e3.printStackTrace();
            }
        }
    }

    public void applyCustom(Object obj) {
        String str;
        Class<?> cls = obj.getClass();
        String str2 = this.mName;
        if (this.mMethod) {
            str = str2;
        } else {
            str = NPStringFog.decode(new byte[]{75, 92, 21}, "89a4bb", 1387) + str2;
        }
        try {
            switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
                case 1:
                case 6:
                    cls.getMethod(str, Integer.TYPE).invoke(obj, Integer.valueOf(this.mIntegerValue));
                    break;
                case 2:
                    cls.getMethod(str, Boolean.TYPE).invoke(obj, Boolean.valueOf(this.mBooleanValue));
                    break;
                case 3:
                    cls.getMethod(str, CharSequence.class).invoke(obj, this.mStringValue);
                    break;
                case 4:
                    cls.getMethod(str, Integer.TYPE).invoke(obj, Integer.valueOf(this.mColorValue));
                    break;
                case 7:
                    cls.getMethod(str, Float.TYPE).invoke(obj, Float.valueOf(this.mFloatValue));
                    break;
                case 8:
                    cls.getMethod(str, Float.TYPE).invoke(obj, Float.valueOf(this.mFloatValue));
                    break;
            }
        } catch (IllegalAccessException e) {
            Utils.loge(TAG, NPStringFog.decode(new byte[]{22, 112, 67, 18, 68, 86, 91, 19, 119, 21, 68, 75, 95, 81, 67, 21, 85, 25, 20}, "636a09", true) + str2 + NPStringFog.decode(new byte[]{21, 67, 15, 94, 17, 65, 81, 12, 20, 95, 1, 65, 88, 13, 65}, "7ca1ea", 1.215902E9f) + cls.getName());
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            Utils.loge(TAG, e2.getMessage());
            Utils.loge(TAG, NPStringFog.decode(new byte[]{25, 34, 17, 21, 17, 87, 84, 65, 37, 18, 17, 74, 80, 3, 17, 18, 0, 24, 27}, "9adfe8", true) + str2 + NPStringFog.decode(new byte[]{26, 21, 11, 14, 69, 69, 94, 90, 16, 15, 85, 69, 87, 91, 69}, "85ea1e", false) + cls.getName());
            StringBuilder sb = new StringBuilder();
            sb.append(cls.getName());
            sb.append(NPStringFog.decode(new byte[]{70, 85, 67, 75, 76, 68, 14, 89, 64, 93, 24, 5, 70, 85, 83, 76, 80, 11, 2, 24}, "f8688d", 8.92579674E8d));
            sb.append(str);
            Utils.loge(TAG, sb.toString());
        } catch (InvocationTargetException e3) {
            Utils.loge(TAG, NPStringFog.decode(new byte[]{66, 112, 66, 21, 69, 14, 15, 19, 118, 18, 69, 19, 11, 81, 66, 18, 84, 65, 64}, "b37f1a", 15385) + str2 + NPStringFog.decode(new byte[]{67, 22, 8, 93, 23, 70, 7, 89, 19, 92, 7, 70, 14, 88, 70}, "a6f2cf", -2049365674L) + cls.getName());
            e3.printStackTrace();
        }
    }

    public boolean diff(CustomAttribute customAttribute) {
        if (customAttribute == null || this.mType != customAttribute.mType) {
            return false;
        }
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 1:
            case 6:
                if (this.mIntegerValue == customAttribute.mIntegerValue) {
                    return true;
                }
                break;
            case 2:
                if (this.mBooleanValue == customAttribute.mBooleanValue) {
                    return true;
                }
                break;
            case 3:
                if (this.mIntegerValue == customAttribute.mIntegerValue) {
                    return true;
                }
                break;
            case 4:
            case 5:
                if (this.mColorValue == customAttribute.mColorValue) {
                    return true;
                }
                break;
            case 7:
                if (this.mFloatValue == customAttribute.mFloatValue) {
                    return true;
                }
                break;
            case 8:
                if (this.mFloatValue == customAttribute.mFloatValue) {
                    return true;
                }
                break;
            default:
                return false;
        }
        return false;
    }

    public AttributeType getType() {
        return this.mType;
    }

    public float getValueToInterpolate() {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 2:
                return this.mBooleanValue ? 1.0f : 0.0f;
            case 3:
                throw new RuntimeException(NPStringFog.decode(new byte[]{33, 2, 94, 93, 93, 67, 66, 10, 94, 71, 87, 69, 18, 12, 92, 82, 70, 82, 66, 48, 68, 65, 91, 89, 5}, "bc0327", -5.1916032E7d));
            case 4:
            case 5:
                throw new RuntimeException(NPStringFog.decode(new byte[]{114, 13, 84, 14, 69, 67, 85, 13, 93, 18, 23, 13, 94, 22, 24, 9, 86, 21, 84, 66, 89, 65, 68, 10, 95, 5, 84, 4, 23, 0, 94, 14, 87, 19, 23, 23, 94, 66, 81, 15, 67, 6, 67, 18, 87, 13, 86, 23, 84}, "1b8a7c", -2013036893L));
            case 6:
                return this.mIntegerValue;
            case 7:
                return this.mFloatValue;
            case 8:
                return this.mFloatValue;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] fArr) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 2:
                fArr[0] = this.mBooleanValue ? 1.0f : 0.0f;
                return;
            case 3:
                throw new RuntimeException(NPStringFog.decode(new byte[]{113, 89, 90, 87, 17, 16, 86, 89, 83, 75, 67, 94, 93, 66, 22, 80, 2, 70, 87, 22, 87, 24, 16, 89, 92, 81, 90, 93, 67, 83, 93, 90, 89, 74, 67, 68, 93, 22, 95, 86, 23, 85, 64, 70, 89, 84, 2, 68, 87}, "2668c0", -2.1463409E9f));
            case 4:
            case 5:
                int i = this.mColorValue;
                float fPow = (float) Math.pow(((i >> 16) & 255) / 255.0f, 2.2d);
                float fPow2 = (float) Math.pow(((i >> 8) & 255) / 255.0f, 2.2d);
                float fPow3 = (float) Math.pow((i & 255) / 255.0f, 2.2d);
                fArr[0] = fPow;
                fArr[1] = fPow2;
                fArr[2] = fPow3;
                fArr[3] = ((i >> 24) & 255) / 255.0f;
                return;
            case 6:
                fArr[0] = this.mIntegerValue;
                return;
            case 7:
                fArr[0] = this.mFloatValue;
                return;
            case 8:
                fArr[0] = this.mFloatValue;
                return;
            default:
                return;
        }
    }

    public boolean isContinuous() {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return false;
            default:
                return true;
        }
    }

    public int numberOfInterpolatedValues() {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 4:
            case 5:
                return 4;
            default:
                return 1;
        }
    }

    public void setColorValue(int i) {
        this.mColorValue = i;
    }

    public void setFloatValue(float f) {
        this.mFloatValue = f;
    }

    public void setIntValue(int i) {
        this.mIntegerValue = i;
    }

    public void setInterpolatedValue(Object obj, float[] fArr) {
        Class<?> cls = obj.getClass();
        String str = NPStringFog.decode(new byte[]{75, 92, 77}, "899669", 27571) + this.mName;
        try {
            switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
                case 2:
                    cls.getMethod(str, Boolean.TYPE).invoke(obj, Boolean.valueOf(fArr[0] > 0.5f));
                    return;
                case 3:
                    throw new RuntimeException(NPStringFog.decode(new byte[]{70, 10, 86, 4, 9, 86, 19, 16, 88, 70, 12, 93, 71, 1, 69, 22, 10, 95, 82, 16, 82, 70, 22, 71, 65, 13, 89, 1, 22, 19}, "3d7fe3", true) + this.mName);
                case 4:
                    cls.getMethod(str, Integer.TYPE).invoke(obj, Integer.valueOf((clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 5:
                default:
                    return;
                case 6:
                    cls.getMethod(str, Integer.TYPE).invoke(obj, Integer.valueOf((int) fArr[0]));
                    return;
                case 7:
                    cls.getMethod(str, Float.TYPE).invoke(obj, Float.valueOf(fArr[0]));
                    return;
                case 8:
                    cls.getMethod(str, Float.TYPE).invoke(obj, Float.valueOf(fArr[0]));
                    return;
            }
        } catch (IllegalAccessException e) {
            Utils.loge(TAG, NPStringFog.decode(new byte[]{0, 80, 91, 11, 90, 68, 67, 80, 86, 6, 80, 67, 16, 17, 88, 0, 65, 88, 12, 85, 21}, "c15e50", 7.7199584E8f) + str + NPStringFog.decode(new byte[]{70, 11, 92, 17, 96, 13, 3, 19, 18, 19}, "fd216d", true, true) + obj.getClass().getName() + NPStringFog.decode(new byte[]{23}, "5d3d30", -1.3459695E9f));
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            Utils.loge(TAG, NPStringFog.decode(new byte[]{12, 13, 22, 14, 87, 22, 10, 13, 82, 67}, "bb6c2b", true, true) + str + NPStringFog.decode(new byte[]{69, 94, 89, 17, 102, 93, 0, 70, 23, 19}, "e17104", 12945) + obj.getClass().getName() + NPStringFog.decode(new byte[]{67}, "a97f71", 761225257L));
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    public void setStringValue(String str) {
        this.mStringValue = str;
    }

    public void setValue(Object obj) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 1:
            case 6:
                this.mIntegerValue = ((Integer) obj).intValue();
                break;
            case 2:
                this.mBooleanValue = ((Boolean) obj).booleanValue();
                break;
            case 3:
                this.mStringValue = (String) obj;
                break;
            case 4:
            case 5:
                this.mColorValue = ((Integer) obj).intValue();
                break;
            case 7:
                this.mFloatValue = ((Float) obj).floatValue();
                break;
            case 8:
                this.mFloatValue = ((Float) obj).floatValue();
                break;
        }
    }

    public void setValue(float[] fArr) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 1:
            case 6:
                this.mIntegerValue = (int) fArr[0];
                return;
            case 2:
                this.mBooleanValue = ((double) fArr[0]) > 0.5d;
                return;
            case 3:
                throw new RuntimeException(NPStringFog.decode(new byte[]{123, 91, 91, 11, 69, 68, 92, 91, 82, 23, 23, 10, 87, 64, 23, 12, 86, 18, 93, 20, 86, 68, 68, 13, 86, 83, 91, 1, 23, 7, 87, 88, 88, 22, 23, 16, 87, 20, 94, 10, 67, 1, 74, 68, 88, 8, 86, 16, 93}, "847d7d", true));
            case 4:
            case 5:
                int iHsvToRgb = hsvToRgb(fArr[0], fArr[1], fArr[2]);
                this.mColorValue = iHsvToRgb;
                this.mColorValue = (iHsvToRgb & ViewCompat.MEASURED_SIZE_MASK) | (clamp((int) (fArr[3] * 255.0f)) << 24);
                return;
            case 7:
                this.mFloatValue = fArr[0];
                return;
            case 8:
                this.mFloatValue = fArr[0];
                return;
            default:
                return;
        }
    }
}

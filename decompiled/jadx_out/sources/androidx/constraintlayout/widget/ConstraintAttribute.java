package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes39.dex */
public class ConstraintAttribute {
    private static final String TAG = NPStringFog.decode(new byte[]{103, 69, 89, 95, 74, 90, 71, 94, 87, 95, 117, 82, 74, 88, 77, 69}, "378193", -1423362892L);
    boolean mBooleanValue;
    private int mColorValue;
    private float mFloatValue;
    private int mIntegerValue;
    private boolean mMethod;
    String mName;
    private String mStringValue;
    private AttributeType mType;

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.ConstraintAttribute$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType;

        static {
            int[] iArr = new int[AttributeType.values().length];
            $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType = iArr;
            try {
                iArr[AttributeType.REFERENCE_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.BOOLEAN_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.STRING_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.COLOR_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.INT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.FLOAT_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.DIMENSION_TYPE.ordinal()] = 8;
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

    public ConstraintAttribute(ConstraintAttribute constraintAttribute, Object obj) {
        this.mMethod = false;
        this.mName = constraintAttribute.mName;
        this.mType = constraintAttribute.mType;
        setValue(obj);
    }

    public ConstraintAttribute(String str, AttributeType attributeType) {
        this.mMethod = false;
        this.mName = str;
        this.mType = attributeType;
    }

    public ConstraintAttribute(String str, AttributeType attributeType, Object obj, boolean z) {
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

    public static HashMap<String, ConstraintAttribute> extractAttributes(HashMap<String, ConstraintAttribute> map, View view) {
        HashMap<String, ConstraintAttribute> map2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            ConstraintAttribute constraintAttribute = map.get(str);
            try {
                if (str.equals(NPStringFog.decode(new byte[]{38, 7, 7, 93, 4, 19, 11, 19, 10, 82, 32, 14, 8, 9, 22}, "dfd6ca", 1.60720074E8d))) {
                    map2.put(str, new ConstraintAttribute(constraintAttribute, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    String strValueOf = String.valueOf(str);
                    map2.put(str, new ConstraintAttribute(constraintAttribute, cls.getMethod(strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{94, 4, 66, 126, 84, 70}, "9a6356", -767458525L).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{4, 4, 76, 116, 86, 66}, "ca8972", 1.6049494E9f)), new Class[0]).invoke(view, new Object[0])));
                }
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

    public static void parse(Context context, XmlPullParser xmlPullParser, HashMap<String, ConstraintAttribute> map) {
        boolean z;
        String string;
        Object objValueOf;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.CustomAttribute);
        String str = null;
        boolean z2 = false;
        Object obj = null;
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        int i = 0;
        AttributeType attributeType = null;
        while (i < indexCount) {
            int index = typedArrayObtainStyledAttributes.getIndex(i);
            if (index == R.styleable.CustomAttribute_attributeName) {
                String string2 = typedArrayObtainStyledAttributes.getString(index);
                if (string2 == null || string2.length() <= 0) {
                    objValueOf = obj;
                    z = z2;
                    string = string2;
                } else {
                    char upperCase = Character.toUpperCase(string2.charAt(0));
                    String strSubstring = string2.substring(1);
                    StringBuilder sb = new StringBuilder(String.valueOf(strSubstring).length() + 1);
                    sb.append(upperCase);
                    sb.append(strSubstring);
                    objValueOf = obj;
                    z = z2;
                    string = sb.toString();
                }
            } else if (index == R.styleable.CustomAttribute_methodName) {
                z = true;
                string = typedArrayObtainStyledAttributes.getString(index);
                objValueOf = obj;
            } else if (index == R.styleable.CustomAttribute_customBoolean) {
                Boolean boolValueOf = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                attributeType = AttributeType.BOOLEAN_TYPE;
                boolean z3 = z2;
                string = str;
                objValueOf = boolValueOf;
                z = z3;
            } else if (index == R.styleable.CustomAttribute_customColorValue) {
                attributeType = AttributeType.COLOR_TYPE;
                boolean z4 = z2;
                string = str;
                objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                z = z4;
            } else if (index == R.styleable.CustomAttribute_customColorDrawableValue) {
                attributeType = AttributeType.COLOR_DRAWABLE_TYPE;
                boolean z5 = z2;
                string = str;
                objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getColor(index, 0));
                z = z5;
            } else if (index == R.styleable.CustomAttribute_customPixelDimension) {
                attributeType = AttributeType.DIMENSION_TYPE;
                boolean z6 = z2;
                string = str;
                objValueOf = Float.valueOf(TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                z = z6;
            } else if (index == R.styleable.CustomAttribute_customDimension) {
                attributeType = AttributeType.DIMENSION_TYPE;
                boolean z7 = z2;
                string = str;
                objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getDimension(index, 0.0f));
                z = z7;
            } else if (index == R.styleable.CustomAttribute_customFloatValue) {
                attributeType = AttributeType.FLOAT_TYPE;
                boolean z8 = z2;
                string = str;
                objValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, Float.NaN));
                z = z8;
            } else if (index == R.styleable.CustomAttribute_customIntegerValue) {
                attributeType = AttributeType.INT_TYPE;
                boolean z9 = z2;
                string = str;
                objValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getInteger(index, -1));
                z = z9;
            } else if (index == R.styleable.CustomAttribute_customStringValue) {
                attributeType = AttributeType.STRING_TYPE;
                boolean z10 = z2;
                string = str;
                objValueOf = typedArrayObtainStyledAttributes.getString(index);
                z = z10;
            } else if (index == R.styleable.CustomAttribute_customReference) {
                AttributeType attributeType2 = AttributeType.REFERENCE_TYPE;
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                if (resourceId == -1) {
                    resourceId = typedArrayObtainStyledAttributes.getInt(index, -1);
                }
                z = z2;
                string = str;
                objValueOf = Integer.valueOf(resourceId);
                attributeType = attributeType2;
            } else {
                z = z2;
                string = str;
                objValueOf = obj;
            }
            i++;
            obj = objValueOf;
            str = string;
            z2 = z;
        }
        if (str != null && obj != null) {
            map.put(str, new ConstraintAttribute(str, attributeType, obj, z2));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void setAttributes(View view, HashMap<String, ConstraintAttribute> map) {
        String strConcat;
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            ConstraintAttribute constraintAttribute = map.get(str);
            if (constraintAttribute.mMethod) {
                strConcat = str;
            } else {
                String strValueOf = String.valueOf(str);
                strConcat = strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{18, 93, 67}, "a87a03", 1.446483E9f).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{75, 85, 17}, "80e3be", false, true));
            }
            try {
                switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[constraintAttribute.mType.ordinal()]) {
                    case 1:
                        cls.getMethod(strConcat, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.mIntegerValue));
                        break;
                    case 2:
                        cls.getMethod(strConcat, Boolean.TYPE).invoke(view, Boolean.valueOf(constraintAttribute.mBooleanValue));
                        break;
                    case 3:
                        cls.getMethod(strConcat, CharSequence.class).invoke(view, constraintAttribute.mStringValue);
                        break;
                    case 4:
                        cls.getMethod(strConcat, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.mColorValue));
                        break;
                    case 5:
                        Method method = cls.getMethod(strConcat, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(constraintAttribute.mColorValue);
                        method.invoke(view, colorDrawable);
                        break;
                    case 6:
                        cls.getMethod(strConcat, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.mIntegerValue));
                        break;
                    case 7:
                        cls.getMethod(strConcat, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.mFloatValue));
                        break;
                    case 8:
                        cls.getMethod(strConcat, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.mFloatValue));
                        break;
                }
            } catch (IllegalAccessException e) {
                String name = cls.getName();
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(name).length());
                sb.append(NPStringFog.decode(new byte[]{68, 39, 20, 16, 66, 90, 9, 68, 32, 23, 66, 71, 13, 6, 20, 23, 83, 21, 70}, "ddac65", true, true));
                sb.append(str);
                sb.append(NPStringFog.decode(new byte[]{67, 21, 15, 88, 71, 67, 7, 90, 20, 89, 87, 67, 14, 91, 65}, "a5a73c", -4843));
                sb.append(name);
                Log.e(TAG, sb.toString());
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                Log.e(TAG, e2.getMessage());
                String name2 = cls.getName();
                StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(name2).length());
                sb2.append(NPStringFog.decode(new byte[]{19, 119, 71, 64, 69, 13, 94, 20, 115, 71, 69, 16, 90, 86, 71, 71, 84, 66, 17}, "34231b", -1.9911418E9f));
                sb2.append(str);
                sb2.append(NPStringFog.decode(new byte[]{68, 19, 13, 94, 76, 69, 0, 92, 22, 95, 92, 69, 9, 93, 67}, "f3c18e", true, false));
                sb2.append(name2);
                Log.e(TAG, sb2.toString());
                String name3 = cls.getName();
                StringBuilder sb3 = new StringBuilder(String.valueOf(name3).length() + 20 + String.valueOf(strConcat).length());
                sb3.append(name3);
                sb3.append(NPStringFog.decode(new byte[]{25, 92, 71, 75, 23, 67, 81, 80, 68, 93, 67, 2, 25, 92, 87, 76, 11, 12, 93, 17}, "9128cc", -4.22816018E8d));
                sb3.append(strConcat);
                Log.e(TAG, sb3.toString());
            } catch (InvocationTargetException e3) {
                String name4 = cls.getName();
                StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(name4).length());
                sb4.append(NPStringFog.decode(new byte[]{68, 113, 65, 16, 65, 12, 9, 18, 117, 23, 65, 17, 13, 80, 65, 23, 80, 67, 70}, "d24c5c", -995441556L));
                sb4.append(str);
                sb4.append(NPStringFog.decode(new byte[]{19, 18, 11, 86, 21, 19, 87, 93, 16, 87, 5, 19, 94, 92, 69}, "12e9a3", true, false));
                sb4.append(name4);
                Log.e(TAG, sb4.toString());
                e3.printStackTrace();
            }
        }
    }

    public void applyCustom(View view) {
        String strConcat;
        Class<?> cls = view.getClass();
        String str = this.mName;
        if (this.mMethod) {
            strConcat = str;
        } else {
            String strValueOf = String.valueOf(str);
            strConcat = strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{17, 6, 21}, "bca9d9", 1.5589838E9f).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{70, 85, 64}, "504a15", -3952));
        }
        try {
            switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
                case 1:
                case 6:
                    cls.getMethod(strConcat, Integer.TYPE).invoke(view, Integer.valueOf(this.mIntegerValue));
                    break;
                case 2:
                    cls.getMethod(strConcat, Boolean.TYPE).invoke(view, Boolean.valueOf(this.mBooleanValue));
                    break;
                case 3:
                    cls.getMethod(strConcat, CharSequence.class).invoke(view, this.mStringValue);
                    break;
                case 4:
                    cls.getMethod(strConcat, Integer.TYPE).invoke(view, Integer.valueOf(this.mColorValue));
                    break;
                case 5:
                    Method method = cls.getMethod(strConcat, Drawable.class);
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(this.mColorValue);
                    method.invoke(view, colorDrawable);
                    break;
                case 7:
                    cls.getMethod(strConcat, Float.TYPE).invoke(view, Float.valueOf(this.mFloatValue));
                    break;
                case 8:
                    cls.getMethod(strConcat, Float.TYPE).invoke(view, Float.valueOf(this.mFloatValue));
                    break;
            }
        } catch (IllegalAccessException e) {
            String name = cls.getName();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(name).length());
            sb.append(NPStringFog.decode(new byte[]{68, 33, 64, 70, 71, 91, 9, 66, 116, 65, 71, 70, 13, 0, 64, 65, 86, 20, 70}, "db5534", false, true));
            sb.append(str);
            sb.append(NPStringFog.decode(new byte[]{67, 18, 89, 93, 70, 19, 7, 93, 66, 92, 86, 19, 14, 92, 23}, "a27223", -1.4733969E9f));
            sb.append(name);
            Log.e(TAG, sb.toString());
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            Log.e(TAG, e2.getMessage());
            String name2 = cls.getName();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(name2).length());
            sb2.append(NPStringFog.decode(new byte[]{67, 32, 76, 64, 64, 10, 14, 67, 120, 71, 64, 23, 10, 1, 76, 71, 81, 69, 65}, "cc934e", false));
            sb2.append(str);
            sb2.append(NPStringFog.decode(new byte[]{27, 17, 86, 89, 66, 24, 95, 94, 77, 88, 82, 24, 86, 95, 24}, "918668", -1460191052L));
            sb2.append(name2);
            Log.e(TAG, sb2.toString());
            String name3 = cls.getName();
            StringBuilder sb3 = new StringBuilder(String.valueOf(name3).length() + 20 + String.valueOf(strConcat).length());
            sb3.append(name3);
            sb3.append(NPStringFog.decode(new byte[]{17, 11, 20, 75, 77, 65, 89, 7, 23, 93, 25, 0, 17, 11, 4, 76, 81, 14, 85, 70}, "1fa89a", 30149));
            sb3.append(strConcat);
            Log.e(TAG, sb3.toString());
        } catch (InvocationTargetException e3) {
            String name4 = cls.getName();
            StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(name4).length());
            sb4.append(NPStringFog.decode(new byte[]{23, 32, 67, 23, 23, 92, 90, 67, 119, 16, 23, 65, 94, 1, 67, 16, 6, 19, 21}, "7c6dc3", -1697110718L));
            sb4.append(str);
            sb4.append(NPStringFog.decode(new byte[]{20, 22, 15, 14, 16, 69, 80, 89, 20, 15, 0, 69, 89, 88, 65}, "66aade", -1.37363671E8d));
            sb4.append(name4);
            Log.e(TAG, sb4.toString());
            e3.printStackTrace();
        }
    }

    public boolean diff(ConstraintAttribute constraintAttribute) {
        if (constraintAttribute == null || this.mType != constraintAttribute.mType) {
            return false;
        }
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
            case 1:
            case 6:
                if (this.mIntegerValue == constraintAttribute.mIntegerValue) {
                    return true;
                }
                break;
            case 2:
                if (this.mBooleanValue == constraintAttribute.mBooleanValue) {
                    return true;
                }
                break;
            case 3:
                if (this.mIntegerValue == constraintAttribute.mIntegerValue) {
                    return true;
                }
                break;
            case 4:
            case 5:
                if (this.mColorValue == constraintAttribute.mColorValue) {
                    return true;
                }
                break;
            case 7:
                if (this.mFloatValue == constraintAttribute.mFloatValue) {
                    return true;
                }
                break;
            case 8:
                if (this.mFloatValue == constraintAttribute.mFloatValue) {
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
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
            case 2:
                return this.mBooleanValue ? 1.0f : 0.0f;
            case 3:
                throw new RuntimeException(NPStringFog.decode(new byte[]{37, 3, 87, 91, 13, 21, 70, 11, 87, 65, 7, 19, 22, 13, 85, 84, 22, 4, 70, 49, 77, 71, 11, 15, 1}, "fb95ba", 1.305171647E9d));
            case 4:
            case 5:
                throw new RuntimeException(NPStringFog.decode(new byte[]{34, 9, 14, 88, 70, 18, 5, 9, 7, 68, 20, 92, 14, 18, 66, 95, 85, 68, 4, 70, 3, 23, 71, 91, 15, 1, 14, 82, 20, 81, 14, 10, 13, 69, 20, 70, 14, 70, 11, 89, 64, 87, 19, 22, 13, 91, 85, 70, 4}, "afb742", true));
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
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
            case 2:
                fArr[0] = this.mBooleanValue ? 1.0f : 0.0f;
                return;
            case 3:
                throw new RuntimeException(NPStringFog.decode(new byte[]{119, 95, 92, 14, 23, 70, 80, 95, 85, 18, 69, 8, 91, 68, 16, 9, 4, 16, 81, 16, 81, 65, 22, 15, 90, 87, 92, 4, 69, 5, 91, 92, 95, 19, 69, 18, 91, 16, 89, 15, 17, 3, 70, 64, 95, 13, 4, 18, 81}, "400aef", true));
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
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
            case 1:
            case 2:
            case 3:
                return false;
            default:
                return true;
        }
    }

    public int numberOfInterpolatedValues() {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
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

    public void setInterpolatedValue(View view, float[] fArr) {
        Class<?> cls = view.getClass();
        String strValueOf = String.valueOf(this.mName);
        String strConcat = strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{68, 4, 22}, "7ab8bd", false, true).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{67, 92, 18}, "09faaf", -625089591L));
        try {
            switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
                case 2:
                    cls.getMethod(strConcat, Boolean.TYPE).invoke(view, Boolean.valueOf(fArr[0] > 0.5f));
                    return;
                case 3:
                    String strValueOf2 = String.valueOf(this.mName);
                    throw new RuntimeException(strValueOf2.length() != 0 ? NPStringFog.decode(new byte[]{77, 92, 0, 85, 15, 7, 24, 70, 14, 23, 10, 12, 76, 87, 19, 71, 12, 14, 89, 70, 4, 23, 16, 22, 74, 91, 15, 80, 16, 66}, "82a7cb", 5325707.0d).concat(strValueOf2) : new String(NPStringFog.decode(new byte[]{65, 91, 87, 1, 8, 80, 20, 65, 89, 67, 13, 91, 64, 80, 68, 19, 11, 89, 85, 65, 83, 67, 23, 65, 70, 92, 88, 4, 23, 21}, "456cd5", true, true)));
                case 4:
                    cls.getMethod(strConcat, Integer.TYPE).invoke(view, Integer.valueOf((clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f))));
                    return;
                case 5:
                    Method method = cls.getMethod(strConcat, Drawable.class);
                    int iClamp = clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f));
                    int iClamp2 = clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f));
                    int iClamp3 = clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                    int iClamp4 = clamp((int) (fArr[3] * 255.0f));
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor((iClamp << 16) | (iClamp4 << 24) | (iClamp2 << 8) | iClamp3);
                    method.invoke(view, colorDrawable);
                    return;
                case 6:
                    cls.getMethod(strConcat, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                    return;
                case 7:
                    cls.getMethod(strConcat, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                case 8:
                    cls.getMethod(strConcat, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                    return;
                default:
                    return;
            }
        } catch (IllegalAccessException e) {
            String name = Debug.getName(view);
            StringBuilder sb = new StringBuilder(String.valueOf(strConcat).length() + 32 + String.valueOf(name).length());
            sb.append(NPStringFog.decode(new byte[]{86, 87, 87, 92, 14, 67, 21, 87, 90, 81, 4, 68, 70, 22, 84, 87, 21, 95, 90, 82, 25}, "5692a7", true));
            sb.append(strConcat);
            sb.append(NPStringFog.decode(new byte[]{67, 92, 10, 19, 50, 13, 6, 68, 68, 17}, "c3d3dd", false, false));
            sb.append(name);
            sb.append(NPStringFog.decode(new byte[]{23}, "5c73dd", 12013));
            Log.e(TAG, sb.toString());
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            String name2 = Debug.getName(view);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strConcat).length() + 21 + String.valueOf(name2).length());
            sb2.append(NPStringFog.decode(new byte[]{15, 93, 68, 94, 0, 71, 9, 93, 0, 19}, "a2d3e3", -13973));
            sb2.append(strConcat);
            sb2.append(NPStringFog.decode(new byte[]{20, 94, 15, 19, 53, 8, 81, 70, 65, 17}, "41a3ca", -1415838170L));
            sb2.append(name2);
            sb2.append(NPStringFog.decode(new byte[]{64}, "b05102", -4.84140559E8d));
            Log.e(TAG, sb2.toString());
            e2.printStackTrace();
        } catch (InvocationTargetException e3) {
            e3.printStackTrace();
        }
    }

    public void setStringValue(String str) {
        this.mStringValue = str;
    }

    public void setValue(Object obj) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
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
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
            case 1:
            case 6:
                this.mIntegerValue = (int) fArr[0];
                return;
            case 2:
                this.mBooleanValue = ((double) fArr[0]) > 0.5d;
                return;
            case 3:
                throw new RuntimeException(NPStringFog.decode(new byte[]{119, 12, 14, 14, 65, 19, 80, 12, 7, 18, 19, 93, 91, 23, 66, 9, 82, 69, 81, 67, 3, 65, 64, 90, 90, 4, 14, 4, 19, 80, 91, 15, 13, 19, 19, 71, 91, 67, 11, 15, 71, 86, 70, 19, 13, 13, 82, 71, 81}, "4cba33", false, false));
            case 4:
            case 5:
                int iHSVToColor = Color.HSVToColor(fArr);
                this.mColorValue = iHSVToColor;
                this.mColorValue = (iHSVToColor & ViewCompat.MEASURED_SIZE_MASK) | (clamp((int) (fArr[3] * 255.0f)) << 24);
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

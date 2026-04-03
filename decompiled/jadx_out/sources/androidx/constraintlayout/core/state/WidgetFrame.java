package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.state.Transition;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class WidgetFrame {
    private static final boolean OLD_SYSTEM = true;
    public static float phone_orientation = Float.NaN;
    public float alpha;
    public int bottom;
    public float interpolatedPos;
    public int left;
    public final HashMap<String, CustomVariable> mCustom;
    public String name;
    public float pivotX;
    public float pivotY;
    public int right;
    public float rotationX;
    public float rotationY;
    public float rotationZ;
    public float scaleX;
    public float scaleY;
    public int top;
    public float translationX;
    public float translationY;
    public float translationZ;
    public int visibility;
    public ConstraintWidget widget;

    public WidgetFrame() {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
    }

    public WidgetFrame(WidgetFrame widgetFrame) {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
        this.widget = widgetFrame.widget;
        this.left = widgetFrame.left;
        this.top = widgetFrame.top;
        this.right = widgetFrame.right;
        this.bottom = widgetFrame.bottom;
        updateAttributes(widgetFrame);
    }

    public WidgetFrame(ConstraintWidget constraintWidget) {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
        this.widget = constraintWidget;
    }

    private static void add(StringBuilder sb, String str, float f) {
        if (Float.isNaN(f)) {
            return;
        }
        sb.append(str);
        sb.append(NPStringFog.decode(new byte[]{2, 68}, "8daf85", false, OLD_SYSTEM));
        sb.append(f);
        sb.append(NPStringFog.decode(new byte[]{24, 60}, "46ff71", 1049650157L));
    }

    private static void add(StringBuilder sb, String str, int i) {
        sb.append(str);
        sb.append(NPStringFog.decode(new byte[]{9, 16}, "3002ca", false));
        sb.append(i);
        sb.append(NPStringFog.decode(new byte[]{27, 107}, "7ab909", -11431));
    }

    private static float interpolate(float f, float f2, float f3, float f4) {
        boolean zIsNaN = Float.isNaN(f);
        boolean zIsNaN2 = Float.isNaN(f2);
        if (zIsNaN && zIsNaN2) {
            return Float.NaN;
        }
        if (zIsNaN) {
            f = f3;
        }
        if (!zIsNaN2) {
            f3 = f2;
        }
        return ((f3 - f) * f4) + f;
    }

    public static void interpolate(int i, int i2, WidgetFrame widgetFrame, WidgetFrame widgetFrame2, WidgetFrame widgetFrame3, Transition transition, float f) {
        int i3;
        int i4;
        int i5;
        int i6;
        float f2;
        int i7;
        int i8;
        int i9;
        int i10;
        float f3;
        int i11;
        int i12;
        int i13;
        int i14 = (int) (100.0f * f);
        int i15 = widgetFrame2.left;
        int i16 = widgetFrame2.top;
        int i17 = widgetFrame3.left;
        int i18 = widgetFrame3.top;
        int i19 = widgetFrame2.right;
        int i20 = widgetFrame2.left;
        int i21 = widgetFrame2.bottom;
        int i22 = widgetFrame2.top;
        int i23 = widgetFrame3.right - widgetFrame3.left;
        int i24 = widgetFrame3.bottom - widgetFrame3.top;
        float f4 = widgetFrame2.alpha;
        float f5 = widgetFrame3.alpha;
        if (widgetFrame2.visibility == 8) {
            int i25 = (int) (i15 - (i23 / 2.0f));
            int i26 = (int) (i16 - (i24 / 2.0f));
            if (Float.isNaN(f4)) {
                f4 = 0.0f;
                i16 = i26;
                i15 = i25;
                i4 = i24;
                i3 = i23;
            } else {
                i16 = i26;
                i15 = i25;
                i4 = i24;
                i3 = i23;
            }
        } else {
            i3 = i19 - i20;
            i4 = i21 - i22;
        }
        if (widgetFrame3.visibility == 8) {
            i7 = (int) (i17 - (i3 / 2.0f));
            int i27 = (int) (i18 - (i4 / 2.0f));
            if (Float.isNaN(f5)) {
                f2 = 0.0f;
                i5 = i27;
                i6 = i4;
                i8 = i3;
            } else {
                f2 = f5;
                i6 = i4;
                i5 = i27;
                i8 = i3;
            }
        } else {
            i5 = i18;
            i6 = i24;
            f2 = f5;
            i7 = i17;
            i8 = i23;
        }
        if (Float.isNaN(f4) && !Float.isNaN(f2)) {
            f4 = 1.0f;
        }
        if (!Float.isNaN(f4) && Float.isNaN(f2)) {
            f2 = 1.0f;
        }
        if (widgetFrame2.visibility == 4) {
            f4 = 0.0f;
        }
        if (widgetFrame3.visibility == 4) {
            f2 = 0.0f;
        }
        if (widgetFrame.widget == null || !transition.hasPositionKeyframes()) {
            i9 = i16;
            i10 = i7;
            f3 = f;
        } else {
            Transition.KeyPosition keyPositionFindPreviousPosition = transition.findPreviousPosition(widgetFrame.widget.stringId, i14);
            Transition.KeyPosition keyPositionFindNextPosition = transition.findNextPosition(widgetFrame.widget.stringId, i14);
            Transition.KeyPosition keyPosition = keyPositionFindPreviousPosition == keyPositionFindNextPosition ? null : keyPositionFindNextPosition;
            if (keyPositionFindPreviousPosition != null) {
                i15 = (int) (keyPositionFindPreviousPosition.x * i);
                i12 = (int) (keyPositionFindPreviousPosition.y * i2);
                i11 = keyPositionFindPreviousPosition.frame;
            } else {
                i11 = 0;
                i12 = i16;
            }
            if (keyPosition != null) {
                i10 = (int) (keyPosition.x * i);
                i5 = (int) (keyPosition.y * i2);
                i13 = keyPosition.frame;
            } else {
                i10 = i7;
                i13 = 100;
            }
            f3 = ((100.0f * f) - i11) / (i13 - i11);
            i9 = i12;
        }
        widgetFrame.widget = widgetFrame2.widget;
        int i28 = (int) (((i10 - i15) * f3) + i15);
        widgetFrame.left = i28;
        int i29 = (int) ((f3 * (i5 - i9)) + i9);
        widgetFrame.top = i29;
        widgetFrame.right = ((int) ((i3 * (1.0f - f)) + (i8 * f))) + i28;
        widgetFrame.bottom = ((int) ((i4 * (1.0f - f)) + (i6 * f))) + i29;
        widgetFrame.pivotX = interpolate(widgetFrame2.pivotX, widgetFrame3.pivotX, 0.5f, f);
        widgetFrame.pivotY = interpolate(widgetFrame2.pivotY, widgetFrame3.pivotY, 0.5f, f);
        widgetFrame.rotationX = interpolate(widgetFrame2.rotationX, widgetFrame3.rotationX, 0.0f, f);
        widgetFrame.rotationY = interpolate(widgetFrame2.rotationY, widgetFrame3.rotationY, 0.0f, f);
        widgetFrame.rotationZ = interpolate(widgetFrame2.rotationZ, widgetFrame3.rotationZ, 0.0f, f);
        widgetFrame.scaleX = interpolate(widgetFrame2.scaleX, widgetFrame3.scaleX, 1.0f, f);
        widgetFrame.scaleY = interpolate(widgetFrame2.scaleY, widgetFrame3.scaleY, 1.0f, f);
        widgetFrame.translationX = interpolate(widgetFrame2.translationX, widgetFrame3.translationX, 0.0f, f);
        widgetFrame.translationY = interpolate(widgetFrame2.translationY, widgetFrame3.translationY, 0.0f, f);
        widgetFrame.translationZ = interpolate(widgetFrame2.translationZ, widgetFrame3.translationZ, 0.0f, f);
        widgetFrame.alpha = interpolate(f4, f2, 1.0f, f);
        Set<String> setKeySet = widgetFrame3.mCustom.keySet();
        widgetFrame.mCustom.clear();
        for (String str : setKeySet) {
            if (widgetFrame2.mCustom.containsKey(str)) {
                CustomVariable customVariable = widgetFrame2.mCustom.get(str);
                CustomVariable customVariable2 = widgetFrame3.mCustom.get(str);
                CustomVariable customVariable3 = new CustomVariable(customVariable);
                widgetFrame.mCustom.put(str, customVariable3);
                if (customVariable.numberOfInterpolatedValues() == 1) {
                    customVariable3.setValue(Float.valueOf(interpolate(customVariable.getValueToInterpolate(), customVariable2.getValueToInterpolate(), 0.0f, f)));
                } else {
                    int iNumberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
                    float[] fArr = new float[iNumberOfInterpolatedValues];
                    float[] fArr2 = new float[iNumberOfInterpolatedValues];
                    customVariable.getValuesToInterpolate(fArr);
                    customVariable2.getValuesToInterpolate(fArr2);
                    for (int i30 = 0; i30 < iNumberOfInterpolatedValues; i30++) {
                        fArr[i30] = interpolate(fArr[i30], fArr2[i30], 0.0f, f);
                        customVariable3.setValue(fArr);
                    }
                }
            }
        }
    }

    private void serializeAnchor(StringBuilder sb, ConstraintAnchor.Type type) {
        ConstraintAnchor anchor = this.widget.getAnchor(type);
        if (anchor == null || anchor.mTarget == null) {
            return;
        }
        sb.append(NPStringFog.decode(new byte[]{115, 8, 2, 89, 12, 66}, "2fa1c0", 26400));
        sb.append(type.name());
        sb.append(NPStringFog.decode(new byte[]{11, 18, 62, 30}, "12e966", -9154));
        String strDecode = anchor.mTarget.getOwner().stringId;
        if (strDecode == null) {
            strDecode = NPStringFog.decode(new byte[]{19, 98, 114, 102, 115, 120, 100}, "023466", -1.170871966E9d);
        }
        sb.append(strDecode);
        sb.append(NPStringFog.decode(new byte[]{65, 73, 20, 69}, "fe4b61", false, OLD_SYSTEM));
        sb.append(anchor.mTarget.getType().name());
        sb.append(NPStringFog.decode(new byte[]{22, 79, 18, 31}, "1c28da", OLD_SYSTEM, OLD_SYSTEM));
        sb.append(anchor.mMargin);
        sb.append(NPStringFog.decode(new byte[]{19, 100, 79, 58}, "49c06e", 47757890L));
    }

    public void addCustomColor(String str, int i) {
        setCustomAttribute(str, TypedValues.Custom.TYPE_COLOR, i);
    }

    public void addCustomFloat(String str, float f) {
        setCustomAttribute(str, TypedValues.Custom.TYPE_FLOAT, f);
    }

    public float centerX() {
        return ((this.right - r0) / 2.0f) + this.left;
    }

    public float centerY() {
        return ((this.bottom - r0) / 2.0f) + this.top;
    }

    public CustomVariable getCustomAttribute(String str) {
        return this.mCustom.get(str);
    }

    public Set<String> getCustomAttributeNames() {
        return this.mCustom.keySet();
    }

    public int getCustomColor(String str) {
        if (this.mCustom.containsKey(str)) {
            return this.mCustom.get(str).getColorValue();
        }
        return -21880;
    }

    public float getCustomFloat(String str) {
        if (this.mCustom.containsKey(str)) {
            return this.mCustom.get(str).getFloatValue();
        }
        return Float.NaN;
    }

    public int height() {
        return Math.max(0, this.bottom - this.top);
    }

    public boolean isDefaultTransform() {
        if (Float.isNaN(this.rotationX) && Float.isNaN(this.rotationY) && Float.isNaN(this.rotationZ) && Float.isNaN(this.translationX) && Float.isNaN(this.translationY) && Float.isNaN(this.translationZ) && Float.isNaN(this.scaleX) && Float.isNaN(this.scaleY) && Float.isNaN(this.alpha)) {
            return OLD_SYSTEM;
        }
        return false;
    }

    void logv(String str) {
        String str2;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str3 = (NPStringFog.decode(new byte[]{24, 31}, "671b49", OLD_SYSTEM) + stackTraceElement.getFileName() + NPStringFog.decode(new byte[]{9}, "3b2718", 2073194065L) + stackTraceElement.getLineNumber() + NPStringFog.decode(new byte[]{17, 22}, "863bf3", -13590) + stackTraceElement.getMethodName()) + " " + (hashCode() % 1000);
        if (this.widget != null) {
            str2 = str3 + NPStringFog.decode(new byte[]{74}, "eaff12", -6.22624763E8d) + (this.widget.hashCode() % 1000);
        } else {
            str2 = str3 + NPStringFog.decode(new byte[]{74, 122, 99, 116, 125}, "e46811", OLD_SYSTEM);
        }
        System.out.println(str2 + " " + str);
    }

    void parseCustom(CLElement cLElement) throws CLParsingException {
        CLObject cLObject = (CLObject) cLElement;
        int size = cLObject.size();
        for (int i = 0; i < size; i++) {
            CLKey cLKey = (CLKey) cLObject.get(i);
            cLKey.content();
            CLElement value = cLKey.getValue();
            String strContent = value.content();
            if (strContent.matches(NPStringFog.decode(new byte[]{70, 99, 2, 21, 1, 5, 72, 94, 115, 21, 126, 57, 78}, "e8288d", 1996490543L))) {
                setCustomAttribute(cLKey.content(), TypedValues.Custom.TYPE_COLOR, Integer.parseInt(strContent.substring(1), 16));
            } else if (value instanceof CLNumber) {
                setCustomAttribute(cLKey.content(), TypedValues.Custom.TYPE_FLOAT, value.getFloat());
            } else {
                setCustomAttribute(cLKey.content(), TypedValues.Custom.TYPE_STRING, strContent);
            }
        }
    }

    void printCustomAttributes() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str = (NPStringFog.decode(new byte[]{31, 73}, "1ac867", -14454) + stackTraceElement.getFileName() + NPStringFog.decode(new byte[]{11}, "1e9921", -2.2874894E8f) + stackTraceElement.getLineNumber() + NPStringFog.decode(new byte[]{28, 66}, "5b8f6f", false, false) + stackTraceElement.getMethodName()) + " " + (hashCode() % 1000);
        String str2 = this.widget != null ? str + NPStringFog.decode(new byte[]{23}, "8fd02c", OLD_SYSTEM, OLD_SYSTEM) + (this.widget.hashCode() % 1000) + " " : str + NPStringFog.decode(new byte[]{31, 40, 48, 121, 45, 25}, "0fe5a9", -1.06160474E9f);
        HashMap<String, CustomVariable> map = this.mCustom;
        if (map != null) {
            for (String str3 : map.keySet()) {
                System.out.println(str2 + this.mCustom.get(str3).toString());
            }
        }
    }

    public StringBuilder serialize(StringBuilder sb) {
        return serialize(sb, false);
    }

    public StringBuilder serialize(StringBuilder sb, boolean z) {
        sb.append(NPStringFog.decode(new byte[]{72, 108}, "3f6819", false, OLD_SYSTEM));
        add(sb, NPStringFog.decode(new byte[]{84, 93, 80, 71}, "88632e", 9.1020595E8f), this.left);
        add(sb, NPStringFog.decode(new byte[]{17, 9, 71}, "ef7b02", false, OLD_SYSTEM), this.top);
        add(sb, NPStringFog.decode(new byte[]{17, 8, 82, 9, 67}, "ca5a74", false), this.right);
        add(sb, NPStringFog.decode(new byte[]{84, 12, 66, 69, 11, 12}, "6c61da", 1.813556117E9d), this.bottom);
        add(sb, NPStringFog.decode(new byte[]{22, 95, 19, 9, 65, 108}, "f6ef54", -10638), this.pivotX);
        add(sb, NPStringFog.decode(new byte[]{18, 95, 70, 13, 17, 110}, "b60be7", 2002628987L), this.pivotY);
        add(sb, NPStringFog.decode(new byte[]{69, 11, 17, 89, 18, 93, 88, 10, 61}, "7de8f4", OLD_SYSTEM), this.rotationX);
        add(sb, NPStringFog.decode(new byte[]{69, 87, 68, 89, 71, 95, 88, 86, 105}, "780836", OLD_SYSTEM), this.rotationY);
        add(sb, NPStringFog.decode(new byte[]{23, 95, 67, 87, 66, 94, 10, 94, 109}, "e07667", 20106), this.rotationZ);
        add(sb, NPStringFog.decode(new byte[]{71, 69, 81, 94, 23, 15, 82, 67, 89, 95, 10, 59}, "3700dc", OLD_SYSTEM), this.translationX);
        add(sb, NPStringFog.decode(new byte[]{22, 70, 88, 87, 17, 13, 3, 64, 80, 86, 12, 56}, "b499ba", 344123996L), this.translationY);
        add(sb, NPStringFog.decode(new byte[]{76, 17, 0, 8, 69, 14, 89, 23, 8, 9, 88, 56}, "8caf6b", -1.610646611E9d), this.translationZ);
        add(sb, NPStringFog.decode(new byte[]{74, 82, 4, 13, 80, 108}, "91ea54", -16468), this.scaleX);
        add(sb, NPStringFog.decode(new byte[]{70, 0, 82, 14, 87, 111}, "5c3b26", false, false), this.scaleY);
        add(sb, NPStringFog.decode(new byte[]{86, 94, 69, 95, 5}, "7257de", -2.92962317E8d), this.alpha);
        add(sb, NPStringFog.decode(new byte[]{79, 80, 69, 8, 81, 15, 85, 80, 66, 24}, "996a3f", 17993), this.left);
        add(sb, NPStringFog.decode(new byte[]{13, 12, 23, 4, 69, 64, 11, 14, 2, 21, 82, 84, 52, 13, 16}, "dbca70", -1951156302L), this.interpolatedPos);
        if (this.widget != null) {
            for (ConstraintAnchor.Type type : ConstraintAnchor.Type.values()) {
                serializeAnchor(sb, type);
            }
        }
        if (z) {
            add(sb, NPStringFog.decode(new byte[]{22, 88, 91, 93, 80, 108, 9, 66, 93, 86, 91, 71, 7, 68, 93, 92, 91}, "f04353", OLD_SYSTEM, OLD_SYSTEM), phone_orientation);
        }
        if (z) {
            add(sb, NPStringFog.decode(new byte[]{65, 88, 90, 93, 4, 62, 94, 66, 92, 86, 15, 21, 80, 68, 92, 92, 15}, "1053aa", false, false), phone_orientation);
        }
        if (this.mCustom.size() != 0) {
            sb.append(NPStringFog.decode(new byte[]{83, 22, 75, 17, 14, 8, 16, 89, 24, 30, 107}, "0c8eae", 22386));
            for (String str : this.mCustom.keySet()) {
                CustomVariable customVariable = this.mCustom.get(str);
                sb.append(str);
                sb.append(NPStringFog.decode(new byte[]{94, 65}, "daee36", 32686));
                switch (customVariable.getType()) {
                    case TypedValues.Custom.TYPE_INT /* 900 */:
                        sb.append(customVariable.getIntegerValue());
                        sb.append(NPStringFog.decode(new byte[]{24, 51}, "49b6ce", -7.48124585E8d));
                        break;
                    case TypedValues.Custom.TYPE_FLOAT /* 901 */:
                    case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                        sb.append(customVariable.getFloatValue());
                        sb.append(NPStringFog.decode(new byte[]{25, 111}, "5e9a77", -4.84468268E8d));
                        break;
                    case TypedValues.Custom.TYPE_COLOR /* 902 */:
                        sb.append(NPStringFog.decode(new byte[]{69}, "be538d", -1824048331L));
                        sb.append(CustomVariable.colorString(customVariable.getIntegerValue()));
                        sb.append(NPStringFog.decode(new byte[]{16, 28, 110}, "70d9e5", -1.573179506E9d));
                        break;
                    case TypedValues.Custom.TYPE_STRING /* 903 */:
                        sb.append(NPStringFog.decode(new byte[]{30}, "9e4f37", false));
                        sb.append(customVariable.getStringValue());
                        sb.append(NPStringFog.decode(new byte[]{70, 29, 50}, "a18686", false, false));
                        break;
                    case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                        sb.append(NPStringFog.decode(new byte[]{20}, "305602", -7.277884E8d));
                        sb.append(customVariable.getBooleanValue());
                        sb.append(NPStringFog.decode(new byte[]{16, 74, 58}, "7f00d6", OLD_SYSTEM, OLD_SYSTEM));
                        break;
                }
            }
            sb.append(NPStringFog.decode(new byte[]{24, 50}, "e89e45", false, OLD_SYSTEM));
        }
        sb.append(NPStringFog.decode(new byte[]{31, 61}, "b77785", false, OLD_SYSTEM));
        return sb;
    }

    public void setCustomAttribute(String str, int i, float f) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setFloatValue(f);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i, f));
        }
    }

    public void setCustomAttribute(String str, int i, int i2) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setIntValue(i2);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i, i2));
        }
    }

    public void setCustomAttribute(String str, int i, String str2) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setStringValue(str2);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i, str2));
        }
    }

    public void setCustomAttribute(String str, int i, boolean z) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setBooleanValue(z);
        } else {
            this.mCustom.put(str, new CustomVariable(str, i, z));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean setValue(java.lang.String r9, androidx.constraintlayout.core.parser.CLElement r10) throws androidx.constraintlayout.core.parser.CLParsingException {
        /*
            Method dump skipped, instruction units count: 817
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.state.WidgetFrame.setValue(java.lang.String, androidx.constraintlayout.core.parser.CLElement):boolean");
    }

    public WidgetFrame update() {
        ConstraintWidget constraintWidget = this.widget;
        if (constraintWidget != null) {
            this.left = constraintWidget.getLeft();
            this.top = this.widget.getTop();
            this.right = this.widget.getRight();
            this.bottom = this.widget.getBottom();
            updateAttributes(this.widget.frame);
        }
        return this;
    }

    public WidgetFrame update(ConstraintWidget constraintWidget) {
        if (constraintWidget != null) {
            this.widget = constraintWidget;
            update();
        }
        return this;
    }

    public void updateAttributes(WidgetFrame widgetFrame) {
        this.pivotX = widgetFrame.pivotX;
        this.pivotY = widgetFrame.pivotY;
        this.rotationX = widgetFrame.rotationX;
        this.rotationY = widgetFrame.rotationY;
        this.rotationZ = widgetFrame.rotationZ;
        this.translationX = widgetFrame.translationX;
        this.translationY = widgetFrame.translationY;
        this.translationZ = widgetFrame.translationZ;
        this.scaleX = widgetFrame.scaleX;
        this.scaleY = widgetFrame.scaleY;
        this.alpha = widgetFrame.alpha;
        this.visibility = widgetFrame.visibility;
        this.mCustom.clear();
        if (widgetFrame != null) {
            for (CustomVariable customVariable : widgetFrame.mCustom.values()) {
                this.mCustom.put(customVariable.getName(), customVariable.copy());
            }
        }
    }

    public int width() {
        return Math.max(0, this.right - this.left);
    }
}

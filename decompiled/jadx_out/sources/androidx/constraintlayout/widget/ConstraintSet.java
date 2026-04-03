package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Color;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import java.io.IOException;
import java.io.PrintStream;
import java.io.Writer;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes39.dex */
public class ConstraintSet {
    private static final int ALPHA = 43;
    private static final int ANIMATE_CIRCLE_ANGLE_TO = 82;
    private static final int ANIMATE_RELATIVE_TO = 64;
    private static final int BARRIER_ALLOWS_GONE_WIDGETS = 75;
    private static final int BARRIER_DIRECTION = 72;
    private static final int BARRIER_MARGIN = 73;
    private static final int BARRIER_TYPE = 1;
    public static final int BASELINE = 5;
    private static final int BASELINE_MARGIN = 93;
    private static final int BASELINE_TO_BASELINE = 1;
    private static final int BASELINE_TO_BOTTOM = 92;
    private static final int BASELINE_TO_TOP = 91;
    public static final int BOTTOM = 4;
    private static final int BOTTOM_MARGIN = 2;
    private static final int BOTTOM_TO_BOTTOM = 3;
    private static final int BOTTOM_TO_TOP = 4;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    private static final int CHAIN_USE_RTL = 71;
    private static final int CIRCLE = 61;
    private static final int CIRCLE_ANGLE = 63;
    private static final int CIRCLE_RADIUS = 62;
    public static final int CIRCLE_REFERENCE = 8;
    private static final int CONSTRAINED_HEIGHT = 81;
    private static final int CONSTRAINED_WIDTH = 80;
    private static final int CONSTRAINT_REFERENCED_IDS = 74;
    private static final int CONSTRAINT_TAG = 77;
    private static final boolean DEBUG = false;
    private static final int DIMENSION_RATIO = 5;
    private static final int DRAW_PATH = 66;
    private static final int EDITOR_ABSOLUTE_X = 6;
    private static final int EDITOR_ABSOLUTE_Y = 7;
    private static final int ELEVATION = 44;
    public static final int END = 7;
    private static final int END_MARGIN = 8;
    private static final int END_TO_END = 9;
    private static final int END_TO_START = 10;
    public static final int GONE = 8;
    private static final int GONE_BASELINE_MARGIN = 94;
    private static final int GONE_BOTTOM_MARGIN = 11;
    private static final int GONE_END_MARGIN = 12;
    private static final int GONE_LEFT_MARGIN = 13;
    private static final int GONE_RIGHT_MARGIN = 14;
    private static final int GONE_START_MARGIN = 15;
    private static final int GONE_TOP_MARGIN = 16;
    private static final int GUIDE_BEGIN = 17;
    private static final int GUIDE_END = 18;
    private static final int GUIDE_PERCENT = 19;
    private static final int HEIGHT_DEFAULT = 55;
    private static final int HEIGHT_MAX = 57;
    private static final int HEIGHT_MIN = 59;
    private static final int HEIGHT_PERCENT = 70;
    public static final int HORIZONTAL = 0;
    private static final int HORIZONTAL_BIAS = 20;
    public static final int HORIZONTAL_GUIDELINE = 0;
    private static final int HORIZONTAL_STYLE = 41;
    private static final int HORIZONTAL_WEIGHT = 39;
    private static final int INTERNAL_MATCH_CONSTRAINT = -3;
    private static final int INTERNAL_MATCH_PARENT = -1;
    private static final int INTERNAL_WRAP_CONTENT = -2;
    private static final int INTERNAL_WRAP_CONTENT_CONSTRAINED = -4;
    public static final int INVISIBLE = 4;
    private static final int LAYOUT_CONSTRAINT_HEIGHT = 96;
    private static final int LAYOUT_CONSTRAINT_WIDTH = 95;
    private static final int LAYOUT_HEIGHT = 21;
    private static final int LAYOUT_VISIBILITY = 22;
    private static final int LAYOUT_WIDTH = 23;
    private static final int LAYOUT_WRAP_BEHAVIOR = 97;
    public static final int LEFT = 1;
    private static final int LEFT_MARGIN = 24;
    private static final int LEFT_TO_LEFT = 25;
    private static final int LEFT_TO_RIGHT = 26;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    private static final int MOTION_STAGGER = 79;
    private static final int MOTION_TARGET = 98;
    private static final int ORIENTATION = 27;
    public static final int PARENT_ID = 0;
    private static final int PATH_MOTION_ARC = 76;
    private static final int PROGRESS = 68;
    private static final int QUANTIZE_MOTION_INTERPOLATOR = 86;
    private static final int QUANTIZE_MOTION_INTERPOLATOR_ID = 89;
    private static final int QUANTIZE_MOTION_INTERPOLATOR_STR = 90;
    private static final int QUANTIZE_MOTION_INTERPOLATOR_TYPE = 88;
    private static final int QUANTIZE_MOTION_PHASE = 85;
    private static final int QUANTIZE_MOTION_STEPS = 84;
    public static final int RIGHT = 2;
    private static final int RIGHT_MARGIN = 28;
    private static final int RIGHT_TO_LEFT = 29;
    private static final int RIGHT_TO_RIGHT = 30;
    public static final int ROTATE_LEFT_OF_PORTRATE = 4;
    public static final int ROTATE_NONE = 0;
    public static final int ROTATE_PORTRATE_OF_LEFT = 2;
    public static final int ROTATE_PORTRATE_OF_RIGHT = 1;
    public static final int ROTATE_RIGHT_OF_PORTRATE = 3;
    private static final int ROTATION = 60;
    private static final int ROTATION_X = 45;
    private static final int ROTATION_Y = 46;
    private static final int SCALE_X = 47;
    private static final int SCALE_Y = 48;
    public static final int START = 6;
    private static final int START_MARGIN = 31;
    private static final int START_TO_END = 32;
    private static final int START_TO_START = 33;
    public static final int TOP = 3;
    private static final int TOP_MARGIN = 34;
    private static final int TOP_TO_BOTTOM = 35;
    private static final int TOP_TO_TOP = 36;
    private static final int TRANSFORM_PIVOT_TARGET = 83;
    private static final int TRANSFORM_PIVOT_X = 49;
    private static final int TRANSFORM_PIVOT_Y = 50;
    private static final int TRANSITION_EASING = 65;
    private static final int TRANSITION_PATH_ROTATE = 67;
    private static final int TRANSLATION_X = 51;
    private static final int TRANSLATION_Y = 52;
    private static final int TRANSLATION_Z = 53;
    public static final int UNSET = -1;
    private static final int UNUSED = 87;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_BIAS = 37;
    public static final int VERTICAL_GUIDELINE = 1;
    private static final int VERTICAL_STYLE = 42;
    private static final int VERTICAL_WEIGHT = 40;
    private static final int VIEW_ID = 38;
    private static final int VISIBILITY_MODE = 78;
    public static final int VISIBILITY_MODE_IGNORE = 1;
    public static final int VISIBILITY_MODE_NORMAL = 0;
    public static final int VISIBLE = 0;
    private static final int WIDTH_DEFAULT = 54;
    private static final int WIDTH_MAX = 56;
    private static final int WIDTH_MIN = 58;
    private static final int WIDTH_PERCENT = 69;
    public static final int WRAP_CONTENT = -2;
    public String mIdString;
    private boolean mValidate;
    private static final String ERROR_MESSAGE = NPStringFog.decode(new byte[]{58, 124, 45, 25, 66, 3, 16, 66, 4, 75, 18, 7, 16, 67, 14, 75, 18, 15, 23, 66, 21, 25, 80, 7, 66, 70, 8, 77, 90, 11, 12, 17, 0, 25, 113, 13, 12, 66, 21, 75, 83, 11, 12, 69, 65}, "b1a92b", 21049);
    private static final String KEY_PERCENT_PARENT = NPStringFog.decode(new byte[]{21, 4, 69, 93, 87, 23}, "ee789c", -4771);
    private static final String KEY_RATIO = NPStringFog.decode(new byte[]{69, 89, 69, 94, 14}, "7817a6", 1.003900979E9d);
    private static final String KEY_WEIGHT = NPStringFog.decode(new byte[]{20, 6, 80, 86, 10, 67}, "cc91b7", 990317614L);
    private static final String TAG = NPStringFog.decode(new byte[]{123, 93, 93, 70, 17, 64, 89, 91, 93, 65, 54, 87, 76}, "8235e2", -1.700733581E9d);
    private static final int[] VISIBILITY_FLAGS = {0, 4, 8};
    private static SparseIntArray mapToConstant = new SparseIntArray();
    private static SparseIntArray overrideMapToConstant = new SparseIntArray();
    public String derivedState = "";
    public int mRotate = 0;
    private HashMap<String, ConstraintAttribute> mSavedAttributes = new HashMap<>();
    private boolean mForceId = true;
    private HashMap<Integer, Constraint> mConstraints = new HashMap<>();

    public static class Constraint {
        Delta mDelta;
        String mTargetString;
        int mViewId;
        public final PropertySet propertySet = new PropertySet();
        public final Motion motion = new Motion();
        public final Layout layout = new Layout();
        public final Transform transform = new Transform();
        public HashMap<String, ConstraintAttribute> mCustomConstraints = new HashMap<>();

        static class Delta {
            private static final int INITIAL_BOOLEAN = 4;
            private static final int INITIAL_FLOAT = 10;
            private static final int INITIAL_INT = 10;
            private static final int INITIAL_STRING = 5;
            int[] mTypeInt = new int[10];
            int[] mValueInt = new int[10];
            int mCountInt = 0;
            int[] mTypeFloat = new int[10];
            float[] mValueFloat = new float[10];
            int mCountFloat = 0;
            int[] mTypeString = new int[5];
            String[] mValueString = new String[5];
            int mCountString = 0;
            int[] mTypeBoolean = new int[4];
            boolean[] mValueBoolean = new boolean[4];
            int mCountBoolean = 0;

            Delta() {
            }

            void add(int i, float f) {
                int i2 = this.mCountFloat;
                int[] iArr = this.mTypeFloat;
                if (i2 >= iArr.length) {
                    this.mTypeFloat = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.mValueFloat;
                    this.mValueFloat = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.mTypeFloat;
                int i3 = this.mCountFloat;
                iArr2[i3] = i;
                float[] fArr2 = this.mValueFloat;
                this.mCountFloat = i3 + 1;
                fArr2[i3] = f;
            }

            void add(int i, int i2) {
                int i3 = this.mCountInt;
                int[] iArr = this.mTypeInt;
                if (i3 >= iArr.length) {
                    this.mTypeInt = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.mValueInt;
                    this.mValueInt = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.mTypeInt;
                int i4 = this.mCountInt;
                iArr3[i4] = i;
                int[] iArr4 = this.mValueInt;
                this.mCountInt = i4 + 1;
                iArr4[i4] = i2;
            }

            void add(int i, String str) {
                int i2 = this.mCountString;
                int[] iArr = this.mTypeString;
                if (i2 >= iArr.length) {
                    this.mTypeString = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.mValueString;
                    this.mValueString = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.mTypeString;
                int i3 = this.mCountString;
                iArr2[i3] = i;
                String[] strArr2 = this.mValueString;
                this.mCountString = i3 + 1;
                strArr2[i3] = str;
            }

            void add(int i, boolean z) {
                int i2 = this.mCountBoolean;
                int[] iArr = this.mTypeBoolean;
                if (i2 >= iArr.length) {
                    this.mTypeBoolean = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.mValueBoolean;
                    this.mValueBoolean = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.mTypeBoolean;
                int i3 = this.mCountBoolean;
                iArr2[i3] = i;
                boolean[] zArr2 = this.mValueBoolean;
                this.mCountBoolean = i3 + 1;
                zArr2[i3] = z;
            }

            void applyDelta(Constraint constraint) {
                for (int i = 0; i < this.mCountInt; i++) {
                    ConstraintSet.setDeltaValue(constraint, this.mTypeInt[i], this.mValueInt[i]);
                }
                for (int i2 = 0; i2 < this.mCountFloat; i2++) {
                    ConstraintSet.setDeltaValue(constraint, this.mTypeFloat[i2], this.mValueFloat[i2]);
                }
                for (int i3 = 0; i3 < this.mCountString; i3++) {
                    ConstraintSet.setDeltaValue(constraint, this.mTypeString[i3], this.mValueString[i3]);
                }
                for (int i4 = 0; i4 < this.mCountBoolean; i4++) {
                    ConstraintSet.setDeltaValue(constraint, this.mTypeBoolean[i4], this.mValueBoolean[i4]);
                }
            }

            void printDelta(String str) {
                Log.v(str, NPStringFog.decode(new byte[]{11, 11, 67}, "be71c6", false));
                for (int i = 0; i < this.mCountInt; i++) {
                    int i2 = this.mTypeInt[i];
                    int i3 = this.mValueInt[i];
                    StringBuilder sb = new StringBuilder(25);
                    sb.append(i2);
                    sb.append(NPStringFog.decode(new byte[]{66, 10, 70}, "b7f56b", 1304537378L));
                    sb.append(i3);
                    Log.v(str, sb.toString());
                }
                Log.v(str, NPStringFog.decode(new byte[]{4, 10, 10, 83, 67}, "bfe276", -1.694496401E9d));
                for (int i4 = 0; i4 < this.mCountFloat; i4++) {
                    int i5 = this.mTypeFloat[i4];
                    float f = this.mValueFloat[i4];
                    StringBuilder sb2 = new StringBuilder(29);
                    sb2.append(i5);
                    sb2.append(NPStringFog.decode(new byte[]{24, 92, 20}, "8a44f6", -1.5848626E9f));
                    sb2.append(f);
                    Log.v(str, sb2.toString());
                }
                Log.v(str, NPStringFog.decode(new byte[]{69, 69, 70, 89, 90, 4, 69}, "61404c", -1.055439996E9d));
                for (int i6 = 0; i6 < this.mCountString; i6++) {
                    int i7 = this.mTypeString[i6];
                    String str2 = this.mValueString[i6];
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str2).length() + 14);
                    sb3.append(i7);
                    sb3.append(NPStringFog.decode(new byte[]{21, 95, 19}, "5b372c", -5.61941385E8d));
                    sb3.append(str2);
                    Log.v(str, sb3.toString());
                }
                Log.v(str, NPStringFog.decode(new byte[]{83, 88, 91, 9, 0, 5, 95}, "174eed", -1.8982188E9f));
                for (int i8 = 0; i8 < this.mCountBoolean; i8++) {
                    int i9 = this.mTypeBoolean[i8];
                    boolean z = this.mValueBoolean[i8];
                    StringBuilder sb4 = new StringBuilder(19);
                    sb4.append(i9);
                    sb4.append(NPStringFog.decode(new byte[]{18, 95, 17}, "2b1744", 1577810501L));
                    sb4.append(z);
                    Log.v(str, sb4.toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillFrom(int i, ConstraintLayout.LayoutParams layoutParams) {
            this.mViewId = i;
            this.layout.leftToLeft = layoutParams.leftToLeft;
            this.layout.leftToRight = layoutParams.leftToRight;
            this.layout.rightToLeft = layoutParams.rightToLeft;
            this.layout.rightToRight = layoutParams.rightToRight;
            this.layout.topToTop = layoutParams.topToTop;
            this.layout.topToBottom = layoutParams.topToBottom;
            this.layout.bottomToTop = layoutParams.bottomToTop;
            this.layout.bottomToBottom = layoutParams.bottomToBottom;
            this.layout.baselineToBaseline = layoutParams.baselineToBaseline;
            this.layout.baselineToTop = layoutParams.baselineToTop;
            this.layout.baselineToBottom = layoutParams.baselineToBottom;
            this.layout.startToEnd = layoutParams.startToEnd;
            this.layout.startToStart = layoutParams.startToStart;
            this.layout.endToStart = layoutParams.endToStart;
            this.layout.endToEnd = layoutParams.endToEnd;
            this.layout.horizontalBias = layoutParams.horizontalBias;
            this.layout.verticalBias = layoutParams.verticalBias;
            this.layout.dimensionRatio = layoutParams.dimensionRatio;
            this.layout.circleConstraint = layoutParams.circleConstraint;
            this.layout.circleRadius = layoutParams.circleRadius;
            this.layout.circleAngle = layoutParams.circleAngle;
            this.layout.editorAbsoluteX = layoutParams.editorAbsoluteX;
            this.layout.editorAbsoluteY = layoutParams.editorAbsoluteY;
            this.layout.orientation = layoutParams.orientation;
            this.layout.guidePercent = layoutParams.guidePercent;
            this.layout.guideBegin = layoutParams.guideBegin;
            this.layout.guideEnd = layoutParams.guideEnd;
            this.layout.mWidth = layoutParams.width;
            this.layout.mHeight = layoutParams.height;
            this.layout.leftMargin = layoutParams.leftMargin;
            this.layout.rightMargin = layoutParams.rightMargin;
            this.layout.topMargin = layoutParams.topMargin;
            this.layout.bottomMargin = layoutParams.bottomMargin;
            this.layout.baselineMargin = layoutParams.baselineMargin;
            this.layout.verticalWeight = layoutParams.verticalWeight;
            this.layout.horizontalWeight = layoutParams.horizontalWeight;
            this.layout.verticalChainStyle = layoutParams.verticalChainStyle;
            this.layout.horizontalChainStyle = layoutParams.horizontalChainStyle;
            this.layout.constrainedWidth = layoutParams.constrainedWidth;
            this.layout.constrainedHeight = layoutParams.constrainedHeight;
            this.layout.widthDefault = layoutParams.matchConstraintDefaultWidth;
            this.layout.heightDefault = layoutParams.matchConstraintDefaultHeight;
            this.layout.widthMax = layoutParams.matchConstraintMaxWidth;
            this.layout.heightMax = layoutParams.matchConstraintMaxHeight;
            this.layout.widthMin = layoutParams.matchConstraintMinWidth;
            this.layout.heightMin = layoutParams.matchConstraintMinHeight;
            this.layout.widthPercent = layoutParams.matchConstraintPercentWidth;
            this.layout.heightPercent = layoutParams.matchConstraintPercentHeight;
            this.layout.mConstraintTag = layoutParams.constraintTag;
            this.layout.goneTopMargin = layoutParams.goneTopMargin;
            this.layout.goneBottomMargin = layoutParams.goneBottomMargin;
            this.layout.goneLeftMargin = layoutParams.goneLeftMargin;
            this.layout.goneRightMargin = layoutParams.goneRightMargin;
            this.layout.goneStartMargin = layoutParams.goneStartMargin;
            this.layout.goneEndMargin = layoutParams.goneEndMargin;
            this.layout.goneBaselineMargin = layoutParams.goneBaselineMargin;
            this.layout.mWrapBehavior = layoutParams.wrapBehaviorInParent;
            if (Build.VERSION.SDK_INT >= 17) {
                this.layout.endMargin = layoutParams.getMarginEnd();
                this.layout.startMargin = layoutParams.getMarginStart();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillFromConstraints(int i, Constraints.LayoutParams layoutParams) {
            fillFrom(i, layoutParams);
            this.propertySet.alpha = layoutParams.alpha;
            this.transform.rotation = layoutParams.rotation;
            this.transform.rotationX = layoutParams.rotationX;
            this.transform.rotationY = layoutParams.rotationY;
            this.transform.scaleX = layoutParams.scaleX;
            this.transform.scaleY = layoutParams.scaleY;
            this.transform.transformPivotX = layoutParams.transformPivotX;
            this.transform.transformPivotY = layoutParams.transformPivotY;
            this.transform.translationX = layoutParams.translationX;
            this.transform.translationY = layoutParams.translationY;
            this.transform.translationZ = layoutParams.translationZ;
            this.transform.elevation = layoutParams.elevation;
            this.transform.applyElevation = layoutParams.applyElevation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillFromConstraints(ConstraintHelper constraintHelper, int i, Constraints.LayoutParams layoutParams) {
            fillFromConstraints(i, layoutParams);
            if (constraintHelper instanceof Barrier) {
                this.layout.mHelperType = 1;
                Barrier barrier = (Barrier) constraintHelper;
                this.layout.mBarrierDirection = barrier.getType();
                this.layout.mReferenceIds = barrier.getReferencedIds();
                this.layout.mBarrierMargin = barrier.getMargin();
            }
        }

        private ConstraintAttribute get(String str, ConstraintAttribute.AttributeType attributeType) {
            if (!this.mCustomConstraints.containsKey(str)) {
                ConstraintAttribute constraintAttribute = new ConstraintAttribute(str, attributeType);
                this.mCustomConstraints.put(str, constraintAttribute);
                return constraintAttribute;
            }
            ConstraintAttribute constraintAttribute2 = this.mCustomConstraints.get(str);
            if (constraintAttribute2.getType() == attributeType) {
                return constraintAttribute2;
            }
            String strValueOf = String.valueOf(constraintAttribute2.getType().name());
            throw new IllegalArgumentException(strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{116, 87, 90, 75, 76, 70, 86, 81, 90, 76, 121, 64, 67, 74, 93, 90, 77, 64, 82, 24, 93, 75, 24, 85, 91, 74, 81, 89, 92, 77, 23, 89, 20}, "784884", 1.63727205E8d).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{123, 9, 15, 23, 70, 70, 89, 15, 15, 16, 115, 64, 76, 20, 8, 6, 71, 64, 93, 70, 8, 23, 18, 85, 84, 20, 4, 5, 86, 77, 24, 7, 65}, "8fad24", 2.028920626E9d)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setColorValue(String str, int i) {
            get(str, ConstraintAttribute.AttributeType.COLOR_TYPE).setColorValue(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setFloatValue(String str, float f) {
            get(str, ConstraintAttribute.AttributeType.FLOAT_TYPE).setFloatValue(f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setIntValue(String str, int i) {
            get(str, ConstraintAttribute.AttributeType.INT_TYPE).setIntValue(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setStringValue(String str, String str2) {
            get(str, ConstraintAttribute.AttributeType.STRING_TYPE).setStringValue(str2);
        }

        public void applyDelta(Constraint constraint) {
            Delta delta = this.mDelta;
            if (delta != null) {
                delta.applyDelta(constraint);
            }
        }

        public void applyTo(ConstraintLayout.LayoutParams layoutParams) {
            layoutParams.leftToLeft = this.layout.leftToLeft;
            layoutParams.leftToRight = this.layout.leftToRight;
            layoutParams.rightToLeft = this.layout.rightToLeft;
            layoutParams.rightToRight = this.layout.rightToRight;
            layoutParams.topToTop = this.layout.topToTop;
            layoutParams.topToBottom = this.layout.topToBottom;
            layoutParams.bottomToTop = this.layout.bottomToTop;
            layoutParams.bottomToBottom = this.layout.bottomToBottom;
            layoutParams.baselineToBaseline = this.layout.baselineToBaseline;
            layoutParams.baselineToTop = this.layout.baselineToTop;
            layoutParams.baselineToBottom = this.layout.baselineToBottom;
            layoutParams.startToEnd = this.layout.startToEnd;
            layoutParams.startToStart = this.layout.startToStart;
            layoutParams.endToStart = this.layout.endToStart;
            layoutParams.endToEnd = this.layout.endToEnd;
            layoutParams.leftMargin = this.layout.leftMargin;
            layoutParams.rightMargin = this.layout.rightMargin;
            layoutParams.topMargin = this.layout.topMargin;
            layoutParams.bottomMargin = this.layout.bottomMargin;
            layoutParams.goneStartMargin = this.layout.goneStartMargin;
            layoutParams.goneEndMargin = this.layout.goneEndMargin;
            layoutParams.goneTopMargin = this.layout.goneTopMargin;
            layoutParams.goneBottomMargin = this.layout.goneBottomMargin;
            layoutParams.horizontalBias = this.layout.horizontalBias;
            layoutParams.verticalBias = this.layout.verticalBias;
            layoutParams.circleConstraint = this.layout.circleConstraint;
            layoutParams.circleRadius = this.layout.circleRadius;
            layoutParams.circleAngle = this.layout.circleAngle;
            layoutParams.dimensionRatio = this.layout.dimensionRatio;
            layoutParams.editorAbsoluteX = this.layout.editorAbsoluteX;
            layoutParams.editorAbsoluteY = this.layout.editorAbsoluteY;
            layoutParams.verticalWeight = this.layout.verticalWeight;
            layoutParams.horizontalWeight = this.layout.horizontalWeight;
            layoutParams.verticalChainStyle = this.layout.verticalChainStyle;
            layoutParams.horizontalChainStyle = this.layout.horizontalChainStyle;
            layoutParams.constrainedWidth = this.layout.constrainedWidth;
            layoutParams.constrainedHeight = this.layout.constrainedHeight;
            layoutParams.matchConstraintDefaultWidth = this.layout.widthDefault;
            layoutParams.matchConstraintDefaultHeight = this.layout.heightDefault;
            layoutParams.matchConstraintMaxWidth = this.layout.widthMax;
            layoutParams.matchConstraintMaxHeight = this.layout.heightMax;
            layoutParams.matchConstraintMinWidth = this.layout.widthMin;
            layoutParams.matchConstraintMinHeight = this.layout.heightMin;
            layoutParams.matchConstraintPercentWidth = this.layout.widthPercent;
            layoutParams.matchConstraintPercentHeight = this.layout.heightPercent;
            layoutParams.orientation = this.layout.orientation;
            layoutParams.guidePercent = this.layout.guidePercent;
            layoutParams.guideBegin = this.layout.guideBegin;
            layoutParams.guideEnd = this.layout.guideEnd;
            layoutParams.width = this.layout.mWidth;
            layoutParams.height = this.layout.mHeight;
            if (this.layout.mConstraintTag != null) {
                layoutParams.constraintTag = this.layout.mConstraintTag;
            }
            layoutParams.wrapBehaviorInParent = this.layout.mWrapBehavior;
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.setMarginStart(this.layout.startMargin);
                layoutParams.setMarginEnd(this.layout.endMargin);
            }
            layoutParams.validate();
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Constraint m4clone() {
            Constraint constraint = new Constraint();
            constraint.layout.copyFrom(this.layout);
            constraint.motion.copyFrom(this.motion);
            constraint.propertySet.copyFrom(this.propertySet);
            constraint.transform.copyFrom(this.transform);
            constraint.mViewId = this.mViewId;
            constraint.mDelta = this.mDelta;
            return constraint;
        }

        public void printDelta(String str) {
            Delta delta = this.mDelta;
            if (delta != null) {
                delta.printDelta(str);
            } else {
                Log.v(str, NPStringFog.decode(new byte[]{37, 36, 121, 48, 121, 17, 40, 50, 21, 42, 109, 125, 45}, "aa5d81", 1.4834998E9f));
            }
        }
    }

    public static class Layout {
        private static final int BARRIER_ALLOWS_GONE_WIDGETS = 75;
        private static final int BARRIER_DIRECTION = 72;
        private static final int BARRIER_MARGIN = 73;
        private static final int BASELINE_TO_BASELINE = 1;
        private static final int BOTTOM_MARGIN = 2;
        private static final int BOTTOM_TO_BOTTOM = 3;
        private static final int BOTTOM_TO_TOP = 4;
        private static final int CHAIN_USE_RTL = 71;
        private static final int CIRCLE = 61;
        private static final int CIRCLE_ANGLE = 63;
        private static final int CIRCLE_RADIUS = 62;
        private static final int CONSTRAINT_REFERENCED_IDS = 74;
        private static final int DIMENSION_RATIO = 5;
        private static final int EDITOR_ABSOLUTE_X = 6;
        private static final int EDITOR_ABSOLUTE_Y = 7;
        private static final int END_MARGIN = 8;
        private static final int END_TO_END = 9;
        private static final int END_TO_START = 10;
        private static final int GONE_BOTTOM_MARGIN = 11;
        private static final int GONE_END_MARGIN = 12;
        private static final int GONE_LEFT_MARGIN = 13;
        private static final int GONE_RIGHT_MARGIN = 14;
        private static final int GONE_START_MARGIN = 15;
        private static final int GONE_TOP_MARGIN = 16;
        private static final int GUIDE_BEGIN = 17;
        private static final int GUIDE_END = 18;
        private static final int GUIDE_PERCENT = 19;
        private static final int HEIGHT_PERCENT = 70;
        private static final int HORIZONTAL_BIAS = 20;
        private static final int HORIZONTAL_STYLE = 39;
        private static final int HORIZONTAL_WEIGHT = 37;
        private static final int LAYOUT_CONSTRAINT_HEIGHT = 42;
        private static final int LAYOUT_CONSTRAINT_WIDTH = 41;
        private static final int LAYOUT_HEIGHT = 21;
        private static final int LAYOUT_WIDTH = 22;
        private static final int LEFT_MARGIN = 23;
        private static final int LEFT_TO_LEFT = 24;
        private static final int LEFT_TO_RIGHT = 25;
        private static final int ORIENTATION = 26;
        private static final int RIGHT_MARGIN = 27;
        private static final int RIGHT_TO_LEFT = 28;
        private static final int RIGHT_TO_RIGHT = 29;
        private static final int START_MARGIN = 30;
        private static final int START_TO_END = 31;
        private static final int START_TO_START = 32;
        private static final int TOP_MARGIN = 33;
        private static final int TOP_TO_BOTTOM = 34;
        private static final int TOP_TO_TOP = 35;
        public static final int UNSET = -1;
        public static final int UNSET_GONE_MARGIN = Integer.MIN_VALUE;
        private static final int UNUSED = 76;
        private static final int VERTICAL_BIAS = 36;
        private static final int VERTICAL_STYLE = 40;
        private static final int VERTICAL_WEIGHT = 38;
        private static final int WIDTH_PERCENT = 69;
        private static SparseIntArray mapToConstant;
        public String mConstraintTag;
        public int mHeight;
        public String mReferenceIdString;
        public int[] mReferenceIds;
        public int mWidth;
        public boolean mIsGuideline = false;
        public boolean mApply = false;
        public boolean mOverride = false;
        public int guideBegin = -1;
        public int guideEnd = -1;
        public float guidePercent = -1.0f;
        public int leftToLeft = -1;
        public int leftToRight = -1;
        public int rightToLeft = -1;
        public int rightToRight = -1;
        public int topToTop = -1;
        public int topToBottom = -1;
        public int bottomToTop = -1;
        public int bottomToBottom = -1;
        public int baselineToBaseline = -1;
        public int baselineToTop = -1;
        public int baselineToBottom = -1;
        public int startToEnd = -1;
        public int startToStart = -1;
        public int endToStart = -1;
        public int endToEnd = -1;
        public float horizontalBias = 0.5f;
        public float verticalBias = 0.5f;
        public String dimensionRatio = null;
        public int circleConstraint = -1;
        public int circleRadius = 0;
        public float circleAngle = 0.0f;
        public int editorAbsoluteX = -1;
        public int editorAbsoluteY = -1;
        public int orientation = -1;
        public int leftMargin = 0;
        public int rightMargin = 0;
        public int topMargin = 0;
        public int bottomMargin = 0;
        public int endMargin = 0;
        public int startMargin = 0;
        public int baselineMargin = 0;
        public int goneLeftMargin = Integer.MIN_VALUE;
        public int goneTopMargin = Integer.MIN_VALUE;
        public int goneRightMargin = Integer.MIN_VALUE;
        public int goneBottomMargin = Integer.MIN_VALUE;
        public int goneEndMargin = Integer.MIN_VALUE;
        public int goneStartMargin = Integer.MIN_VALUE;
        public int goneBaselineMargin = Integer.MIN_VALUE;
        public float verticalWeight = -1.0f;
        public float horizontalWeight = -1.0f;
        public int horizontalChainStyle = 0;
        public int verticalChainStyle = 0;
        public int widthDefault = 0;
        public int heightDefault = 0;
        public int widthMax = 0;
        public int heightMax = 0;
        public int widthMin = 0;
        public int heightMin = 0;
        public float widthPercent = 1.0f;
        public float heightPercent = 1.0f;
        public int mBarrierDirection = -1;
        public int mBarrierMargin = 0;
        public int mHelperType = -1;
        public boolean constrainedWidth = false;
        public boolean constrainedHeight = false;
        public boolean mBarrierAllowsGoneWidgets = true;
        public int mWrapBehavior = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mapToConstant = sparseIntArray;
            sparseIntArray.append(R.styleable.Layout_layout_constraintLeft_toLeftOf, 24);
            mapToConstant.append(R.styleable.Layout_layout_constraintLeft_toRightOf, 25);
            mapToConstant.append(R.styleable.Layout_layout_constraintRight_toLeftOf, 28);
            mapToConstant.append(R.styleable.Layout_layout_constraintRight_toRightOf, 29);
            mapToConstant.append(R.styleable.Layout_layout_constraintTop_toTopOf, 35);
            mapToConstant.append(R.styleable.Layout_layout_constraintTop_toBottomOf, 34);
            mapToConstant.append(R.styleable.Layout_layout_constraintBottom_toTopOf, 4);
            mapToConstant.append(R.styleable.Layout_layout_constraintBottom_toBottomOf, 3);
            mapToConstant.append(R.styleable.Layout_layout_constraintBaseline_toBaselineOf, 1);
            mapToConstant.append(R.styleable.Layout_layout_editor_absoluteX, 6);
            mapToConstant.append(R.styleable.Layout_layout_editor_absoluteY, 7);
            mapToConstant.append(R.styleable.Layout_layout_constraintGuide_begin, 17);
            mapToConstant.append(R.styleable.Layout_layout_constraintGuide_end, 18);
            mapToConstant.append(R.styleable.Layout_layout_constraintGuide_percent, 19);
            mapToConstant.append(R.styleable.Layout_android_orientation, 26);
            mapToConstant.append(R.styleable.Layout_layout_constraintStart_toEndOf, 31);
            mapToConstant.append(R.styleable.Layout_layout_constraintStart_toStartOf, 32);
            mapToConstant.append(R.styleable.Layout_layout_constraintEnd_toStartOf, 10);
            mapToConstant.append(R.styleable.Layout_layout_constraintEnd_toEndOf, 9);
            mapToConstant.append(R.styleable.Layout_layout_goneMarginLeft, 13);
            mapToConstant.append(R.styleable.Layout_layout_goneMarginTop, 16);
            mapToConstant.append(R.styleable.Layout_layout_goneMarginRight, 14);
            mapToConstant.append(R.styleable.Layout_layout_goneMarginBottom, 11);
            mapToConstant.append(R.styleable.Layout_layout_goneMarginStart, 15);
            mapToConstant.append(R.styleable.Layout_layout_goneMarginEnd, 12);
            mapToConstant.append(R.styleable.Layout_layout_constraintVertical_weight, 38);
            mapToConstant.append(R.styleable.Layout_layout_constraintHorizontal_weight, 37);
            mapToConstant.append(R.styleable.Layout_layout_constraintHorizontal_chainStyle, 39);
            mapToConstant.append(R.styleable.Layout_layout_constraintVertical_chainStyle, 40);
            mapToConstant.append(R.styleable.Layout_layout_constraintHorizontal_bias, 20);
            mapToConstant.append(R.styleable.Layout_layout_constraintVertical_bias, 36);
            mapToConstant.append(R.styleable.Layout_layout_constraintDimensionRatio, 5);
            mapToConstant.append(R.styleable.Layout_layout_constraintLeft_creator, 76);
            mapToConstant.append(R.styleable.Layout_layout_constraintTop_creator, 76);
            mapToConstant.append(R.styleable.Layout_layout_constraintRight_creator, 76);
            mapToConstant.append(R.styleable.Layout_layout_constraintBottom_creator, 76);
            mapToConstant.append(R.styleable.Layout_layout_constraintBaseline_creator, 76);
            mapToConstant.append(R.styleable.Layout_android_layout_marginLeft, 23);
            mapToConstant.append(R.styleable.Layout_android_layout_marginRight, 27);
            mapToConstant.append(R.styleable.Layout_android_layout_marginStart, 30);
            mapToConstant.append(R.styleable.Layout_android_layout_marginEnd, 8);
            mapToConstant.append(R.styleable.Layout_android_layout_marginTop, 33);
            mapToConstant.append(R.styleable.Layout_android_layout_marginBottom, 2);
            mapToConstant.append(R.styleable.Layout_android_layout_width, 22);
            mapToConstant.append(R.styleable.Layout_android_layout_height, 21);
            mapToConstant.append(R.styleable.Layout_layout_constraintWidth, 41);
            mapToConstant.append(R.styleable.Layout_layout_constraintHeight, 42);
            mapToConstant.append(R.styleable.Layout_layout_constrainedWidth, 41);
            mapToConstant.append(R.styleable.Layout_layout_constrainedHeight, 42);
            mapToConstant.append(R.styleable.Layout_layout_wrapBehaviorInParent, 97);
            mapToConstant.append(R.styleable.Layout_layout_constraintCircle, 61);
            mapToConstant.append(R.styleable.Layout_layout_constraintCircleRadius, 62);
            mapToConstant.append(R.styleable.Layout_layout_constraintCircleAngle, 63);
            mapToConstant.append(R.styleable.Layout_layout_constraintWidth_percent, 69);
            mapToConstant.append(R.styleable.Layout_layout_constraintHeight_percent, 70);
            mapToConstant.append(R.styleable.Layout_chainUseRtl, 71);
            mapToConstant.append(R.styleable.Layout_barrierDirection, 72);
            mapToConstant.append(R.styleable.Layout_barrierMargin, 73);
            mapToConstant.append(R.styleable.Layout_constraint_referenced_ids, 74);
            mapToConstant.append(R.styleable.Layout_barrierAllowsGoneWidgets, 75);
        }

        public void copyFrom(Layout layout) {
            this.mIsGuideline = layout.mIsGuideline;
            this.mWidth = layout.mWidth;
            this.mApply = layout.mApply;
            this.mHeight = layout.mHeight;
            this.guideBegin = layout.guideBegin;
            this.guideEnd = layout.guideEnd;
            this.guidePercent = layout.guidePercent;
            this.leftToLeft = layout.leftToLeft;
            this.leftToRight = layout.leftToRight;
            this.rightToLeft = layout.rightToLeft;
            this.rightToRight = layout.rightToRight;
            this.topToTop = layout.topToTop;
            this.topToBottom = layout.topToBottom;
            this.bottomToTop = layout.bottomToTop;
            this.bottomToBottom = layout.bottomToBottom;
            this.baselineToBaseline = layout.baselineToBaseline;
            this.baselineToTop = layout.baselineToTop;
            this.baselineToBottom = layout.baselineToBottom;
            this.startToEnd = layout.startToEnd;
            this.startToStart = layout.startToStart;
            this.endToStart = layout.endToStart;
            this.endToEnd = layout.endToEnd;
            this.horizontalBias = layout.horizontalBias;
            this.verticalBias = layout.verticalBias;
            this.dimensionRatio = layout.dimensionRatio;
            this.circleConstraint = layout.circleConstraint;
            this.circleRadius = layout.circleRadius;
            this.circleAngle = layout.circleAngle;
            this.editorAbsoluteX = layout.editorAbsoluteX;
            this.editorAbsoluteY = layout.editorAbsoluteY;
            this.orientation = layout.orientation;
            this.leftMargin = layout.leftMargin;
            this.rightMargin = layout.rightMargin;
            this.topMargin = layout.topMargin;
            this.bottomMargin = layout.bottomMargin;
            this.endMargin = layout.endMargin;
            this.startMargin = layout.startMargin;
            this.baselineMargin = layout.baselineMargin;
            this.goneLeftMargin = layout.goneLeftMargin;
            this.goneTopMargin = layout.goneTopMargin;
            this.goneRightMargin = layout.goneRightMargin;
            this.goneBottomMargin = layout.goneBottomMargin;
            this.goneEndMargin = layout.goneEndMargin;
            this.goneStartMargin = layout.goneStartMargin;
            this.goneBaselineMargin = layout.goneBaselineMargin;
            this.verticalWeight = layout.verticalWeight;
            this.horizontalWeight = layout.horizontalWeight;
            this.horizontalChainStyle = layout.horizontalChainStyle;
            this.verticalChainStyle = layout.verticalChainStyle;
            this.widthDefault = layout.widthDefault;
            this.heightDefault = layout.heightDefault;
            this.widthMax = layout.widthMax;
            this.heightMax = layout.heightMax;
            this.widthMin = layout.widthMin;
            this.heightMin = layout.heightMin;
            this.widthPercent = layout.widthPercent;
            this.heightPercent = layout.heightPercent;
            this.mBarrierDirection = layout.mBarrierDirection;
            this.mBarrierMargin = layout.mBarrierMargin;
            this.mHelperType = layout.mHelperType;
            this.mConstraintTag = layout.mConstraintTag;
            int[] iArr = layout.mReferenceIds;
            if (iArr == null || layout.mReferenceIdString != null) {
                this.mReferenceIds = null;
            } else {
                this.mReferenceIds = Arrays.copyOf(iArr, iArr.length);
            }
            this.mReferenceIdString = layout.mReferenceIdString;
            this.constrainedWidth = layout.constrainedWidth;
            this.constrainedHeight = layout.constrainedHeight;
            this.mBarrierAllowsGoneWidgets = layout.mBarrierAllowsGoneWidgets;
            this.mWrapBehavior = layout.mWrapBehavior;
        }

        public void dump(MotionScene motionScene, StringBuilder sb) {
            int i = 0;
            Field[] declaredFields = getClass().getDeclaredFields();
            sb.append("\n");
            while (true) {
                int i2 = i;
                if (i2 >= declaredFields.length) {
                    return;
                }
                Field field = declaredFields[i2];
                String name = field.getName();
                if (!Modifier.isStatic(field.getModifiers())) {
                    try {
                        Object obj = field.get(this);
                        Class<?> type = field.getType();
                        if (type == Integer.TYPE) {
                            Integer num = (Integer) obj;
                            if (num.intValue() != -1) {
                                Object objLookUpConstraintName = motionScene.lookUpConstraintName(num.intValue());
                                sb.append("    ");
                                sb.append(name);
                                sb.append(NPStringFog.decode(new byte[]{22, 12, 24, 23}, "618577", true, false));
                                Object obj2 = num;
                                if (objLookUpConstraintName != null) {
                                    obj2 = objLookUpConstraintName;
                                }
                                sb.append(obj2);
                                sb.append(NPStringFog.decode(new byte[]{16, 57}, "2393f0", 2795));
                            }
                        } else if (type == Float.TYPE) {
                            Float f = (Float) obj;
                            if (f.floatValue() != -1.0f) {
                                sb.append("    ");
                                sb.append(name);
                                sb.append(NPStringFog.decode(new byte[]{24, 12, 17, 65}, "811c6e", true, true));
                                sb.append(f);
                                sb.append(NPStringFog.decode(new byte[]{26, 110}, "8d0903", 1389891064L));
                            }
                        }
                    } catch (IllegalAccessException e) {
                        e.printStackTrace();
                    }
                }
                i = i2 + 1;
            }
        }

        void fillFromAttributeList(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Layout);
            this.mApply = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                switch (mapToConstant.get(index)) {
                    case 1:
                        this.baselineToBaseline = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.baselineToBaseline);
                        break;
                    case 2:
                        this.bottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.bottomMargin);
                        break;
                    case 3:
                        this.bottomToBottom = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.bottomToBottom);
                        break;
                    case 4:
                        this.bottomToTop = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.bottomToTop);
                        break;
                    case 5:
                        this.dimensionRatio = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.editorAbsoluteX = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteX);
                        break;
                    case 7:
                        this.editorAbsoluteY = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.editorAbsoluteY);
                        break;
                    case 8:
                        if (Build.VERSION.SDK_INT >= 17) {
                            this.endMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.endMargin);
                        }
                        break;
                    case 9:
                        this.endToEnd = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.endToEnd);
                        break;
                    case 10:
                        this.endToStart = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.endToStart);
                        break;
                    case 11:
                        this.goneBottomMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneBottomMargin);
                        break;
                    case 12:
                        this.goneEndMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneEndMargin);
                        break;
                    case 13:
                        this.goneLeftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneLeftMargin);
                        break;
                    case 14:
                        this.goneRightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneRightMargin);
                        break;
                    case 15:
                        this.goneStartMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneStartMargin);
                        break;
                    case 16:
                        this.goneTopMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneTopMargin);
                        break;
                    case 17:
                        this.guideBegin = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.guideBegin);
                        break;
                    case 18:
                        this.guideEnd = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.guideEnd);
                        break;
                    case 19:
                        this.guidePercent = typedArrayObtainStyledAttributes.getFloat(index, this.guidePercent);
                        break;
                    case 20:
                        this.horizontalBias = typedArrayObtainStyledAttributes.getFloat(index, this.horizontalBias);
                        break;
                    case 21:
                        this.mHeight = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.mHeight);
                        break;
                    case 22:
                        this.mWidth = typedArrayObtainStyledAttributes.getLayoutDimension(index, this.mWidth);
                        break;
                    case 23:
                        this.leftMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.leftMargin);
                        break;
                    case 24:
                        this.leftToLeft = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.leftToLeft);
                        break;
                    case 25:
                        this.leftToRight = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.leftToRight);
                        break;
                    case 26:
                        this.orientation = typedArrayObtainStyledAttributes.getInt(index, this.orientation);
                        break;
                    case 27:
                        this.rightMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.rightMargin);
                        break;
                    case 28:
                        this.rightToLeft = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.rightToLeft);
                        break;
                    case 29:
                        this.rightToRight = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.rightToRight);
                        break;
                    case 30:
                        if (Build.VERSION.SDK_INT >= 17) {
                            this.startMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.startMargin);
                        }
                        break;
                    case 31:
                        this.startToEnd = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.startToEnd);
                        break;
                    case 32:
                        this.startToStart = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.startToStart);
                        break;
                    case 33:
                        this.topMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.topMargin);
                        break;
                    case 34:
                        this.topToBottom = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.topToBottom);
                        break;
                    case 35:
                        this.topToTop = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.topToTop);
                        break;
                    case 36:
                        this.verticalBias = typedArrayObtainStyledAttributes.getFloat(index, this.verticalBias);
                        break;
                    case 37:
                        this.horizontalWeight = typedArrayObtainStyledAttributes.getFloat(index, this.horizontalWeight);
                        break;
                    case 38:
                        this.verticalWeight = typedArrayObtainStyledAttributes.getFloat(index, this.verticalWeight);
                        break;
                    case 39:
                        this.horizontalChainStyle = typedArrayObtainStyledAttributes.getInt(index, this.horizontalChainStyle);
                        break;
                    case 40:
                        this.verticalChainStyle = typedArrayObtainStyledAttributes.getInt(index, this.verticalChainStyle);
                        break;
                    case 41:
                        ConstraintSet.parseDimensionConstraints(this, typedArrayObtainStyledAttributes, index, 0);
                        break;
                    case 42:
                        ConstraintSet.parseDimensionConstraints(this, typedArrayObtainStyledAttributes, index, 1);
                        break;
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 60:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                    case 68:
                    case 78:
                    case 79:
                    case 82:
                    case 83:
                    case 84:
                    case 85:
                    case 86:
                    case 87:
                    case 88:
                    case 89:
                    case 90:
                    case 95:
                    case 96:
                    default:
                        String hexString = Integer.toHexString(index);
                        int i2 = mapToConstant.get(index);
                        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 34);
                        sb.append(NPStringFog.decode(new byte[]{52, 10, 15, 8, 89, 66, 15, 68, 5, 18, 66, 71, 8, 6, 17, 18, 83, 21, 81, 28}, "addf65", -6.97320283E8d));
                        sb.append(hexString);
                        sb.append("   ");
                        sb.append(i2);
                        Log.w(NPStringFog.decode(new byte[]{113, 95, 94, 16, 64, 69, 83, 89, 94, 23, 103, 82, 70}, "200c47", 1.9672224E9f), sb.toString());
                        break;
                    case 54:
                        this.widthDefault = typedArrayObtainStyledAttributes.getInt(index, this.widthDefault);
                        break;
                    case 55:
                        this.heightDefault = typedArrayObtainStyledAttributes.getInt(index, this.heightDefault);
                        break;
                    case 56:
                        this.widthMax = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.widthMax);
                        break;
                    case 57:
                        this.heightMax = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.heightMax);
                        break;
                    case 58:
                        this.widthMin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.widthMin);
                        break;
                    case 59:
                        this.heightMin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.heightMin);
                        break;
                    case 61:
                        this.circleConstraint = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.circleConstraint);
                        break;
                    case 62:
                        this.circleRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.circleRadius);
                        break;
                    case 63:
                        this.circleAngle = typedArrayObtainStyledAttributes.getFloat(index, this.circleAngle);
                        break;
                    case 69:
                        this.widthPercent = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                        break;
                    case 70:
                        this.heightPercent = typedArrayObtainStyledAttributes.getFloat(index, 1.0f);
                        break;
                    case 71:
                        Log.e(NPStringFog.decode(new byte[]{38, 86, 90, 64, 23, 20, 4, 80, 90, 71, 48, 3, 17}, "e943cf", -1.039300229E9d), NPStringFog.decode(new byte[]{114, 96, 54, 103, 112, 40, 101, 121, 61, 21, 96, 40, 98, 96, 52, 101, 122, 52, 101, 112, 32}, "15d55f", 5.37371969E8d));
                        break;
                    case 72:
                        this.mBarrierDirection = typedArrayObtainStyledAttributes.getInt(index, this.mBarrierDirection);
                        break;
                    case 73:
                        this.mBarrierMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.mBarrierMargin);
                        break;
                    case 74:
                        this.mReferenceIdString = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    case 75:
                        this.mBarrierAllowsGoneWidgets = typedArrayObtainStyledAttributes.getBoolean(index, this.mBarrierAllowsGoneWidgets);
                        break;
                    case 76:
                        String hexString2 = Integer.toHexString(index);
                        int i3 = mapToConstant.get(index);
                        StringBuilder sb2 = new StringBuilder(String.valueOf(hexString2).length() + 33);
                        sb2.append(NPStringFog.decode(new byte[]{17, 91, 64, 17, 85, 92, 68, 84, 65, 22, 66, 81, 6, 64, 65, 7, 16, 8, 28}, "d55b08", true, false));
                        sb2.append(hexString2);
                        sb2.append("   ");
                        sb2.append(i3);
                        Log.w(NPStringFog.decode(new byte[]{115, 88, 90, 16, 18, 20, 81, 94, 90, 23, 53, 3, 68}, "074cff", false, true), sb2.toString());
                        break;
                    case 77:
                        this.mConstraintTag = typedArrayObtainStyledAttributes.getString(index);
                        break;
                    case 80:
                        this.constrainedWidth = typedArrayObtainStyledAttributes.getBoolean(index, this.constrainedWidth);
                        break;
                    case 81:
                        this.constrainedHeight = typedArrayObtainStyledAttributes.getBoolean(index, this.constrainedHeight);
                        break;
                    case 91:
                        this.baselineToTop = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.baselineToTop);
                        break;
                    case 92:
                        this.baselineToBottom = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.baselineToBottom);
                        break;
                    case 93:
                        this.baselineMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.baselineMargin);
                        break;
                    case 94:
                        this.goneBaselineMargin = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.goneBaselineMargin);
                        break;
                    case 97:
                        this.mWrapBehavior = typedArrayObtainStyledAttributes.getInt(index, this.mWrapBehavior);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class Motion {
        private static final int ANIMATE_CIRCLE_ANGLE_TO = 6;
        private static final int ANIMATE_RELATIVE_TO = 5;
        private static final int INTERPOLATOR_REFERENCE_ID = -2;
        private static final int INTERPOLATOR_UNDEFINED = -3;
        private static final int MOTION_DRAW_PATH = 4;
        private static final int MOTION_STAGGER = 7;
        private static final int PATH_MOTION_ARC = 2;
        private static final int QUANTIZE_MOTION_INTERPOLATOR = 10;
        private static final int QUANTIZE_MOTION_PHASE = 9;
        private static final int QUANTIZE_MOTION_STEPS = 8;
        private static final int SPLINE_STRING = -1;
        private static final int TRANSITION_EASING = 3;
        private static final int TRANSITION_PATH_ROTATE = 1;
        private static SparseIntArray mapToConstant;
        public boolean mApply = false;
        public int mAnimateRelativeTo = -1;
        public int mAnimateCircleAngleTo = 0;
        public String mTransitionEasing = null;
        public int mPathMotionArc = -1;
        public int mDrawPath = 0;
        public float mMotionStagger = Float.NaN;
        public int mPolarRelativeTo = -1;
        public float mPathRotate = Float.NaN;
        public float mQuantizeMotionPhase = Float.NaN;
        public int mQuantizeMotionSteps = -1;
        public String mQuantizeInterpolatorString = null;
        public int mQuantizeInterpolatorType = -3;
        public int mQuantizeInterpolatorID = -1;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mapToConstant = sparseIntArray;
            sparseIntArray.append(R.styleable.Motion_motionPathRotate, 1);
            mapToConstant.append(R.styleable.Motion_pathMotionArc, 2);
            mapToConstant.append(R.styleable.Motion_transitionEasing, 3);
            mapToConstant.append(R.styleable.Motion_drawPath, 4);
            mapToConstant.append(R.styleable.Motion_animateRelativeTo, 5);
            mapToConstant.append(R.styleable.Motion_animateCircleAngleTo, 6);
            mapToConstant.append(R.styleable.Motion_motionStagger, 7);
            mapToConstant.append(R.styleable.Motion_quantizeMotionSteps, 8);
            mapToConstant.append(R.styleable.Motion_quantizeMotionPhase, 9);
            mapToConstant.append(R.styleable.Motion_quantizeMotionInterpolator, 10);
        }

        public void copyFrom(Motion motion) {
            this.mApply = motion.mApply;
            this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
            this.mTransitionEasing = motion.mTransitionEasing;
            this.mPathMotionArc = motion.mPathMotionArc;
            this.mDrawPath = motion.mDrawPath;
            this.mPathRotate = motion.mPathRotate;
            this.mMotionStagger = motion.mMotionStagger;
            this.mPolarRelativeTo = motion.mPolarRelativeTo;
        }

        void fillFromAttributeList(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Motion);
            this.mApply = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                switch (mapToConstant.get(index)) {
                    case 1:
                        this.mPathRotate = typedArrayObtainStyledAttributes.getFloat(index, this.mPathRotate);
                        break;
                    case 2:
                        this.mPathMotionArc = typedArrayObtainStyledAttributes.getInt(index, this.mPathMotionArc);
                        break;
                    case 3:
                        if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                            this.mTransitionEasing = typedArrayObtainStyledAttributes.getString(index);
                        } else {
                            this.mTransitionEasing = Easing.NAMED_EASING[typedArrayObtainStyledAttributes.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        this.mDrawPath = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.mAnimateRelativeTo = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.mAnimateRelativeTo);
                        break;
                    case 6:
                        this.mAnimateCircleAngleTo = typedArrayObtainStyledAttributes.getInteger(index, this.mAnimateCircleAngleTo);
                        break;
                    case 7:
                        this.mMotionStagger = typedArrayObtainStyledAttributes.getFloat(index, this.mMotionStagger);
                        break;
                    case 8:
                        this.mQuantizeMotionSteps = typedArrayObtainStyledAttributes.getInteger(index, this.mQuantizeMotionSteps);
                        break;
                    case 9:
                        this.mQuantizeMotionPhase = typedArrayObtainStyledAttributes.getFloat(index, this.mQuantizeMotionPhase);
                        break;
                    case 10:
                        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(index);
                        if (typedValuePeekValue.type == 1) {
                            int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            this.mQuantizeInterpolatorID = resourceId;
                            if (resourceId != -1) {
                                this.mQuantizeInterpolatorType = -2;
                            }
                        } else if (typedValuePeekValue.type == 3) {
                            String string = typedArrayObtainStyledAttributes.getString(index);
                            this.mQuantizeInterpolatorString = string;
                            if (string.indexOf(NPStringFog.decode(new byte[]{23}, "8db90e", -7.09298896E8d)) > 0) {
                                this.mQuantizeInterpolatorID = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                                this.mQuantizeInterpolatorType = -2;
                            } else {
                                this.mQuantizeInterpolatorType = -1;
                            }
                        } else {
                            this.mQuantizeInterpolatorType = typedArrayObtainStyledAttributes.getInteger(index, this.mQuantizeInterpolatorID);
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class PropertySet {
        public boolean mApply = false;
        public int visibility = 0;
        public int mVisibilityMode = 0;
        public float alpha = 1.0f;
        public float mProgress = Float.NaN;

        public void copyFrom(PropertySet propertySet) {
            this.mApply = propertySet.mApply;
            this.visibility = propertySet.visibility;
            this.alpha = propertySet.alpha;
            this.mProgress = propertySet.mProgress;
            this.mVisibilityMode = propertySet.mVisibilityMode;
        }

        void fillFromAttributeList(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.PropertySet);
            this.mApply = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.PropertySet_android_alpha) {
                    this.alpha = typedArrayObtainStyledAttributes.getFloat(index, this.alpha);
                } else if (index == R.styleable.PropertySet_android_visibility) {
                    this.visibility = typedArrayObtainStyledAttributes.getInt(index, this.visibility);
                    this.visibility = ConstraintSet.VISIBILITY_FLAGS[this.visibility];
                } else if (index == R.styleable.PropertySet_visibilityMode) {
                    this.mVisibilityMode = typedArrayObtainStyledAttributes.getInt(index, this.mVisibilityMode);
                } else if (index == R.styleable.PropertySet_motionProgress) {
                    this.mProgress = typedArrayObtainStyledAttributes.getFloat(index, this.mProgress);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static class Transform {
        private static final int ELEVATION = 11;
        private static final int ROTATION = 1;
        private static final int ROTATION_X = 2;
        private static final int ROTATION_Y = 3;
        private static final int SCALE_X = 4;
        private static final int SCALE_Y = 5;
        private static final int TRANSFORM_PIVOT_TARGET = 12;
        private static final int TRANSFORM_PIVOT_X = 6;
        private static final int TRANSFORM_PIVOT_Y = 7;
        private static final int TRANSLATION_X = 8;
        private static final int TRANSLATION_Y = 9;
        private static final int TRANSLATION_Z = 10;
        private static SparseIntArray mapToConstant;
        public boolean mApply = false;
        public float rotation = 0.0f;
        public float rotationX = 0.0f;
        public float rotationY = 0.0f;
        public float scaleX = 1.0f;
        public float scaleY = 1.0f;
        public float transformPivotX = Float.NaN;
        public float transformPivotY = Float.NaN;
        public int transformPivotTarget = -1;
        public float translationX = 0.0f;
        public float translationY = 0.0f;
        public float translationZ = 0.0f;
        public boolean applyElevation = false;
        public float elevation = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            mapToConstant = sparseIntArray;
            sparseIntArray.append(R.styleable.Transform_android_rotation, 1);
            mapToConstant.append(R.styleable.Transform_android_rotationX, 2);
            mapToConstant.append(R.styleable.Transform_android_rotationY, 3);
            mapToConstant.append(R.styleable.Transform_android_scaleX, 4);
            mapToConstant.append(R.styleable.Transform_android_scaleY, 5);
            mapToConstant.append(R.styleable.Transform_android_transformPivotX, 6);
            mapToConstant.append(R.styleable.Transform_android_transformPivotY, 7);
            mapToConstant.append(R.styleable.Transform_android_translationX, 8);
            mapToConstant.append(R.styleable.Transform_android_translationY, 9);
            mapToConstant.append(R.styleable.Transform_android_translationZ, 10);
            mapToConstant.append(R.styleable.Transform_android_elevation, 11);
            mapToConstant.append(R.styleable.Transform_transformPivotTarget, 12);
        }

        public void copyFrom(Transform transform) {
            this.mApply = transform.mApply;
            this.rotation = transform.rotation;
            this.rotationX = transform.rotationX;
            this.rotationY = transform.rotationY;
            this.scaleX = transform.scaleX;
            this.scaleY = transform.scaleY;
            this.transformPivotX = transform.transformPivotX;
            this.transformPivotY = transform.transformPivotY;
            this.transformPivotTarget = transform.transformPivotTarget;
            this.translationX = transform.translationX;
            this.translationY = transform.translationY;
            this.translationZ = transform.translationZ;
            this.applyElevation = transform.applyElevation;
            this.elevation = transform.elevation;
        }

        void fillFromAttributeList(Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Transform);
            this.mApply = true;
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                switch (mapToConstant.get(index)) {
                    case 1:
                        this.rotation = typedArrayObtainStyledAttributes.getFloat(index, this.rotation);
                        break;
                    case 2:
                        this.rotationX = typedArrayObtainStyledAttributes.getFloat(index, this.rotationX);
                        break;
                    case 3:
                        this.rotationY = typedArrayObtainStyledAttributes.getFloat(index, this.rotationY);
                        break;
                    case 4:
                        this.scaleX = typedArrayObtainStyledAttributes.getFloat(index, this.scaleX);
                        break;
                    case 5:
                        this.scaleY = typedArrayObtainStyledAttributes.getFloat(index, this.scaleY);
                        break;
                    case 6:
                        this.transformPivotX = typedArrayObtainStyledAttributes.getDimension(index, this.transformPivotX);
                        break;
                    case 7:
                        this.transformPivotY = typedArrayObtainStyledAttributes.getDimension(index, this.transformPivotY);
                        break;
                    case 8:
                        this.translationX = typedArrayObtainStyledAttributes.getDimension(index, this.translationX);
                        break;
                    case 9:
                        this.translationY = typedArrayObtainStyledAttributes.getDimension(index, this.translationY);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.translationZ = typedArrayObtainStyledAttributes.getDimension(index, this.translationZ);
                        }
                        break;
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.applyElevation = true;
                            this.elevation = typedArrayObtainStyledAttributes.getDimension(index, this.elevation);
                        }
                        break;
                    case 12:
                        this.transformPivotTarget = ConstraintSet.lookupID(typedArrayObtainStyledAttributes, index, this.transformPivotTarget);
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    class WriteJsonEngine {
        private static final String SPACE = NPStringFog.decode(new byte[]{19, 20, 16, 70, 69, 19, 19}, "340fe3", false, false);
        Context context;
        int flags;
        ConstraintLayout layout;
        final ConstraintSet this$0;
        Writer writer;
        int unknownCount = 0;
        final String LEFT = NPStringFog.decode(new byte[]{16, 84, 0, 85, 69, 67}, "78e31d", false);
        final String RIGHT = NPStringFog.decode(new byte[]{30, 71, 91, 3, 11, 70, 30}, "952dc2", true);
        final String BASELINE = NPStringFog.decode(new byte[]{16, 1, 88, 23, 1, 14, 94, 13, 92, 67}, "7c9ddb", -1952843154L);
        final String BOTTOM = NPStringFog.decode(new byte[]{67, 1, 90, 64, 71, 14, 9, 68}, "dc543a", 1.908042579E9d);
        final String TOP = NPStringFog.decode(new byte[]{19, 17, 88, 70, 68}, "4e76c1", false, true);
        final String START = NPStringFog.decode(new byte[]{22, 17, 69, 0, 23, 66, 22}, "1b1ae6", 307440564L);
        final String END = NPStringFog.decode(new byte[]{23, 0, 94, 2, 22}, "0e0f15", false);
        HashMap<Integer, String> idMap = new HashMap<>();

        WriteJsonEngine(ConstraintSet constraintSet, Writer writer, ConstraintLayout constraintLayout, int i) throws IOException {
            this.this$0 = constraintSet;
            this.writer = writer;
            this.layout = constraintLayout;
            this.context = constraintLayout.getContext();
            this.flags = i;
        }

        private void writeDimension(String str, int i, int i2, float f, int i3, int i4, boolean z) throws IOException {
            if (i != 0) {
                if (i == -2) {
                    Writer writer = this.writer;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 16);
                    sb.append("       ");
                    sb.append(str);
                    sb.append(NPStringFog.decode(new byte[]{2, 19, 23, 66, 23, 86, 72, 20, 58}, "8305e7", true));
                    writer.write(sb.toString());
                    return;
                }
                if (i == -1) {
                    Writer writer2 = this.writer;
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 18);
                    sb2.append("       ");
                    sb2.append(str);
                    sb2.append(NPStringFog.decode(new byte[]{13, 18, 69, 20, 5, 75, 82, 92, 22, 67, 110}, "72bdd9", 2.020277172E9d));
                    writer2.write(sb2.toString());
                    return;
                }
                Writer writer3 = this.writer;
                StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 22);
                sb3.append("       ");
                sb3.append(str);
                sb3.append(NPStringFog.decode(new byte[]{9, 66}, "3b9b34", 564939045L));
                sb3.append(i);
                sb3.append(NPStringFog.decode(new byte[]{79, 63}, "c5b455", -8131));
                writer3.write(sb3.toString());
                return;
            }
            if (i4 == -1 && i3 == -1) {
                switch (i2) {
                    case 1:
                        Writer writer4 = this.writer;
                        StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 24);
                        sb4.append("       ");
                        sb4.append(str);
                        sb4.append(NPStringFog.decode(new byte[]{9, 70, 21, 93, 11, 89, 12, 89, 13, 93, 11, 89, 12, 89, 21, 78, 62}, "3f2b4f", -1845634729L));
                        writer4.write(sb4.toString());
                        break;
                    case 2:
                        Writer writer5 = this.writer;
                        StringBuilder sb5 = new StringBuilder(String.valueOf(str).length() + 29);
                        sb5.append("       ");
                        sb5.append(str);
                        sb5.append(NPStringFog.decode(new byte[]{14, 17, 65}, "41f499", true, false));
                        sb5.append(f);
                        sb5.append(NPStringFog.decode(new byte[]{28, 69, 74, 105}, "9bfced", 1.39924549E9d));
                        writer5.write(sb5.toString());
                        break;
                }
            }
            switch (i2) {
                case 0:
                    Writer writer6 = this.writer;
                    StringBuilder sb6 = new StringBuilder(String.valueOf(str).length() + 46);
                    sb6.append("       ");
                    sb6.append(str);
                    sb6.append(NPStringFog.decode(new byte[]{9, 67, 24, 20, 74, 70, 65, 6, 2, 87, 30, 22, 31}, "3cc396", -1165936821L));
                    sb6.append(i3);
                    sb6.append(NPStringFog.decode(new byte[]{31, 25}, "39e7b9", 6.51708198E8d));
                    sb6.append(i4);
                    sb6.append(NPStringFog.decode(new byte[]{73, 50}, "484235", false));
                    writer6.write(sb6.toString());
                    break;
                case 1:
                    Writer writer7 = this.writer;
                    StringBuilder sb7 = new StringBuilder(String.valueOf(str).length() + 44);
                    sb7.append("       ");
                    sb7.append(str);
                    sb7.append(NPStringFog.decode(new byte[]{9, 17, 67, 19, 17, 70, 82, 65, 31, 20, 74}, "3184f4", 2.058590216E9d));
                    sb7.append(i3);
                    sb7.append(NPStringFog.decode(new byte[]{78, 65}, "bac6e4", false));
                    sb7.append(i4);
                    sb7.append(NPStringFog.decode(new byte[]{74, 62}, "74de55", -2.29658933E8d));
                    writer7.write(sb7.toString());
                    break;
                case 2:
                    Writer writer8 = this.writer;
                    StringBuilder sb8 = new StringBuilder(String.valueOf(str).length() + 56);
                    sb8.append("       ");
                    sb8.append(str);
                    sb8.append(NPStringFog.decode(new byte[]{13, 65, 26, 70}, "7aaa5e", false, true));
                    sb8.append(f);
                    sb8.append(NPStringFog.decode(new byte[]{30, 67, 23, 73}, "9f7ed3", 1.6021391E9f));
                    sb8.append(i3);
                    sb8.append(NPStringFog.decode(new byte[]{77, 65}, "aa1897", true, false));
                    sb8.append(i4);
                    sb8.append(NPStringFog.decode(new byte[]{25, 60}, "d6304d", true, false));
                    writer8.write(sb8.toString());
                    break;
            }
        }

        private void writeGuideline(int i, int i2, int i3, float f) {
        }

        String getName(int i) {
            if (this.idMap.containsKey(Integer.valueOf(i))) {
                String str = this.idMap.get(Integer.valueOf(i));
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 2);
                sb.append(NPStringFog.decode(new byte[]{65}, "fae521", false));
                sb.append(str);
                sb.append(NPStringFog.decode(new byte[]{67}, "dcaa2e", false, true));
                return sb.toString();
            }
            if (i == 0) {
                return NPStringFog.decode(new byte[]{69, 73, 7, 66, 81, 94, 22, 30}, "b9f040", -4.24521759E8d);
            }
            String strLookup = lookup(i);
            this.idMap.put(Integer.valueOf(i), strLookup);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strLookup).length() + 2);
            sb2.append(NPStringFog.decode(new byte[]{18}, "5e3aa4", -4.73652366E8d));
            sb2.append(strLookup);
            sb2.append(NPStringFog.decode(new byte[]{18}, "538539", 24429));
            return sb2.toString();
        }

        String lookup(int i) {
            String string;
            try {
                if (i != -1) {
                    string = this.context.getResources().getResourceEntryName(i);
                } else {
                    int i2 = this.unknownCount + 1;
                    this.unknownCount = i2;
                    StringBuilder sb = new StringBuilder(18);
                    sb.append(NPStringFog.decode(new byte[]{19, 90, 95, 90, 12, 17, 8}, "f444cf", false));
                    sb.append(i2);
                    string = sb.toString();
                }
                return string;
            } catch (Exception e) {
                int i3 = this.unknownCount + 1;
                this.unknownCount = i3;
                StringBuilder sb2 = new StringBuilder(18);
                sb2.append(NPStringFog.decode(new byte[]{23, 8, 92, 89, 13, 19, 12}, "bf77bd", -9143));
                sb2.append(i3);
                return sb2.toString();
            }
        }

        void writeCircle(int i, float f, int i2) throws IOException {
            if (i == -1) {
                return;
            }
            this.writer.write(NPStringFog.decode(new byte[]{19, 65, 19, 18, 16, 66, 19, 2, 90, 64, 83, 14, 86}, "3a320b", -7.446469E8f));
            this.writer.write(NPStringFog.decode(new byte[]{9, 62}, "3ea15c", true));
            this.writer.write(getName(i));
            Writer writer = this.writer;
            StringBuilder sb = new StringBuilder(17);
            sb.append(NPStringFog.decode(new byte[]{21, 70}, "9f8793", 1928000619L));
            sb.append(f);
            writer.write(sb.toString());
            Writer writer2 = this.writer;
            StringBuilder sb2 = new StringBuilder(12);
            sb2.append(i2);
            sb2.append(NPStringFog.decode(new byte[]{107}, "60701d", -235797843L));
            writer2.write(sb2.toString());
        }

        void writeConstraint(String str, int i, String str2, int i2, int i3) throws IOException {
            if (i == -1) {
                return;
            }
            Writer writer = this.writer;
            String strValueOf = String.valueOf("       ");
            String strValueOf2 = String.valueOf(str);
            writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            this.writer.write(NPStringFog.decode(new byte[]{95, 63}, "ed279e", false));
            this.writer.write(getName(i));
            this.writer.write(NPStringFog.decode(new byte[]{65, 24, 68}, "a4d953", true));
            this.writer.write(str2);
            if (i2 != 0) {
                Writer writer2 = this.writer;
                StringBuilder sb = new StringBuilder(14);
                sb.append(NPStringFog.decode(new byte[]{22, 29, 21}, "615641", true));
                sb.append(i2);
                writer2.write(sb.toString());
            }
            this.writer.write(NPStringFog.decode(new byte[]{108, 30, 107}, "12a21d", true));
        }

        void writeLayout() throws IOException {
            this.writer.write(NPStringFog.decode(new byte[]{50, 30, 113, 9, 86, 67, 76, 75, 83, 15, 86, 68, 107, 92, 70, 65, 2, 75, 50}, "892f80", 1595519191L));
            for (Integer num : this.this$0.mConstraints.keySet()) {
                Constraint constraint = (Constraint) this.this$0.mConstraints.get(num);
                this.writer.write(String.valueOf(getName(num.intValue())).concat(NPStringFog.decode(new byte[]{91, 75, 111}, "a0eb52", 92240557L)));
                Layout layout = constraint.layout;
                writeDimension(NPStringFog.decode(new byte[]{12, 83, 88, 86, 81, 65}, "d61195", 3.68041938E8d), layout.mHeight, layout.heightDefault, layout.heightPercent, layout.heightMin, layout.heightMax, layout.constrainedHeight);
                writeDimension(NPStringFog.decode(new byte[]{78, 91, 82, 65, 10}, "9265b7", false), layout.mWidth, layout.widthDefault, layout.widthPercent, layout.widthMin, layout.widthMax, layout.constrainedWidth);
                writeConstraint(NPStringFog.decode(new byte[]{16, 13, 1, 80, 16, 20}, "7ad6d3", false, false), layout.leftToLeft, NPStringFog.decode(new byte[]{30, 89, 6, 84, 70, 31}, "95c228", -26409), layout.leftMargin, layout.goneLeftMargin);
                writeConstraint(NPStringFog.decode(new byte[]{21, 14, 86, 86, 17, 23}, "2b30e0", 1.2816278E9f), layout.leftToRight, NPStringFog.decode(new byte[]{66, 69, 88, 84, 11, 77, 66}, "e713c9", false, false), layout.leftMargin, layout.goneLeftMargin);
                writeConstraint(NPStringFog.decode(new byte[]{22, 68, 94, 3, 94, 67, 22}, "167d67", -9513), layout.rightToLeft, NPStringFog.decode(new byte[]{17, 9, 85, 5, 69, 31}, "6e0c18", true, false), layout.rightMargin, layout.goneRightMargin);
                writeConstraint(NPStringFog.decode(new byte[]{19, 23, 13, 1, 88, 68, 19}, "4edf00", 3.0194618E8f), layout.rightToRight, NPStringFog.decode(new byte[]{68, 17, 13, 4, 13, 64, 68}, "ccdce4", -1.96358936E9d), layout.rightMargin, layout.goneRightMargin);
                writeConstraint(NPStringFog.decode(new byte[]{21, 7, 87, 21, 0, 85, 91, 11, 83, 65}, "2e6fe9", -1237979320L), layout.baselineToBaseline, NPStringFog.decode(new byte[]{70, 1, 5, 69, 82, 88, 8, 13, 1, 17}, "acd674", 26446), -1, layout.goneBaselineMargin);
                writeConstraint(NPStringFog.decode(new byte[]{67, 87, 88, 16, 80, 89, 13, 91, 92, 68}, "d59c55", false), layout.baselineToTop, NPStringFog.decode(new byte[]{65, 70, 11, 22, 67}, "f2dfd7", 2.062015978E9d), -1, layout.goneBaselineMargin);
                writeConstraint(NPStringFog.decode(new byte[]{67, 87, 80, 69, 3, 88, 13, 91, 84, 17}, "d516f4", -1790144584L), layout.baselineToBottom, NPStringFog.decode(new byte[]{65, 86, 91, 67, 65, 88, 11, 19}, "f44757", -12825), -1, layout.goneBaselineMargin);
                writeConstraint(NPStringFog.decode(new byte[]{19, 66, 86, 72, 31}, "46988e", false, false), layout.topToBottom, NPStringFog.decode(new byte[]{19, 83, 94, 70, 16, 92, 89, 22}, "4112d3", -1.3465258E9f), layout.topMargin, layout.goneTopMargin);
                writeConstraint(NPStringFog.decode(new byte[]{22, 23, 88, 67, 22}, "1c7316", -5838), layout.topToTop, NPStringFog.decode(new byte[]{21, 21, 90, 68, 23}, "2a5408", 1287116176L), layout.topMargin, layout.goneTopMargin);
                writeConstraint(NPStringFog.decode(new byte[]{65, 4, 88, 23, 71, 9, 11, 65}, "ff7c3f", -1.4104955E9f), layout.bottomToBottom, NPStringFog.decode(new byte[]{20, 82, 9, 18, 76, 9, 94, 23}, "30ff8f", 797293224L), layout.bottomMargin, layout.goneBottomMargin);
                writeConstraint(NPStringFog.decode(new byte[]{23, 3, 94, 68, 65, 91, 93, 70}, "0a1054", 1088312076L), layout.bottomToTop, NPStringFog.decode(new byte[]{30, 68, 13, 65, 68}, "90b1cb", -18092), layout.bottomMargin, layout.goneBottomMargin);
                writeConstraint(NPStringFog.decode(new byte[]{68, 71, 21, 88, 17, 76, 68}, "c4a9c8", -1.3601496E9f), layout.startToStart, NPStringFog.decode(new byte[]{67, 70, 68, 86, 75, 23, 67}, "d5079c", 1.042637093E9d), layout.startMargin, layout.goneStartMargin);
                writeConstraint(NPStringFog.decode(new byte[]{22, 18, 23, 2, 65, 23, 22}, "1acc3c", 9.5196736E8f), layout.startToEnd, NPStringFog.decode(new byte[]{21, 92, 15, 87, 17}, "29a36e", -2.055621605E9d), layout.startMargin, layout.goneStartMargin);
                writeConstraint(NPStringFog.decode(new byte[]{21, 6, 95, 92, 67}, "2c18de", -5.1404772E8d), layout.endToStart, NPStringFog.decode(new byte[]{70, 69, 70, 4, 16, 66, 70}, "a62eb6", false), layout.endMargin, layout.goneEndMargin);
                writeConstraint(NPStringFog.decode(new byte[]{21, 85, 8, 93, 23}, "20f90f", true), layout.endToEnd, NPStringFog.decode(new byte[]{17, 92, 92, 85, 67}, "6921d2", -1944318972L), layout.endMargin, layout.goneEndMargin);
                writeVariable(NPStringFog.decode(new byte[]{68, 92, 11, 75, 94, 28, 12, 90, 16, 88, 91, 36, 10, 85, 23, 30}, "c4d97f", -643852677L), layout.horizontalBias, 0.5f);
                writeVariable(NPStringFog.decode(new byte[]{16, 69, 86, 75, 21, 8, 84, 82, 95, 123, 8, 0, 68, 20}, "7339aa", 1.8629352E8f), layout.verticalBias, 0.5f);
                writeCircle(layout.circleConstraint, layout.circleAngle, layout.circleRadius);
                writeGuideline(layout.orientation, layout.guideBegin, layout.guideEnd, layout.guidePercent);
                writeVariable(NPStringFog.decode(new byte[]{21, 92, 95, 84, 4, 95, 65, 81, 89, 87, 51, 80, 70, 81, 89, 30}, "2869a1", false), layout.dimensionRatio);
                writeVariable(NPStringFog.decode(new byte[]{66, 0, 84, 67, 69, 15, 0, 16, 120, 80, 69, 1, 12, 12, 18}, "eb517f", 296596737L), layout.mBarrierMargin);
                writeVariable(NPStringFog.decode(new byte[]{68, 66, 64, 19, 4, 68}, "c69cac", false), layout.mHelperType);
                writeVariable(NPStringFog.decode(new byte[]{21, 51, 0, 0, 7, 67, 87, 15, 6, 3, 43, 85, 21}, "2aefb1", -1757623839L), layout.mReferenceIdString);
                writeVariable(NPStringFog.decode(new byte[]{67, 14, 115, 88, 16, 69, 13, 6, 67, 120, 14, 91, 11, 20, 66, 126, 13, 89, 1, 52, 88, 93, 5, 82, 16, 16, 22}, "dc19b7", -262761110L), layout.mBarrierAllowsGoneWidgets, true);
                writeVariable(NPStringFog.decode(new byte[]{30, 98, 65, 87, 73, 123, 92, 93, 82, 64, 80, 86, 75, 18}, "953699", false, true), layout.mWrapBehavior);
                writeVariable(NPStringFog.decode(new byte[]{70, 20, 84, 67, 16, 80, 2, 3, 93, 102, 1, 80, 6, 10, 69, 22}, "ab11d9", true), layout.verticalWeight);
                writeVariable(NPStringFog.decode(new byte[]{68, 90, 13, 65, 92, 78, 12, 92, 22, 82, 89, 99, 6, 91, 5, 91, 65, 19}, "c2b354", -1.04590176E9f), layout.horizontalWeight);
                writeVariable(NPStringFog.decode(new byte[]{31, 80, 12, 69, 88, 66, 87, 86, 23, 86, 93, 123, 80, 89, 10, 89, 98, 76, 65, 84, 6, 16}, "88c718", 26912), layout.horizontalChainStyle);
                writeVariable(NPStringFog.decode(new byte[]{67, 65, 7, 75, 77, 13, 7, 86, 14, 122, 81, 5, 13, 89, 49, 77, 64, 8, 1, 16}, "d7b99d", true), layout.verticalChainStyle);
                writeVariable(NPStringFog.decode(new byte[]{67, 7, 82, 20, 65, 11, 1, 23, 119, 15, 65, 7, 7, 17, 90, 9, 93, 69}, "de3f3b", 15009), layout.mBarrierDirection);
                if (layout.mReferenceIds != null) {
                    writeVariable(NPStringFog.decode(new byte[]{19, 51, 84, 4, 82, 75, 81, 15, 82, 7, 126, 93, 71, 70}, "4a1b79", false), layout.mReferenceIds);
                }
                this.writer.write(NPStringFog.decode(new byte[]{27, 111}, "fe17a0", true));
            }
            this.writer.write(NPStringFog.decode(new byte[]{74, 58}, "70d402", -1962588100L));
        }

        void writeVariable(String str, float f) throws IOException {
            if (f == -1.0f) {
                return;
            }
            Writer writer = this.writer;
            String strValueOf = String.valueOf("       ");
            String strValueOf2 = String.valueOf(str);
            writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            Writer writer2 = this.writer;
            StringBuilder sb = new StringBuilder(17);
            sb.append(NPStringFog.decode(new byte[]{88, 65}, "ba227c", 11777));
            sb.append(f);
            writer2.write(sb.toString());
            this.writer.write(NPStringFog.decode(new byte[]{31, 57}, "330c56", -4.9047779E7d));
        }

        void writeVariable(String str, float f, float f2) throws IOException {
            if (f == f2) {
                return;
            }
            Writer writer = this.writer;
            String strValueOf = String.valueOf("       ");
            String strValueOf2 = String.valueOf(str);
            writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            Writer writer2 = this.writer;
            StringBuilder sb = new StringBuilder(17);
            sb.append(NPStringFog.decode(new byte[]{15, 22}, "56bb5e", false));
            sb.append(f);
            writer2.write(sb.toString());
            this.writer.write(NPStringFog.decode(new byte[]{78, 108}, "bfdace", true));
        }

        void writeVariable(String str, int i) throws IOException {
            if (i == 0 || i == -1) {
                return;
            }
            Writer writer = this.writer;
            String strValueOf = String.valueOf("       ");
            String strValueOf2 = String.valueOf(str);
            writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            this.writer.write(NPStringFog.decode(new byte[]{2}, "817850", -5.14386934E8d));
            Writer writer2 = this.writer;
            StringBuilder sb = new StringBuilder(13);
            sb.append(NPStringFog.decode(new byte[]{30, 68}, "2d8dfd", 3.6698419E7d));
            sb.append(i);
            writer2.write(sb.toString());
            this.writer.write("\n");
        }

        void writeVariable(String str, String str2) throws IOException {
            if (str2 == null) {
                return;
            }
            Writer writer = this.writer;
            String strValueOf = String.valueOf("       ");
            String strValueOf2 = String.valueOf(str);
            writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            this.writer.write(NPStringFog.decode(new byte[]{94}, "dadc76", -7.67931197E8d));
            Writer writer2 = this.writer;
            String strValueOf3 = String.valueOf(str2);
            writer2.write(strValueOf3.length() != 0 ? NPStringFog.decode(new byte[]{20, 16}, "801b02", false).concat(strValueOf3) : new String(NPStringFog.decode(new byte[]{27, 65}, "7a486b", 1.056048966E9d)));
            this.writer.write("\n");
        }

        void writeVariable(String str, boolean z) throws IOException {
            if (z) {
                Writer writer = this.writer;
                String strValueOf = String.valueOf("       ");
                String strValueOf2 = String.valueOf(str);
                writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
                Writer writer2 = this.writer;
                StringBuilder sb = new StringBuilder(7);
                sb.append(NPStringFog.decode(new byte[]{95, 19}, "e38161", true, true));
                sb.append(z);
                writer2.write(sb.toString());
                this.writer.write(NPStringFog.decode(new byte[]{74, 50}, "f8355d", 1845127836L));
            }
        }

        void writeVariable(String str, boolean z, boolean z2) throws IOException {
            if (z == z2) {
                return;
            }
            Writer writer = this.writer;
            String strValueOf = String.valueOf("       ");
            String strValueOf2 = String.valueOf(str);
            writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            Writer writer2 = this.writer;
            StringBuilder sb = new StringBuilder(7);
            sb.append(NPStringFog.decode(new byte[]{14, 65}, "4a22cb", false));
            sb.append(z);
            writer2.write(sb.toString());
            this.writer.write(NPStringFog.decode(new byte[]{73, 57}, "e34f35", -1.894136866E9d));
        }

        void writeVariable(String str, int[] iArr) throws IOException {
            if (iArr == null) {
                return;
            }
            Writer writer = this.writer;
            String strValueOf = String.valueOf("       ");
            String strValueOf2 = String.valueOf(str);
            writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            this.writer.write(NPStringFog.decode(new byte[]{89, 70}, "cf3ab6", 1604681866L));
            int i = 0;
            while (i < iArr.length) {
                Writer writer2 = this.writer;
                String strValueOf3 = String.valueOf(i == 0 ? NPStringFog.decode(new byte[]{109}, "652204", -6.47899049E8d) : NPStringFog.decode(new byte[]{31, 69}, "3e569d", 28238));
                String strValueOf4 = String.valueOf(getName(iArr[i]));
                writer2.write(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3));
                i++;
            }
            this.writer.write(NPStringFog.decode(new byte[]{107, 79, 107}, "6ca8b5", 15302));
        }
    }

    class WriteXmlEngine {
        private static final String SPACE = NPStringFog.decode(new byte[]{63, 67, 67, 67, 19, 21, 21, 67}, "5ccc35", 944981489L);
        Context context;
        int flags;
        ConstraintLayout layout;
        final ConstraintSet this$0;
        Writer writer;
        int unknownCount = 0;
        final String LEFT = NPStringFog.decode(new byte[]{70, 91, 4, 0, 76, 22}, "a7af81", 1469462038L);
        final String RIGHT = NPStringFog.decode(new byte[]{67, 16, 10, 81, 12, 68, 67}, "dbc6d0", false, false);
        final String BASELINE = NPStringFog.decode(new byte[]{66, 83, 5, 70, 82, 10, 12, 95, 1, 18}, "e1d57f", false);
        final String BOTTOM = NPStringFog.decode(new byte[]{16, 82, 86, 18, 17, 89, 90, 23}, "709fe6", true, false);
        final String TOP = NPStringFog.decode(new byte[]{69, 65, 93, 66, 19}, "b5224e", 938564767L);
        final String START = NPStringFog.decode(new byte[]{18, 75, 21, 0, 65, 69, 18}, "58aa31", 1.7656979E9f);
        final String END = NPStringFog.decode(new byte[]{20, 81, 89, 92, 66}, "3478ee", false);
        HashMap<Integer, String> idMap = new HashMap<>();

        WriteXmlEngine(ConstraintSet constraintSet, Writer writer, ConstraintLayout constraintLayout, int i) throws IOException {
            this.this$0 = constraintSet;
            this.writer = writer;
            this.layout = constraintLayout;
            this.context = constraintLayout.getContext();
            this.flags = i;
        }

        private void writeBaseDimension(String str, int i, int i2) throws IOException {
            if (i != i2) {
                if (i == -2) {
                    Writer writer = this.writer;
                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23);
                    sb.append("\n       ");
                    sb.append(str);
                    sb.append(NPStringFog.decode(new byte[]{88, 67, 20, 68, 84, 70, 58, 2, 12, 88, 65, 83, 11, 21, 65}, "eac656", -687312245L));
                    writer.write(sb.toString());
                    return;
                }
                if (i == -1) {
                    Writer writer2 = this.writer;
                    StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 23);
                    sb2.append("\n       ");
                    sb2.append(str);
                    sb2.append(NPStringFog.decode(new byte[]{89, 27, 85, 89, 76, 5, 12, 102, 72, 89, 74, 3, 10, 77, 26}, "d9888f", false, true));
                    writer2.write(sb2.toString());
                    return;
                }
                Writer writer3 = this.writer;
                StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 24);
                sb3.append("\n       ");
                sb3.append(str);
                sb3.append(NPStringFog.decode(new byte[]{9, 21}, "4716cc", false, false));
                sb3.append(i);
                sb3.append(NPStringFog.decode(new byte[]{81, 18, 65}, "5bc8f8", -1.4495209E9f));
                writer3.write(sb3.toString());
            }
        }

        private void writeBoolen(String str, boolean z, boolean z2) throws IOException {
            if (z != z2) {
                Writer writer = this.writer;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 18);
                sb.append("\n       ");
                sb.append(str);
                sb.append(NPStringFog.decode(new byte[]{10, 71}, "7e0493", 1.0813773E9f));
                sb.append(z);
                sb.append(NPStringFog.decode(new byte[]{93, 20, 18}, "9d0e4b", false, true));
                writer.write(sb.toString());
            }
        }

        private void writeDimension(String str, int i, int i2) throws IOException {
            if (i != i2) {
                Writer writer = this.writer;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 24);
                sb.append("\n       ");
                sb.append(str);
                sb.append(NPStringFog.decode(new byte[]{5, 20}, "864d2b", false, false));
                sb.append(i);
                sb.append(NPStringFog.decode(new byte[]{84, 66, 20}, "026a86", 1.321588467E9d));
                writer.write(sb.toString());
            }
        }

        private void writeEnum(String str, int i, String[] strArr, int i2) throws IOException {
            if (i != i2) {
                Writer writer = this.writer;
                String str2 = strArr[i];
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11 + String.valueOf(str2).length());
                sb.append("\n       ");
                sb.append(str);
                sb.append(NPStringFog.decode(new byte[]{91, 64}, "fb6cd5", false));
                sb.append(str2);
                sb.append(NPStringFog.decode(new byte[]{64}, "ba8456", -2.3020952E8f));
                writer.write(sb.toString());
            }
        }

        String getName(int i) {
            if (this.idMap.containsKey(Integer.valueOf(i))) {
                String str = this.idMap.get(Integer.valueOf(i));
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5);
                sb.append(NPStringFog.decode(new byte[]{38, 19, 94, 5, 28}, "f87a3b", 19219));
                sb.append(str);
                return sb.toString();
            }
            if (i == 0) {
                return NPStringFog.decode(new byte[]{69, 88, 67, 92, 88, 21}, "59196a", -10274);
            }
            String strLookup = lookup(i);
            this.idMap.put(Integer.valueOf(i), strLookup);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strLookup).length() + 5);
            sb2.append(NPStringFog.decode(new byte[]{114, 79, 10, 87, 31}, "2dc302", -7597));
            sb2.append(strLookup);
            return sb2.toString();
        }

        String lookup(int i) {
            String string;
            try {
                if (i != -1) {
                    string = this.context.getResources().getResourceEntryName(i);
                } else {
                    int i2 = this.unknownCount + 1;
                    this.unknownCount = i2;
                    StringBuilder sb = new StringBuilder(18);
                    sb.append(NPStringFog.decode(new byte[]{22, 89, 13, 90, 91, 65, 13}, "c7f446", true));
                    sb.append(i2);
                    string = sb.toString();
                }
                return string;
            } catch (Exception e) {
                int i3 = this.unknownCount + 1;
                this.unknownCount = i3;
                StringBuilder sb2 = new StringBuilder(18);
                sb2.append(NPStringFog.decode(new byte[]{77, 94, 95, 93, 11, 20, 86}, "8043dc", 25524));
                sb2.append(i3);
                return sb2.toString();
            }
        }

        void writeCircle(int i, float f, int i2) throws IOException {
            if (i == -1) {
                return;
            }
            this.writer.write(NPStringFog.decode(new byte[]{86, 15, 75, 80, 14, 84}, "5f93b1", -9.395319E8f));
            this.writer.write(NPStringFog.decode(new byte[]{14, 58}, "4a03b4", 2.0437718E9f));
            this.writer.write(getName(i));
            Writer writer = this.writer;
            StringBuilder sb = new StringBuilder(17);
            sb.append(NPStringFog.decode(new byte[]{72, 19}, "d34cc3", true, true));
            sb.append(f);
            writer.write(sb.toString());
            Writer writer2 = this.writer;
            StringBuilder sb2 = new StringBuilder(12);
            sb2.append(i2);
            sb2.append(NPStringFog.decode(new byte[]{106}, "7fc5eb", -282683371L));
            writer2.write(sb2.toString());
        }

        void writeConstraint(String str, int i, String str2, int i2, int i3) throws IOException {
            if (i == -1) {
                return;
            }
            Writer writer = this.writer;
            String strValueOf = String.valueOf("\n       ");
            String strValueOf2 = String.valueOf(str);
            writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            this.writer.write(NPStringFog.decode(new byte[]{91, 111}, "a4b4f6", -19781));
            this.writer.write(getName(i));
            this.writer.write(NPStringFog.decode(new byte[]{66, 73, 70}, "bef195", -27087));
            this.writer.write(str2);
            if (i2 != 0) {
                Writer writer2 = this.writer;
                StringBuilder sb = new StringBuilder(14);
                sb.append(NPStringFog.decode(new byte[]{18, 72, 68}, "2ddbe9", true));
                sb.append(i2);
                writer2.write(sb.toString());
            }
            this.writer.write(NPStringFog.decode(new byte[]{106, 30, 108}, "72f6a8", true));
        }

        void writeLayout() throws IOException {
            this.writer.write(NPStringFog.decode(new byte[]{110, 12, 112, 95, 87, 70, 16, 66, 82, 89, 87, 65, 55, 85, 71, 14, 51}, "d03095", 2.70884884E8d));
            for (Integer num : this.this$0.mConstraints.keySet()) {
                Constraint constraint = (Constraint) this.this$0.mConstraints.get(num);
                String name = getName(num.intValue());
                this.writer.write(NPStringFog.decode(new byte[]{17, 69, 11, 114, 14, 12, 66, 17, 69, 80, 8, 12, 69}, "1e71ab", 1.78697175E9d));
                Writer writer = this.writer;
                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 21);
                sb.append(NPStringFog.decode(new byte[]{105, 22, 17, 20, 25, 18, 67, 22, 80, 90, 93, 64, 12, 95, 85, 14, 80, 86, 94, 20}, "c61492", 2.0131648E8f));
                sb.append(name);
                sb.append(NPStringFog.decode(new byte[]{70}, "d6d687", false, false));
                writer.write(sb.toString());
                Layout layout = constraint.layout;
                writeBaseDimension(NPStringFog.decode(new byte[]{87, 13, 93, 17, 12, 95, 82, 89, 85, 2, 26, 89, 67, 23, 102, 20, 10, 82, 66, 11}, "6c9cc6", -755542164L), layout.mWidth, -5);
                writeBaseDimension(NPStringFog.decode(new byte[]{89, 95, 6, 16, 87, 15, 92, 11, 14, 3, 65, 9, 77, 69, 61, 10, 93, 15, 95, 89, 22}, "81bb8f", true), layout.mHeight, -5);
                writeVariable(NPStringFog.decode(new byte[]{80, 18, 21, 94, 14, 86, 72, 13, 16, 16, 61, 84, 94, 12, 22, 16, 16, 86, 88, 12, 17, 35, 23, 94, 85, 7, 58, 6, 7, 80, 88, 12}, "1bedb7", -7.13224594E8d), layout.guideBegin, -1.0f);
                writeVariable(NPStringFog.decode(new byte[]{89, 18, 22, 3, 93, 86, 65, 13, 19, 77, 110, 84, 87, 12, 21, 77, 67, 86, 81, 12, 18, 126, 68, 94, 92, 7, 57, 92, 95, 83}, "8bf917", -4.5001322E8d), layout.guideEnd, -1.0f);
                writeVariable(NPStringFog.decode(new byte[]{2, 65, 65, 3, 91, 0, 26, 94, 68, 77, 104, 2, 12, 95, 66, 77, 69, 0, 10, 95, 69, 126, 66, 8, 7, 84, 110, 73, 82, 19, 0, 84, 95, 77}, "c1197a", 1.8936521E9f), layout.guidePercent, -1.0f);
                writeVariable(NPStringFog.decode(new byte[]{3, 70, 70, 13, 10, 5, 27, 89, 67, 67, 57, 7, 13, 88, 69, 67, 20, 5, 11, 88, 66, 127, 9, 22, 11, 76, 89, 89, 18, 5, 14, 105, 84, 94, 7, 23}, "b667fd", 1.3707616E9f), layout.horizontalBias, 0.5f);
                writeVariable(NPStringFog.decode(new byte[]{86, 64, 21, 94, 84, 2, 78, 95, 16, 16, 103, 0, 88, 94, 22, 16, 74, 2, 94, 94, 17, 50, 93, 17, 67, 89, 6, 5, 84, 60, 85, 89, 4, 23}, "70ed8c", true, false), layout.verticalBias, 0.5f);
                writeVariable(NPStringFog.decode(new byte[]{86, 18, 67, 91, 92, 5, 78, 13, 70, 21, 111, 7, 88, 12, 64, 21, 66, 5, 94, 12, 71, 37, 89, 9, 82, 12, 64, 8, 95, 10, 101, 3, 71, 8, 95}, "7b3a0d", 3868), layout.dimensionRatio, (String) null);
                writeXmlConstraint(NPStringFog.decode(new byte[]{85, 73, 67, 94, 89, 84, 77, 86, 70, 16, 106, 86, 91, 87, 64, 16, 71, 84, 93, 87, 71, 39, 92, 71, 87, 85, 86}, "493d55", false), layout.circleConstraint);
                writeVariable(NPStringFog.decode(new byte[]{84, 68, 69, 94, 91, 88, 76, 91, 64, 16, 104, 90, 90, 90, 70, 16, 69, 88, 92, 90, 65, 39, 94, 75, 86, 88, 80, 54, 86, 93, 92, 65, 70}, "545d79", 230137040L), layout.circleRadius, 0.0f);
                writeVariable(NPStringFog.decode(new byte[]{2, 64, 68, 88, 89, 3, 26, 95, 65, 22, 106, 1, 12, 94, 71, 22, 71, 3, 10, 94, 64, 33, 92, 16, 0, 92, 81, 35, 91, 5, 15, 85}, "c04b5b", 1.198117798E9d), layout.circleAngle, 0.0f);
                writeVariable(NPStringFog.decode(new byte[]{81, 13, 81, 75, 11, 13, 84, 89, 90, 75, 13, 1, 94, 23, 84, 77, 13, 11, 94}, "0c59dd", 9.12043498E8d), layout.orientation, -1.0f);
                writeVariable(NPStringFog.decode(new byte[]{82, 72, 70, 94, 90, 89, 74, 87, 67, 16, 105, 91, 92, 86, 69, 16, 68, 89, 90, 86, 66, 50, 83, 74, 71, 81, 85, 5, 90, 103, 68, 93, 95, 3, 94, 76}, "386d68", -1.5337043E9f), layout.verticalWeight, -1.0f);
                writeVariable(NPStringFog.decode(new byte[]{83, 66, 21, 95, 14, 81, 75, 93, 16, 17, 61, 83, 93, 92, 22, 17, 16, 81, 91, 92, 17, 45, 13, 66, 91, 72, 10, 11, 22, 81, 94, 109, 18, 0, 11, 87, 90, 70}, "22eeb0", 3.96306408E8d), layout.horizontalWeight, -1.0f);
                writeVariable(NPStringFog.decode(new byte[]{88, 22, 20, 2, 88, 89, 64, 9, 17, 76, 107, 91, 86, 8, 23, 76, 70, 89, 80, 8, 16, 112, 91, 74, 80, 28, 11, 86, 64, 89, 85, 57, 7, 80, 85, 81, 87, 53, 16, 65, 88, 93}, "9fd848", -1.865728612E9d), layout.horizontalChainStyle, 0.0f);
                writeVariable(NPStringFog.decode(new byte[]{0, 21, 18, 95, 88, 88, 24, 10, 23, 17, 107, 90, 14, 11, 17, 17, 70, 88, 8, 11, 22, 51, 81, 75, 21, 12, 1, 4, 88, 102, 2, 13, 3, 12, 90, 106, 21, 28, 14, 0}, "aebe49", -20171), layout.verticalChainStyle, 0.0f);
                writeVariable(NPStringFog.decode(new byte[]{0, 73, 19, 9, 1, 87, 19, 75, 10, 86, 17, 114, 8, 75, 6, 80, 23, 95, 14, 87}, "a9c3c6", -27668), layout.mBarrierDirection, -1.0f);
                writeVariable(NPStringFog.decode(new byte[]{85, 65, 19, 13, 6, 5, 70, 67, 10, 82, 22, 41, 85, 67, 4, 94, 10}, "41c7dd", 1.588393997E9d), layout.mBarrierMargin, 0.0f);
                writeDimension(NPStringFog.decode(new byte[]{85, 65, 22, 88, 10, 4, 77, 94, 19, 22, 57, 8, 85, 67, 1, 11, 8, 41, 81, 87, 18}, "41fbfe", -2.08160653E8d), layout.leftMargin, 0);
                writeDimension(NPStringFog.decode(new byte[]{81, 68, 71, 89, 93, 0, 73, 91, 66, 23, 110, 6, 95, 90, 82, 46, 80, 19, 87, 93, 89, 47, 84, 7, 68}, "047c1a", -21192), layout.goneLeftMargin, Integer.MIN_VALUE);
                writeDimension(NPStringFog.decode(new byte[]{4, 73, 67, 94, 90, 3, 28, 86, 70, 16, 105, 15, 4, 75, 84, 13, 88, 48, 12, 94, 91, 16}, "e93d6b", false), layout.rightMargin, 0);
                writeDimension(NPStringFog.decode(new byte[]{2, 70, 18, 88, 15, 86, 26, 89, 23, 22, 60, 80, 12, 88, 7, 47, 2, 69, 4, 95, 12, 48, 10, 80, 11, 66}, "c6bbc7", -4.81626085E8d), layout.goneRightMargin, Integer.MIN_VALUE);
                writeDimension(NPStringFog.decode(new byte[]{87, 72, 67, 13, 95, 84, 79, 87, 70, 67, 108, 88, 87, 74, 84, 94, 93, 102, 66, 89, 65, 67}, "683735", 3446), layout.startMargin, 0);
                writeDimension(NPStringFog.decode(new byte[]{3, 66, 19, 95, 94, 3, 27, 93, 22, 17, 109, 5, 13, 92, 6, 40, 83, 16, 5, 91, 13, 54, 70, 3, 16, 70}, "b2ce2b", -1.07336794E8d), layout.goneStartMargin, Integer.MIN_VALUE);
                writeDimension(NPStringFog.decode(new byte[]{80, 68, 20, 8, 10, 87, 72, 91, 17, 70, 57, 91, 80, 70, 3, 91, 8, 115, 95, 80}, "14d2f6", 1807950748L), layout.endMargin, 0);
                writeDimension(NPStringFog.decode(new byte[]{2, 69, 73, 8, 84, 82, 26, 90, 76, 70, 103, 84, 12, 91, 92, 127, 89, 65, 4, 92, 87, 119, 86, 87}, "c59283", -8.211371E8f), layout.goneEndMargin, Integer.MIN_VALUE);
                writeDimension(NPStringFog.decode(new byte[]{83, 73, 21, 9, 9, 87, 75, 86, 16, 71, 58, 91, 83, 75, 2, 90, 11, 98, 93, 73}, "29e3e6", -2065840219L), layout.topMargin, 0);
                writeDimension(NPStringFog.decode(new byte[]{82, 18, 20, 92, 13, 87, 74, 13, 17, 18, 62, 81, 92, 12, 1, 43, 0, 68, 84, 11, 10, 50, 14, 70}, "3bdfa6", false, false), layout.goneTopMargin, Integer.MIN_VALUE);
                writeDimension(NPStringFog.decode(new byte[]{84, 21, 73, 88, 94, 0, 76, 10, 76, 22, 109, 12, 84, 23, 94, 11, 92, 35, 90, 17, 77, 13, 95}, "5e9b2a", -24622), layout.bottomMargin, 0);
                writeDimension(NPStringFog.decode(new byte[]{5, 65, 68, 11, 13, 83, 29, 94, 65, 69, 62, 85, 11, 95, 81, 124, 0, 64, 3, 88, 90, 115, 14, 70, 16, 94, 89}, "d141a2", true, false), layout.goneBottomMargin, Integer.MIN_VALUE);
                writeDimension(NPStringFog.decode(new byte[]{89, 72, 73, 10, 83, 9, 86, 93, 123, 81, 71, 3, 84, 81, 87, 85, 121, 7, 74, 95, 80, 94}, "88904f", false, true), layout.goneBaselineMargin, Integer.MIN_VALUE);
                writeDimension(NPStringFog.decode(new byte[]{2, 71, 20, 11, 1, 87, 16, 82, 8, 88, 13, 83, 46, 86, 22, 86, 10, 88}, "c7d1c6", true), layout.baselineMargin, 0);
                writeBoolen(NPStringFog.decode(new byte[]{85, 18, 64, 2, 88, 3, 77, 13, 69, 76, 107, 1, 91, 12, 67, 76, 70, 3, 93, 12, 85, 92, 99, 11, 80, 22, 88}, "4b084b", -24081), layout.constrainedWidth, false);
                writeBoolen(NPStringFog.decode(new byte[]{3, 22, 73, 8, 92, 81, 27, 9, 76, 70, 111, 83, 13, 8, 74, 70, 66, 81, 11, 8, 92, 86, 120, 85, 11, 1, 81, 70}, "bf9200", true, false), layout.constrainedHeight, false);
                writeBoolen(NPStringFog.decode(new byte[]{85, 19, 18, 15, 4, 82, 70, 17, 11, 80, 20, 114, 88, 15, 13, 66, 21, 116, 91, 13, 7, 98, 15, 87, 83, 6, 22, 70}, "4cb5f3", -21675), layout.mBarrierAllowsGoneWidgets, true);
                writeVariable(NPStringFog.decode(new byte[]{5, 65, 71, 8, 89, 82, 29, 94, 66, 70, 106, 68, 22, 80, 71, 112, 80, 91, 5, 71, 94, 93, 71, 122, 10, 97, 86, 64, 80, 93, 16}, "d17253", true), layout.mWrapBehavior, 0.0f);
                writeXmlConstraint(NPStringFog.decode(new byte[]{0, 73, 22, 3, 90, 83, 18, 92, 10, 80, 86, 87, 53, 86, 36, 88, 75, 87, 13, 80, 8, 92}, "a9f982", false, true), layout.baselineToBaseline);
                writeXmlConstraint(NPStringFog.decode(new byte[]{7, 69, 17, 11, 4, 2, 21, 80, 13, 88, 8, 6, 50, 90, 35, 94, 18, 23, 9, 88}, "f5a1fc", -7.62975578E8d), layout.baselineToBottom);
                writeXmlConstraint(NPStringFog.decode(new byte[]{85, 65, 72, 13, 81, 82, 71, 84, 84, 94, 93, 86, 96, 94, 108, 88, 67}, "418733", 508570344L), layout.baselineToTop);
                writeXmlConstraint(NPStringFog.decode(new byte[]{81, 64, 67, 9, 85, 5, 73, 95, 70, 71, 102, 7, 95, 94, 64, 71, 75, 5, 89, 94, 71, 113, 86, 16, 68, 95, 94, 108, 77, 11, 114, 95, 71, 71, 86, 9, 127, 86}, "00339d", true), layout.bottomToBottom);
                writeXmlConstraint(NPStringFog.decode(new byte[]{82, 70, 67, 14, 15, 82, 74, 89, 70, 64, 60, 80, 92, 88, 64, 64, 17, 82, 90, 88, 71, 118, 12, 71, 71, 89, 94, 107, 23, 92, 103, 89, 67, 123, 5}, "3634c3", 1.3236413E9f), layout.bottomToTop);
                writeXmlConstraint(NPStringFog.decode(new byte[]{0, 18, 19, 8, 88, 80, 24, 13, 22, 70, 107, 82, 14, 12, 16, 70, 70, 80, 8, 12, 23, 119, 90, 85, 62, 22, 12, 119, 90, 85, 46, 4}, "abc241", -8.1831885E8f), layout.endToEnd);
                writeXmlConstraint(NPStringFog.decode(new byte[]{89, 71, 64, 13, 10, 82, 65, 88, 69, 67, 57, 80, 87, 89, 67, 67, 20, 82, 81, 89, 68, 114, 8, 87, 103, 67, 95, 100, 18, 82, 74, 67, 127, 81}, "8707f3", 1.795546108E9d), layout.endToStart);
                writeXmlConstraint(NPStringFog.decode(new byte[]{3, 19, 68, 12, 94, 4, 27, 12, 65, 66, 109, 6, 13, 13, 71, 66, 64, 4, 11, 13, 64, 122, 87, 3, 22, 60, 64, 89, 126, 0, 4, 23, 123, 80}, "bc462e", false), layout.leftToLeft);
                writeXmlConstraint(NPStringFog.decode(new byte[]{4, 64, 69, 94, 8, 0, 28, 95, 64, 16, 59, 2, 10, 94, 70, 16, 22, 0, 12, 94, 65, 40, 1, 7, 17, 111, 65, 11, 54, 8, 2, 88, 65, 43, 2}, "e05dda", 105), layout.leftToRight);
                writeXmlConstraint(NPStringFog.decode(new byte[]{84, 20, 18, 11, 90, 88, 76, 11, 23, 69, 105, 90, 90, 10, 17, 69, 68, 88, 92, 10, 22, 99, 95, 94, 93, 16, 61, 69, 89, 117, 80, 2, 22, 126, 80}, "5db169", 5.8150455E8d), layout.rightToLeft);
                writeXmlConstraint(NPStringFog.decode(new byte[]{2, 69, 22, 15, 90, 7, 26, 90, 19, 65, 105, 5, 12, 91, 21, 65, 68, 7, 10, 91, 18, 103, 95, 1, 11, 65, 57, 65, 89, 52, 10, 82, 14, 65, 121, 0}, "c5f56f", 1.473951393E9d), layout.rightToRight);
                writeXmlConstraint(NPStringFog.decode(new byte[]{86, 69, 18, 8, 8, 3, 78, 90, 23, 70, 59, 1, 88, 91, 17, 70, 22, 3, 94, 91, 22, 97, 16, 3, 69, 65, 61, 70, 11, 39, 89, 81, 45, 84}, "75b2db", true), layout.startToEnd);
                writeXmlConstraint(NPStringFog.decode(new byte[]{83, 67, 65, 91, 10, 7, 75, 92, 68, 21, 57, 5, 93, 93, 66, 21, 20, 7, 91, 93, 69, 50, 18, 7, 64, 71, 110, 21, 9, 53, 70, 82, 67, 21, 41, 0}, "231aff", -52628690L), layout.startToStart);
                writeXmlConstraint(NPStringFog.decode(new byte[]{7, 64, 67, 15, 85, 87, 31, 95, 70, 65, 102, 85, 9, 94, 64, 65, 75, 87, 15, 94, 71, 97, 86, 70, 57, 68, 92, 119, 86, 66, 18, 95, 94, 122, 95}, "f03596", false, true), layout.topToBottom);
                writeXmlConstraint(NPStringFog.decode(new byte[]{80, 66, 71, 95, 8, 89, 72, 93, 66, 17, 59, 91, 94, 92, 68, 17, 22, 89, 88, 92, 67, 49, 11, 72, 110, 70, 88, 49, 11, 72, 126, 84}, "127ed8", -2795), layout.topToTop);
                String[] strArr = {NPStringFog.decode(new byte[]{68, 18, 65, 4, 7, 2}, "7b3aff", 3.04848964E8d), NPStringFog.decode(new byte[]{20, 69, 0, 69}, "c7a5b5", false), NPStringFog.decode(new byte[]{68, 93, 64, 81, 83, 91, 64}, "482265", -1.9230446E9f)};
                writeEnum(NPStringFog.decode(new byte[]{84, 68, 65, 95, 10, 82, 76, 91, 68, 17, 57, 80, 90, 90, 66, 17, 20, 82, 92, 90, 69, 45, 3, 90, 82, 92, 69, 58, 2, 86, 83, 85, 68, 9, 18}, "541ef3", false), layout.heightDefault, strArr, 0);
                writeVariable(NPStringFog.decode(new byte[]{80, 22, 17, 8, 8, 82, 72, 9, 20, 70, 59, 80, 94, 8, 18, 70, 22, 82, 88, 8, 21, 122, 1, 90, 86, 14, 21, 109, 20, 86, 67, 5, 4, 92, 16}, "1fa2d3", 26566), layout.heightPercent, 1.0f);
                writeDimension(NPStringFog.decode(new byte[]{0, 64, 69, 8, 93, 88, 24, 95, 64, 70, 110, 90, 14, 94, 70, 70, 67, 88, 8, 94, 65, 122, 84, 80, 6, 88, 65, 109, 92, 80, 15}, "a05219", false), layout.heightMin, 0);
                writeDimension(NPStringFog.decode(new byte[]{5, 73, 20, 92, 10, 80, 29, 86, 17, 18, 57, 82, 11, 87, 23, 18, 20, 80, 13, 87, 16, 46, 3, 88, 3, 81, 16, 57, 11, 80, 28}, "d9dff1", -1239951276L), layout.heightMax, 0);
                writeBoolen(NPStringFog.decode(new byte[]{80, 87, 5, 20, 9, 91, 85, 3, 13, 7, 31, 93, 68, 77, 62, 5, 9, 92, 66, 77, 19, 7, 15, 92, 84, 93, 41, 3, 15, 85, 89, 77}, "19aff2", -896839786L), layout.constrainedHeight, false);
                writeEnum(NPStringFog.decode(new byte[]{0, 66, 65, 91, 85, 87, 24, 93, 68, 21, 102, 85, 14, 92, 66, 21, 75, 87, 8, 92, 69, 54, 80, 82, 21, 90, 110, 5, 92, 80, 0, 71, 93, 21}, "a21a96", -1899737621L), layout.widthDefault, strArr, 0);
                writeVariable(NPStringFog.decode(new byte[]{5, 67, 17, 14, 9, 82, 29, 92, 20, 64, 58, 80, 11, 93, 18, 64, 23, 82, 13, 93, 21, 99, 12, 87, 16, 91, 62, 68, 0, 65, 7, 86, 15, 64}, "d3a4e3", 1249963842L), layout.widthPercent, 1.0f);
                writeDimension(NPStringFog.decode(new byte[]{84, 65, 68, 91, 89, 5, 76, 94, 65, 21, 106, 7, 90, 95, 71, 21, 71, 5, 92, 95, 64, 54, 92, 0, 65, 89, 107, 12, 92, 10}, "514a5d", 1.031383349E9d), layout.widthMin, 0);
                writeDimension(NPStringFog.decode(new byte[]{87, 65, 70, 92, 89, 84, 79, 94, 67, 18, 106, 86, 89, 95, 69, 18, 71, 84, 95, 95, 66, 49, 92, 81, 66, 89, 105, 11, 84, 77}, "616f55", -20824), layout.widthMax, 0);
                writeBoolen(NPStringFog.decode(new byte[]{7, 91, 2, 67, 92, 94, 2, 15, 10, 80, 74, 88, 19, 65, 57, 82, 92, 89, 21, 65, 20, 80, 90, 89, 3, 81, 49, 88, 87, 67, 14}, "f5f137", -13617), layout.constrainedWidth, false);
                writeVariable(NPStringFog.decode(new byte[]{82, 21, 21, 8, 94, 85, 74, 10, 16, 70, 109, 87, 92, 11, 22, 70, 64, 85, 90, 11, 17, 100, 87, 70, 71, 12, 6, 83, 94, 107, 68, 0, 12, 85, 90, 64}, "3ee224", 1244696341L), layout.verticalWeight, -1.0f);
                writeVariable(NPStringFog.decode(new byte[]{89, 17, 68, 14, 91, 4, 65, 14, 65, 64, 104, 6, 87, 15, 71, 64, 69, 4, 81, 15, 64, 124, 88, 23, 81, 27, 91, 90, 67, 4, 84, 62, 67, 81, 94, 2, 80, 21}, "8a447e", false, false), layout.horizontalWeight, -1.0f);
                writeVariable(NPStringFog.decode(new byte[]{80, 20, 69, 14, 93, 7, 72, 11, 64, 64, 110, 5, 94, 10, 70, 64, 67, 7, 88, 10, 65, 124, 94, 20, 88, 30, 90, 90, 69, 7, 93, 59, 86, 92, 80, 15, 95, 55, 65, 77, 93, 3}, "1d541f", false, true), layout.horizontalChainStyle);
                writeVariable(NPStringFog.decode(new byte[]{83, 68, 72, 89, 14, 2, 75, 91, 77, 23, 61, 0, 93, 90, 75, 23, 16, 2, 91, 90, 76, 53, 7, 17, 70, 93, 91, 2, 14, 60, 81, 92, 89, 10, 12, 48, 70, 77, 84, 6}, "248cbc", -25308), layout.verticalChainStyle);
                writeEnum(NPStringFog.decode(new byte[]{83, 73, 65, 10, 81, 83, 64, 75, 88, 85, 65, 118, 91, 75, 84, 83, 71, 91, 93, 87}, "291032", 8.53550182E8d), layout.mBarrierDirection, new String[]{NPStringFog.decode(new byte[]{94, 93, 95, 65}, "289561", false), NPStringFog.decode(new byte[]{70, 8, 86, 13, 16}, "4a1edd", false, true), NPStringFog.decode(new byte[]{23, 94, 70}, "c164b0", 5716), NPStringFog.decode(new byte[]{83, 12, 65, 16, 9, 90}, "1c5df7", 1664859991L), NPStringFog.decode(new byte[]{68, 18, 0, 74, 22}, "7fa8ba", -1.6380954E9f), NPStringFog.decode(new byte[]{86, 10, 84}, "3d023d", true, false)}, -1);
                writeVariable(NPStringFog.decode(new byte[]{5, 69, 73, 15, 8, 88, 29, 90, 76, 65, 59, 90, 11, 91, 74, 65, 22, 88, 13, 91, 77, 97, 5, 94}, "d595d9", 28839), layout.mConstraintTag, (String) null);
                if (layout.mReferenceIds != null) {
                    writeVariable(NPStringFog.decode(new byte[]{21, 48, 81, 81, 80, 67, 87, 12, 87, 82, 124, 85, 65, 69}, "2b4751", 30021), layout.mReferenceIds);
                }
                this.writer.write(NPStringFog.decode(new byte[]{65, 27, 7, 62}, "a4941e", true));
            }
            this.writer.write(NPStringFog.decode(new byte[]{88, 73, 39, 11, 88, 21, 16, 20, 5, 13, 88, 18, 55, 3, 16, 90, 60}, "dfdd6f", true, true));
        }

        void writeVariable(String str, float f, float f2) throws IOException {
            if (f == f2) {
                return;
            }
            Writer writer = this.writer;
            String strValueOf = String.valueOf("\n       ");
            String strValueOf2 = String.valueOf(str);
            writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            Writer writer2 = this.writer;
            StringBuilder sb = new StringBuilder(18);
            sb.append(NPStringFog.decode(new byte[]{92, 18}, "a07ba2", -1.198433338E9d));
            sb.append(f);
            sb.append(NPStringFog.decode(new byte[]{18}, "0593f5", -2.5201158E8f));
            writer2.write(sb.toString());
        }

        void writeVariable(String str, int i) throws IOException {
            if (i == 0 || i == -1) {
                return;
            }
            Writer writer = this.writer;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23);
            sb.append("\n       ");
            sb.append(str);
            sb.append(NPStringFog.decode(new byte[]{92, 18}, "a0647b", 4.88959286E8d));
            sb.append(i);
            sb.append(NPStringFog.decode(new byte[]{70, 59}, "d16766", true));
            writer.write(sb.toString());
        }

        void writeVariable(String str, String str2) throws IOException {
            if (str2 == null) {
                return;
            }
            this.writer.write(str);
            this.writer.write(NPStringFog.decode(new byte[]{10}, "0a77f3", -5.76631514E8d));
            Writer writer = this.writer;
            String strValueOf = String.valueOf(str2);
            writer.write(strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{30, 19}, "23a944", true, true).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{74, 70}, "ffe5c8", -7954)));
            this.writer.write("\n");
        }

        void writeVariable(String str, String str2, String str3) throws IOException {
            if (str2 == null || str2.equals(str3)) {
                return;
            }
            Writer writer = this.writer;
            String strValueOf = String.valueOf("\n       ");
            String strValueOf2 = String.valueOf(str);
            writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            Writer writer2 = this.writer;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 3);
            sb.append(NPStringFog.decode(new byte[]{11, 27}, "6963f3", -4.6428169E8d));
            sb.append(str2);
            sb.append(NPStringFog.decode(new byte[]{64}, "b52421", -125862541L));
            writer2.write(sb.toString());
        }

        void writeVariable(String str, int[] iArr) throws IOException {
            if (iArr == null) {
                return;
            }
            Writer writer = this.writer;
            String strValueOf = String.valueOf("\n       ");
            String strValueOf2 = String.valueOf(str);
            writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            this.writer.write(NPStringFog.decode(new byte[]{94}, "ddaf0b", 10773));
            int i = 0;
            while (i < iArr.length) {
                Writer writer2 = this.writer;
                String strValueOf3 = String.valueOf(i == 0 ? NPStringFog.decode(new byte[]{106}, "187751", -4877640L) : NPStringFog.decode(new byte[]{26, 18}, "62cde4", true));
                String strValueOf4 = String.valueOf(getName(iArr[i]));
                writer2.write(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3));
                i++;
            }
            this.writer.write(NPStringFog.decode(new byte[]{110, 72, 63}, "3d5709", false, true));
        }

        void writeXmlConstraint(String str, int i) throws IOException {
            if (i == -1) {
                return;
            }
            Writer writer = this.writer;
            String strValueOf = String.valueOf("\n       ");
            String strValueOf2 = String.valueOf(str);
            writer.write(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            Writer writer2 = this.writer;
            String name = getName(i);
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 3);
            sb.append(NPStringFog.decode(new byte[]{91, 16}, "f26e32", -8.872218E8f));
            sb.append(name);
            sb.append(NPStringFog.decode(new byte[]{17}, "30c8db", -562500036L));
            writer2.write(sb.toString());
        }
    }

    static {
        mapToConstant.append(R.styleable.Constraint_layout_constraintLeft_toLeftOf, 25);
        mapToConstant.append(R.styleable.Constraint_layout_constraintLeft_toRightOf, 26);
        mapToConstant.append(R.styleable.Constraint_layout_constraintRight_toLeftOf, 29);
        mapToConstant.append(R.styleable.Constraint_layout_constraintRight_toRightOf, 30);
        mapToConstant.append(R.styleable.Constraint_layout_constraintTop_toTopOf, 36);
        mapToConstant.append(R.styleable.Constraint_layout_constraintTop_toBottomOf, 35);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBottom_toTopOf, 4);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBottom_toBottomOf, 3);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBaseline_toBaselineOf, 1);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBaseline_toTopOf, 91);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBaseline_toBottomOf, 92);
        mapToConstant.append(R.styleable.Constraint_layout_editor_absoluteX, 6);
        mapToConstant.append(R.styleable.Constraint_layout_editor_absoluteY, 7);
        mapToConstant.append(R.styleable.Constraint_layout_constraintGuide_begin, 17);
        mapToConstant.append(R.styleable.Constraint_layout_constraintGuide_end, 18);
        mapToConstant.append(R.styleable.Constraint_layout_constraintGuide_percent, 19);
        mapToConstant.append(R.styleable.Constraint_android_orientation, 27);
        mapToConstant.append(R.styleable.Constraint_layout_constraintStart_toEndOf, 32);
        mapToConstant.append(R.styleable.Constraint_layout_constraintStart_toStartOf, 33);
        mapToConstant.append(R.styleable.Constraint_layout_constraintEnd_toStartOf, 10);
        mapToConstant.append(R.styleable.Constraint_layout_constraintEnd_toEndOf, 9);
        mapToConstant.append(R.styleable.Constraint_layout_goneMarginLeft, 13);
        mapToConstant.append(R.styleable.Constraint_layout_goneMarginTop, 16);
        mapToConstant.append(R.styleable.Constraint_layout_goneMarginRight, 14);
        mapToConstant.append(R.styleable.Constraint_layout_goneMarginBottom, 11);
        mapToConstant.append(R.styleable.Constraint_layout_goneMarginStart, 15);
        mapToConstant.append(R.styleable.Constraint_layout_goneMarginEnd, 12);
        mapToConstant.append(R.styleable.Constraint_layout_constraintVertical_weight, 40);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHorizontal_weight, 39);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHorizontal_chainStyle, 41);
        mapToConstant.append(R.styleable.Constraint_layout_constraintVertical_chainStyle, 42);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHorizontal_bias, 20);
        mapToConstant.append(R.styleable.Constraint_layout_constraintVertical_bias, 37);
        mapToConstant.append(R.styleable.Constraint_layout_constraintDimensionRatio, 5);
        mapToConstant.append(R.styleable.Constraint_layout_constraintLeft_creator, 87);
        mapToConstant.append(R.styleable.Constraint_layout_constraintTop_creator, 87);
        mapToConstant.append(R.styleable.Constraint_layout_constraintRight_creator, 87);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBottom_creator, 87);
        mapToConstant.append(R.styleable.Constraint_layout_constraintBaseline_creator, 87);
        mapToConstant.append(R.styleable.Constraint_android_layout_marginLeft, 24);
        mapToConstant.append(R.styleable.Constraint_android_layout_marginRight, 28);
        mapToConstant.append(R.styleable.Constraint_android_layout_marginStart, 31);
        mapToConstant.append(R.styleable.Constraint_android_layout_marginEnd, 8);
        mapToConstant.append(R.styleable.Constraint_android_layout_marginTop, 34);
        mapToConstant.append(R.styleable.Constraint_android_layout_marginBottom, 2);
        mapToConstant.append(R.styleable.Constraint_android_layout_width, 23);
        mapToConstant.append(R.styleable.Constraint_android_layout_height, 21);
        mapToConstant.append(R.styleable.Constraint_layout_constraintWidth, 95);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHeight, 96);
        mapToConstant.append(R.styleable.Constraint_android_visibility, 22);
        mapToConstant.append(R.styleable.Constraint_android_alpha, 43);
        mapToConstant.append(R.styleable.Constraint_android_elevation, 44);
        mapToConstant.append(R.styleable.Constraint_android_rotationX, 45);
        mapToConstant.append(R.styleable.Constraint_android_rotationY, 46);
        mapToConstant.append(R.styleable.Constraint_android_rotation, 60);
        mapToConstant.append(R.styleable.Constraint_android_scaleX, 47);
        mapToConstant.append(R.styleable.Constraint_android_scaleY, 48);
        mapToConstant.append(R.styleable.Constraint_android_transformPivotX, 49);
        mapToConstant.append(R.styleable.Constraint_android_transformPivotY, 50);
        mapToConstant.append(R.styleable.Constraint_android_translationX, 51);
        mapToConstant.append(R.styleable.Constraint_android_translationY, 52);
        mapToConstant.append(R.styleable.Constraint_android_translationZ, 53);
        mapToConstant.append(R.styleable.Constraint_layout_constraintWidth_default, 54);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHeight_default, 55);
        mapToConstant.append(R.styleable.Constraint_layout_constraintWidth_max, 56);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHeight_max, 57);
        mapToConstant.append(R.styleable.Constraint_layout_constraintWidth_min, 58);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHeight_min, 59);
        mapToConstant.append(R.styleable.Constraint_layout_constraintCircle, 61);
        mapToConstant.append(R.styleable.Constraint_layout_constraintCircleRadius, 62);
        mapToConstant.append(R.styleable.Constraint_layout_constraintCircleAngle, 63);
        mapToConstant.append(R.styleable.Constraint_animateRelativeTo, 64);
        mapToConstant.append(R.styleable.Constraint_transitionEasing, 65);
        mapToConstant.append(R.styleable.Constraint_drawPath, 66);
        mapToConstant.append(R.styleable.Constraint_transitionPathRotate, 67);
        mapToConstant.append(R.styleable.Constraint_motionStagger, 79);
        mapToConstant.append(R.styleable.Constraint_android_id, 38);
        mapToConstant.append(R.styleable.Constraint_motionProgress, 68);
        mapToConstant.append(R.styleable.Constraint_layout_constraintWidth_percent, 69);
        mapToConstant.append(R.styleable.Constraint_layout_constraintHeight_percent, 70);
        mapToConstant.append(R.styleable.Constraint_layout_wrapBehaviorInParent, 97);
        mapToConstant.append(R.styleable.Constraint_chainUseRtl, 71);
        mapToConstant.append(R.styleable.Constraint_barrierDirection, 72);
        mapToConstant.append(R.styleable.Constraint_barrierMargin, 73);
        mapToConstant.append(R.styleable.Constraint_constraint_referenced_ids, 74);
        mapToConstant.append(R.styleable.Constraint_barrierAllowsGoneWidgets, 75);
        mapToConstant.append(R.styleable.Constraint_pathMotionArc, 76);
        mapToConstant.append(R.styleable.Constraint_layout_constraintTag, 77);
        mapToConstant.append(R.styleable.Constraint_visibilityMode, 78);
        mapToConstant.append(R.styleable.Constraint_layout_constrainedWidth, 80);
        mapToConstant.append(R.styleable.Constraint_layout_constrainedHeight, 81);
        mapToConstant.append(R.styleable.Constraint_polarRelativeTo, 82);
        mapToConstant.append(R.styleable.Constraint_transformPivotTarget, 83);
        mapToConstant.append(R.styleable.Constraint_quantizeMotionSteps, 84);
        mapToConstant.append(R.styleable.Constraint_quantizeMotionPhase, 85);
        mapToConstant.append(R.styleable.Constraint_quantizeMotionInterpolator, 86);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_editor_absoluteY, 6);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_editor_absoluteY, 7);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_orientation, 27);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_goneMarginLeft, 13);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_goneMarginTop, 16);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_goneMarginRight, 14);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_goneMarginBottom, 11);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_goneMarginStart, 15);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_goneMarginEnd, 12);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintVertical_weight, 40);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_weight, 39);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_chainStyle, 41);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintVertical_chainStyle, 42);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHorizontal_bias, 20);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintVertical_bias, 37);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintDimensionRatio, 5);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintLeft_creator, 87);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintTop_creator, 87);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintRight_creator, 87);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintBottom_creator, 87);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintBaseline_creator, 87);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_marginLeft, 24);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_marginRight, 28);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_marginStart, 31);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_marginEnd, 8);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_marginTop, 34);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_marginBottom, 2);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_width, 23);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_layout_height, 21);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintWidth, 95);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHeight, 96);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_visibility, 22);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_alpha, 43);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_elevation, 44);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_rotationX, 45);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_rotationY, 46);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_rotation, 60);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_scaleX, 47);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_scaleY, 48);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_transformPivotX, 49);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_transformPivotY, 50);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_translationX, 51);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_translationY, 52);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_translationZ, 53);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintWidth_default, 54);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHeight_default, 55);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintWidth_max, 56);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHeight_max, 57);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintWidth_min, 58);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHeight_min, 59);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintCircleRadius, 62);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintCircleAngle, 63);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_animateRelativeTo, 64);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_transitionEasing, 65);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_drawPath, 66);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_transitionPathRotate, 67);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_motionStagger, 79);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_android_id, 38);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_motionTarget, 98);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_motionProgress, 68);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintWidth_percent, 69);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintHeight_percent, 70);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_chainUseRtl, 71);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_barrierDirection, 72);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_barrierMargin, 73);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_constraint_referenced_ids, 74);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_barrierAllowsGoneWidgets, 75);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_pathMotionArc, 76);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constraintTag, 77);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_visibilityMode, 78);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constrainedWidth, 80);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_constrainedHeight, 81);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_polarRelativeTo, 82);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_transformPivotTarget, 83);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_quantizeMotionSteps, 84);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_quantizeMotionPhase, 85);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_quantizeMotionInterpolator, 86);
        overrideMapToConstant.append(R.styleable.ConstraintOverride_layout_wrapBehaviorInParent, 97);
    }

    private void addAttributes(ConstraintAttribute.AttributeType attributeType, String... strArr) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= strArr.length) {
                return;
            }
            if (this.mSavedAttributes.containsKey(strArr[i2])) {
                ConstraintAttribute constraintAttribute = this.mSavedAttributes.get(strArr[i2]);
                if (constraintAttribute != null && constraintAttribute.getType() != attributeType) {
                    String strValueOf = String.valueOf(constraintAttribute.getType().name());
                    throw new IllegalArgumentException(strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{37, 13, 90, 18, 77, 23, 7, 11, 90, 21, 120, 17, 18, 16, 93, 3, 76, 17, 3, 66, 93, 18, 25, 4, 10, 16, 81, 0, 93, 28, 70, 3, 20}, "fb4a9e", -1.8243237E9f).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{39, 87, 89, 70, 66, 20, 5, 81, 89, 65, 119, 18, 16, 74, 94, 87, 67, 18, 1, 24, 94, 70, 22, 7, 8, 74, 82, 84, 82, 31, 68, 89, 23}, "d8756f", 6.876534E8f)));
                }
            } else {
                this.mSavedAttributes.put(strArr[i2], new ConstraintAttribute(strArr[i2], attributeType));
            }
            i = i2 + 1;
        }
    }

    public static Constraint buildDelta(Context context, XmlPullParser xmlPullParser) {
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        Constraint constraint = new Constraint();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSetAsAttributeSet, R.styleable.ConstraintOverride);
        populateOverride(context, constraint, typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        return constraint;
    }

    private int[] convertReferenceString(View view, String str) {
        int identifier;
        Object designInformation;
        String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{77}, "a468d5", 1987896627L));
        Context context = view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i = 0;
        for (String str2 : strArrSplit) {
            String strTrim = str2.trim();
            try {
                identifier = R.id.class.getField(strTrim).getInt(null);
            } catch (Exception e) {
                identifier = 0;
            }
            if (identifier == 0) {
                identifier = context.getResources().getIdentifier(strTrim, NPStringFog.decode(new byte[]{8, 7}, "aca60b", 24769), context.getPackageName());
            }
            iArr[i] = (identifier == 0 && view.isInEditMode() && (view.getParent() instanceof ConstraintLayout) && (designInformation = ((ConstraintLayout) view.getParent()).getDesignInformation(0, strTrim)) != null && (designInformation instanceof Integer)) ? ((Integer) designInformation).intValue() : identifier;
            i++;
        }
        return i != strArrSplit.length ? Arrays.copyOf(iArr, i) : iArr;
    }

    private void createHorizontalChain(int i, int i2, int i3, int i4, int[] iArr, float[] fArr, int i5, int i6, int i7) {
        if (iArr.length < 2) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{92, 23, 67, 22, 19, 94, 80, 20, 85, 66, 1, 22, 94, 16, 16, 15, 92, 68, 84, 66, 71, 11, 87, 81, 84, 22, 67, 66, 90, 88, 17, 3, 16, 1, 91, 87, 88, 12}, "1b0b36", -1274494324L));
        }
        if (fArr != null && fArr.length != iArr.length) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{92, 17, 65, 76, 67, 9, 80, 18, 87, 24, 81, 65, 94, 22, 18, 85, 12, 19, 84, 68, 69, 81, 7, 6, 84, 16, 65, 24, 10, 15, 17, 5, 18, 91, 11, 0, 88, 10}, "1d28ca", false));
        }
        if (fArr != null) {
            get(iArr[0]).layout.horizontalWeight = fArr[0];
        }
        get(iArr[0]).layout.horizontalChainStyle = i5;
        connect(iArr[0], i6, i, i2, -1);
        int i8 = 1;
        while (true) {
            int i9 = i8;
            if (i9 >= iArr.length) {
                connect(iArr[iArr.length - 1], i7, i3, i4, -1);
                return;
            }
            int i10 = iArr[i9];
            connect(iArr[i9], i6, iArr[i9 - 1], i7, -1);
            connect(iArr[i9 - 1], i7, iArr[i9], i6, -1);
            if (fArr != null) {
                get(iArr[i9]).layout.horizontalWeight = fArr[i9];
            }
            i8 = i9 + 1;
        }
    }

    private Constraint fillFromAttributeList(Context context, AttributeSet attributeSet, boolean z) {
        Constraint constraint = new Constraint();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z ? R.styleable.ConstraintOverride : R.styleable.Constraint);
        populateConstraint(context, constraint, typedArrayObtainStyledAttributes, z);
        typedArrayObtainStyledAttributes.recycle();
        return constraint;
    }

    private Constraint get(int i) {
        if (!this.mConstraints.containsKey(Integer.valueOf(i))) {
            this.mConstraints.put(Integer.valueOf(i), new Constraint());
        }
        return this.mConstraints.get(Integer.valueOf(i));
    }

    static String getDebugName(int i) {
        for (Field field : ConstraintSet.class.getDeclaredFields()) {
            if (field.getName().contains(NPStringFog.decode(new byte[]{107}, "446283", 9.84918336E8d)) && field.getType() == Integer.TYPE && Modifier.isStatic(field.getModifiers()) && Modifier.isFinal(field.getModifiers())) {
                try {
                    if (field.getInt(null) == i) {
                        return field.getName();
                    }
                    continue;
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
        return NPStringFog.decode(new byte[]{102, 47, 121, 118, 126, 102, 125}, "3a2811", true);
    }

    static String getLine(Context context, int i, XmlPullParser xmlPullParser) {
        String name = Debug.getName(context, i);
        int lineNumber = xmlPullParser.getLineNumber();
        String name2 = xmlPullParser.getName();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 22 + String.valueOf(name2).length());
        sb.append(NPStringFog.decode(new byte[]{76, 25}, "b103e2", 1.73475903E8d));
        sb.append(name);
        sb.append(NPStringFog.decode(new byte[]{28, 77, 91, 95, 10}, "256306", -1.5468214E8f));
        sb.append(lineNumber);
        sb.append(NPStringFog.decode(new byte[]{17, 70, 16}, "8f2025", 1.332372002E9d));
        sb.append(name2);
        sb.append(NPStringFog.decode(new byte[]{18}, "045c82", 31465));
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int lookupID(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        return resourceId == -1 ? typedArray.getInt(i, -1) : resourceId;
    }

    static void parseDimensionConstraints(Object obj, TypedArray typedArray, int i, int i2) {
        int dimensionPixelSize;
        boolean z = false;
        if (obj == null) {
            return;
        }
        switch (typedArray.peekValue(i).type) {
            case 3:
                parseDimensionConstraintsString(obj, typedArray.getString(i), i2);
                return;
            case 4:
            default:
                dimensionPixelSize = typedArray.getInt(i, 0);
                switch (dimensionPixelSize) {
                    case -4:
                        dimensionPixelSize = -2;
                        z = true;
                        break;
                    case -3:
                        dimensionPixelSize = 0;
                        break;
                    case -2:
                    case -1:
                        break;
                    default:
                        dimensionPixelSize = 0;
                        break;
                }
                break;
            case 5:
                dimensionPixelSize = typedArray.getDimensionPixelSize(i, 0);
                break;
        }
        if (obj instanceof ConstraintLayout.LayoutParams) {
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) obj;
            if (i2 == 0) {
                layoutParams.width = dimensionPixelSize;
                layoutParams.constrainedWidth = z;
                return;
            } else {
                layoutParams.height = dimensionPixelSize;
                layoutParams.constrainedHeight = z;
                return;
            }
        }
        if (obj instanceof Layout) {
            Layout layout = (Layout) obj;
            if (i2 == 0) {
                layout.mWidth = dimensionPixelSize;
                layout.constrainedWidth = z;
                return;
            } else {
                layout.mHeight = dimensionPixelSize;
                layout.constrainedHeight = z;
                return;
            }
        }
        if (obj instanceof Constraint.Delta) {
            Constraint.Delta delta = (Constraint.Delta) obj;
            if (i2 == 0) {
                delta.add(23, dimensionPixelSize);
                delta.add(80, z);
            } else {
                delta.add(21, dimensionPixelSize);
                delta.add(81, z);
            }
        }
    }

    static void parseDimensionConstraintsString(Object obj, String str, int i) {
        if (str == null) {
            return;
        }
        int iIndexOf = str.indexOf(61);
        int length = str.length();
        if (iIndexOf <= 0 || iIndexOf >= length - 1) {
            return;
        }
        String strSubstring = str.substring(0, iIndexOf);
        String strSubstring2 = str.substring(iIndexOf + 1);
        if (strSubstring2.length() > 0) {
            String strTrim = strSubstring.trim();
            String strTrim2 = strSubstring2.trim();
            if (KEY_RATIO.equalsIgnoreCase(strTrim)) {
                if (obj instanceof ConstraintLayout.LayoutParams) {
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) obj;
                    if (i == 0) {
                        layoutParams.width = 0;
                    } else {
                        layoutParams.height = 0;
                    }
                    parseDimensionRatioString(layoutParams, strTrim2);
                    return;
                }
                if (obj instanceof Layout) {
                    ((Layout) obj).dimensionRatio = strTrim2;
                    return;
                } else {
                    if (obj instanceof Constraint.Delta) {
                        ((Constraint.Delta) obj).add(5, strTrim2);
                        return;
                    }
                    return;
                }
            }
            if (KEY_WEIGHT.equalsIgnoreCase(strTrim)) {
                try {
                    float f = Float.parseFloat(strTrim2);
                    if (obj instanceof ConstraintLayout.LayoutParams) {
                        ConstraintLayout.LayoutParams layoutParams2 = (ConstraintLayout.LayoutParams) obj;
                        if (i == 0) {
                            layoutParams2.width = 0;
                            layoutParams2.horizontalWeight = f;
                        } else {
                            layoutParams2.height = 0;
                            layoutParams2.verticalWeight = f;
                        }
                    } else if (obj instanceof Layout) {
                        Layout layout = (Layout) obj;
                        if (i == 0) {
                            layout.mWidth = 0;
                            layout.horizontalWeight = f;
                        } else {
                            layout.mHeight = 0;
                            layout.verticalWeight = f;
                        }
                    } else if (obj instanceof Constraint.Delta) {
                        Constraint.Delta delta = (Constraint.Delta) obj;
                        if (i == 0) {
                            delta.add(23, 0);
                            delta.add(39, f);
                        } else {
                            delta.add(21, 0);
                            delta.add(40, f);
                        }
                    }
                    return;
                } catch (NumberFormatException e) {
                    return;
                }
            }
            if (KEY_PERCENT_PARENT.equalsIgnoreCase(strTrim)) {
                try {
                    float fMax = Math.max(0.0f, Math.min(1.0f, Float.parseFloat(strTrim2)));
                    if (obj instanceof ConstraintLayout.LayoutParams) {
                        ConstraintLayout.LayoutParams layoutParams3 = (ConstraintLayout.LayoutParams) obj;
                        if (i == 0) {
                            layoutParams3.width = 0;
                            layoutParams3.matchConstraintPercentWidth = fMax;
                            layoutParams3.matchConstraintDefaultWidth = 2;
                        } else {
                            layoutParams3.height = 0;
                            layoutParams3.matchConstraintPercentHeight = fMax;
                            layoutParams3.matchConstraintDefaultHeight = 2;
                        }
                    } else if (obj instanceof Layout) {
                        Layout layout2 = (Layout) obj;
                        if (i == 0) {
                            layout2.mWidth = 0;
                            layout2.widthPercent = fMax;
                            layout2.widthDefault = 2;
                        } else {
                            layout2.mHeight = 0;
                            layout2.heightPercent = fMax;
                            layout2.heightDefault = 2;
                        }
                    } else if (obj instanceof Constraint.Delta) {
                        Constraint.Delta delta2 = (Constraint.Delta) obj;
                        if (i == 0) {
                            delta2.add(23, 0);
                            delta2.add(54, 2);
                        } else {
                            delta2.add(21, 0);
                            delta2.add(55, 2);
                        }
                    }
                } catch (NumberFormatException e2) {
                }
            }
        }
    }

    static void parseDimensionRatioString(ConstraintLayout.LayoutParams layoutParams, String str) {
        float fAbs = Float.NaN;
        int i = -1;
        if (str != null) {
            int length = str.length();
            int iIndexOf = str.indexOf(44);
            if (iIndexOf > 0 && iIndexOf < length - 1) {
                String strSubstring = str.substring(0, iIndexOf);
                i = strSubstring.equalsIgnoreCase(NPStringFog.decode(new byte[]{51}, "dbb3e1", false, true)) ? 0 : strSubstring.equalsIgnoreCase(NPStringFog.decode(new byte[]{41}, "a6f810", false, false)) ? 1 : -1;
                i = iIndexOf + 1;
            }
            int iIndexOf2 = str.indexOf(58);
            if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                String strSubstring2 = str.substring(i);
                if (strSubstring2.length() > 0) {
                    try {
                        fAbs = Float.parseFloat(strSubstring2);
                    } catch (NumberFormatException e) {
                    }
                }
            } else {
                String strSubstring3 = str.substring(i, iIndexOf2);
                String strSubstring4 = str.substring(iIndexOf2 + 1);
                if (strSubstring3.length() > 0 && strSubstring4.length() > 0) {
                    try {
                        float f = Float.parseFloat(strSubstring3);
                        float f2 = Float.parseFloat(strSubstring4);
                        fAbs = (f <= 0.0f || f2 <= 0.0f) ? Float.NaN : i == 1 ? Math.abs(f2 / f) : Math.abs(f / f2);
                    } catch (NumberFormatException e2) {
                    }
                }
            }
        }
        layoutParams.dimensionRatio = str;
        layoutParams.dimensionRatioValue = fAbs;
        layoutParams.dimensionRatioSide = i;
    }

    private void populateConstraint(Context context, Constraint constraint, TypedArray typedArray, boolean z) {
        if (z) {
            populateOverride(context, constraint, typedArray);
            return;
        }
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index != R.styleable.Constraint_android_id && R.styleable.Constraint_android_layout_marginStart != index && R.styleable.Constraint_android_layout_marginEnd != index) {
                constraint.motion.mApply = true;
                constraint.layout.mApply = true;
                constraint.propertySet.mApply = true;
                constraint.transform.mApply = true;
            }
            switch (mapToConstant.get(index)) {
                case 1:
                    constraint.layout.baselineToBaseline = lookupID(typedArray, index, constraint.layout.baselineToBaseline);
                    break;
                case 2:
                    constraint.layout.bottomMargin = typedArray.getDimensionPixelSize(index, constraint.layout.bottomMargin);
                    break;
                case 3:
                    constraint.layout.bottomToBottom = lookupID(typedArray, index, constraint.layout.bottomToBottom);
                    break;
                case 4:
                    constraint.layout.bottomToTop = lookupID(typedArray, index, constraint.layout.bottomToTop);
                    break;
                case 5:
                    constraint.layout.dimensionRatio = typedArray.getString(index);
                    break;
                case 6:
                    constraint.layout.editorAbsoluteX = typedArray.getDimensionPixelOffset(index, constraint.layout.editorAbsoluteX);
                    break;
                case 7:
                    constraint.layout.editorAbsoluteY = typedArray.getDimensionPixelOffset(index, constraint.layout.editorAbsoluteY);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        constraint.layout.endMargin = typedArray.getDimensionPixelSize(index, constraint.layout.endMargin);
                    }
                    break;
                case 9:
                    constraint.layout.endToEnd = lookupID(typedArray, index, constraint.layout.endToEnd);
                    break;
                case 10:
                    constraint.layout.endToStart = lookupID(typedArray, index, constraint.layout.endToStart);
                    break;
                case 11:
                    constraint.layout.goneBottomMargin = typedArray.getDimensionPixelSize(index, constraint.layout.goneBottomMargin);
                    break;
                case 12:
                    constraint.layout.goneEndMargin = typedArray.getDimensionPixelSize(index, constraint.layout.goneEndMargin);
                    break;
                case 13:
                    constraint.layout.goneLeftMargin = typedArray.getDimensionPixelSize(index, constraint.layout.goneLeftMargin);
                    break;
                case 14:
                    constraint.layout.goneRightMargin = typedArray.getDimensionPixelSize(index, constraint.layout.goneRightMargin);
                    break;
                case 15:
                    constraint.layout.goneStartMargin = typedArray.getDimensionPixelSize(index, constraint.layout.goneStartMargin);
                    break;
                case 16:
                    constraint.layout.goneTopMargin = typedArray.getDimensionPixelSize(index, constraint.layout.goneTopMargin);
                    break;
                case 17:
                    constraint.layout.guideBegin = typedArray.getDimensionPixelOffset(index, constraint.layout.guideBegin);
                    break;
                case 18:
                    constraint.layout.guideEnd = typedArray.getDimensionPixelOffset(index, constraint.layout.guideEnd);
                    break;
                case 19:
                    constraint.layout.guidePercent = typedArray.getFloat(index, constraint.layout.guidePercent);
                    break;
                case 20:
                    constraint.layout.horizontalBias = typedArray.getFloat(index, constraint.layout.horizontalBias);
                    break;
                case 21:
                    constraint.layout.mHeight = typedArray.getLayoutDimension(index, constraint.layout.mHeight);
                    break;
                case 22:
                    constraint.propertySet.visibility = typedArray.getInt(index, constraint.propertySet.visibility);
                    constraint.propertySet.visibility = VISIBILITY_FLAGS[constraint.propertySet.visibility];
                    break;
                case 23:
                    constraint.layout.mWidth = typedArray.getLayoutDimension(index, constraint.layout.mWidth);
                    break;
                case 24:
                    constraint.layout.leftMargin = typedArray.getDimensionPixelSize(index, constraint.layout.leftMargin);
                    break;
                case 25:
                    constraint.layout.leftToLeft = lookupID(typedArray, index, constraint.layout.leftToLeft);
                    break;
                case 26:
                    constraint.layout.leftToRight = lookupID(typedArray, index, constraint.layout.leftToRight);
                    break;
                case 27:
                    constraint.layout.orientation = typedArray.getInt(index, constraint.layout.orientation);
                    break;
                case 28:
                    constraint.layout.rightMargin = typedArray.getDimensionPixelSize(index, constraint.layout.rightMargin);
                    break;
                case 29:
                    constraint.layout.rightToLeft = lookupID(typedArray, index, constraint.layout.rightToLeft);
                    break;
                case 30:
                    constraint.layout.rightToRight = lookupID(typedArray, index, constraint.layout.rightToRight);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        constraint.layout.startMargin = typedArray.getDimensionPixelSize(index, constraint.layout.startMargin);
                    }
                    break;
                case 32:
                    constraint.layout.startToEnd = lookupID(typedArray, index, constraint.layout.startToEnd);
                    break;
                case 33:
                    constraint.layout.startToStart = lookupID(typedArray, index, constraint.layout.startToStart);
                    break;
                case 34:
                    constraint.layout.topMargin = typedArray.getDimensionPixelSize(index, constraint.layout.topMargin);
                    break;
                case 35:
                    constraint.layout.topToBottom = lookupID(typedArray, index, constraint.layout.topToBottom);
                    break;
                case 36:
                    constraint.layout.topToTop = lookupID(typedArray, index, constraint.layout.topToTop);
                    break;
                case 37:
                    constraint.layout.verticalBias = typedArray.getFloat(index, constraint.layout.verticalBias);
                    break;
                case 38:
                    constraint.mViewId = typedArray.getResourceId(index, constraint.mViewId);
                    break;
                case 39:
                    constraint.layout.horizontalWeight = typedArray.getFloat(index, constraint.layout.horizontalWeight);
                    break;
                case 40:
                    constraint.layout.verticalWeight = typedArray.getFloat(index, constraint.layout.verticalWeight);
                    break;
                case 41:
                    constraint.layout.horizontalChainStyle = typedArray.getInt(index, constraint.layout.horizontalChainStyle);
                    break;
                case 42:
                    constraint.layout.verticalChainStyle = typedArray.getInt(index, constraint.layout.verticalChainStyle);
                    break;
                case 43:
                    constraint.propertySet.alpha = typedArray.getFloat(index, constraint.propertySet.alpha);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        constraint.transform.applyElevation = true;
                        constraint.transform.elevation = typedArray.getDimension(index, constraint.transform.elevation);
                    }
                    break;
                case 45:
                    constraint.transform.rotationX = typedArray.getFloat(index, constraint.transform.rotationX);
                    break;
                case 46:
                    constraint.transform.rotationY = typedArray.getFloat(index, constraint.transform.rotationY);
                    break;
                case 47:
                    constraint.transform.scaleX = typedArray.getFloat(index, constraint.transform.scaleX);
                    break;
                case 48:
                    constraint.transform.scaleY = typedArray.getFloat(index, constraint.transform.scaleY);
                    break;
                case 49:
                    constraint.transform.transformPivotX = typedArray.getDimension(index, constraint.transform.transformPivotX);
                    break;
                case 50:
                    constraint.transform.transformPivotY = typedArray.getDimension(index, constraint.transform.transformPivotY);
                    break;
                case 51:
                    constraint.transform.translationX = typedArray.getDimension(index, constraint.transform.translationX);
                    break;
                case 52:
                    constraint.transform.translationY = typedArray.getDimension(index, constraint.transform.translationY);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        constraint.transform.translationZ = typedArray.getDimension(index, constraint.transform.translationZ);
                    }
                    break;
                case 54:
                    constraint.layout.widthDefault = typedArray.getInt(index, constraint.layout.widthDefault);
                    break;
                case 55:
                    constraint.layout.heightDefault = typedArray.getInt(index, constraint.layout.heightDefault);
                    break;
                case 56:
                    constraint.layout.widthMax = typedArray.getDimensionPixelSize(index, constraint.layout.widthMax);
                    break;
                case 57:
                    constraint.layout.heightMax = typedArray.getDimensionPixelSize(index, constraint.layout.heightMax);
                    break;
                case 58:
                    constraint.layout.widthMin = typedArray.getDimensionPixelSize(index, constraint.layout.widthMin);
                    break;
                case 59:
                    constraint.layout.heightMin = typedArray.getDimensionPixelSize(index, constraint.layout.heightMin);
                    break;
                case 60:
                    constraint.transform.rotation = typedArray.getFloat(index, constraint.transform.rotation);
                    break;
                case 61:
                    constraint.layout.circleConstraint = lookupID(typedArray, index, constraint.layout.circleConstraint);
                    break;
                case 62:
                    constraint.layout.circleRadius = typedArray.getDimensionPixelSize(index, constraint.layout.circleRadius);
                    break;
                case 63:
                    constraint.layout.circleAngle = typedArray.getFloat(index, constraint.layout.circleAngle);
                    break;
                case 64:
                    constraint.motion.mAnimateRelativeTo = lookupID(typedArray, index, constraint.motion.mAnimateRelativeTo);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        constraint.motion.mTransitionEasing = typedArray.getString(index);
                    } else {
                        constraint.motion.mTransitionEasing = Easing.NAMED_EASING[typedArray.getInteger(index, 0)];
                    }
                    break;
                case 66:
                    constraint.motion.mDrawPath = typedArray.getInt(index, 0);
                    break;
                case 67:
                    constraint.motion.mPathRotate = typedArray.getFloat(index, constraint.motion.mPathRotate);
                    break;
                case 68:
                    constraint.propertySet.mProgress = typedArray.getFloat(index, constraint.propertySet.mProgress);
                    break;
                case 69:
                    constraint.layout.widthPercent = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    constraint.layout.heightPercent = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e(TAG, NPStringFog.decode(new byte[]{118, 101, 98, 99, 39, 43, 97, 124, 105, 17, 55, 43, 102, 101, 96, 97, 45, 55, 97, 117, 116}, "5001be", 1831122664L));
                    break;
                case 72:
                    constraint.layout.mBarrierDirection = typedArray.getInt(index, constraint.layout.mBarrierDirection);
                    break;
                case 73:
                    constraint.layout.mBarrierMargin = typedArray.getDimensionPixelSize(index, constraint.layout.mBarrierMargin);
                    break;
                case 74:
                    constraint.layout.mReferenceIdString = typedArray.getString(index);
                    break;
                case 75:
                    constraint.layout.mBarrierAllowsGoneWidgets = typedArray.getBoolean(index, constraint.layout.mBarrierAllowsGoneWidgets);
                    break;
                case 76:
                    constraint.motion.mPathMotionArc = typedArray.getInt(index, constraint.motion.mPathMotionArc);
                    break;
                case 77:
                    constraint.layout.mConstraintTag = typedArray.getString(index);
                    break;
                case 78:
                    constraint.propertySet.mVisibilityMode = typedArray.getInt(index, constraint.propertySet.mVisibilityMode);
                    break;
                case 79:
                    constraint.motion.mMotionStagger = typedArray.getFloat(index, constraint.motion.mMotionStagger);
                    break;
                case 80:
                    constraint.layout.constrainedWidth = typedArray.getBoolean(index, constraint.layout.constrainedWidth);
                    break;
                case 81:
                    constraint.layout.constrainedHeight = typedArray.getBoolean(index, constraint.layout.constrainedHeight);
                    break;
                case 82:
                    constraint.motion.mAnimateCircleAngleTo = typedArray.getInteger(index, constraint.motion.mAnimateCircleAngleTo);
                    break;
                case 83:
                    constraint.transform.transformPivotTarget = lookupID(typedArray, index, constraint.transform.transformPivotTarget);
                    break;
                case 84:
                    constraint.motion.mQuantizeMotionSteps = typedArray.getInteger(index, constraint.motion.mQuantizeMotionSteps);
                    break;
                case 85:
                    constraint.motion.mQuantizeMotionPhase = typedArray.getFloat(index, constraint.motion.mQuantizeMotionPhase);
                    break;
                case 86:
                    TypedValue typedValuePeekValue = typedArray.peekValue(index);
                    if (typedValuePeekValue.type == 1) {
                        constraint.motion.mQuantizeInterpolatorID = typedArray.getResourceId(index, -1);
                        if (constraint.motion.mQuantizeInterpolatorID != -1) {
                            constraint.motion.mQuantizeInterpolatorType = -2;
                        }
                    } else if (typedValuePeekValue.type == 3) {
                        constraint.motion.mQuantizeInterpolatorString = typedArray.getString(index);
                        if (constraint.motion.mQuantizeInterpolatorString.indexOf(NPStringFog.decode(new byte[]{28}, "3b59f0", -5.506157E8f)) > 0) {
                            constraint.motion.mQuantizeInterpolatorID = typedArray.getResourceId(index, -1);
                            constraint.motion.mQuantizeInterpolatorType = -2;
                        } else {
                            constraint.motion.mQuantizeInterpolatorType = -1;
                        }
                    } else {
                        constraint.motion.mQuantizeInterpolatorType = typedArray.getInteger(index, constraint.motion.mQuantizeInterpolatorID);
                    }
                    break;
                case 87:
                    String hexString = Integer.toHexString(index);
                    int i2 = mapToConstant.get(index);
                    StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 33);
                    sb.append(NPStringFog.decode(new byte[]{20, 13, 23, 22, 82, 1, 65, 2, 22, 17, 69, 12, 3, 22, 22, 0, 23, 85, 25}, "acbe7e", true));
                    sb.append(hexString);
                    sb.append("   ");
                    sb.append(i2);
                    Log.w(TAG, sb.toString());
                    break;
                case 88:
                case 89:
                case 90:
                default:
                    String hexString2 = Integer.toHexString(index);
                    int i3 = mapToConstant.get(index);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(hexString2).length() + 34);
                    sb2.append(NPStringFog.decode(new byte[]{52, 86, 10, 92, 12, 65, 15, 24, 0, 70, 23, 68, 8, 90, 20, 70, 6, 22, 81, 64}, "a8a2c6", 385624084L));
                    sb2.append(hexString2);
                    sb2.append("   ");
                    sb2.append(i3);
                    Log.w(TAG, sb2.toString());
                    break;
                case 91:
                    constraint.layout.baselineToTop = lookupID(typedArray, index, constraint.layout.baselineToTop);
                    break;
                case 92:
                    constraint.layout.baselineToBottom = lookupID(typedArray, index, constraint.layout.baselineToBottom);
                    break;
                case 93:
                    constraint.layout.baselineMargin = typedArray.getDimensionPixelSize(index, constraint.layout.baselineMargin);
                    break;
                case 94:
                    constraint.layout.goneBaselineMargin = typedArray.getDimensionPixelSize(index, constraint.layout.goneBaselineMargin);
                    break;
                case 95:
                    parseDimensionConstraints(constraint.layout, typedArray, index, 0);
                    break;
                case 96:
                    parseDimensionConstraints(constraint.layout, typedArray, index, 1);
                    break;
                case 97:
                    constraint.layout.mWrapBehavior = typedArray.getInt(index, constraint.layout.mWrapBehavior);
                    break;
            }
        }
        if (constraint.layout.mReferenceIdString != null) {
            constraint.layout.mReferenceIds = null;
        }
    }

    private static void populateOverride(Context context, Constraint constraint, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        Constraint.Delta delta = new Constraint.Delta();
        constraint.mDelta = delta;
        constraint.motion.mApply = false;
        constraint.layout.mApply = false;
        constraint.propertySet.mApply = false;
        constraint.transform.mApply = false;
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            switch (overrideMapToConstant.get(index)) {
                case 2:
                    delta.add(2, typedArray.getDimensionPixelSize(index, constraint.layout.bottomMargin));
                    break;
                case 3:
                case 4:
                case 9:
                case 10:
                case 25:
                case 26:
                case 29:
                case 30:
                case 32:
                case 33:
                case 35:
                case 36:
                case 61:
                case 88:
                case 89:
                case 90:
                case 91:
                case 92:
                default:
                    String hexString = Integer.toHexString(index);
                    int i2 = mapToConstant.get(index);
                    StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 34);
                    sb.append(NPStringFog.decode(new byte[]{54, 88, 94, 91, 9, 79, 13, 22, 84, 65, 18, 74, 10, 84, 64, 65, 3, 24, 83, 78}, "c655f8", -1485343244L));
                    sb.append(hexString);
                    sb.append("   ");
                    sb.append(i2);
                    Log.w(TAG, sb.toString());
                    break;
                case 5:
                    delta.add(5, typedArray.getString(index));
                    break;
                case 6:
                    delta.add(6, typedArray.getDimensionPixelOffset(index, constraint.layout.editorAbsoluteX));
                    break;
                case 7:
                    delta.add(7, typedArray.getDimensionPixelOffset(index, constraint.layout.editorAbsoluteY));
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        delta.add(8, typedArray.getDimensionPixelSize(index, constraint.layout.endMargin));
                    }
                    break;
                case 11:
                    delta.add(11, typedArray.getDimensionPixelSize(index, constraint.layout.goneBottomMargin));
                    break;
                case 12:
                    delta.add(12, typedArray.getDimensionPixelSize(index, constraint.layout.goneEndMargin));
                    break;
                case 13:
                    delta.add(13, typedArray.getDimensionPixelSize(index, constraint.layout.goneLeftMargin));
                    break;
                case 14:
                    delta.add(14, typedArray.getDimensionPixelSize(index, constraint.layout.goneRightMargin));
                    break;
                case 15:
                    delta.add(15, typedArray.getDimensionPixelSize(index, constraint.layout.goneStartMargin));
                    break;
                case 16:
                    delta.add(16, typedArray.getDimensionPixelSize(index, constraint.layout.goneTopMargin));
                    break;
                case 17:
                    delta.add(17, typedArray.getDimensionPixelOffset(index, constraint.layout.guideBegin));
                    break;
                case 18:
                    delta.add(18, typedArray.getDimensionPixelOffset(index, constraint.layout.guideEnd));
                    break;
                case 19:
                    delta.add(19, typedArray.getFloat(index, constraint.layout.guidePercent));
                    break;
                case 20:
                    delta.add(20, typedArray.getFloat(index, constraint.layout.horizontalBias));
                    break;
                case 21:
                    delta.add(21, typedArray.getLayoutDimension(index, constraint.layout.mHeight));
                    break;
                case 22:
                    delta.add(22, VISIBILITY_FLAGS[typedArray.getInt(index, constraint.propertySet.visibility)]);
                    break;
                case 23:
                    delta.add(23, typedArray.getLayoutDimension(index, constraint.layout.mWidth));
                    break;
                case 24:
                    delta.add(24, typedArray.getDimensionPixelSize(index, constraint.layout.leftMargin));
                    break;
                case 27:
                    delta.add(27, typedArray.getInt(index, constraint.layout.orientation));
                    break;
                case 28:
                    delta.add(28, typedArray.getDimensionPixelSize(index, constraint.layout.rightMargin));
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        delta.add(31, typedArray.getDimensionPixelSize(index, constraint.layout.startMargin));
                    }
                    break;
                case 34:
                    delta.add(34, typedArray.getDimensionPixelSize(index, constraint.layout.topMargin));
                    break;
                case 37:
                    delta.add(37, typedArray.getFloat(index, constraint.layout.verticalBias));
                    break;
                case 38:
                    constraint.mViewId = typedArray.getResourceId(index, constraint.mViewId);
                    delta.add(38, constraint.mViewId);
                    break;
                case 39:
                    delta.add(39, typedArray.getFloat(index, constraint.layout.horizontalWeight));
                    break;
                case 40:
                    delta.add(40, typedArray.getFloat(index, constraint.layout.verticalWeight));
                    break;
                case 41:
                    delta.add(41, typedArray.getInt(index, constraint.layout.horizontalChainStyle));
                    break;
                case 42:
                    delta.add(42, typedArray.getInt(index, constraint.layout.verticalChainStyle));
                    break;
                case 43:
                    delta.add(43, typedArray.getFloat(index, constraint.propertySet.alpha));
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        delta.add(44, true);
                        delta.add(44, typedArray.getDimension(index, constraint.transform.elevation));
                    }
                    break;
                case 45:
                    delta.add(45, typedArray.getFloat(index, constraint.transform.rotationX));
                    break;
                case 46:
                    delta.add(46, typedArray.getFloat(index, constraint.transform.rotationY));
                    break;
                case 47:
                    delta.add(47, typedArray.getFloat(index, constraint.transform.scaleX));
                    break;
                case 48:
                    delta.add(48, typedArray.getFloat(index, constraint.transform.scaleY));
                    break;
                case 49:
                    delta.add(49, typedArray.getDimension(index, constraint.transform.transformPivotX));
                    break;
                case 50:
                    delta.add(50, typedArray.getDimension(index, constraint.transform.transformPivotY));
                    break;
                case 51:
                    delta.add(51, typedArray.getDimension(index, constraint.transform.translationX));
                    break;
                case 52:
                    delta.add(52, typedArray.getDimension(index, constraint.transform.translationY));
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        delta.add(53, typedArray.getDimension(index, constraint.transform.translationZ));
                    }
                    break;
                case 54:
                    delta.add(54, typedArray.getInt(index, constraint.layout.widthDefault));
                    break;
                case 55:
                    delta.add(55, typedArray.getInt(index, constraint.layout.heightDefault));
                    break;
                case 56:
                    delta.add(56, typedArray.getDimensionPixelSize(index, constraint.layout.widthMax));
                    break;
                case 57:
                    delta.add(57, typedArray.getDimensionPixelSize(index, constraint.layout.heightMax));
                    break;
                case 58:
                    delta.add(58, typedArray.getDimensionPixelSize(index, constraint.layout.widthMin));
                    break;
                case 59:
                    delta.add(59, typedArray.getDimensionPixelSize(index, constraint.layout.heightMin));
                    break;
                case 60:
                    delta.add(60, typedArray.getFloat(index, constraint.transform.rotation));
                    break;
                case 62:
                    delta.add(62, typedArray.getDimensionPixelSize(index, constraint.layout.circleRadius));
                    break;
                case 63:
                    delta.add(63, typedArray.getFloat(index, constraint.layout.circleAngle));
                    break;
                case 64:
                    delta.add(64, lookupID(typedArray, index, constraint.motion.mAnimateRelativeTo));
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        delta.add(65, typedArray.getString(index));
                    } else {
                        delta.add(65, Easing.NAMED_EASING[typedArray.getInteger(index, 0)]);
                    }
                    break;
                case 66:
                    delta.add(66, typedArray.getInt(index, 0));
                    break;
                case 67:
                    delta.add(67, typedArray.getFloat(index, constraint.motion.mPathRotate));
                    break;
                case 68:
                    delta.add(68, typedArray.getFloat(index, constraint.propertySet.mProgress));
                    break;
                case 69:
                    delta.add(69, typedArray.getFloat(index, 1.0f));
                    break;
                case 70:
                    delta.add(70, typedArray.getFloat(index, 1.0f));
                    break;
                case 71:
                    Log.e(TAG, NPStringFog.decode(new byte[]{123, 55, 52, 52, 117, 40, 108, 46, 63, 70, 101, 40, 107, 55, 54, 54, 127, 52, 108, 39, 34}, "8bff0f", false));
                    break;
                case 72:
                    delta.add(72, typedArray.getInt(index, constraint.layout.mBarrierDirection));
                    break;
                case 73:
                    delta.add(73, typedArray.getDimensionPixelSize(index, constraint.layout.mBarrierMargin));
                    break;
                case 74:
                    delta.add(74, typedArray.getString(index));
                    break;
                case 75:
                    delta.add(75, typedArray.getBoolean(index, constraint.layout.mBarrierAllowsGoneWidgets));
                    break;
                case 76:
                    delta.add(76, typedArray.getInt(index, constraint.motion.mPathMotionArc));
                    break;
                case 77:
                    delta.add(77, typedArray.getString(index));
                    break;
                case 78:
                    delta.add(78, typedArray.getInt(index, constraint.propertySet.mVisibilityMode));
                    break;
                case 79:
                    delta.add(79, typedArray.getFloat(index, constraint.motion.mMotionStagger));
                    break;
                case 80:
                    delta.add(80, typedArray.getBoolean(index, constraint.layout.constrainedWidth));
                    break;
                case 81:
                    delta.add(81, typedArray.getBoolean(index, constraint.layout.constrainedHeight));
                    break;
                case 82:
                    delta.add(82, typedArray.getInteger(index, constraint.motion.mAnimateCircleAngleTo));
                    break;
                case 83:
                    delta.add(83, lookupID(typedArray, index, constraint.transform.transformPivotTarget));
                    break;
                case 84:
                    delta.add(84, typedArray.getInteger(index, constraint.motion.mQuantizeMotionSteps));
                    break;
                case 85:
                    delta.add(85, typedArray.getFloat(index, constraint.motion.mQuantizeMotionPhase));
                    break;
                case 86:
                    TypedValue typedValuePeekValue = typedArray.peekValue(index);
                    if (typedValuePeekValue.type == 1) {
                        constraint.motion.mQuantizeInterpolatorID = typedArray.getResourceId(index, -1);
                        delta.add(89, constraint.motion.mQuantizeInterpolatorID);
                        if (constraint.motion.mQuantizeInterpolatorID != -1) {
                            constraint.motion.mQuantizeInterpolatorType = -2;
                            delta.add(88, constraint.motion.mQuantizeInterpolatorType);
                        }
                    } else if (typedValuePeekValue.type == 3) {
                        constraint.motion.mQuantizeInterpolatorString = typedArray.getString(index);
                        delta.add(90, constraint.motion.mQuantizeInterpolatorString);
                        if (constraint.motion.mQuantizeInterpolatorString.indexOf(NPStringFog.decode(new byte[]{28}, "32495a", 1861093693L)) > 0) {
                            constraint.motion.mQuantizeInterpolatorID = typedArray.getResourceId(index, -1);
                            delta.add(89, constraint.motion.mQuantizeInterpolatorID);
                            constraint.motion.mQuantizeInterpolatorType = -2;
                            delta.add(88, constraint.motion.mQuantizeInterpolatorType);
                        } else {
                            constraint.motion.mQuantizeInterpolatorType = -1;
                            delta.add(88, constraint.motion.mQuantizeInterpolatorType);
                        }
                    } else {
                        constraint.motion.mQuantizeInterpolatorType = typedArray.getInteger(index, constraint.motion.mQuantizeInterpolatorID);
                        delta.add(88, constraint.motion.mQuantizeInterpolatorType);
                    }
                    break;
                case 87:
                    String hexString2 = Integer.toHexString(index);
                    int i3 = mapToConstant.get(index);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(hexString2).length() + 33);
                    sb2.append(NPStringFog.decode(new byte[]{16, 10, 67, 68, 86, 86, 69, 5, 66, 67, 65, 91, 7, 17, 66, 82, 19, 2, 29}, "ed6732", 1854195818L));
                    sb2.append(hexString2);
                    sb2.append("   ");
                    sb2.append(i3);
                    Log.w(TAG, sb2.toString());
                    break;
                case 93:
                    delta.add(93, typedArray.getDimensionPixelSize(index, constraint.layout.baselineMargin));
                    break;
                case 94:
                    delta.add(94, typedArray.getDimensionPixelSize(index, constraint.layout.goneBaselineMargin));
                    break;
                case 95:
                    parseDimensionConstraints(delta, typedArray, index, 0);
                    break;
                case 96:
                    parseDimensionConstraints(delta, typedArray, index, 1);
                    break;
                case 97:
                    delta.add(97, typedArray.getInt(index, constraint.layout.mWrapBehavior));
                    break;
                case 98:
                    if (MotionLayout.IS_IN_EDIT_MODE) {
                        constraint.mViewId = typedArray.getResourceId(index, constraint.mViewId);
                        if (constraint.mViewId == -1) {
                            constraint.mTargetString = typedArray.getString(index);
                        }
                    } else if (typedArray.peekValue(index).type == 3) {
                        constraint.mTargetString = typedArray.getString(index);
                    } else {
                        constraint.mViewId = typedArray.getResourceId(index, constraint.mViewId);
                    }
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setDeltaValue(Constraint constraint, int i, float f) {
        switch (i) {
            case 19:
                constraint.layout.guidePercent = f;
                break;
            case 20:
                constraint.layout.horizontalBias = f;
                break;
            case 37:
                constraint.layout.verticalBias = f;
                break;
            case 39:
                constraint.layout.horizontalWeight = f;
                break;
            case 40:
                constraint.layout.verticalWeight = f;
                break;
            case 43:
                constraint.propertySet.alpha = f;
                break;
            case 44:
                constraint.transform.elevation = f;
                constraint.transform.applyElevation = true;
                break;
            case 45:
                constraint.transform.rotationX = f;
                break;
            case 46:
                constraint.transform.rotationY = f;
                break;
            case 47:
                constraint.transform.scaleX = f;
                break;
            case 48:
                constraint.transform.scaleY = f;
                break;
            case 49:
                constraint.transform.transformPivotX = f;
                break;
            case 50:
                constraint.transform.transformPivotY = f;
                break;
            case 51:
                constraint.transform.translationX = f;
                break;
            case 52:
                constraint.transform.translationY = f;
                break;
            case 53:
                constraint.transform.translationZ = f;
                break;
            case 60:
                constraint.transform.rotation = f;
                break;
            case 63:
                constraint.layout.circleAngle = f;
                break;
            case 67:
                constraint.motion.mPathRotate = f;
                break;
            case 68:
                constraint.propertySet.mProgress = f;
                break;
            case 69:
                constraint.layout.widthPercent = f;
                break;
            case 70:
                constraint.layout.heightPercent = f;
                break;
            case 79:
                constraint.motion.mMotionStagger = f;
                break;
            case 85:
                constraint.motion.mQuantizeMotionPhase = f;
                break;
            case 87:
                break;
            default:
                Log.w(TAG, NPStringFog.decode(new byte[]{99, 11, 9, 15, 93, 70, 88, 69, 3, 21, 70, 67, 95, 7, 23, 21, 87, 17, 6, 29}, "6eba21", 5.1723405E7d));
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setDeltaValue(Constraint constraint, int i, int i2) {
        switch (i) {
            case 2:
                constraint.layout.bottomMargin = i2;
                break;
            case 3:
            case 4:
            case 5:
            case 9:
            case 10:
            case 19:
            case 20:
            case 25:
            case 26:
            case 29:
            case 30:
            case 32:
            case 33:
            case 35:
            case 36:
            case 37:
            case 39:
            case 40:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 63:
            case 65:
            case 67:
            case 68:
            case 69:
            case 70:
            case 71:
            case 74:
            case 75:
            case 77:
            case 79:
            case 80:
            case 81:
            case 85:
            case 86:
            case 90:
            case 91:
            case 92:
            case 95:
            case 96:
            default:
                Log.w(TAG, NPStringFog.decode(new byte[]{98, 13, 9, 90, 14, 79, 89, 67, 3, 64, 21, 74, 94, 1, 23, 64, 4, 24, 7, 27}, "7cb4a8", -4.56531646E8d));
                break;
            case 6:
                constraint.layout.editorAbsoluteX = i2;
                break;
            case 7:
                constraint.layout.editorAbsoluteY = i2;
                break;
            case 8:
                constraint.layout.endMargin = i2;
                break;
            case 11:
                constraint.layout.goneBottomMargin = i2;
                break;
            case 12:
                constraint.layout.goneEndMargin = i2;
                break;
            case 13:
                constraint.layout.goneLeftMargin = i2;
                break;
            case 14:
                constraint.layout.goneRightMargin = i2;
                break;
            case 15:
                constraint.layout.goneStartMargin = i2;
                break;
            case 16:
                constraint.layout.goneTopMargin = i2;
                break;
            case 17:
                constraint.layout.guideBegin = i2;
                break;
            case 18:
                constraint.layout.guideEnd = i2;
                break;
            case 21:
                constraint.layout.mHeight = i2;
                break;
            case 22:
                constraint.propertySet.visibility = i2;
                break;
            case 23:
                constraint.layout.mWidth = i2;
                break;
            case 24:
                constraint.layout.leftMargin = i2;
                break;
            case 27:
                constraint.layout.orientation = i2;
                break;
            case 28:
                constraint.layout.rightMargin = i2;
                break;
            case 31:
                constraint.layout.startMargin = i2;
                break;
            case 34:
                constraint.layout.topMargin = i2;
                break;
            case 38:
                constraint.mViewId = i2;
                break;
            case 41:
                constraint.layout.horizontalChainStyle = i2;
                break;
            case 42:
                constraint.layout.verticalChainStyle = i2;
                break;
            case 54:
                constraint.layout.widthDefault = i2;
                break;
            case 55:
                constraint.layout.heightDefault = i2;
                break;
            case 56:
                constraint.layout.widthMax = i2;
                break;
            case 57:
                constraint.layout.heightMax = i2;
                break;
            case 58:
                constraint.layout.widthMin = i2;
                break;
            case 59:
                constraint.layout.heightMin = i2;
                break;
            case 61:
                constraint.layout.circleConstraint = i2;
                break;
            case 62:
                constraint.layout.circleRadius = i2;
                break;
            case 64:
                constraint.motion.mAnimateRelativeTo = i2;
                break;
            case 66:
                constraint.motion.mDrawPath = i2;
                break;
            case 72:
                constraint.layout.mBarrierDirection = i2;
                break;
            case 73:
                constraint.layout.mBarrierMargin = i2;
                break;
            case 76:
                constraint.motion.mPathMotionArc = i2;
                break;
            case 78:
                constraint.propertySet.mVisibilityMode = i2;
                break;
            case 82:
                constraint.motion.mAnimateCircleAngleTo = i2;
                break;
            case 83:
                constraint.transform.transformPivotTarget = i2;
                break;
            case 84:
                constraint.motion.mQuantizeMotionSteps = i2;
                break;
            case 87:
                break;
            case 88:
                constraint.motion.mQuantizeInterpolatorType = i2;
                break;
            case 89:
                constraint.motion.mQuantizeInterpolatorID = i2;
                break;
            case 93:
                constraint.layout.baselineMargin = i2;
                break;
            case 94:
                constraint.layout.goneBaselineMargin = i2;
                break;
            case 97:
                constraint.layout.mWrapBehavior = i2;
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setDeltaValue(Constraint constraint, int i, String str) {
        switch (i) {
            case 5:
                constraint.layout.dimensionRatio = str;
                break;
            case 65:
                constraint.motion.mTransitionEasing = str;
                break;
            case 74:
                constraint.layout.mReferenceIdString = str;
                constraint.layout.mReferenceIds = null;
                break;
            case 77:
                constraint.layout.mConstraintTag = str;
                break;
            case 87:
                break;
            case 90:
                constraint.motion.mQuantizeInterpolatorString = str;
                break;
            default:
                Log.w(TAG, NPStringFog.decode(new byte[]{55, 91, 89, 94, 13, 19, 12, 21, 83, 68, 22, 22, 11, 87, 71, 68, 7, 68, 82, 77}, "b520bd", 2.011293997E9d));
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setDeltaValue(Constraint constraint, int i, boolean z) {
        switch (i) {
            case 44:
                constraint.transform.applyElevation = z;
                break;
            case 75:
                constraint.layout.mBarrierAllowsGoneWidgets = z;
                break;
            case 80:
                constraint.layout.constrainedWidth = z;
                break;
            case 81:
                constraint.layout.constrainedHeight = z;
                break;
            case 87:
                break;
            default:
                Log.w(TAG, NPStringFog.decode(new byte[]{100, 93, 14, 11, 14, 67, 95, 19, 4, 17, 21, 70, 88, 81, 16, 17, 4, 20, 1, 75}, "13eea4", -39471809L));
                break;
        }
    }

    private String sideToString(int i) {
        switch (i) {
            case 1:
                return NPStringFog.decode(new byte[]{92, 1, 80, 67}, "0d670e", -1.549517656E9d);
            case 2:
                return NPStringFog.decode(new byte[]{65, 95, 95, 94, 77}, "368693", true);
            case 3:
                return NPStringFog.decode(new byte[]{76, 11, 70}, "8d6c70", true);
            case 4:
                return NPStringFog.decode(new byte[]{91, 14, 16, 64, 91, 91}, "9ad446", -17631);
            case 5:
                return NPStringFog.decode(new byte[]{0, 3, 16, 1, 10, 11, 12, 7}, "bbcdfb", 1.1778447E9f);
            case 6:
                return NPStringFog.decode(new byte[]{70, 16, 3, 16, 67}, "5dbb75", 790438206L);
            case 7:
                return NPStringFog.decode(new byte[]{4, 8, 81}, "af582d", -2.10448276E8d);
            default:
                return NPStringFog.decode(new byte[]{22, 88, 0, 80, 85, 81, 13, 83, 0}, "c6d538", -1.948166358E9d);
        }
    }

    private static String[] splitString(String str) {
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        int i = 0;
        boolean z = false;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            if (charArray[i2] == ',' && !z) {
                arrayList.add(new String(charArray, i, i2 - i));
                i = i2 + 1;
            } else if (charArray[i2] == '\"') {
                z = !z;
            }
        }
        arrayList.add(new String(charArray, i, charArray.length - i));
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public void addColorAttributes(String... strArr) {
        addAttributes(ConstraintAttribute.AttributeType.COLOR_TYPE, strArr);
    }

    public void addFloatAttributes(String... strArr) {
        addAttributes(ConstraintAttribute.AttributeType.FLOAT_TYPE, strArr);
    }

    public void addIntAttributes(String... strArr) {
        addAttributes(ConstraintAttribute.AttributeType.INT_TYPE, strArr);
    }

    public void addStringAttributes(String... strArr) {
        addAttributes(ConstraintAttribute.AttributeType.STRING_TYPE, strArr);
    }

    public void addToHorizontalChain(int i, int i2, int i3) {
        connect(i, 1, i2, i2 == 0 ? 1 : 2, 0);
        connect(i, 2, i3, i3 == 0 ? 2 : 1, 0);
        if (i2 != 0) {
            connect(i2, 2, i, 1, 0);
        }
        if (i3 != 0) {
            connect(i3, 1, i, 2, 0);
        }
    }

    public void addToHorizontalChainRTL(int i, int i2, int i3) {
        connect(i, 6, i2, i2 == 0 ? 6 : 7, 0);
        connect(i, 7, i3, i3 == 0 ? 7 : 6, 0);
        if (i2 != 0) {
            connect(i2, 7, i, 6, 0);
        }
        if (i3 != 0) {
            connect(i3, 6, i, 7, 0);
        }
    }

    public void addToVerticalChain(int i, int i2, int i3) {
        connect(i, 3, i2, i2 == 0 ? 3 : 4, 0);
        connect(i, 4, i3, i3 == 0 ? 4 : 3, 0);
        if (i2 != 0) {
            connect(i2, 4, i, 3, 0);
        }
        if (i3 != 0) {
            connect(i3, 3, i, 4, 0);
        }
    }

    public void applyCustomAttributes(ConstraintLayout constraintLayout) {
        Constraint constraint;
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                String strValueOf = String.valueOf(Debug.getName(childAt));
                Log.w(TAG, strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{15, 0, 67, 19, 86, 94, 8, 11, 20, 8, 24}, "fdcf85", -2.0097101E9f).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{10, 83, 68, 77, 11, 92, 13, 88, 19, 86, 69}, "c7d8e7", -38992109L)));
            } else {
                if (this.mForceId && id == -1) {
                    throw new RuntimeException(NPStringFog.decode(new byte[]{39, 84, 85, 67, 1, 14, 15, 84, 93, 17, 7, 8, 70, 87, 95, 67, 33, 9, 8, 75, 77, 17, 3, 15, 8, 76, 117, 2, 27, 9, 19, 76, 25, 14, 23, 21, 18, 24, 81, 2, 20, 3, 70, 81, 93, 16, 66, 18, 9, 24, 76, 16, 7, 70, 37, 87, 87, 16, 22, 20, 7, 81, 87, 23, 49, 3, 18}, "f89cbf", true));
                }
                if (this.mConstraints.containsKey(Integer.valueOf(id)) && (constraint = this.mConstraints.get(Integer.valueOf(id))) != null) {
                    ConstraintAttribute.setAttributes(childAt, constraint.mCustomConstraints);
                }
            }
        }
    }

    public void applyDeltaFrom(ConstraintSet constraintSet) {
        for (Constraint constraint : constraintSet.mConstraints.values()) {
            if (constraint.mDelta != null) {
                if (constraint.mTargetString != null) {
                    Iterator<Integer> it = this.mConstraints.keySet().iterator();
                    while (it.hasNext()) {
                        Constraint constraint2 = getConstraint(it.next().intValue());
                        if (constraint2.layout.mConstraintTag != null && constraint.mTargetString.matches(constraint2.layout.mConstraintTag)) {
                            constraint.mDelta.applyDelta(constraint2);
                            constraint2.mCustomConstraints.putAll((HashMap) constraint.mCustomConstraints.clone());
                        }
                    }
                } else {
                    constraint.mDelta.applyDelta(getConstraint(constraint.mViewId));
                }
            }
        }
    }

    public void applyTo(ConstraintLayout constraintLayout) {
        applyToInternal(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    public void applyToHelper(ConstraintHelper constraintHelper, ConstraintWidget constraintWidget, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        Constraint constraint;
        int id = constraintHelper.getId();
        if (this.mConstraints.containsKey(Integer.valueOf(id)) && (constraint = this.mConstraints.get(Integer.valueOf(id))) != null && (constraintWidget instanceof HelperWidget)) {
            constraintHelper.loadParameters(constraint, (HelperWidget) constraintWidget, layoutParams, sparseArray);
        }
    }

    void applyToInternal(ConstraintLayout constraintLayout, boolean z) {
        int childCount = constraintLayout.getChildCount();
        HashSet<Integer> hashSet = new HashSet(this.mConstraints.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                String strValueOf = String.valueOf(Debug.getName(childAt));
                Log.w(TAG, strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{10, 2, 21, 23, 86, 9, 13, 9, 66, 12, 24}, "cf5b8b", -25627).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{92, 81, 19, 69, 12, 14, 91, 90, 68, 94, 66}, "5530be", 843207531L)));
            } else {
                if (this.mForceId && id == -1) {
                    throw new RuntimeException(NPStringFog.decode(new byte[]{118, 88, 95, 69, 6, 88, 94, 88, 87, 23, 0, 94, 23, 91, 85, 69, 38, 95, 89, 71, 71, 23, 4, 89, 89, 64, 127, 4, 28, 95, 66, 64, 19, 8, 16, 67, 67, 20, 91, 4, 19, 85, 23, 93, 87, 22, 69, 68, 88, 20, 70, 22, 0, 16, 116, 91, 93, 22, 17, 66, 86, 93, 93, 17, 54, 85, 67}, "743ee0", true, false));
                }
                if (id != -1) {
                    if (this.mConstraints.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        Constraint constraint = this.mConstraints.get(Integer.valueOf(id));
                        if (constraint != null) {
                            if (childAt instanceof Barrier) {
                                constraint.layout.mHelperType = 1;
                                Barrier barrier = (Barrier) childAt;
                                barrier.setId(id);
                                barrier.setType(constraint.layout.mBarrierDirection);
                                barrier.setMargin(constraint.layout.mBarrierMargin);
                                barrier.setAllowsGoneWidget(constraint.layout.mBarrierAllowsGoneWidgets);
                                if (constraint.layout.mReferenceIds != null) {
                                    barrier.setReferencedIds(constraint.layout.mReferenceIds);
                                } else if (constraint.layout.mReferenceIdString != null) {
                                    constraint.layout.mReferenceIds = convertReferenceString(barrier, constraint.layout.mReferenceIdString);
                                    barrier.setReferencedIds(constraint.layout.mReferenceIds);
                                }
                            }
                            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                            layoutParams.validate();
                            constraint.applyTo(layoutParams);
                            if (z) {
                                ConstraintAttribute.setAttributes(childAt, constraint.mCustomConstraints);
                            }
                            childAt.setLayoutParams(layoutParams);
                            if (constraint.propertySet.mVisibilityMode == 0) {
                                childAt.setVisibility(constraint.propertySet.visibility);
                            }
                            if (Build.VERSION.SDK_INT >= 17) {
                                childAt.setAlpha(constraint.propertySet.alpha);
                                childAt.setRotation(constraint.transform.rotation);
                                childAt.setRotationX(constraint.transform.rotationX);
                                childAt.setRotationY(constraint.transform.rotationY);
                                childAt.setScaleX(constraint.transform.scaleX);
                                childAt.setScaleY(constraint.transform.scaleY);
                                if (constraint.transform.transformPivotTarget != -1) {
                                    if (((View) childAt.getParent()).findViewById(constraint.transform.transformPivotTarget) != null) {
                                        float top = (r1.getTop() + r1.getBottom()) / 2.0f;
                                        float right = (r1.getRight() + r1.getLeft()) / 2.0f;
                                        if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                            float left = childAt.getLeft();
                                            float top2 = childAt.getTop();
                                            childAt.setPivotX(right - left);
                                            childAt.setPivotY(top - top2);
                                        }
                                    }
                                } else {
                                    if (!Float.isNaN(constraint.transform.transformPivotX)) {
                                        childAt.setPivotX(constraint.transform.transformPivotX);
                                    }
                                    if (!Float.isNaN(constraint.transform.transformPivotY)) {
                                        childAt.setPivotY(constraint.transform.transformPivotY);
                                    }
                                }
                                childAt.setTranslationX(constraint.transform.translationX);
                                childAt.setTranslationY(constraint.transform.translationY);
                                if (Build.VERSION.SDK_INT >= 21) {
                                    childAt.setTranslationZ(constraint.transform.translationZ);
                                    if (constraint.transform.applyElevation) {
                                        childAt.setElevation(constraint.transform.elevation);
                                    }
                                }
                            }
                        }
                    } else {
                        StringBuilder sb = new StringBuilder(43);
                        sb.append(NPStringFog.decode(new byte[]{51, 119, 54, 125, 125, 121, 35, 22, 42, 124, 20, 116, 43, 120, 55, 103, 102, 118, 45, 120, 48, 96, 20, 81, 11, 68, 68, 69, 93, 82, 19, 22}, "d6d347", -443710858L));
                        sb.append(id);
                        Log.v(TAG, sb.toString());
                    }
                }
            }
        }
        for (Integer num : hashSet) {
            Constraint constraint2 = this.mConstraints.get(num);
            if (constraint2 != null) {
                if (constraint2.layout.mHelperType == 1) {
                    Barrier barrier2 = new Barrier(constraintLayout.getContext());
                    barrier2.setId(num.intValue());
                    if (constraint2.layout.mReferenceIds != null) {
                        barrier2.setReferencedIds(constraint2.layout.mReferenceIds);
                    } else if (constraint2.layout.mReferenceIdString != null) {
                        constraint2.layout.mReferenceIds = convertReferenceString(barrier2, constraint2.layout.mReferenceIdString);
                        barrier2.setReferencedIds(constraint2.layout.mReferenceIds);
                    }
                    barrier2.setType(constraint2.layout.mBarrierDirection);
                    barrier2.setMargin(constraint2.layout.mBarrierMargin);
                    ConstraintLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                    barrier2.validateParams();
                    constraint2.applyTo(layoutParamsGenerateDefaultLayoutParams);
                    constraintLayout.addView(barrier2, layoutParamsGenerateDefaultLayoutParams);
                }
                if (constraint2.layout.mIsGuideline) {
                    Guideline guideline = new Guideline(constraintLayout.getContext());
                    guideline.setId(num.intValue());
                    ConstraintLayout.LayoutParams layoutParamsGenerateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                    constraint2.applyTo(layoutParamsGenerateDefaultLayoutParams2);
                    constraintLayout.addView(guideline, layoutParamsGenerateDefaultLayoutParams2);
                }
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt2 = constraintLayout.getChildAt(i2);
            if (childAt2 instanceof ConstraintHelper) {
                ((ConstraintHelper) childAt2).applyLayoutFeaturesInConstraintSet(constraintLayout);
            }
        }
    }

    public void applyToLayoutParams(int i, ConstraintLayout.LayoutParams layoutParams) {
        Constraint constraint;
        if (!this.mConstraints.containsKey(Integer.valueOf(i)) || (constraint = this.mConstraints.get(Integer.valueOf(i))) == null) {
            return;
        }
        constraint.applyTo(layoutParams);
    }

    public void applyToWithoutCustom(ConstraintLayout constraintLayout) {
        applyToInternal(constraintLayout, false);
        constraintLayout.setConstraintSet(null);
    }

    public void center(int i, int i2, int i3, int i4, int i5, int i6, int i7, float f) {
        if (i4 < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{12, 84, 65, 2, 91, 86, 65, 88, 70, 22, 70, 24, 3, 80, 19, 91, 18, 8}, "a53e28", -1.370200123E9d));
        }
        if (i7 < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{89, 7, 19, 5, 8, 90, 20, 11, 20, 17, 21, 20, 86, 3, 65, 92, 65, 4}, "4faba4", -2.124734985E9d));
        }
        if (f <= 0.0f || f > 1.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{85, 13, 87, 69, 19, 84, 66, 23, 66, 22, 81, 92, 23, 6, 83, 66, 68, 92, 82, 10, 22, 6, 19, 88, 89, 0, 22, 7, 19, 80, 89, 7, 90, 67, 64, 80, 65, 1}, "7d6639", -1.983524641E9d));
        }
        if (i3 == 1 || i3 == 2) {
            connect(i, 1, i2, i3, i4);
            connect(i, 2, i5, i6, i7);
            Constraint constraint = this.mConstraints.get(Integer.valueOf(i));
            if (constraint != null) {
                constraint.layout.horizontalBias = f;
                return;
            }
            return;
        }
        if (i3 == 6 || i3 == 7) {
            connect(i, 6, i2, i3, i4);
            connect(i, 7, i5, i6, i7);
            Constraint constraint2 = this.mConstraints.get(Integer.valueOf(i));
            if (constraint2 != null) {
                constraint2.layout.horizontalBias = f;
                return;
            }
            return;
        }
        connect(i, 3, i2, i3, i4);
        connect(i, 4, i5, i6, i7);
        Constraint constraint3 = this.mConstraints.get(Integer.valueOf(i));
        if (constraint3 != null) {
            constraint3.layout.verticalBias = f;
        }
    }

    public void centerHorizontally(int i, int i2) {
        if (i2 == 0) {
            center(i, 0, 1, 0, 0, 2, 0, 0.5f);
        } else {
            center(i, i2, 2, 0, i2, 1, 0, 0.5f);
        }
    }

    public void centerHorizontally(int i, int i2, int i3, int i4, int i5, int i6, int i7, float f) {
        connect(i, 1, i2, i3, i4);
        connect(i, 2, i5, i6, i7);
        Constraint constraint = this.mConstraints.get(Integer.valueOf(i));
        if (constraint != null) {
            constraint.layout.horizontalBias = f;
        }
    }

    public void centerHorizontallyRtl(int i, int i2) {
        if (i2 == 0) {
            center(i, 0, 6, 0, 0, 7, 0, 0.5f);
        } else {
            center(i, i2, 7, 0, i2, 6, 0, 0.5f);
        }
    }

    public void centerHorizontallyRtl(int i, int i2, int i3, int i4, int i5, int i6, int i7, float f) {
        connect(i, 6, i2, i3, i4);
        connect(i, 7, i5, i6, i7);
        Constraint constraint = this.mConstraints.get(Integer.valueOf(i));
        if (constraint != null) {
            constraint.layout.horizontalBias = f;
        }
    }

    public void centerVertically(int i, int i2) {
        if (i2 == 0) {
            center(i, 0, 3, 0, 0, 4, 0, 0.5f);
        } else {
            center(i, i2, 4, 0, i2, 3, 0, 0.5f);
        }
    }

    public void centerVertically(int i, int i2, int i3, int i4, int i5, int i6, int i7, float f) {
        connect(i, 3, i2, i3, i4);
        connect(i, 4, i5, i6, i7);
        Constraint constraint = this.mConstraints.get(Integer.valueOf(i));
        if (constraint != null) {
            constraint.layout.verticalBias = f;
        }
    }

    public void clear(int i) {
        this.mConstraints.remove(Integer.valueOf(i));
    }

    public void clear(int i, int i2) {
        Constraint constraint;
        if (!this.mConstraints.containsKey(Integer.valueOf(i)) || (constraint = this.mConstraints.get(Integer.valueOf(i))) == null) {
            return;
        }
        switch (i2) {
            case 1:
                constraint.layout.leftToRight = -1;
                constraint.layout.leftToLeft = -1;
                constraint.layout.leftMargin = -1;
                constraint.layout.goneLeftMargin = Integer.MIN_VALUE;
                return;
            case 2:
                constraint.layout.rightToRight = -1;
                constraint.layout.rightToLeft = -1;
                constraint.layout.rightMargin = -1;
                constraint.layout.goneRightMargin = Integer.MIN_VALUE;
                return;
            case 3:
                constraint.layout.topToBottom = -1;
                constraint.layout.topToTop = -1;
                constraint.layout.topMargin = 0;
                constraint.layout.goneTopMargin = Integer.MIN_VALUE;
                return;
            case 4:
                constraint.layout.bottomToTop = -1;
                constraint.layout.bottomToBottom = -1;
                constraint.layout.bottomMargin = 0;
                constraint.layout.goneBottomMargin = Integer.MIN_VALUE;
                return;
            case 5:
                constraint.layout.baselineToBaseline = -1;
                constraint.layout.baselineToTop = -1;
                constraint.layout.baselineToBottom = -1;
                constraint.layout.baselineMargin = 0;
                constraint.layout.goneBaselineMargin = Integer.MIN_VALUE;
                return;
            case 6:
                constraint.layout.startToEnd = -1;
                constraint.layout.startToStart = -1;
                constraint.layout.startMargin = 0;
                constraint.layout.goneStartMargin = Integer.MIN_VALUE;
                return;
            case 7:
                constraint.layout.endToStart = -1;
                constraint.layout.endToEnd = -1;
                constraint.layout.endMargin = 0;
                constraint.layout.goneEndMargin = Integer.MIN_VALUE;
                return;
            case 8:
                constraint.layout.circleAngle = -1.0f;
                constraint.layout.circleRadius = -1;
                constraint.layout.circleConstraint = -1;
                return;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{66, 89, 15, 88, 11, 21, 89, 23, 7, 89, 10, 17, 67, 69, 5, 95, 10, 22}, "77d6db", false));
        }
    }

    public void clone(Context context, int i) {
        clone((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    public void clone(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.mConstraints.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.mForceId && id == -1) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{37, 91, 8, 16, 6, 89, 13, 91, 0, 66, 0, 95, 68, 88, 2, 16, 38, 94, 10, 68, 16, 66, 4, 88, 10, 67, 40, 81, 28, 94, 17, 67, 68, 93, 16, 66, 16, 23, 12, 81, 19, 84, 68, 94, 0, 67, 69, 69, 11, 23, 17, 67, 0, 17, 39, 88, 10, 67, 17, 67, 5, 94, 10, 68, 54, 84, 16}, "d7d0e1", true));
            }
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                this.mConstraints.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = this.mConstraints.get(Integer.valueOf(id));
            if (constraint != null) {
                constraint.mCustomConstraints = ConstraintAttribute.extractAttributes(this.mSavedAttributes, childAt);
                constraint.fillFrom(id, layoutParams);
                constraint.propertySet.visibility = childAt.getVisibility();
                if (Build.VERSION.SDK_INT >= 17) {
                    constraint.propertySet.alpha = childAt.getAlpha();
                    constraint.transform.rotation = childAt.getRotation();
                    constraint.transform.rotationX = childAt.getRotationX();
                    constraint.transform.rotationY = childAt.getRotationY();
                    constraint.transform.scaleX = childAt.getScaleX();
                    constraint.transform.scaleY = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        constraint.transform.transformPivotX = pivotX;
                        constraint.transform.transformPivotY = pivotY;
                    }
                    constraint.transform.translationX = childAt.getTranslationX();
                    constraint.transform.translationY = childAt.getTranslationY();
                    if (Build.VERSION.SDK_INT >= 21) {
                        constraint.transform.translationZ = childAt.getTranslationZ();
                        if (constraint.transform.applyElevation) {
                            constraint.transform.elevation = childAt.getElevation();
                        }
                    }
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    constraint.layout.mBarrierAllowsGoneWidgets = barrier.getAllowsGoneWidget();
                    constraint.layout.mReferenceIds = barrier.getReferencedIds();
                    constraint.layout.mBarrierDirection = barrier.getType();
                    constraint.layout.mBarrierMargin = barrier.getMargin();
                }
            }
        }
    }

    public void clone(ConstraintSet constraintSet) {
        this.mConstraints.clear();
        for (Integer num : constraintSet.mConstraints.keySet()) {
            Constraint constraint = constraintSet.mConstraints.get(num);
            if (constraint != null) {
                this.mConstraints.put(num, constraint.m4clone());
            }
        }
    }

    public void clone(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.mConstraints.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraints.getChildAt(i);
            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.mForceId && id == -1) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{34, 93, 13, 69, 91, 93, 10, 93, 5, 23, 93, 91, 67, 94, 7, 69, 123, 90, 13, 66, 21, 23, 89, 92, 13, 69, 45, 4, 65, 90, 22, 69, 65, 8, 77, 70, 23, 17, 9, 4, 78, 80, 67, 88, 5, 22, 24, 65, 12, 17, 20, 22, 93, 21, 32, 94, 15, 22, 76, 71, 2, 88, 15, 17, 107, 80, 23}, "c1ae85", 1968348244L));
            }
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                this.mConstraints.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = this.mConstraints.get(Integer.valueOf(id));
            if (constraint != null) {
                if (childAt instanceof ConstraintHelper) {
                    constraint.fillFromConstraints((ConstraintHelper) childAt, id, layoutParams);
                }
                constraint.fillFromConstraints(id, layoutParams);
            }
        }
    }

    public void connect(int i, int i2, int i3, int i4) {
        if (!this.mConstraints.containsKey(Integer.valueOf(i))) {
            this.mConstraints.put(Integer.valueOf(i), new Constraint());
        }
        Constraint constraint = this.mConstraints.get(Integer.valueOf(i));
        if (constraint == null) {
            return;
        }
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    constraint.layout.leftToLeft = i3;
                    constraint.layout.leftToRight = -1;
                    return;
                } else {
                    if (i4 == 2) {
                        constraint.layout.leftToRight = i3;
                        constraint.layout.leftToLeft = -1;
                        return;
                    }
                    String strSideToString = sideToString(i4);
                    StringBuilder sb = new StringBuilder(String.valueOf(strSideToString).length() + 18);
                    sb.append(NPStringFog.decode(new byte[]{8, 93, 86, 69, 66, 70, 11, 24}, "d801b2", false, false));
                    sb.append(strSideToString);
                    sb.append(NPStringFog.decode(new byte[]{18, 23, 13, 5, 80, 85, 91, 12, 6, 5}, "2bca53", true, true));
                    throw new IllegalArgumentException(sb.toString());
                }
            case 2:
                if (i4 == 1) {
                    constraint.layout.rightToLeft = i3;
                    constraint.layout.rightToRight = -1;
                    return;
                } else {
                    if (i4 == 2) {
                        constraint.layout.rightToRight = i3;
                        constraint.layout.rightToLeft = -1;
                        return;
                    }
                    String strSideToString2 = sideToString(i4);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(strSideToString2).length() + 19);
                    sb2.append(NPStringFog.decode(new byte[]{74, 11, 86, 9, 17, 65, 76, 13, 17}, "8b1aea", 7.53475122E8d));
                    sb2.append(strSideToString2);
                    sb2.append(NPStringFog.decode(new byte[]{68, 17, 12, 83, 4, 80, 13, 10, 7, 83}, "ddb7a6", 7.7637344E8f));
                    throw new IllegalArgumentException(sb2.toString());
                }
            case 3:
                if (i4 == 3) {
                    constraint.layout.topToTop = i3;
                    constraint.layout.topToBottom = -1;
                    constraint.layout.baselineToBaseline = -1;
                    constraint.layout.baselineToTop = -1;
                    constraint.layout.baselineToBottom = -1;
                    return;
                }
                if (i4 == 4) {
                    constraint.layout.topToBottom = i3;
                    constraint.layout.topToTop = -1;
                    constraint.layout.baselineToBaseline = -1;
                    constraint.layout.baselineToTop = -1;
                    constraint.layout.baselineToBottom = -1;
                    return;
                }
                String strSideToString3 = sideToString(i4);
                StringBuilder sb3 = new StringBuilder(String.valueOf(strSideToString3).length() + 19);
                sb3.append(NPStringFog.decode(new byte[]{67, 11, 86, 94, 21, 69, 69, 13, 17}, "1b16ae", true));
                sb3.append(strSideToString3);
                sb3.append(NPStringFog.decode(new byte[]{70, 65, 89, 6, 83, 84, 15, 90, 82, 6}, "f47b62", -5788));
                throw new IllegalArgumentException(sb3.toString());
            case 4:
                if (i4 == 4) {
                    constraint.layout.bottomToBottom = i3;
                    constraint.layout.bottomToTop = -1;
                    constraint.layout.baselineToBaseline = -1;
                    constraint.layout.baselineToTop = -1;
                    constraint.layout.baselineToBottom = -1;
                    return;
                }
                if (i4 == 3) {
                    constraint.layout.bottomToTop = i3;
                    constraint.layout.bottomToBottom = -1;
                    constraint.layout.baselineToBaseline = -1;
                    constraint.layout.baselineToTop = -1;
                    constraint.layout.baselineToBottom = -1;
                    return;
                }
                String strSideToString4 = sideToString(i4);
                StringBuilder sb4 = new StringBuilder(String.valueOf(strSideToString4).length() + 19);
                sb4.append(NPStringFog.decode(new byte[]{65, 81, 5, 13, 16, 18, 71, 87, 66}, "38bed2", -1197112165L));
                sb4.append(strSideToString4);
                sb4.append(NPStringFog.decode(new byte[]{20, 16, 94, 2, 84, 7, 93, 11, 85, 2}, "4e0f1a", -1190));
                throw new IllegalArgumentException(sb4.toString());
            case 5:
                if (i4 == 5) {
                    constraint.layout.baselineToBaseline = i3;
                    constraint.layout.bottomToBottom = -1;
                    constraint.layout.bottomToTop = -1;
                    constraint.layout.topToTop = -1;
                    constraint.layout.topToBottom = -1;
                    return;
                }
                if (i4 == 3) {
                    constraint.layout.baselineToTop = i3;
                    constraint.layout.bottomToBottom = -1;
                    constraint.layout.bottomToTop = -1;
                    constraint.layout.topToTop = -1;
                    constraint.layout.topToBottom = -1;
                    return;
                }
                if (i4 == 4) {
                    constraint.layout.baselineToBottom = i3;
                    constraint.layout.bottomToBottom = -1;
                    constraint.layout.bottomToTop = -1;
                    constraint.layout.topToTop = -1;
                    constraint.layout.topToBottom = -1;
                    return;
                }
                String strSideToString5 = sideToString(i4);
                StringBuilder sb5 = new StringBuilder(String.valueOf(strSideToString5).length() + 19);
                sb5.append(NPStringFog.decode(new byte[]{69, 95, 86, 10, 65, 68, 67, 89, 17}, "761b5d", 7.38743794E8d));
                sb5.append(strSideToString5);
                sb5.append(NPStringFog.decode(new byte[]{16, 68, 92, 81, 83, 4, 89, 95, 87, 81}, "01256b", false));
                throw new IllegalArgumentException(sb5.toString());
            case 6:
                if (i4 == 6) {
                    constraint.layout.startToStart = i3;
                    constraint.layout.startToEnd = -1;
                    return;
                } else {
                    if (i4 == 7) {
                        constraint.layout.startToEnd = i3;
                        constraint.layout.startToStart = -1;
                        return;
                    }
                    String strSideToString6 = sideToString(i4);
                    StringBuilder sb6 = new StringBuilder(String.valueOf(strSideToString6).length() + 19);
                    sb6.append(NPStringFog.decode(new byte[]{64, 95, 86, 12, 23, 67, 70, 89, 17}, "261dcc", false));
                    sb6.append(strSideToString6);
                    sb6.append(NPStringFog.decode(new byte[]{17, 76, 90, 6, 92, 95, 88, 87, 81, 6}, "194b99", 1.4666733E9f));
                    throw new IllegalArgumentException(sb6.toString());
                }
            case 7:
                if (i4 == 7) {
                    constraint.layout.endToEnd = i3;
                    constraint.layout.endToStart = -1;
                    return;
                } else {
                    if (i4 == 6) {
                        constraint.layout.endToStart = i3;
                        constraint.layout.endToEnd = -1;
                        return;
                    }
                    String strSideToString7 = sideToString(i4);
                    StringBuilder sb7 = new StringBuilder(String.valueOf(strSideToString7).length() + 19);
                    sb7.append(NPStringFog.decode(new byte[]{74, 15, 83, 12, 65, 20, 76, 9, 20}, "8f4d54", false, false));
                    sb7.append(strSideToString7);
                    sb7.append(NPStringFog.decode(new byte[]{66, 77, 95, 80, 7, 83, 11, 86, 84, 80}, "b814b5", true));
                    throw new IllegalArgumentException(sb7.toString());
                }
            default:
                String strSideToString8 = sideToString(i2);
                String strSideToString9 = sideToString(i4);
                StringBuilder sb8 = new StringBuilder(String.valueOf(strSideToString8).length() + 12 + String.valueOf(strSideToString9).length());
                sb8.append(strSideToString8);
                sb8.append(NPStringFog.decode(new byte[]{20, 70, 90, 17}, "425188", 5.643454E8f));
                sb8.append(strSideToString9);
                sb8.append(NPStringFog.decode(new byte[]{18, 71, 10, 15, 90, 88, 69, 92}, "22dd47", true));
                throw new IllegalArgumentException(sb8.toString());
        }
    }

    public void connect(int i, int i2, int i3, int i4, int i5) {
        if (!this.mConstraints.containsKey(Integer.valueOf(i))) {
            this.mConstraints.put(Integer.valueOf(i), new Constraint());
        }
        Constraint constraint = this.mConstraints.get(Integer.valueOf(i));
        if (constraint == null) {
            return;
        }
        switch (i2) {
            case 1:
                if (i4 == 1) {
                    constraint.layout.leftToLeft = i3;
                    constraint.layout.leftToRight = -1;
                } else {
                    if (i4 != 2) {
                        String strSideToString = sideToString(i4);
                        StringBuilder sb = new StringBuilder(String.valueOf(strSideToString).length() + 18);
                        sb.append(NPStringFog.decode(new byte[]{125, 3, 85, 77, 17, 21, 94, 70}, "1f391a", false, false));
                        sb.append(strSideToString);
                        sb.append(NPStringFog.decode(new byte[]{70, 70, 90, 93, 3, 83, 15, 93, 81, 93}, "f349f5", 9.124819E8f));
                        throw new IllegalArgumentException(sb.toString());
                    }
                    constraint.layout.leftToRight = i3;
                    constraint.layout.leftToLeft = -1;
                }
                constraint.layout.leftMargin = i5;
                return;
            case 2:
                if (i4 == 1) {
                    constraint.layout.rightToLeft = i3;
                    constraint.layout.rightToRight = -1;
                } else {
                    if (i4 != 2) {
                        String strSideToString2 = sideToString(i4);
                        StringBuilder sb2 = new StringBuilder(String.valueOf(strSideToString2).length() + 19);
                        sb2.append(NPStringFog.decode(new byte[]{69, 91, 87, 89, 71, 22, 67, 93, 16}, "720136", 6.655572E8f));
                        sb2.append(strSideToString2);
                        sb2.append(NPStringFog.decode(new byte[]{21, 66, 90, 5, 3, 94, 92, 89, 81, 5}, "574af8", 2.14023353E8d));
                        throw new IllegalArgumentException(sb2.toString());
                    }
                    constraint.layout.rightToRight = i3;
                    constraint.layout.rightToLeft = -1;
                }
                constraint.layout.rightMargin = i5;
                return;
            case 3:
                if (i4 == 3) {
                    constraint.layout.topToTop = i3;
                    constraint.layout.topToBottom = -1;
                    constraint.layout.baselineToBaseline = -1;
                    constraint.layout.baselineToTop = -1;
                    constraint.layout.baselineToBottom = -1;
                } else {
                    if (i4 != 4) {
                        String strSideToString3 = sideToString(i4);
                        StringBuilder sb3 = new StringBuilder(String.valueOf(strSideToString3).length() + 19);
                        sb3.append(NPStringFog.decode(new byte[]{74, 8, 81, 91, 67, 70, 76, 14, 22}, "8a637f", 1806469831L));
                        sb3.append(strSideToString3);
                        sb3.append(NPStringFog.decode(new byte[]{19, 19, 94, 92, 80, 87, 90, 8, 85, 92}, "3f0851", false));
                        throw new IllegalArgumentException(sb3.toString());
                    }
                    constraint.layout.topToBottom = i3;
                    constraint.layout.topToTop = -1;
                    constraint.layout.baselineToBaseline = -1;
                    constraint.layout.baselineToTop = -1;
                    constraint.layout.baselineToBottom = -1;
                }
                constraint.layout.topMargin = i5;
                return;
            case 4:
                if (i4 == 4) {
                    constraint.layout.bottomToBottom = i3;
                    constraint.layout.bottomToTop = -1;
                    constraint.layout.baselineToBaseline = -1;
                    constraint.layout.baselineToTop = -1;
                    constraint.layout.baselineToBottom = -1;
                } else {
                    if (i4 != 3) {
                        String strSideToString4 = sideToString(i4);
                        StringBuilder sb4 = new StringBuilder(String.valueOf(strSideToString4).length() + 19);
                        sb4.append(NPStringFog.decode(new byte[]{17, 94, 3, 13, 23, 18, 23, 88, 68}, "c7dec2", true));
                        sb4.append(strSideToString4);
                        sb4.append(NPStringFog.decode(new byte[]{65, 67, 86, 93, 6, 84, 8, 88, 93, 93}, "a689c2", -8.57786027E8d));
                        throw new IllegalArgumentException(sb4.toString());
                    }
                    constraint.layout.bottomToTop = i3;
                    constraint.layout.bottomToBottom = -1;
                    constraint.layout.baselineToBaseline = -1;
                    constraint.layout.baselineToTop = -1;
                    constraint.layout.baselineToBottom = -1;
                }
                constraint.layout.bottomMargin = i5;
                return;
            case 5:
                if (i4 == 5) {
                    constraint.layout.baselineToBaseline = i3;
                    constraint.layout.bottomToBottom = -1;
                    constraint.layout.bottomToTop = -1;
                    constraint.layout.topToTop = -1;
                    constraint.layout.topToBottom = -1;
                    return;
                }
                if (i4 == 3) {
                    constraint.layout.baselineToTop = i3;
                    constraint.layout.bottomToBottom = -1;
                    constraint.layout.bottomToTop = -1;
                    constraint.layout.topToTop = -1;
                    constraint.layout.topToBottom = -1;
                    return;
                }
                if (i4 == 4) {
                    constraint.layout.baselineToBottom = i3;
                    constraint.layout.bottomToBottom = -1;
                    constraint.layout.bottomToTop = -1;
                    constraint.layout.topToTop = -1;
                    constraint.layout.topToBottom = -1;
                    return;
                }
                String strSideToString5 = sideToString(i4);
                StringBuilder sb5 = new StringBuilder(String.valueOf(strSideToString5).length() + 19);
                sb5.append(NPStringFog.decode(new byte[]{19, 13, 83, 9, 66, 65, 21, 11, 20}, "ad4a6a", false));
                sb5.append(strSideToString5);
                sb5.append(NPStringFog.decode(new byte[]{20, 16, 94, 87, 3, 4, 93, 11, 85, 87}, "4e03fb", false));
                throw new IllegalArgumentException(sb5.toString());
            case 6:
                if (i4 == 6) {
                    constraint.layout.startToStart = i3;
                    constraint.layout.startToEnd = -1;
                } else {
                    if (i4 != 7) {
                        String strSideToString6 = sideToString(i4);
                        StringBuilder sb6 = new StringBuilder(String.valueOf(strSideToString6).length() + 19);
                        sb6.append(NPStringFog.decode(new byte[]{17, 94, 5, 11, 69, 24, 23, 88, 66}, "c7bc18", false));
                        sb6.append(strSideToString6);
                        sb6.append(NPStringFog.decode(new byte[]{68, 19, 92, 1, 93, 7, 13, 8, 87, 1}, "df2e8a", -50363717L));
                        throw new IllegalArgumentException(sb6.toString());
                    }
                    constraint.layout.startToEnd = i3;
                    constraint.layout.startToStart = -1;
                }
                constraint.layout.startMargin = i5;
                return;
            case 7:
                if (i4 == 7) {
                    constraint.layout.endToEnd = i3;
                    constraint.layout.endToStart = -1;
                } else {
                    if (i4 != 6) {
                        String strSideToString7 = sideToString(i4);
                        StringBuilder sb7 = new StringBuilder(String.valueOf(strSideToString7).length() + 19);
                        sb7.append(NPStringFog.decode(new byte[]{71, 8, 5, 14, 71, 68, 65, 14, 66}, "5abf3d", -4367));
                        sb7.append(strSideToString7);
                        sb7.append(NPStringFog.decode(new byte[]{65, 69, 94, 2, 82, 5, 8, 94, 85, 2}, "a00f7c", true, false));
                        throw new IllegalArgumentException(sb7.toString());
                    }
                    constraint.layout.endToStart = i3;
                    constraint.layout.endToEnd = -1;
                }
                constraint.layout.endMargin = i5;
                return;
            default:
                String strSideToString8 = sideToString(i2);
                String strSideToString9 = sideToString(i4);
                StringBuilder sb8 = new StringBuilder(String.valueOf(strSideToString8).length() + 12 + String.valueOf(strSideToString9).length());
                sb8.append(strSideToString8);
                sb8.append(NPStringFog.decode(new byte[]{19, 70, 11, 67}, "32dc2a", false));
                sb8.append(strSideToString9);
                sb8.append(NPStringFog.decode(new byte[]{19, 76, 8, 95, 88, 95, 68, 87}, "39f460", -689211789L));
                throw new IllegalArgumentException(sb8.toString());
        }
    }

    public void constrainCircle(int i, int i2, int i3, float f) {
        Constraint constraint = get(i);
        constraint.layout.circleConstraint = i2;
        constraint.layout.circleRadius = i3;
        constraint.layout.circleAngle = f;
    }

    public void constrainDefaultHeight(int i, int i2) {
        get(i).layout.heightDefault = i2;
    }

    public void constrainDefaultWidth(int i, int i2) {
        get(i).layout.widthDefault = i2;
    }

    public void constrainHeight(int i, int i2) {
        get(i).layout.mHeight = i2;
    }

    public void constrainMaxHeight(int i, int i2) {
        get(i).layout.heightMax = i2;
    }

    public void constrainMaxWidth(int i, int i2) {
        get(i).layout.widthMax = i2;
    }

    public void constrainMinHeight(int i, int i2) {
        get(i).layout.heightMin = i2;
    }

    public void constrainMinWidth(int i, int i2) {
        get(i).layout.widthMin = i2;
    }

    public void constrainPercentHeight(int i, float f) {
        get(i).layout.heightPercent = f;
    }

    public void constrainPercentWidth(int i, float f) {
        get(i).layout.widthPercent = f;
    }

    public void constrainWidth(int i, int i2) {
        get(i).layout.mWidth = i2;
    }

    public void constrainedHeight(int i, boolean z) {
        get(i).layout.constrainedHeight = z;
    }

    public void constrainedWidth(int i, boolean z) {
        get(i).layout.constrainedWidth = z;
    }

    public void create(int i, int i2) {
        Constraint constraint = get(i);
        constraint.layout.mIsGuideline = true;
        constraint.layout.orientation = i2;
    }

    public void createBarrier(int i, int i2, int i3, int... iArr) {
        Constraint constraint = get(i);
        constraint.layout.mHelperType = 1;
        constraint.layout.mBarrierDirection = i2;
        constraint.layout.mBarrierMargin = i3;
        constraint.layout.mIsGuideline = false;
        constraint.layout.mReferenceIds = iArr;
    }

    public void createHorizontalChain(int i, int i2, int i3, int i4, int[] iArr, float[] fArr, int i5) {
        createHorizontalChain(i, i2, i3, i4, iArr, fArr, i5, 1, 2);
    }

    public void createHorizontalChainRtl(int i, int i2, int i3, int i4, int[] iArr, float[] fArr, int i5) {
        createHorizontalChain(i, i2, i3, i4, iArr, fArr, i5, 6, 7);
    }

    public void createVerticalChain(int i, int i2, int i3, int i4, int[] iArr, float[] fArr, int i5) {
        if (iArr.length < 2) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{92, 16, 70, 70, 67, 94, 80, 19, 80, 18, 81, 22, 94, 23, 21, 95, 12, 68, 84, 69, 66, 91, 7, 81, 84, 17, 70, 18, 10, 88, 17, 4, 21, 81, 11, 87, 88, 11}, "1e52c6", 136521276L));
        }
        if (fArr != null && fArr.length != iArr.length) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{9, 23, 71, 71, 24, 90, 5, 20, 81, 19, 10, 18, 11, 16, 20, 94, 87, 64, 1, 66, 67, 90, 92, 85, 1, 22, 71, 19, 81, 92, 68, 3, 20, 80, 80, 83, 13, 12}, "db4382", -25256));
        }
        if (fArr != null) {
            get(iArr[0]).layout.verticalWeight = fArr[0];
        }
        get(iArr[0]).layout.verticalChainStyle = i5;
        connect(iArr[0], 3, i, i2, 0);
        int i6 = 1;
        while (true) {
            int i7 = i6;
            if (i7 >= iArr.length) {
                connect(iArr[iArr.length - 1], 4, i3, i4, 0);
                return;
            }
            int i8 = iArr[i7];
            connect(iArr[i7], 3, iArr[i7 - 1], 4, 0);
            connect(iArr[i7 - 1], 4, iArr[i7], 3, 0);
            if (fArr != null) {
                get(iArr[i7]).layout.verticalWeight = fArr[i7];
            }
            i6 = i7 + 1;
        }
    }

    public void dump(MotionScene motionScene, int... iArr) {
        HashSet hashSet;
        Set<Integer> setKeySet = this.mConstraints.keySet();
        if (iArr.length != 0) {
            hashSet = new HashSet();
            for (int i : iArr) {
                hashSet.add(Integer.valueOf(i));
            }
        } else {
            hashSet = new HashSet(setKeySet);
        }
        PrintStream printStream = System.out;
        int size = hashSet.size();
        StringBuilder sb = new StringBuilder(23);
        sb.append(size);
        sb.append(NPStringFog.decode(new byte[]{19, 85, 9, 8, 70, 77, 65, 87, 15, 8, 65, 74}, "36ff59", -62238605L));
        printStream.println(sb.toString());
        StringBuilder sb2 = new StringBuilder();
        for (Integer num : (Integer[]) hashSet.toArray(new Integer[0])) {
            Constraint constraint = this.mConstraints.get(num);
            if (constraint != null) {
                sb2.append(NPStringFog.decode(new byte[]{90, 122, 86, 95, 66, 77, 20, 88, 80, 95, 69, 25, 15, 93, 4}, "f99119", 556502905L));
                sb2.append(num);
                sb2.append(" \n");
                constraint.layout.dump(motionScene, sb2);
                sb2.append(NPStringFog.decode(new byte[]{26, 7, 104}, "59b184", -1.973859568E9d));
            }
        }
        System.out.println(sb2.toString());
    }

    public boolean getApplyElevation(int i) {
        return get(i).transform.applyElevation;
    }

    public Constraint getConstraint(int i) {
        if (this.mConstraints.containsKey(Integer.valueOf(i))) {
            return this.mConstraints.get(Integer.valueOf(i));
        }
        return null;
    }

    public HashMap<String, ConstraintAttribute> getCustomAttributeSet() {
        return this.mSavedAttributes;
    }

    public int getHeight(int i) {
        return get(i).layout.mHeight;
    }

    public int[] getKnownIds() {
        Integer[] numArr = (Integer[]) this.mConstraints.keySet().toArray(new Integer[0]);
        int[] iArr = new int[numArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    public Constraint getParameters(int i) {
        return get(i);
    }

    public int[] getReferencedIds(int i) {
        Constraint constraint = get(i);
        return constraint.layout.mReferenceIds == null ? new int[0] : Arrays.copyOf(constraint.layout.mReferenceIds, constraint.layout.mReferenceIds.length);
    }

    public int getVisibility(int i) {
        return get(i).propertySet.visibility;
    }

    public int getVisibilityMode(int i) {
        return get(i).propertySet.mVisibilityMode;
    }

    public int getWidth(int i) {
        return get(i).layout.mWidth;
    }

    public boolean isForceId() {
        return this.mForceId;
    }

    public void load(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                switch (eventType) {
                    case 0:
                        xml.getName();
                        break;
                    case 2:
                        String name = xml.getName();
                        Constraint constraintFillFromAttributeList = fillFromAttributeList(context, Xml.asAttributeSet(xml), false);
                        if (name.equalsIgnoreCase(NPStringFog.decode(new byte[]{37, 69, 80, 5, 86, 93, 11, 94, 92}, "b09a31", 1.4532546E8f))) {
                            constraintFillFromAttributeList.layout.mIsGuideline = true;
                        }
                        this.mConstraints.put(Integer.valueOf(constraintFillFromAttributeList.mViewId), constraintFillFromAttributeList);
                        break;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void load(android.content.Context r11, org.xmlpull.v1.XmlPullParser r12) {
        /*
            Method dump skipped, instruction units count: 945
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintSet.load(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    public void parseColorAttributes(Constraint constraint, String str) {
        String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{31}, "3520d3", 1.9521539E9f));
        for (int i = 0; i < strArrSplit.length; i++) {
            String[] strArrSplit2 = strArrSplit[i].split(NPStringFog.decode(new byte[]{94}, "c65071", 1.4587752E9f));
            if (strArrSplit2.length != 2) {
                String strValueOf = String.valueOf(strArrSplit[i]);
                Log.w(TAG, strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{20, 52, 15, 2, 85, 9, 81, 65, 21, 12, 23, 21, 85, 19, 18, 6, 23}, "4aac7e", false).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{19, 51, 93, 86, 4, 8, 86, 70, 71, 88, 70, 20, 82, 20, 64, 82, 70}, "3f37fd", -2062729097L)));
            } else {
                constraint.setColorValue(strArrSplit2[0], Color.parseColor(strArrSplit2[1]));
            }
        }
    }

    public void parseFloatAttributes(Constraint constraint, String str) {
        String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{79}, "c641e8", -1.376154492E9d));
        for (int i = 0; i < strArrSplit.length; i++) {
            String[] strArrSplit2 = strArrSplit[i].split(NPStringFog.decode(new byte[]{13}, "0a0285", false));
            if (strArrSplit2.length != 2) {
                String strValueOf = String.valueOf(strArrSplit[i]);
                Log.w(TAG, strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{68, 103, 8, 82, 84, 8, 1, 18, 18, 92, 22, 20, 5, 64, 21, 86, 22}, "d2f36d", 1.0422399E9f).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{20, 102, 15, 87, 84, 85, 81, 19, 21, 89, 22, 73, 85, 65, 18, 83, 22}, "43a669", 5.7699475E8f)));
            } else {
                constraint.setFloatValue(strArrSplit2[0], Float.parseFloat(strArrSplit2[1]));
            }
        }
    }

    public void parseIntAttributes(Constraint constraint, String str) {
        String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{74}, "fe26c5", -894));
        for (int i = 0; i < strArrSplit.length; i++) {
            String[] strArrSplit2 = strArrSplit[i].split(NPStringFog.decode(new byte[]{88}, "e63797", true, false));
            if (strArrSplit2.length != 2) {
                String strValueOf = String.valueOf(strArrSplit[i]);
                Log.w(TAG, strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{70, 109, 10, 2, 80, 93, 3, 24, 16, 12, 18, 65, 7, 74, 23, 6, 18}, "f8dc21", -2.067202623E9d).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{17, 103, 95, 86, 1, 94, 84, 18, 69, 88, 67, 66, 80, 64, 66, 82, 67}, "1217c2", -4.722806E8f)));
            } else {
                constraint.setFloatValue(strArrSplit2[0], Integer.decode(strArrSplit2[1]).intValue());
            }
        }
    }

    public void parseStringAttributes(Constraint constraint, String str) {
        String[] strArrSplitString = splitString(str);
        for (int i = 0; i < strArrSplitString.length; i++) {
            String[] strArrSplit = strArrSplitString[i].split(NPStringFog.decode(new byte[]{8}, "5e7b86", 1.931247117E9d));
            String strValueOf = String.valueOf(strArrSplitString[i]);
            Log.w(TAG, strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{24, 99, 90, 83, 84, 88, 93, 22, 64, 93, 22, 68, 89, 68, 71, 87, 22}, "864264", 29938).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{68, 49, 88, 7, 90, 85, 1, 68, 66, 9, 24, 73, 5, 22, 69, 3, 24}, "dd6f89", -1.1831258E9f)));
            constraint.setStringValue(strArrSplit[0], strArrSplit[1]);
        }
    }

    public void readFallback(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.mForceId && id == -1) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{116, 95, 88, 17, 6, 13, 92, 95, 80, 67, 0, 11, 21, 92, 82, 17, 38, 10, 91, 64, 64, 67, 4, 12, 91, 71, 120, 80, 28, 10, 64, 71, 20, 92, 16, 22, 65, 19, 92, 80, 19, 0, 21, 90, 80, 66, 69, 17, 90, 19, 65, 66, 0, 69, 118, 92, 90, 66, 17, 23, 84, 90, 90, 69, 54, 0, 65}, "5341ee", 1.101726595E9d));
            }
            if (!this.mConstraints.containsKey(Integer.valueOf(id))) {
                this.mConstraints.put(Integer.valueOf(id), new Constraint());
            }
            Constraint constraint = this.mConstraints.get(Integer.valueOf(id));
            if (constraint != null) {
                if (!constraint.layout.mApply) {
                    constraint.fillFrom(id, layoutParams);
                    if (childAt instanceof ConstraintHelper) {
                        constraint.layout.mReferenceIds = ((ConstraintHelper) childAt).getReferencedIds();
                        if (childAt instanceof Barrier) {
                            Barrier barrier = (Barrier) childAt;
                            constraint.layout.mBarrierAllowsGoneWidgets = barrier.getAllowsGoneWidget();
                            constraint.layout.mBarrierDirection = barrier.getType();
                            constraint.layout.mBarrierMargin = barrier.getMargin();
                        }
                    }
                    constraint.layout.mApply = true;
                }
                if (!constraint.propertySet.mApply) {
                    constraint.propertySet.visibility = childAt.getVisibility();
                    constraint.propertySet.alpha = childAt.getAlpha();
                    constraint.propertySet.mApply = true;
                }
                if (Build.VERSION.SDK_INT >= 17 && !constraint.transform.mApply) {
                    constraint.transform.mApply = true;
                    constraint.transform.rotation = childAt.getRotation();
                    constraint.transform.rotationX = childAt.getRotationX();
                    constraint.transform.rotationY = childAt.getRotationY();
                    constraint.transform.scaleX = childAt.getScaleX();
                    constraint.transform.scaleY = childAt.getScaleY();
                    float pivotX = childAt.getPivotX();
                    float pivotY = childAt.getPivotY();
                    if (pivotX != 0.0d || pivotY != 0.0d) {
                        constraint.transform.transformPivotX = pivotX;
                        constraint.transform.transformPivotY = pivotY;
                    }
                    constraint.transform.translationX = childAt.getTranslationX();
                    constraint.transform.translationY = childAt.getTranslationY();
                    if (Build.VERSION.SDK_INT >= 21) {
                        constraint.transform.translationZ = childAt.getTranslationZ();
                        if (constraint.transform.applyElevation) {
                            constraint.transform.elevation = childAt.getElevation();
                        }
                    }
                }
            }
        }
    }

    public void readFallback(ConstraintSet constraintSet) {
        for (Integer num : constraintSet.mConstraints.keySet()) {
            int iIntValue = num.intValue();
            Constraint constraint = constraintSet.mConstraints.get(num);
            if (!this.mConstraints.containsKey(Integer.valueOf(iIntValue))) {
                this.mConstraints.put(Integer.valueOf(iIntValue), new Constraint());
            }
            Constraint constraint2 = this.mConstraints.get(Integer.valueOf(iIntValue));
            if (constraint2 != null) {
                if (!constraint2.layout.mApply) {
                    constraint2.layout.copyFrom(constraint.layout);
                }
                if (!constraint2.propertySet.mApply) {
                    constraint2.propertySet.copyFrom(constraint.propertySet);
                }
                if (!constraint2.transform.mApply) {
                    constraint2.transform.copyFrom(constraint.transform);
                }
                if (!constraint2.motion.mApply) {
                    constraint2.motion.copyFrom(constraint.motion);
                }
                for (String str : constraint.mCustomConstraints.keySet()) {
                    if (!constraint2.mCustomConstraints.containsKey(str)) {
                        constraint2.mCustomConstraints.put(str, constraint.mCustomConstraints.get(str));
                    }
                }
            }
        }
    }

    public void removeAttribute(String str) {
        this.mSavedAttributes.remove(str);
    }

    public void removeFromHorizontalChain(int i) {
        Constraint constraint;
        if (!this.mConstraints.containsKey(Integer.valueOf(i)) || (constraint = this.mConstraints.get(Integer.valueOf(i))) == null) {
            return;
        }
        int i2 = constraint.layout.leftToRight;
        int i3 = constraint.layout.rightToLeft;
        if (i2 != -1 || i3 != -1) {
            if (i2 != -1 && i3 != -1) {
                connect(i2, 2, i3, 1, 0);
                connect(i3, 1, i2, 2, 0);
            } else if (constraint.layout.rightToRight != -1) {
                connect(i2, 2, constraint.layout.rightToRight, 2, 0);
            } else if (constraint.layout.leftToLeft != -1) {
                connect(i3, 1, constraint.layout.leftToLeft, 1, 0);
            }
            clear(i, 1);
            clear(i, 2);
            return;
        }
        int i4 = constraint.layout.startToEnd;
        int i5 = constraint.layout.endToStart;
        if (i4 != -1 || i5 != -1) {
            if (i4 != -1 && i5 != -1) {
                connect(i4, 7, i5, 6, 0);
                connect(i5, 6, i2, 7, 0);
            } else if (i5 != -1) {
                if (constraint.layout.rightToRight != -1) {
                    connect(i2, 7, constraint.layout.rightToRight, 7, 0);
                } else if (constraint.layout.leftToLeft != -1) {
                    connect(i5, 6, constraint.layout.leftToLeft, 6, 0);
                }
            }
        }
        clear(i, 6);
        clear(i, 7);
    }

    public void removeFromVerticalChain(int i) {
        if (this.mConstraints.containsKey(Integer.valueOf(i))) {
            Constraint constraint = this.mConstraints.get(Integer.valueOf(i));
            if (constraint == null) {
                return;
            }
            int i2 = constraint.layout.topToBottom;
            int i3 = constraint.layout.bottomToTop;
            if (i2 != -1 || i3 != -1) {
                if (i2 != -1 && i3 != -1) {
                    connect(i2, 4, i3, 3, 0);
                    connect(i3, 3, i2, 4, 0);
                } else if (constraint.layout.bottomToBottom != -1) {
                    connect(i2, 4, constraint.layout.bottomToBottom, 4, 0);
                } else if (constraint.layout.topToTop != -1) {
                    connect(i3, 3, constraint.layout.topToTop, 3, 0);
                }
            }
        }
        clear(i, 3);
        clear(i, 4);
    }

    public void setAlpha(int i, float f) {
        get(i).propertySet.alpha = f;
    }

    public void setApplyElevation(int i, boolean z) {
        if (Build.VERSION.SDK_INT >= 21) {
            get(i).transform.applyElevation = z;
        }
    }

    public void setBarrierType(int i, int i2) {
        get(i).layout.mHelperType = i2;
    }

    public void setColorValue(int i, String str, int i2) {
        get(i).setColorValue(str, i2);
    }

    public void setDimensionRatio(int i, String str) {
        get(i).layout.dimensionRatio = str;
    }

    public void setEditorAbsoluteX(int i, int i2) {
        get(i).layout.editorAbsoluteX = i2;
    }

    public void setEditorAbsoluteY(int i, int i2) {
        get(i).layout.editorAbsoluteY = i2;
    }

    public void setElevation(int i, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            get(i).transform.elevation = f;
            get(i).transform.applyElevation = true;
        }
    }

    public void setFloatValue(int i, String str, float f) {
        get(i).setFloatValue(str, f);
    }

    public void setForceId(boolean z) {
        this.mForceId = z;
    }

    public void setGoneMargin(int i, int i2, int i3) {
        Constraint constraint = get(i);
        switch (i2) {
            case 1:
                constraint.layout.goneLeftMargin = i3;
                return;
            case 2:
                constraint.layout.goneRightMargin = i3;
                return;
            case 3:
                constraint.layout.goneTopMargin = i3;
                return;
            case 4:
                constraint.layout.goneBottomMargin = i3;
                return;
            case 5:
                constraint.layout.goneBaselineMargin = i3;
                return;
            case 6:
                constraint.layout.goneStartMargin = i3;
                return;
            case 7:
                constraint.layout.goneEndMargin = i3;
                return;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{68, 8, 82, 90, 13, 71, 95, 70, 90, 91, 12, 67, 69, 20, 88, 93, 12, 68}, "1f94b0", 22359));
        }
    }

    public void setGuidelineBegin(int i, int i2) {
        get(i).layout.guideBegin = i2;
        get(i).layout.guideEnd = -1;
        get(i).layout.guidePercent = -1.0f;
    }

    public void setGuidelineEnd(int i, int i2) {
        get(i).layout.guideEnd = i2;
        get(i).layout.guideBegin = -1;
        get(i).layout.guidePercent = -1.0f;
    }

    public void setGuidelinePercent(int i, float f) {
        get(i).layout.guidePercent = f;
        get(i).layout.guideEnd = -1;
        get(i).layout.guideBegin = -1;
    }

    public void setHorizontalBias(int i, float f) {
        get(i).layout.horizontalBias = f;
    }

    public void setHorizontalChainStyle(int i, int i2) {
        get(i).layout.horizontalChainStyle = i2;
    }

    public void setHorizontalWeight(int i, float f) {
        get(i).layout.horizontalWeight = f;
    }

    public void setIntValue(int i, String str, int i2) {
        get(i).setIntValue(str, i2);
    }

    public void setLayoutWrapBehavior(int i, int i2) {
        if (i2 < 0 || i2 > 3) {
            return;
        }
        get(i).layout.mWrapBehavior = i2;
    }

    public void setMargin(int i, int i2, int i3) {
        Constraint constraint = get(i);
        switch (i2) {
            case 1:
                constraint.layout.leftMargin = i3;
                return;
            case 2:
                constraint.layout.rightMargin = i3;
                return;
            case 3:
                constraint.layout.topMargin = i3;
                return;
            case 4:
                constraint.layout.bottomMargin = i3;
                return;
            case 5:
                constraint.layout.baselineMargin = i3;
                return;
            case 6:
                constraint.layout.startMargin = i3;
                return;
            case 7:
                constraint.layout.endMargin = i3;
                return;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{17, 11, 83, 10, 90, 19, 10, 69, 91, 11, 91, 23, 16, 23, 89, 13, 91, 16}, "de8d5d", false));
        }
    }

    public void setReferencedIds(int i, int... iArr) {
        get(i).layout.mReferenceIds = iArr;
    }

    public void setRotation(int i, float f) {
        get(i).transform.rotation = f;
    }

    public void setRotationX(int i, float f) {
        get(i).transform.rotationX = f;
    }

    public void setRotationY(int i, float f) {
        get(i).transform.rotationY = f;
    }

    public void setScaleX(int i, float f) {
        get(i).transform.scaleX = f;
    }

    public void setScaleY(int i, float f) {
        get(i).transform.scaleY = f;
    }

    public void setStringValue(int i, String str, String str2) {
        get(i).setStringValue(str, str2);
    }

    public void setTransformPivot(int i, float f, float f2) {
        Constraint constraint = get(i);
        constraint.transform.transformPivotY = f2;
        constraint.transform.transformPivotX = f;
    }

    public void setTransformPivotX(int i, float f) {
        get(i).transform.transformPivotX = f;
    }

    public void setTransformPivotY(int i, float f) {
        get(i).transform.transformPivotY = f;
    }

    public void setTranslation(int i, float f, float f2) {
        Constraint constraint = get(i);
        constraint.transform.translationX = f;
        constraint.transform.translationY = f2;
    }

    public void setTranslationX(int i, float f) {
        get(i).transform.translationX = f;
    }

    public void setTranslationY(int i, float f) {
        get(i).transform.translationY = f;
    }

    public void setTranslationZ(int i, float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            get(i).transform.translationZ = f;
        }
    }

    public void setValidateOnParse(boolean z) {
        this.mValidate = z;
    }

    public void setVerticalBias(int i, float f) {
        get(i).layout.verticalBias = f;
    }

    public void setVerticalChainStyle(int i, int i2) {
        get(i).layout.verticalChainStyle = i2;
    }

    public void setVerticalWeight(int i, float f) {
        get(i).layout.verticalWeight = f;
    }

    public void setVisibility(int i, int i2) {
        get(i).propertySet.visibility = i2;
    }

    public void setVisibilityMode(int i, int i2) {
        get(i).propertySet.mVisibilityMode = i2;
    }

    public void writeState(Writer writer, ConstraintLayout constraintLayout, int i) throws IOException {
        writer.write(NPStringFog.decode(new byte[]{62, 79, 75, 78, 78, 26, 25, 79, 75, 78, 78, 26, 25, 79, 75, 78, 78, 26, 25, 79, 75, 78, 78, 26, 25, 79, 75, 78, 78, 26, 25, 79, 75, 78, 78, 26, 25, 79, 75, 78, 78, 26, 25, 79, 75, 78, 105}, "4bfcc7", 1.401663246E9d));
        if ((i & 1) == 1) {
            new WriteXmlEngine(this, writer, constraintLayout, i).writeLayout();
        } else {
            new WriteJsonEngine(this, writer, constraintLayout, i).writeLayout();
        }
        writer.write(NPStringFog.decode(new byte[]{111, 30, 31, 75, 76, 76, 72, 30, 31, 75, 76, 76, 72, 30, 31, 75, 76, 76, 72, 30, 31, 75, 76, 76, 72, 30, 31, 75, 76, 76, 72, 30, 31, 75, 76, 76, 72, 30, 31, 75, 76, 76, 72, 30, 31, 75, 107}, "e32faa", 6.857054E8f));
    }
}

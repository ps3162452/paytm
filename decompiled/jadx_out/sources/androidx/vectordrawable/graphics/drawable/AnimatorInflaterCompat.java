package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.InflateException;
import androidx.annotation.AnimatorRes;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import java.io.IOException;
import java.util.ArrayList;
import n.NPStringFog;
import org.apache.http.HttpStatus;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes22.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public class AnimatorInflaterCompat {
    private static final boolean DBG_ANIMATOR_INFLATER = false;
    private static final int MAX_NUM_POINTS = 100;
    private static final String TAG = NPStringFog.decode(new byte[]{121, 95, 13, 90, 80, 65, 87, 67, 45, 89, 87, 89, 89, 69, 1, 69}, "81d715", 2.0801732E9f);
    private static final int TOGETHER = 0;
    private static final int VALUE_TYPE_COLOR = 3;
    private static final int VALUE_TYPE_FLOAT = 0;
    private static final int VALUE_TYPE_INT = 1;
    private static final int VALUE_TYPE_PATH = 2;
    private static final int VALUE_TYPE_UNDEFINED = 4;

    private static class PathDataEvaluator implements TypeEvaluator<PathParser.PathDataNode[]> {
        private PathParser.PathDataNode[] mNodeArray;

        PathDataEvaluator() {
        }

        PathDataEvaluator(PathParser.PathDataNode[] pathDataNodeArr) {
            this.mNodeArray = pathDataNodeArr;
        }

        @Override // android.animation.TypeEvaluator
        public PathParser.PathDataNode[] evaluate(float f, PathParser.PathDataNode[] pathDataNodeArr, PathParser.PathDataNode[] pathDataNodeArr2) {
            if (!PathParser.canMorph(pathDataNodeArr, pathDataNodeArr2)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{38, 7, 90, 20, 71, 18, 12, 8, 64, 86, 65, 66, 10, 10, 85, 71, 86, 18, 7, 3, 64, 68, 86, 87, 11, 70, 64, 68, 92, 18, 12, 8, 87, 92, 94, 66, 4, 18, 93, 81, 95, 87, 69, 22, 85, 71, 91, 118, 4, 18, 85}, "ef4332", -5.48085322E8d));
            }
            if (!PathParser.canMorph(this.mNodeArray, pathDataNodeArr)) {
                this.mNodeArray = PathParser.deepCopyNodes(pathDataNodeArr);
            }
            for (int i = 0; i < pathDataNodeArr.length; i++) {
                this.mNodeArray[i].interpolatePathDataNode(pathDataNodeArr[i], pathDataNodeArr2[i], f);
            }
            return this.mNodeArray;
        }
    }

    private AnimatorInflaterCompat() {
    }

    private static Animator createAnimatorFromXml(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, float f) throws XmlPullParserException, IOException {
        return createAnimatorFromXml(context, resources, theme, xmlPullParser, Xml.asAttributeSet(xmlPullParser), null, 0, f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0125, code lost:
    
        if (r19 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0127, code lost:
    
        if (r11 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0129, code lost:
    
        r5 = new android.animation.Animator[r11.size()];
        r6 = r11.iterator();
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0135, code lost:
    
        r4 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0139, code lost:
    
        if (r6.hasNext() == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x013b, code lost:
    
        r5[r4] = (android.animation.Animator) r6.next();
        r2 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0147, code lost:
    
        if (r20 != 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0149, code lost:
    
        r19.playTogether(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x014e, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x014f, code lost:
    
        r19.playSequentially(r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.animation.Animator createAnimatorFromXml(android.content.Context r14, android.content.res.Resources r15, android.content.res.Resources.Theme r16, org.xmlpull.v1.XmlPullParser r17, android.util.AttributeSet r18, android.animation.AnimatorSet r19, int r20, float r21) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimatorInflaterCompat.createAnimatorFromXml(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int, float):android.animation.Animator");
    }

    private static Keyframe createNewKeyframe(Keyframe keyframe, float f) {
        return keyframe.getType() == Float.TYPE ? Keyframe.ofFloat(f) : keyframe.getType() == Integer.TYPE ? Keyframe.ofInt(f) : Keyframe.ofObject(f);
    }

    private static void distributeKeyframes(Keyframe[] keyframeArr, float f, int i, int i2) {
        float f2 = f / ((i2 - i) + 2);
        while (i <= i2) {
            keyframeArr[i].setFraction(keyframeArr[i - 1].getFraction() + f2);
            i++;
        }
    }

    private static void dumpKeyframes(Object[] objArr, String str) {
        if (objArr == null || objArr.length == 0) {
            return;
        }
        Log.d(TAG, str);
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            Keyframe keyframe = (Keyframe) objArr[i];
            Log.d(TAG, NPStringFog.decode(new byte[]{47, 6, 73, 80, 66, 3, 9, 6, 16}, "dc060b", -3.05540184E8d) + i + NPStringFog.decode(new byte[]{15, 65, 80, 75, 83, 81, 65, 8, 89, 87, 18}, "5a6922", 1.382068892E9d) + (keyframe.getFraction() < 0.0f ? NPStringFog.decode(new byte[]{13, 20, 8, 8}, "cadd43", -1391138315L) : Float.valueOf(keyframe.getFraction())) + NPStringFog.decode(new byte[]{26, 16, 77, 16, 16, 83, 90, 69, 4, 16, 92, 18}, "60a0f2", false) + (keyframe.hasValue() ? keyframe.getValue() : NPStringFog.decode(new byte[]{8, 64, 92, 91}, "f507d9", 1.071774529E9d)));
        }
    }

    private static PropertyValuesHolder getPVH(TypedArray typedArray, int i, int i2, int i3, String str) {
        PropertyValuesHolder propertyValuesHolderOfInt;
        TypedValue typedValuePeekValue = typedArray.peekValue(i2);
        boolean z = typedValuePeekValue != null;
        int i4 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i3);
        boolean z2 = typedValuePeekValue2 != null;
        int i5 = z2 ? typedValuePeekValue2.type : 0;
        if (i == 4) {
            i = ((z && isColorType(i4)) || (z2 && isColorType(i5))) ? 3 : 0;
        }
        boolean z3 = i == 0;
        if (i == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            PathParser.PathDataNode[] pathDataNodeArrCreateNodesFromPathData = PathParser.createNodesFromPathData(string);
            PathParser.PathDataNode[] pathDataNodeArrCreateNodesFromPathData2 = PathParser.createNodesFromPathData(string2);
            if (pathDataNodeArrCreateNodesFromPathData != null || pathDataNodeArrCreateNodesFromPathData2 != null) {
                if (pathDataNodeArrCreateNodesFromPathData != null) {
                    PathDataEvaluator pathDataEvaluator = new PathDataEvaluator();
                    if (pathDataNodeArrCreateNodesFromPathData2 == null) {
                        return PropertyValuesHolder.ofObject(str, pathDataEvaluator, pathDataNodeArrCreateNodesFromPathData);
                    }
                    if (PathParser.canMorph(pathDataNodeArrCreateNodesFromPathData, pathDataNodeArrCreateNodesFromPathData2)) {
                        return PropertyValuesHolder.ofObject(str, pathDataEvaluator, pathDataNodeArrCreateNodesFromPathData, pathDataNodeArrCreateNodesFromPathData2);
                    }
                    throw new InflateException(NPStringFog.decode(new byte[]{17, 116, 88, 91, 68, 68, 17, 90, 86, 71, 19, 88, 17, 81, 75, 90, 14, 16}, "1795c0", -3156241.0d) + string + NPStringFog.decode(new byte[]{23, 66, 93, 69}, "762e74", false, true) + string2);
                }
                if (pathDataNodeArrCreateNodesFromPathData2 != null) {
                    return PropertyValuesHolder.ofObject(str, new PathDataEvaluator(), pathDataNodeArrCreateNodesFromPathData2);
                }
            }
            return null;
        }
        ArgbEvaluator argbEvaluator = i == 3 ? ArgbEvaluator.getInstance() : null;
        if (z3) {
            if (z) {
                float dimension = i4 == 5 ? typedArray.getDimension(i2, 0.0f) : typedArray.getFloat(i2, 0.0f);
                if (z2) {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofFloat(str, dimension, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
                } else {
                    propertyValuesHolderOfInt = PropertyValuesHolder.ofFloat(str, dimension);
                }
            } else {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofFloat(str, i5 == 5 ? typedArray.getDimension(i3, 0.0f) : typedArray.getFloat(i3, 0.0f));
            }
        } else if (z) {
            int dimension2 = i4 == 5 ? (int) typedArray.getDimension(i2, 0.0f) : isColorType(i4) ? typedArray.getColor(i2, 0) : typedArray.getInt(i2, 0);
            if (z2) {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : isColorType(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
            } else {
                propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, dimension2);
            }
        } else if (z2) {
            propertyValuesHolderOfInt = PropertyValuesHolder.ofInt(str, i5 == 5 ? (int) typedArray.getDimension(i3, 0.0f) : isColorType(i5) ? typedArray.getColor(i3, 0) : typedArray.getInt(i3, 0));
        } else {
            propertyValuesHolderOfInt = null;
        }
        if (propertyValuesHolderOfInt == null || argbEvaluator == null) {
            return propertyValuesHolderOfInt;
        }
        propertyValuesHolderOfInt.setEvaluator(argbEvaluator);
        return propertyValuesHolderOfInt;
    }

    private static int inferValueTypeFromValues(TypedArray typedArray, int i, int i2) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i);
        boolean z = typedValuePeekValue != null;
        int i3 = z ? typedValuePeekValue.type : 0;
        TypedValue typedValuePeekValue2 = typedArray.peekValue(i2);
        boolean z2 = typedValuePeekValue2 != null;
        return ((z && isColorType(i3)) || (z2 && isColorType(z2 ? typedValuePeekValue2.type : 0))) ? 3 : 0;
    }

    private static int inferValueTypeOfKeyframe(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        int i = 0;
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_KEYFRAME);
        TypedValue typedValuePeekNamedValue = TypedArrayUtils.peekNamedValue(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{64, 7, 85, 23, 92}, "6f9b95", false, true), 0);
        if ((typedValuePeekNamedValue != null) && isColorType(typedValuePeekNamedValue.type)) {
            i = 3;
        }
        typedArrayObtainAttributes.recycle();
        return i;
    }

    private static boolean isColorType(int i) {
        return i >= 28 && i <= 31;
    }

    public static Animator loadAnimator(Context context, @AnimatorRes int i) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 24 ? AnimatorInflater.loadAnimator(context, i) : loadAnimator(context, context.getResources(), context.getTheme(), i);
    }

    public static Animator loadAnimator(Context context, Resources resources, Resources.Theme theme, @AnimatorRes int i) throws Resources.NotFoundException {
        return loadAnimator(context, resources, theme, i, 1.0f);
    }

    public static Animator loadAnimator(Context context, Resources resources, Resources.Theme theme, @AnimatorRes int i, float f) throws Resources.NotFoundException {
        XmlResourceParser animation = null;
        try {
            try {
                animation = resources.getAnimation(i);
                return createAnimatorFromXml(context, resources, theme, animation, f);
            } catch (IOException e) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(NPStringFog.decode(new byte[]{37, 4, 92, 23, 69, 24, 10, 10, 83, 84, 17, 89, 8, 12, 95, 81, 69, 81, 9, 11, 18, 66, 84, 75, 9, 16, 64, 83, 84, 24, 47, 33, 18, 19, 1, 64}, "fe2018", false) + Integer.toHexString(i));
                notFoundException.initCause(e);
                throw notFoundException;
            } catch (XmlPullParserException e2) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException(NPStringFog.decode(new byte[]{114, 81, 93, 23, 77, 69, 93, 95, 82, 84, 25, 4, 95, 89, 94, 81, 77, 12, 94, 94, 19, 66, 92, 22, 94, 69, 65, 83, 92, 69, 120, 116, 19, 19, 9, 29}, "10309e", true) + Integer.toHexString(i));
                notFoundException2.initCause(e2);
                throw notFoundException2;
            }
        } finally {
            if (animation != null) {
                animation.close();
            }
        }
    }

    private static ValueAnimator loadAnimator(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ValueAnimator valueAnimator, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_ANIMATOR);
        TypedArray typedArrayObtainAttributes2 = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_PROPERTY_ANIMATOR);
        if (valueAnimator == null) {
            valueAnimator = new ValueAnimator();
        }
        parseAnimatorFromTypeArray(valueAnimator, typedArrayObtainAttributes, typedArrayObtainAttributes2, f, xmlPullParser);
        int namedResourceId = TypedArrayUtils.getNamedResourceId(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{90, 87, 23, 0, 67, 65, 92, 85, 2, 17, 94, 67}, "39ce11", true, true), 0, 0);
        if (namedResourceId > 0) {
            valueAnimator.setInterpolator(AnimationUtilsCompat.loadInterpolator(context, namedResourceId));
        }
        typedArrayObtainAttributes.recycle();
        if (typedArrayObtainAttributes2 != null) {
            typedArrayObtainAttributes2.recycle();
        }
        return valueAnimator;
    }

    private static Keyframe loadKeyframe(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, int i, XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_KEYFRAME);
        Keyframe keyframeOfFloat = null;
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{94, 64, 80, 87, 68, 93, 87, 92}, "821404", -1.179294402E9d), 3, -1.0f);
        TypedValue typedValuePeekNamedValue = TypedArrayUtils.peekNamedValue(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{71, 85, 15, 66, 0}, "14c7e3", false), 0);
        boolean z = typedValuePeekNamedValue != null;
        if (i == 4) {
            i = (z && isColorType(typedValuePeekNamedValue.type)) ? 3 : 0;
        }
        if (z) {
            switch (i) {
                case 0:
                    keyframeOfFloat = Keyframe.ofFloat(namedFloat, TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{66, 81, 85, 71, 92}, "409299", true), 0, 0.0f));
                    break;
                case 1:
                case 3:
                    keyframeOfFloat = Keyframe.ofInt(namedFloat, TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{20, 83, 8, 16, 4}, "b2dead", 67738700L), 0, 0));
                    break;
            }
        } else {
            keyframeOfFloat = i == 0 ? Keyframe.ofFloat(namedFloat) : Keyframe.ofInt(namedFloat);
        }
        int namedResourceId = TypedArrayUtils.getNamedResourceId(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{13, 8, 23, 93, 23, 69, 11, 10, 2, 76, 10, 71}, "dfc8e5", true, true), 1, 0);
        if (namedResourceId > 0) {
            keyframeOfFloat.setInterpolator(AnimationUtilsCompat.loadInterpolator(context, namedResourceId));
        }
        typedArrayObtainAttributes.recycle();
        return keyframeOfFloat;
    }

    private static ObjectAnimator loadObjectAnimator(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, float f, XmlPullParser xmlPullParser) throws Resources.NotFoundException {
        ObjectAnimator objectAnimator = new ObjectAnimator();
        loadAnimator(context, resources, theme, attributeSet, objectAnimator, f, xmlPullParser);
        return objectAnimator;
    }

    private static PropertyValuesHolder loadPvh(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, String str, int i) throws XmlPullParserException, IOException {
        int size;
        int i2;
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 || next == 1) {
                break;
            }
            if (xmlPullParser.getName().equals(NPStringFog.decode(new byte[]{8, 0, 65, 84, 71, 80, 14, 0}, "ce8251", 7.857436E8f))) {
                int iInferValueTypeOfKeyframe = i == 4 ? inferValueTypeOfKeyframe(resources, theme, Xml.asAttributeSet(xmlPullParser), xmlPullParser) : i;
                Keyframe keyframeLoadKeyframe = loadKeyframe(context, resources, theme, Xml.asAttributeSet(xmlPullParser), iInferValueTypeOfKeyframe, xmlPullParser);
                if (keyframeLoadKeyframe != null) {
                    arrayList = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList.add(keyframeLoadKeyframe);
                } else {
                    arrayList = arrayList2;
                }
                xmlPullParser.next();
                arrayList2 = arrayList;
                i = iInferValueTypeOfKeyframe;
            }
        }
        if (arrayList2 == null || (size = arrayList2.size()) <= 0) {
            return null;
        }
        Keyframe keyframe = (Keyframe) arrayList2.get(0);
        Keyframe keyframe2 = (Keyframe) arrayList2.get(size - 1);
        float fraction = keyframe2.getFraction();
        if (fraction >= 1.0f) {
            i2 = size;
        } else if (fraction < 0.0f) {
            keyframe2.setFraction(1.0f);
            i2 = size;
        } else {
            arrayList2.add(arrayList2.size(), createNewKeyframe(keyframe2, 1.0f));
            i2 = size + 1;
        }
        float fraction2 = keyframe.getFraction();
        if (fraction2 != 0.0f) {
            if (fraction2 < 0.0f) {
                keyframe.setFraction(0.0f);
            } else {
                arrayList2.add(0, createNewKeyframe(keyframe, 0.0f));
                i2++;
            }
        }
        Keyframe[] keyframeArr = new Keyframe[i2];
        arrayList2.toArray(keyframeArr);
        for (int i3 = 0; i3 < i2; i3++) {
            Keyframe keyframe3 = keyframeArr[i3];
            if (keyframe3.getFraction() < 0.0f) {
                if (i3 == 0) {
                    keyframe3.setFraction(0.0f);
                } else if (i3 == i2 - 1) {
                    keyframe3.setFraction(1.0f);
                } else {
                    int i4 = i3 + 1;
                    int i5 = i3;
                    while (i4 < i2 - 1 && keyframeArr[i4].getFraction() < 0.0f) {
                        int i6 = i4;
                        i4++;
                        i5 = i6;
                    }
                    distributeKeyframes(keyframeArr, keyframeArr[i5 + 1].getFraction() - keyframeArr[i3 - 1].getFraction(), i3, i5);
                }
            }
        }
        PropertyValuesHolder propertyValuesHolderOfKeyframe = PropertyValuesHolder.ofKeyframe(str, keyframeArr);
        if (i != 3) {
            return propertyValuesHolderOfKeyframe;
        }
        propertyValuesHolderOfKeyframe.setEvaluator(ArgbEvaluator.getInstance());
        return propertyValuesHolderOfKeyframe;
    }

    private static PropertyValuesHolder[] loadValues(Context context, Resources resources, Resources.Theme theme, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            if (eventType == 3 || eventType == 1) {
                break;
            }
            if (eventType != 2) {
                xmlPullParser.next();
            } else {
                if (xmlPullParser.getName().equals(NPStringFog.decode(new byte[]{66, 67, 86, 20, 81, 16, 70, 72, 111, 5, 88, 23, 87, 66, 113, 11, 88, 6, 87, 67}, "219d4b", 8382))) {
                    TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme, attributeSet, AndroidResources.STYLEABLE_PROPERTY_VALUES_HOLDER);
                    String namedString = TypedArrayUtils.getNamedString(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{72, 71, 93, 18, 92, 67, 76, 76, 124, 3, 84, 84}, "852b91", false), 3);
                    int namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser, NPStringFog.decode(new byte[]{16, 7, 94, 68, 92, 99, 31, 22, 87}, "ff2197", true), 2, 4);
                    PropertyValuesHolder propertyValuesHolderLoadPvh = loadPvh(context, resources, theme, xmlPullParser, namedString, namedInt);
                    PropertyValuesHolder pvh = propertyValuesHolderLoadPvh == null ? getPVH(typedArrayObtainAttributes, namedInt, 0, 1, namedString) : propertyValuesHolderLoadPvh;
                    if (pvh != null) {
                        arrayList = arrayList2 == null ? new ArrayList() : arrayList2;
                        arrayList.add(pvh);
                    } else {
                        arrayList = arrayList2;
                    }
                    typedArrayObtainAttributes.recycle();
                    arrayList2 = arrayList;
                }
                xmlPullParser.next();
            }
        }
        if (arrayList2 == null) {
            return null;
        }
        int size = arrayList2.size();
        PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[size];
        for (int i = 0; i < size; i++) {
            propertyValuesHolderArr[i] = (PropertyValuesHolder) arrayList2.get(i);
        }
        return propertyValuesHolderArr;
    }

    private static void parseAnimatorFromTypeArray(ValueAnimator valueAnimator, TypedArray typedArray, TypedArray typedArray2, float f, XmlPullParser xmlPullParser) {
        long namedInt = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{6, 65, 66, 80, 22, 80, 13, 90}, "b401b9", false), 1, HttpStatus.SC_MULTIPLE_CHOICES);
        long namedInt2 = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{69, 17, 83, 23, 65, 121, 80, 3, 65, 0, 65}, "6e2e56", false), 2, 0);
        int namedInt3 = TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{65, 85, 88, 16, 85, 53, 78, 68, 81}, "744e0a", true), 7, 4);
        if (TypedArrayUtils.hasAttribute(xmlPullParser, NPStringFog.decode(new byte[]{19, 82, 95, 70, 84, 119, 23, 92, 94}, "e33311", true)) && TypedArrayUtils.hasAttribute(xmlPullParser, NPStringFog.decode(new byte[]{67, 3, 94, 22, 4, 96, 90}, "5b2ca4", true, false))) {
            if (namedInt3 == 4) {
                namedInt3 = inferValueTypeFromValues(typedArray, 5, 6);
            }
            PropertyValuesHolder pvh = getPVH(typedArray, namedInt3, 5, 6, "");
            if (pvh != null) {
                valueAnimator.setValues(pvh);
            }
        }
        valueAnimator.setDuration(namedInt);
        valueAnimator.setStartDelay(namedInt2);
        valueAnimator.setRepeatCount(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{20, 84, 70, 81, 5, 23, 37, 94, 67, 90, 16}, "f164dc", -374909993L), 3, 0));
        valueAnimator.setRepeatMode(TypedArrayUtils.getNamedInt(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{66, 86, 72, 83, 83, 66, 125, 92, 92, 83}, "038626", -8.35499595E8d), 4, 1));
        if (typedArray2 != null) {
            setupObjectAnimator(valueAnimator, typedArray2, namedInt3, f, xmlPullParser);
        }
    }

    private static void setupObjectAnimator(ValueAnimator valueAnimator, TypedArray typedArray, int i, float f, XmlPullParser xmlPullParser) {
        ObjectAnimator objectAnimator = (ObjectAnimator) valueAnimator;
        String namedString = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{65, 2, 23, 81, 125, 82, 69, 2}, "1cc993", 22617), 1);
        if (namedString == null) {
            objectAnimator.setPropertyName(TypedArrayUtils.getNamedString(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{65, 66, 87, 69, 86, 69, 69, 73, 118, 84, 94, 82}, "108537", true), 0));
            return;
        }
        String namedString2 = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{72, 68, 11, 70, 93, 16, 76, 79, 60, 120, 89, 15, 93}, "86d68b", false, false), 2);
        String namedString3 = TypedArrayUtils.getNamedString(typedArray, xmlPullParser, NPStringFog.decode(new byte[]{18, 71, 10, 69, 4, 71, 22, 76, 60, 123, 0, 88, 7}, "b5e5a5", true, false), 3);
        if (i == 2 || i == 4) {
        }
        if (namedString2 == null && namedString3 == null) {
            throw new InflateException(typedArray.getPositionDescription() + NPStringFog.decode(new byte[]{68, 65, 70, 88, 21, 93, 22, 69, 77, 111, 43, 89, 9, 84, 20, 88, 23, 24, 20, 67, 91, 71, 0, 74, 16, 72, 109, 121, 4, 85, 1, 17, 93, 68, 69, 86, 1, 84, 80, 82, 1, 24, 2, 94, 70, 23, 53, 89, 16, 89, 112, 86, 17, 89}, "d147e8", true, false));
        }
        setupPathMotion(PathParser.createPathFromPathData(namedString), objectAnimator, 0.5f * f, namedString2, namedString3);
    }

    private static void setupPathMotion(Path path, ObjectAnimator objectAnimator, float f, String str, String str2) {
        int i;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = 0.0f;
        ArrayList arrayList = new ArrayList();
        arrayList.add(Float.valueOf(0.0f));
        do {
            length += pathMeasure.getLength();
            arrayList.add(Float.valueOf(length));
        } while (pathMeasure.nextContour());
        PathMeasure pathMeasure2 = new PathMeasure(path, false);
        int iMin = Math.min(100, ((int) (length / f)) + 1);
        float[] fArr = new float[iMin];
        float[] fArr2 = new float[iMin];
        float[] fArr3 = new float[2];
        int i2 = 0;
        float f2 = length / (iMin - 1);
        float f3 = 0.0f;
        int i3 = 0;
        while (i3 < iMin) {
            pathMeasure2.getPosTan(f3 - ((Float) arrayList.get(i2)).floatValue(), fArr3, null);
            fArr[i3] = fArr3[0];
            fArr2[i3] = fArr3[1];
            f3 += f2;
            if (i2 + 1 >= arrayList.size() || f3 <= ((Float) arrayList.get(i2 + 1)).floatValue()) {
                i = i2;
            } else {
                i = i2 + 1;
                pathMeasure2.nextContour();
            }
            i3++;
            i2 = i;
        }
        PropertyValuesHolder propertyValuesHolderOfFloat = str != null ? PropertyValuesHolder.ofFloat(str, fArr) : null;
        PropertyValuesHolder propertyValuesHolderOfFloat2 = str2 != null ? PropertyValuesHolder.ofFloat(str2, fArr2) : null;
        if (propertyValuesHolderOfFloat == null) {
            objectAnimator.setValues(propertyValuesHolderOfFloat2);
        } else if (propertyValuesHolderOfFloat2 == null) {
            objectAnimator.setValues(propertyValuesHolderOfFloat);
        } else {
            objectAnimator.setValues(propertyValuesHolderOfFloat, propertyValuesHolderOfFloat2);
        }
    }
}

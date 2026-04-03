package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.R;
import androidx.constraintlayout.widget.VirtualLayout;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class CircularFlow extends VirtualLayout {
    private float[] mAngles;
    ConstraintLayout mContainer;
    private int mCountAngle;
    private int mCountRadius;
    private int[] mRadius;
    private String mReferenceAngles;
    private Float mReferenceDefaultAngle;
    private Integer mReferenceDefaultRadius;
    private String mReferenceRadius;
    int mViewCenter;
    private static final String TAG = NPStringFog.decode(new byte[]{112, 90, 75, 7, 64, 94, 82, 65, 127, 8, 90, 69}, "339d52", -21053);
    private static int DEFAULT_RADIUS = 0;
    private static float DEFAULT_ANGLE = 0.0f;

    public CircularFlow(Context context) {
        super(context);
    }

    public CircularFlow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CircularFlow(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void addAngle(String str) {
        float[] fArr;
        if (str == null || str.length() == 0 || this.myContext == null || (fArr = this.mAngles) == null) {
            return;
        }
        if (this.mCountAngle + 1 > fArr.length) {
            this.mAngles = Arrays.copyOf(fArr, fArr.length + 1);
        }
        this.mAngles[this.mCountAngle] = Integer.parseInt(str);
        this.mCountAngle++;
    }

    private void addRadius(String str) {
        int[] iArr;
        if (str == null || str.length() == 0 || this.myContext == null || (iArr = this.mRadius) == null) {
            return;
        }
        if (this.mCountRadius + 1 > iArr.length) {
            this.mRadius = Arrays.copyOf(iArr, iArr.length + 1);
        }
        this.mRadius[this.mCountRadius] = (int) (Integer.parseInt(str) * this.myContext.getResources().getDisplayMetrics().density);
        this.mCountRadius++;
    }

    private void anchorReferences() {
        this.mContainer = (ConstraintLayout) getParent();
        for (int i = 0; i < this.mCount; i++) {
            View viewById = this.mContainer.getViewById(this.mIds[i]);
            if (viewById != null) {
                int i2 = DEFAULT_RADIUS;
                float f = DEFAULT_ANGLE;
                int[] iArr = this.mRadius;
                if (iArr == null || i >= iArr.length) {
                    Integer num = this.mReferenceDefaultRadius;
                    if (num == null || num.intValue() == -1) {
                        String strValueOf = String.valueOf(this.mMap.get(Integer.valueOf(viewById.getId())));
                        Log.e(TAG, strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{117, 87, 93, 92, 5, 68, 70, 82, 93, 80, 20, 23, 20, 71, 86, 25, 23, 13, 81, 68, 25, 78, 8, 16, 92, 19, 80, 93, 91, 68}, "4399ad", 546827966L).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{118, 92, 7, 80, 81, 70, 69, 89, 7, 92, 64, 21, 23, 76, 12, 21, 67, 15, 82, 79, 67, 66, 92, 18, 95, 24, 10, 81, 15, 70}, "78c55f", false, true)));
                    } else {
                        this.mCountRadius++;
                        if (this.mRadius == null) {
                            this.mRadius = new int[1];
                        }
                        int[] radius = getRadius();
                        this.mRadius = radius;
                        radius[this.mCountRadius - 1] = i2;
                    }
                } else {
                    i2 = iArr[i];
                }
                float[] fArr = this.mAngles;
                if (fArr == null || i >= fArr.length) {
                    Float f2 = this.mReferenceDefaultAngle;
                    if (f2 == null || f2.floatValue() == -1.0f) {
                        String strValueOf2 = String.valueOf(this.mMap.get(Integer.valueOf(viewById.getId())));
                        Log.e(TAG, strValueOf2.length() != 0 ? NPStringFog.decode(new byte[]{114, 86, 85, 92, 80, 21, 82, 92, 86, 85, 81, 21, 71, 93, 17, 79, 93, 80, 68, 18, 70, 80, 64, 93, 19, 91, 85, 3, 20}, "321945", -2.1018488E8f).concat(strValueOf2) : new String(NPStringFog.decode(new byte[]{113, 0, 87, 81, 1, 65, 81, 10, 84, 88, 0, 65, 68, 11, 19, 66, 12, 4, 71, 68, 68, 93, 17, 9, 16, 13, 87, 14, 69}, "0d34ea", false)));
                    } else {
                        this.mCountAngle++;
                        if (this.mAngles == null) {
                            this.mAngles = new float[1];
                        }
                        float[] angles = getAngles();
                        this.mAngles = angles;
                        angles[this.mCountAngle - 1] = f;
                    }
                } else {
                    f = fArr[i];
                }
                ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) viewById.getLayoutParams();
                layoutParams.circleAngle = f;
                layoutParams.circleConstraint = this.mViewCenter;
                layoutParams.circleRadius = i2;
                viewById.setLayoutParams(layoutParams);
            }
        }
        applyLayoutFeatures();
    }

    private float[] removeAngle(float[] fArr, int i) {
        return (fArr == null || i < 0 || i >= this.mCountAngle) ? fArr : removeElementFromArray(fArr, i);
    }

    public static float[] removeElementFromArray(float[] fArr, int i) {
        int i2 = 0;
        float[] fArr2 = new float[fArr.length - 1];
        for (int i3 = 0; i3 < fArr.length; i3++) {
            if (i3 != i) {
                fArr2[i2] = fArr[i3];
                i2++;
            }
        }
        return fArr2;
    }

    public static int[] removeElementFromArray(int[] iArr, int i) {
        int i2 = 0;
        int[] iArr2 = new int[iArr.length - 1];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            if (i3 != i) {
                iArr2[i2] = iArr[i3];
                i2++;
            }
        }
        return iArr2;
    }

    private int[] removeRadius(int[] iArr, int i) {
        return (iArr == null || i < 0 || i >= this.mCountRadius) ? iArr : removeElementFromArray(iArr, i);
    }

    private void setAngles(String str) {
        int i = 0;
        if (str == null) {
            return;
        }
        this.mCountAngle = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i);
            if (iIndexOf == -1) {
                addAngle(str.substring(i).trim());
                return;
            } else {
                addAngle(str.substring(i, iIndexOf).trim());
                i = iIndexOf + 1;
            }
        }
    }

    private void setRadius(String str) {
        int i = 0;
        if (str == null) {
            return;
        }
        this.mCountRadius = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i);
            if (iIndexOf == -1) {
                addRadius(str.substring(i).trim());
                return;
            } else {
                addRadius(str.substring(i, iIndexOf).trim());
                i = iIndexOf + 1;
            }
        }
    }

    public void addViewToCircularFlow(View view, int i, float f) {
        if (containsId(view.getId())) {
            return;
        }
        addView(view);
        this.mCountAngle++;
        float[] angles = getAngles();
        this.mAngles = angles;
        angles[this.mCountAngle - 1] = f;
        this.mCountRadius++;
        int[] radius = getRadius();
        this.mRadius = radius;
        radius[this.mCountRadius - 1] = (int) (i * this.myContext.getResources().getDisplayMetrics().density);
        anchorReferences();
    }

    public float[] getAngles() {
        return Arrays.copyOf(this.mAngles, this.mCountAngle);
    }

    public int[] getRadius() {
        return Arrays.copyOf(this.mRadius, this.mCountRadius);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    protected void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ConstraintLayout_Layout_circularflow_viewCenter) {
                    this.mViewCenter = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                } else if (index == R.styleable.ConstraintLayout_Layout_circularflow_angles) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.mReferenceAngles = string;
                    setAngles(string);
                } else if (index == R.styleable.ConstraintLayout_Layout_circularflow_radiusInDP) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.mReferenceRadius = string2;
                    setRadius(string2);
                } else if (index == R.styleable.ConstraintLayout_Layout_circularflow_defaultAngle) {
                    Float fValueOf = Float.valueOf(typedArrayObtainStyledAttributes.getFloat(index, DEFAULT_ANGLE));
                    this.mReferenceDefaultAngle = fValueOf;
                    setDefaultAngle(fValueOf.floatValue());
                } else if (index == R.styleable.ConstraintLayout_Layout_circularflow_defaultRadius) {
                    Integer numValueOf = Integer.valueOf(typedArrayObtainStyledAttributes.getDimensionPixelSize(index, DEFAULT_RADIUS));
                    this.mReferenceDefaultRadius = numValueOf;
                    setDefaultRadius(numValueOf.intValue());
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public boolean isUpdatable(View view) {
        return containsId(view.getId()) && indexFromId(view.getId()) != -1;
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.mReferenceAngles;
        if (str != null) {
            this.mAngles = new float[1];
            setAngles(str);
        }
        String str2 = this.mReferenceRadius;
        if (str2 != null) {
            this.mRadius = new int[1];
            setRadius(str2);
        }
        Float f = this.mReferenceDefaultAngle;
        if (f != null) {
            setDefaultAngle(f.floatValue());
        }
        Integer num = this.mReferenceDefaultRadius;
        if (num != null) {
            setDefaultRadius(num.intValue());
        }
        anchorReferences();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public int removeView(View view) {
        int iRemoveView = super.removeView(view);
        if (iRemoveView != -1) {
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.clone(this.mContainer);
            constraintSet.clear(view.getId(), 8);
            constraintSet.applyTo(this.mContainer);
            float[] fArr = this.mAngles;
            if (iRemoveView < fArr.length) {
                this.mAngles = removeAngle(fArr, iRemoveView);
                this.mCountAngle--;
            }
            int[] iArr = this.mRadius;
            if (iRemoveView < iArr.length) {
                this.mRadius = removeRadius(iArr, iRemoveView);
                this.mCountRadius--;
            }
            anchorReferences();
        }
        return iRemoveView;
    }

    public void setDefaultAngle(float f) {
        DEFAULT_ANGLE = f;
    }

    public void setDefaultRadius(int i) {
        DEFAULT_RADIUS = i;
    }

    public void updateAngle(View view, float f) {
        if (!isUpdatable(view)) {
            int id = view.getId();
            StringBuilder sb = new StringBuilder(64);
            sb.append(NPStringFog.decode(new byte[]{113, 65, 21, 78, 3, 75, 24, 91, 90, 77, 66, 72, 87, 70, 70, 80, 0, 84, 93, 21, 65, 86, 66, 77, 72, 81, 84, 77, 7, 24, 89, 91, 82, 85, 7, 24, 76, 90, 21, 79, 11, 93, 79, 21, 66, 80, 22, 80, 24, 92, 81, 3, 66}, "8559b8", -1342552326L));
            sb.append(id);
            Log.e(TAG, sb.toString());
            return;
        }
        int iIndexFromId = indexFromId(view.getId());
        if (iIndexFromId <= this.mAngles.length) {
            float[] angles = getAngles();
            this.mAngles = angles;
            angles[iIndexFromId] = f;
            anchorReferences();
        }
    }

    public void updateRadius(View view, int i) {
        if (!isUpdatable(view)) {
            int id = view.getId();
            StringBuilder sb = new StringBuilder(65);
            sb.append(NPStringFog.decode(new byte[]{124, 64, 68, 78, 2, 17, 21, 90, 11, 77, 67, 18, 90, 71, 23, 80, 1, 14, 80, 20, 16, 86, 67, 23, 69, 80, 5, 77, 6, 66, 71, 85, 0, 80, 22, 17, 21, 64, 11, 25, 21, 11, 80, 67, 68, 78, 10, 22, 93, 20, 13, 93, 89, 66}, "54d9cb", false));
            sb.append(id);
            Log.e(TAG, sb.toString());
            return;
        }
        int iIndexFromId = indexFromId(view.getId());
        if (iIndexFromId <= this.mRadius.length) {
            int[] radius = getRadius();
            this.mRadius = radius;
            radius[iIndexFromId] = (int) (i * this.myContext.getResources().getDisplayMetrics().density);
            anchorReferences();
        }
    }

    public void updateReference(View view, int i, float f) {
        if (!isUpdatable(view)) {
            int id = view.getId();
            StringBuilder sb = new StringBuilder(75);
            sb.append(NPStringFog.decode(new byte[]{113, 66, 18, 65, 82, 21, 24, 88, 93, 66, 19, 22, 87, 69, 65, 95, 81, 10, 93, 22, 70, 89, 19, 19, 72, 82, 83, 66, 86, 70, 74, 87, 86, 95, 70, 21, 24, 87, 92, 82, 19, 7, 86, 81, 94, 83, 19, 18, 87, 22, 68, 95, 86, 17, 24, 65, 91, 66, 91, 70, 81, 82, 8, 22}, "86263f", false, true));
            sb.append(id);
            Log.e(TAG, sb.toString());
            return;
        }
        int iIndexFromId = indexFromId(view.getId());
        if (getAngles().length > iIndexFromId) {
            float[] angles = getAngles();
            this.mAngles = angles;
            angles[iIndexFromId] = f;
        }
        if (getRadius().length > iIndexFromId) {
            int[] radius = getRadius();
            this.mRadius = radius;
            radius[iIndexFromId] = (int) (i * this.myContext.getResources().getDisplayMetrics().density);
        }
        anchorReferences();
    }
}

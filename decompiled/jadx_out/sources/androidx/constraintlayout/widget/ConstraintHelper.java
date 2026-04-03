package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.Arrays;
import java.util.HashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public abstract class ConstraintHelper extends View {
    protected int mCount;
    protected Helper mHelperWidget;
    protected int[] mIds;
    protected HashMap<Integer, String> mMap;
    protected String mReferenceIds;
    protected String mReferenceTags;
    protected boolean mUseViewMeasure;
    private View[] mViews;
    protected Context myContext;

    public ConstraintHelper(Context context) {
        super(context);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.mViews = null;
        this.mMap = new HashMap<>();
        this.myContext = context;
        init(null);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.mViews = null;
        this.mMap = new HashMap<>();
        this.myContext = context;
        init(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIds = new int[32];
        this.mUseViewMeasure = false;
        this.mViews = null;
        this.mMap = new HashMap<>();
        this.myContext = context;
        init(attributeSet);
    }

    private void addID(String str) {
        if (str == null || str.length() == 0 || this.myContext == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        int iFindId = findId(strTrim);
        if (iFindId != 0) {
            this.mMap.put(Integer.valueOf(iFindId), strTrim);
            addRscID(iFindId);
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(strTrim).length() + 23);
        sb.append(NPStringFog.decode(new byte[]{116, 14, 68, 15, 6, 68, 89, 14, 69, 67, 4, 13, 89, 5, 17, 10, 6, 68, 88, 7, 17, 65}, "7a1cbd", false, false));
        sb.append(strTrim);
        sb.append(NPStringFog.decode(new byte[]{23}, "5ffc7a", false, false));
        Log.w(NPStringFog.decode(new byte[]{112, 13, 89, 17, 68, 70, 82, 11, 89, 22, 120, 81, 95, 18, 82, 16}, "3b7b04", -31267), sb.toString());
    }

    private void addRscID(int i) {
        if (i == getId()) {
            return;
        }
        int i2 = this.mCount;
        int[] iArr = this.mIds;
        if (i2 + 1 > iArr.length) {
            this.mIds = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.mIds;
        int i3 = this.mCount;
        iArr2[i3] = i;
        this.mCount = i3 + 1;
    }

    private void addTag(String str) {
        if (str == null || str.length() == 0 || this.myContext == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w(NPStringFog.decode(new byte[]{112, 93, 11, 67, 67, 17, 82, 91, 11, 68, 127, 6, 95, 66, 0, 66}, "32e07c", 1.3304392E9f), NPStringFog.decode(new byte[]{101, 86, 67, 82, 15, 22, 21, 89, 94, 67, 65, 3, 21, 116, 94, 89, 18, 22, 71, 86, 88, 89, 21, 46, 84, 78, 94, 66, 21}, "5717ab", -15599));
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.LayoutParams) && strTrim.equals(((ConstraintLayout.LayoutParams) layoutParams).constraintTag)) {
                if (childAt.getId() == -1) {
                    String simpleName = childAt.getClass().getSimpleName();
                    StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 42);
                    sb.append(NPStringFog.decode(new byte[]{16, 10, 69, 65, 74, 80, 68, 38, 10, 90, 74, 65, 22, 4, 12, 90, 77, 97, 5, 2, 69, 66, 80, 80, 19, 69}, "dee495", -1.5770342E9f));
                    sb.append(simpleName);
                    sb.append(NPStringFog.decode(new byte[]{22, 93, 69, 66, 17, 23, 94, 81, 70, 84, 69, 86, 88, 16, 121, 117}, "6001e7", -1.9121472E9f));
                    Log.w(NPStringFog.decode(new byte[]{113, 87, 95, 74, 16, 16, 83, 81, 95, 77, 44, 7, 94, 72, 84, 75}, "2819db", -1.9669092E9f), sb.toString());
                } else {
                    addRscID(childAt.getId());
                }
            }
        }
    }

    private int[] convertReferenceString(View view, String str) {
        String[] strArrSplit = str.split(NPStringFog.decode(new byte[]{78}, "b659c2", false));
        view.getContext();
        int[] iArr = new int[strArrSplit.length];
        int i = 0;
        for (String str2 : strArrSplit) {
            int iFindId = findId(str2.trim());
            if (iFindId != 0) {
                iArr[i] = iFindId;
                i++;
            }
        }
        return i != strArrSplit.length ? Arrays.copyOf(iArr, i) : iArr;
    }

    private int findId(ConstraintLayout constraintLayout, String str) {
        if (str == null || constraintLayout == null) {
            return 0;
        }
        Resources resources = this.myContext.getResources();
        if (resources == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            if (childAt.getId() != -1) {
                String resourceEntryName = null;
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException e) {
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int findId(java.lang.String r5) {
        /*
            r4 = this;
            r0 = 0
            r2 = 0
            android.view.ViewParent r1 = r4.getParent()
            boolean r1 = r1 instanceof androidx.constraintlayout.widget.ConstraintLayout
            if (r1 == 0) goto L5f
            android.view.ViewParent r0 = r4.getParent()
            androidx.constraintlayout.widget.ConstraintLayout r0 = (androidx.constraintlayout.widget.ConstraintLayout) r0
            r1 = r0
        L11:
            boolean r0 = r4.isInEditMode()
            if (r0 == 0) goto L5d
            if (r1 == 0) goto L5d
            java.lang.Object r0 = r1.getDesignInformation(r2, r5)
            boolean r3 = r0 instanceof java.lang.Integer
            if (r3 == 0) goto L5d
            java.lang.Integer r0 = (java.lang.Integer) r0
            int r0 = r0.intValue()
        L27:
            if (r0 != 0) goto L2f
            if (r1 == 0) goto L2f
            int r0 = r4.findId(r1, r5)
        L2f:
            if (r0 != 0) goto L3c
            java.lang.Class<androidx.constraintlayout.widget.R$id> r1 = androidx.constraintlayout.widget.R.id.class
            java.lang.reflect.Field r1 = r1.getField(r5)     // Catch: java.lang.Exception -> L5b
            r3 = 0
            int r0 = r1.getInt(r3)     // Catch: java.lang.Exception -> L5b
        L3c:
            if (r0 != 0) goto L5a
            android.content.Context r0 = r4.myContext
            android.content.res.Resources r0 = r0.getResources()
            r1 = 2
            byte[] r1 = new byte[r1]
            r1 = {x0062: FILL_ARRAY_DATA , data: [8, 82} // fill-array
            java.lang.String r3 = "a63591"
            java.lang.String r1 = n.NPStringFog.decode(r1, r3, r2, r2)
            android.content.Context r2 = r4.myContext
            java.lang.String r2 = r2.getPackageName()
            int r0 = r0.getIdentifier(r5, r1, r2)
        L5a:
            return r0
        L5b:
            r1 = move-exception
            goto L3c
        L5d:
            r0 = r2
            goto L27
        L5f:
            r1 = r0
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintHelper.findId(java.lang.String):int");
    }

    public void addView(View view) {
        if (view == this) {
            return;
        }
        if (view.getId() == -1) {
            Log.e(NPStringFog.decode(new byte[]{123, 92, 10, 23, 69, 67, 89, 90, 10, 16, 121, 84, 84, 67, 1, 22}, "83dd11", false, false), NPStringFog.decode(new byte[]{99, 88, 1, 78, 65, 68, 84, 85, 0, 92, 86, 68, 65, 94, 68, 88, 18, 39, 90, 95, 23, 77, 64, 5, 92, 95, 16, 113, 87, 8, 69, 84, 22, 25, 92, 1, 80, 85, 68, 77, 93, 68, 93, 80, 18, 92, 18, 5, 91, 17, 13, 93}, "51d92d", 1.885954082E9d));
        } else {
            if (view.getParent() == null) {
                Log.e(NPStringFog.decode(new byte[]{32, 11, 94, 68, 67, 22, 2, 13, 94, 67, 127, 1, 15, 20, 85, 69}, "cd077d", 5.354402E8f), NPStringFog.decode(new byte[]{103, 90, 93, 64, 17, 70, 80, 87, 92, 82, 6, 70, 69, 92, 24, 86, 66, 37, 94, 93, 75, 67, 16, 7, 88, 93, 76, 127, 7, 10, 65, 86, 74, 23, 12, 3, 84, 87, 24, 67, 13, 70, 89, 82, 78, 82, 66, 7, 17, 67, 89, 69, 7, 8, 69}, "1387bf", true));
                return;
            }
            this.mReferenceIds = null;
            addRscID(view.getId());
            requestLayout();
        }
    }

    protected void applyLayoutFeatures() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        applyLayoutFeatures((ConstraintLayout) parent);
    }

    protected void applyLayoutFeatures(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = Build.VERSION.SDK_INT >= 21 ? getElevation() : 0.0f;
        for (int i = 0; i < this.mCount; i++) {
            View viewById = constraintLayout.getViewById(this.mIds[i]);
            if (viewById != null) {
                viewById.setVisibility(visibility);
                if (elevation > 0.0f && Build.VERSION.SDK_INT >= 21) {
                    viewById.setTranslationZ(viewById.getTranslationZ() + elevation);
                }
            }
        }
    }

    protected void applyLayoutFeaturesInConstraintSet(ConstraintLayout constraintLayout) {
    }

    public boolean containsId(int i) {
        for (int i2 : this.mIds) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.mIds, this.mCount);
    }

    protected View[] getViews(ConstraintLayout constraintLayout) {
        View[] viewArr = this.mViews;
        if (viewArr == null || viewArr.length != this.mCount) {
            this.mViews = new View[this.mCount];
        }
        for (int i = 0; i < this.mCount; i++) {
            this.mViews[i] = constraintLayout.getViewById(this.mIds[i]);
        }
        return this.mViews;
    }

    public int indexFromId(int i) {
        int i2 = -1;
        for (int i3 : this.mIds) {
            i2++;
            if (i3 == i) {
                break;
            }
        }
        return i2;
    }

    protected void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_ids) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.mReferenceIds = string;
                    setIds(string);
                } else if (index == R.styleable.ConstraintLayout_Layout_constraint_referenced_tags) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.mReferenceTags = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void loadParameters(ConstraintSet.Constraint constraint, HelperWidget helperWidget, ConstraintLayout.LayoutParams layoutParams, SparseArray<ConstraintWidget> sparseArray) {
        if (constraint.layout.mReferenceIds != null) {
            setReferencedIds(constraint.layout.mReferenceIds);
        } else if (constraint.layout.mReferenceIdString != null) {
            if (constraint.layout.mReferenceIdString.length() > 0) {
                constraint.layout.mReferenceIds = convertReferenceString(this, constraint.layout.mReferenceIdString);
            } else {
                constraint.layout.mReferenceIds = null;
            }
        }
        if (helperWidget == null) {
            return;
        }
        helperWidget.removeAllIds();
        if (constraint.layout.mReferenceIds == null) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= constraint.layout.mReferenceIds.length) {
                return;
            }
            ConstraintWidget constraintWidget = sparseArray.get(constraint.layout.mReferenceIds[i2]);
            if (constraintWidget != null) {
                helperWidget.add(constraintWidget);
            }
            i = i2 + 1;
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.mReferenceIds;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.mReferenceTags;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.mUseViewMeasure) {
            super.onMeasure(i, i2);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public int removeView(View view) {
        int i;
        int id = view.getId();
        if (id == -1) {
            return -1;
        }
        this.mReferenceIds = null;
        int i2 = 0;
        while (true) {
            if (i2 >= this.mCount) {
                i2 = -1;
                break;
            }
            if (this.mIds[i2] == id) {
                int i3 = i2;
                while (true) {
                    i = this.mCount;
                    if (i3 >= i - 1) {
                        break;
                    }
                    int[] iArr = this.mIds;
                    iArr[i3] = iArr[i3 + 1];
                    i3++;
                }
                this.mIds[i - 1] = 0;
                this.mCount = i - 1;
            } else {
                i2++;
            }
        }
        requestLayout();
        return i2;
    }

    public void resolveRtl(ConstraintWidget constraintWidget, boolean z) {
    }

    protected void setIds(String str) {
        int i = 0;
        this.mReferenceIds = str;
        if (str == null) {
            return;
        }
        this.mCount = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i);
            if (iIndexOf == -1) {
                addID(str.substring(i));
                return;
            } else {
                addID(str.substring(i, iIndexOf));
                i = iIndexOf + 1;
            }
        }
    }

    protected void setReferenceTags(String str) {
        int i = 0;
        this.mReferenceTags = str;
        if (str == null) {
            return;
        }
        this.mCount = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i);
            if (iIndexOf == -1) {
                addTag(str.substring(i));
                return;
            } else {
                addTag(str.substring(i, iIndexOf));
                i = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.mReferenceIds = null;
        this.mCount = 0;
        for (int i : iArr) {
            addRscID(i);
        }
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        super.setTag(i, obj);
        if (obj == null && this.mReferenceIds == null) {
            addRscID(i);
        }
    }

    public void updatePostConstraints(ConstraintLayout constraintLayout) {
    }

    public void updatePostLayout(ConstraintLayout constraintLayout) {
    }

    public void updatePostMeasure(ConstraintLayout constraintLayout) {
    }

    public void updatePreDraw(ConstraintLayout constraintLayout) {
    }

    public void updatePreLayout(ConstraintWidgetContainer constraintWidgetContainer, Helper helper, SparseArray<ConstraintWidget> sparseArray) {
        helper.removeAllIds();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.mCount) {
                return;
            }
            helper.add(sparseArray.get(this.mIds[i2]));
            i = i2 + 1;
        }
    }

    public void updatePreLayout(ConstraintLayout constraintLayout) {
        View viewById;
        String str;
        int iFindId;
        if (isInEditMode()) {
            setIds(this.mReferenceIds);
        }
        Helper helper = this.mHelperWidget;
        if (helper == null) {
            return;
        }
        helper.removeAllIds();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.mCount) {
                this.mHelperWidget.updateConstraints(constraintLayout.mLayoutWidget);
                return;
            }
            int i3 = this.mIds[i2];
            View viewById2 = constraintLayout.getViewById(i3);
            if (viewById2 != null || (iFindId = findId(constraintLayout, (str = this.mMap.get(Integer.valueOf(i3))))) == 0) {
                viewById = viewById2;
            } else {
                this.mIds[i2] = iFindId;
                this.mMap.put(Integer.valueOf(iFindId), str);
                viewById = constraintLayout.getViewById(iFindId);
            }
            if (viewById != null) {
                this.mHelperWidget.add(constraintLayout.getViewWidget(viewById));
            }
            i = i2 + 1;
        }
    }

    public void validateParams() {
        if (this.mHelperWidget == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).widget = (ConstraintWidget) this.mHelperWidget;
        }
    }
}

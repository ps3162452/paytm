package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.util.ArrayList;
import java.util.Iterator;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes39.dex */
public class StateSet {
    private static final boolean DEBUG = false;
    public static final String TAG = NPStringFog.decode(new byte[]{38, 92, 88, 21, 21, 74, 4, 90, 88, 18, 45, 89, 28, 92, 67, 18, 50, 76, 4, 71, 83, 21}, "e36fa8", true);
    ConstraintSet mDefaultConstraintSet;
    int mDefaultState = -1;
    int mCurrentStateId = -1;
    int mCurrentConstraintNumber = -1;
    private SparseArray<State> mStateList = new SparseArray<>();
    private SparseArray<ConstraintSet> mConstraintSetMap = new SparseArray<>();
    private ConstraintsChangedListener mConstraintsChangedListener = null;

    static class State {
        int mConstraintID;
        int mId;
        boolean mIsLayout;
        ArrayList<Variant> mVariants = new ArrayList<>();

        public State(Context context, XmlPullParser xmlPullParser) {
            this.mConstraintID = -1;
            this.mIsLayout = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.State_android_id) {
                    this.mId = typedArrayObtainStyledAttributes.getResourceId(index, this.mId);
                } else if (index == R.styleable.State_constraints) {
                    this.mConstraintID = typedArrayObtainStyledAttributes.getResourceId(index, this.mConstraintID);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintID);
                    context.getResources().getResourceName(this.mConstraintID);
                    if (NPStringFog.decode(new byte[]{13, 83, 27, 92, 20, 67}, "a2b3a7", true).equals(resourceTypeName)) {
                        this.mIsLayout = true;
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        void add(Variant variant) {
            this.mVariants.add(variant);
        }

        public int findMatch(float f, float f2) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= this.mVariants.size()) {
                    return -1;
                }
                if (this.mVariants.get(i2).match(f, f2)) {
                    return i2;
                }
                i = i2 + 1;
            }
        }
    }

    static class Variant {
        int mConstraintID;
        int mId;
        boolean mIsLayout;
        float mMaxHeight;
        float mMaxWidth;
        float mMinHeight;
        float mMinWidth;

        public Variant(Context context, XmlPullParser xmlPullParser) {
            this.mMinWidth = Float.NaN;
            this.mMinHeight = Float.NaN;
            this.mMaxWidth = Float.NaN;
            this.mMaxHeight = Float.NaN;
            this.mConstraintID = -1;
            this.mIsLayout = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.Variant_constraints) {
                    this.mConstraintID = typedArrayObtainStyledAttributes.getResourceId(index, this.mConstraintID);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.mConstraintID);
                    context.getResources().getResourceName(this.mConstraintID);
                    if (NPStringFog.decode(new byte[]{85, 5, 64, 12, 67, 21}, "9d9c6a", -2077833898L).equals(resourceTypeName)) {
                        this.mIsLayout = true;
                    }
                } else if (index == R.styleable.Variant_region_heightLessThan) {
                    this.mMaxHeight = typedArrayObtainStyledAttributes.getDimension(index, this.mMaxHeight);
                } else if (index == R.styleable.Variant_region_heightMoreThan) {
                    this.mMinHeight = typedArrayObtainStyledAttributes.getDimension(index, this.mMinHeight);
                } else if (index == R.styleable.Variant_region_widthLessThan) {
                    this.mMaxWidth = typedArrayObtainStyledAttributes.getDimension(index, this.mMaxWidth);
                } else if (index == R.styleable.Variant_region_widthMoreThan) {
                    this.mMinWidth = typedArrayObtainStyledAttributes.getDimension(index, this.mMinWidth);
                } else {
                    Log.v(NPStringFog.decode(new byte[]{123, 87, 88, 18, 17, 22, 89, 81, 88, 21, 41, 5, 65, 87, 67, 21, 54, 16, 89, 76, 83, 18}, "886aed", -10928), NPStringFog.decode(new byte[]{52, 89, 83, 93, 93, 67, 15, 23, 76, 82, 85}, "a78324", -16101));
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        boolean match(float f, float f2) {
            if (!Float.isNaN(this.mMinWidth) && f < this.mMinWidth) {
                return false;
            }
            if (!Float.isNaN(this.mMinHeight) && f2 < this.mMinHeight) {
                return false;
            }
            if (Float.isNaN(this.mMaxWidth) || f <= this.mMaxWidth) {
                return Float.isNaN(this.mMaxHeight) || f2 <= this.mMaxHeight;
            }
            return false;
        }
    }

    public StateSet(Context context, XmlPullParser xmlPullParser) {
        load(context, xmlPullParser);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void load(android.content.Context r10, org.xmlpull.v1.XmlPullParser r11) {
        /*
            Method dump skipped, instruction units count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.StateSet.load(android.content.Context, org.xmlpull.v1.XmlPullParser):void");
    }

    public int convertToConstraintSet(int i, int i2, float f, float f2) {
        State state = this.mStateList.get(i2);
        if (state == null) {
            return i2;
        }
        if (f == -1.0f || f2 == -1.0f) {
            if (state.mConstraintID == i) {
                return i;
            }
            Iterator<Variant> it = state.mVariants.iterator();
            while (it.hasNext()) {
                if (i == it.next().mConstraintID) {
                    return i;
                }
            }
            return state.mConstraintID;
        }
        Variant variant = null;
        for (Variant variant2 : state.mVariants) {
            if (!variant2.match(f, f2)) {
                variant2 = variant;
            } else if (i == variant2.mConstraintID) {
                return i;
            }
            variant = variant2;
        }
        return variant != null ? variant.mConstraintID : state.mConstraintID;
    }

    public boolean needsToChange(int i, float f, float f2) {
        int i2 = this.mCurrentStateId;
        if (i2 != i) {
            return true;
        }
        State stateValueAt = i == -1 ? this.mStateList.valueAt(0) : this.mStateList.get(i2);
        if ((this.mCurrentConstraintNumber == -1 || !stateValueAt.mVariants.get(this.mCurrentConstraintNumber).match(f, f2)) && this.mCurrentConstraintNumber != stateValueAt.findMatch(f, f2)) {
            return true;
        }
        return false;
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
        this.mConstraintsChangedListener = constraintsChangedListener;
    }

    public int stateGetConstraintID(int i, int i2, int i3) {
        return updateConstraints(-1, i, i2, i3);
    }

    public int updateConstraints(int i, int i2, float f, float f2) {
        int iFindMatch;
        if (i != i2) {
            State state = this.mStateList.get(i2);
            if (state == null) {
                return -1;
            }
            int iFindMatch2 = state.findMatch(f, f2);
            return iFindMatch2 == -1 ? state.mConstraintID : state.mVariants.get(iFindMatch2).mConstraintID;
        }
        State stateValueAt = i2 == -1 ? this.mStateList.valueAt(0) : this.mStateList.get(this.mCurrentStateId);
        if (stateValueAt == null) {
            return -1;
        }
        if ((this.mCurrentConstraintNumber == -1 || !stateValueAt.mVariants.get(i).match(f, f2)) && i != (iFindMatch = stateValueAt.findMatch(f, f2))) {
            return iFindMatch == -1 ? stateValueAt.mConstraintID : stateValueAt.mVariants.get(iFindMatch).mConstraintID;
        }
        return i;
    }
}

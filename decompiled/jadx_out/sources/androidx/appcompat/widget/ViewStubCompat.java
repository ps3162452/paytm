package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.R;
import java.lang.ref.WeakReference;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewStubCompat extends View {
    private OnInflateListener mInflateListener;
    private int mInflatedId;
    private WeakReference<View> mInflatedViewRef;
    private LayoutInflater mInflater;
    private int mLayoutResource;

    public interface OnInflateListener {
        void onInflate(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewStubCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLayoutResource = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewStubCompat, i, 0);
        this.mInflatedId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ViewStubCompat_android_inflatedId, -1);
        this.mLayoutResource = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ViewStubCompat_android_layout, 0);
        setId(typedArrayObtainStyledAttributes.getResourceId(R.styleable.ViewStubCompat_android_id, -1));
        typedArrayObtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.mInflatedId;
    }

    public LayoutInflater getLayoutInflater() {
        return this.mInflater;
    }

    public int getLayoutResource() {
        return this.mLayoutResource;
    }

    public View inflate() {
        ViewParent parent = getParent();
        if (!(parent instanceof ViewGroup)) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{111, 12, 81, 78, 50, 66, 76, 7, 20, 84, 20, 69, 77, 69, 92, 88, 23, 83, 25, 4, 20, 87, 14, 88, 20, 11, 65, 85, 13, 22, 111, 12, 81, 78, 38, 68, 86, 16, 68, 25, 23, 95, 92, 18, 100, 88, 19, 83, 87, 17}, "9e49a6", 9.703206E8f));
        }
        if (this.mLayoutResource == 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{50, 15, 87, 65, 54, 66, 17, 4, 18, 91, 16, 69, 16, 70, 90, 87, 19, 83, 68, 7, 18, 64, 4, 90, 13, 2, 18, 90, 4, 79, 11, 19, 70, 100, 0, 69, 11, 19, 64, 85, 0}, "df26e6", true, false));
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        View viewInflate = (this.mInflater != null ? this.mInflater : LayoutInflater.from(getContext())).inflate(this.mLayoutResource, viewGroup, false);
        int i = this.mInflatedId;
        if (i != -1) {
            viewInflate.setId(i);
        }
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(viewInflate, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(viewInflate, iIndexOfChild);
        }
        this.mInflatedViewRef = new WeakReference<>(viewInflate);
        OnInflateListener onInflateListener = this.mInflateListener;
        if (onInflateListener != null) {
            onInflateListener.onInflate(this, viewInflate);
        }
        return viewInflate;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.mInflatedId = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.mInflater = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.mLayoutResource = i;
    }

    public void setOnInflateListener(OnInflateListener onInflateListener) {
        this.mInflateListener = onInflateListener;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference<View> weakReference = this.mInflatedViewRef;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{17, 4, 18, 55, 15, 18, 11, 3, 15, 13, 15, 21, 27, 65, 5, 0, 10, 13, 7, 5, 70, 14, 8, 65, 23, 15, 75, 19, 3, 7, 7, 19, 3, 15, 5, 4, 6, 65, 16, 8, 3, 22}, "bafafa", 104));
            }
            view.setVisibility(i);
            return;
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            inflate();
        }
    }
}

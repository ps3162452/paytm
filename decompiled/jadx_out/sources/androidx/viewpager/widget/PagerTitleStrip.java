package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes34.dex */
@ViewPager.DecorView
public class PagerTitleStrip extends ViewGroup {
    private static final float SIDE_ALPHA = 0.6f;
    private static final int TEXT_SPACING = 16;
    TextView mCurrText;
    private int mGravity;
    private int mLastKnownCurrentPage;
    float mLastKnownPositionOffset;
    TextView mNextText;
    private int mNonPrimaryAlpha;
    private final PageListener mPageListener;
    ViewPager mPager;
    TextView mPrevText;
    private int mScaledTextSpacing;
    int mTextColor;
    private boolean mUpdatingPositions;
    private boolean mUpdatingText;
    private WeakReference<PagerAdapter> mWatchingAdapter;
    private static final int[] ATTRS = {R.attr.textAppearance, R.attr.textSize, R.attr.textColor, R.attr.gravity};
    private static final int[] TEXT_ATTRS = {R.attr.textAllCaps};

    private class PageListener extends DataSetObserver implements ViewPager.OnPageChangeListener, ViewPager.OnAdapterChangeListener {
        private int mScrollState;
        final PagerTitleStrip this$0;

        PageListener(PagerTitleStrip pagerTitleStrip) {
            this.this$0 = pagerTitleStrip;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(ViewPager viewPager, PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
            this.this$0.updateAdapter(pagerAdapter, pagerAdapter2);
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            this.this$0.updateText(this.this$0.mPager.getCurrentItem(), this.this$0.mPager.getAdapter());
            this.this$0.updateTextPositions(this.this$0.mPager.getCurrentItem(), this.this$0.mLastKnownPositionOffset >= 0.0f ? this.this$0.mLastKnownPositionOffset : 0.0f, true);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.mScrollState = i;
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            if (f > 0.5f) {
                i++;
            }
            this.this$0.updateTextPositions(i, f, false);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            if (this.mScrollState == 0) {
                this.this$0.updateText(this.this$0.mPager.getCurrentItem(), this.this$0.mPager.getAdapter());
                this.this$0.updateTextPositions(this.this$0.mPager.getCurrentItem(), this.this$0.mLastKnownPositionOffset >= 0.0f ? this.this$0.mLastKnownPositionOffset : 0.0f, true);
            }
        }
    }

    private static class SingleLineAllCapsTransform extends SingleLineTransformationMethod {
        private Locale mLocale;

        SingleLineAllCapsTransform(Context context) {
            this.mLocale = context.getResources().getConfiguration().locale;
        }

        @Override // android.text.method.ReplacementTransformationMethod, android.text.method.TransformationMethod
        public CharSequence getTransformation(CharSequence charSequence, View view) {
            CharSequence transformation = super.getTransformation(charSequence, view);
            if (transformation != null) {
                return transformation.toString().toUpperCase(this.mLocale);
            }
            return null;
        }
    }

    public PagerTitleStrip(@NonNull Context context) {
        this(context, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerTitleStrip(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        boolean z = false;
        this.mLastKnownCurrentPage = -1;
        this.mLastKnownPositionOffset = -1.0f;
        this.mPageListener = new PageListener(this);
        TextView textView = new TextView(context);
        this.mPrevText = textView;
        addView(textView);
        TextView textView2 = new TextView(context);
        this.mCurrText = textView2;
        addView(textView2);
        TextView textView3 = new TextView(context);
        this.mNextText = textView3;
        addView(textView3);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            TextViewCompat.setTextAppearance(this.mPrevText, resourceId);
            TextViewCompat.setTextAppearance(this.mCurrText, resourceId);
            TextViewCompat.setTextAppearance(this.mNextText, resourceId);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        if (dimensionPixelSize != 0) {
            setTextSize(0, dimensionPixelSize);
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            int color = typedArrayObtainStyledAttributes.getColor(2, 0);
            this.mPrevText.setTextColor(color);
            this.mCurrText.setTextColor(color);
            this.mNextText.setTextColor(color);
        }
        this.mGravity = typedArrayObtainStyledAttributes.getInteger(3, 80);
        typedArrayObtainStyledAttributes.recycle();
        this.mTextColor = this.mCurrText.getTextColors().getDefaultColor();
        setNonPrimaryAlpha(SIDE_ALPHA);
        this.mPrevText.setEllipsize(TextUtils.TruncateAt.END);
        this.mCurrText.setEllipsize(TextUtils.TruncateAt.END);
        this.mNextText.setEllipsize(TextUtils.TruncateAt.END);
        if (resourceId != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, TEXT_ATTRS);
            z = typedArrayObtainStyledAttributes2.getBoolean(0, false);
            typedArrayObtainStyledAttributes2.recycle();
        }
        if (z) {
            setSingleLineAllCaps(this.mPrevText);
            setSingleLineAllCaps(this.mCurrText);
            setSingleLineAllCaps(this.mNextText);
        } else {
            this.mPrevText.setSingleLine();
            this.mCurrText.setSingleLine();
            this.mNextText.setSingleLine();
        }
        this.mScaledTextSpacing = (int) (16.0f * context.getResources().getDisplayMetrics().density);
    }

    private static void setSingleLineAllCaps(TextView textView) {
        textView.setTransformationMethod(new SingleLineAllCapsTransform(textView.getContext()));
    }

    int getMinHeight() {
        Drawable background = getBackground();
        if (background != null) {
            return background.getIntrinsicHeight();
        }
        return 0;
    }

    public int getTextSpacing() {
        return this.mScaledTextSpacing;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (!(parent instanceof ViewPager)) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{49, 88, 87, 92, 19, 97, 8, 77, 92, 92, 50, 65, 19, 80, 64, 25, 12, 64, 18, 77, 16, 91, 4, 21, 0, 25, 84, 80, 19, 80, 2, 77, 16, 90, 9, 92, 13, 93, 16, 86, 7, 21, 0, 25, 102, 80, 4, 66, 49, 88, 87, 92, 19, 27}, "a909a5", -13186));
        }
        ViewPager viewPager = (ViewPager) parent;
        PagerAdapter adapter = viewPager.getAdapter();
        viewPager.setInternalPageChangeListener(this.mPageListener);
        viewPager.addOnAdapterChangeListener(this.mPageListener);
        this.mPager = viewPager;
        updateAdapter(this.mWatchingAdapter != null ? this.mWatchingAdapter.get() : null, adapter);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mPager != null) {
            updateAdapter(this.mPager.getAdapter(), null);
            this.mPager.setInternalPageChangeListener(null);
            this.mPager.removeOnAdapterChangeListener(this.mPageListener);
            this.mPager = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mPager != null) {
            updateTextPositions(this.mLastKnownCurrentPage, this.mLastKnownPositionOffset >= 0.0f ? this.mLastKnownPositionOffset : 0.0f, true);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int iMax;
        if (View.MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{124, 71, 64, 21, 25, 9, 84, 83, 64, 20, 75, 1, 17, 69, 90, 21, 81, 68, 80, 92, 19, 4, 65, 5, 82, 70, 19, 22, 80, 0, 69, 90}, "123a9d", false));
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = getChildMeasureSpec(i2, paddingTop, -2);
        int size = View.MeasureSpec.getSize(i);
        int childMeasureSpec2 = getChildMeasureSpec(i, (int) (size * 0.2f), -2);
        this.mPrevText.measure(childMeasureSpec2, childMeasureSpec);
        this.mCurrText.measure(childMeasureSpec2, childMeasureSpec);
        this.mNextText.measure(childMeasureSpec2, childMeasureSpec);
        if (View.MeasureSpec.getMode(i2) == 1073741824) {
            iMax = View.MeasureSpec.getSize(i2);
        } else {
            iMax = Math.max(getMinHeight(), paddingTop + this.mCurrText.getMeasuredHeight());
        }
        setMeasuredDimension(size, View.resolveSizeAndState(iMax, i2, this.mCurrText.getMeasuredState() << 16));
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mUpdatingText) {
            return;
        }
        super.requestLayout();
    }

    public void setGravity(int i) {
        this.mGravity = i;
        requestLayout();
    }

    public void setNonPrimaryAlpha(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.mNonPrimaryAlpha = ((int) (255.0f * f)) & 255;
        int i = (this.mNonPrimaryAlpha << 24) | (this.mTextColor & ViewCompat.MEASURED_SIZE_MASK);
        this.mPrevText.setTextColor(i);
        this.mNextText.setTextColor(i);
    }

    public void setTextColor(@ColorInt int i) {
        this.mTextColor = i;
        this.mCurrText.setTextColor(i);
        int i2 = (this.mNonPrimaryAlpha << 24) | (this.mTextColor & ViewCompat.MEASURED_SIZE_MASK);
        this.mPrevText.setTextColor(i2);
        this.mNextText.setTextColor(i2);
    }

    public void setTextSize(int i, float f) {
        this.mPrevText.setTextSize(i, f);
        this.mCurrText.setTextSize(i, f);
        this.mNextText.setTextSize(i, f);
    }

    public void setTextSpacing(int i) {
        this.mScaledTextSpacing = i;
        requestLayout();
    }

    void updateAdapter(PagerAdapter pagerAdapter, PagerAdapter pagerAdapter2) {
        if (pagerAdapter != null) {
            pagerAdapter.unregisterDataSetObserver(this.mPageListener);
            this.mWatchingAdapter = null;
        }
        if (pagerAdapter2 != null) {
            pagerAdapter2.registerDataSetObserver(this.mPageListener);
            this.mWatchingAdapter = new WeakReference<>(pagerAdapter2);
        }
        if (this.mPager != null) {
            this.mLastKnownCurrentPage = -1;
            this.mLastKnownPositionOffset = -1.0f;
            updateText(this.mPager.getCurrentItem(), pagerAdapter2);
            requestLayout();
        }
    }

    void updateText(int i, PagerAdapter pagerAdapter) {
        CharSequence pageTitle = null;
        int count = pagerAdapter != null ? pagerAdapter.getCount() : 0;
        this.mUpdatingText = true;
        this.mPrevText.setText((i < 1 || pagerAdapter == null) ? null : pagerAdapter.getPageTitle(i - 1));
        this.mCurrText.setText((pagerAdapter == null || i >= count) ? null : pagerAdapter.getPageTitle(i));
        if (i + 1 < count && pagerAdapter != null) {
            pageTitle = pagerAdapter.getPageTitle(i + 1);
        }
        this.mNextText.setText(pageTitle);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, (int) (((getWidth() - getPaddingLeft()) - getPaddingRight()) * 0.8f)), Integer.MIN_VALUE);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.max(0, (getHeight() - getPaddingTop()) - getPaddingBottom()), Integer.MIN_VALUE);
        this.mPrevText.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.mCurrText.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.mNextText.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        this.mLastKnownCurrentPage = i;
        if (!this.mUpdatingPositions) {
            updateTextPositions(i, this.mLastKnownPositionOffset, false);
        }
        this.mUpdatingText = false;
    }

    void updateTextPositions(int i, float f, boolean z) {
        int i2;
        int i3;
        int i4;
        if (i != this.mLastKnownCurrentPage) {
            updateText(i, this.mPager.getAdapter());
        } else if (!z && f == this.mLastKnownPositionOffset) {
            return;
        }
        this.mUpdatingPositions = true;
        int measuredWidth = this.mPrevText.getMeasuredWidth();
        int measuredWidth2 = this.mCurrText.getMeasuredWidth();
        int measuredWidth3 = this.mNextText.getMeasuredWidth();
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i5 = paddingRight + (measuredWidth2 / 2);
        float f2 = 0.5f + f;
        if (f2 > 1.0f) {
            f2 -= 1.0f;
        }
        int i6 = ((width - i5) - ((int) (f2 * ((width - (r4 + paddingLeft)) - i5)))) - (measuredWidth2 / 2);
        int i7 = i6 + measuredWidth2;
        int baseline = this.mPrevText.getBaseline();
        int baseline2 = this.mCurrText.getBaseline();
        int baseline3 = this.mNextText.getBaseline();
        int iMax = Math.max(Math.max(baseline, baseline2), baseline3);
        int i8 = iMax - baseline;
        int i9 = iMax - baseline2;
        int i10 = iMax - baseline3;
        int iMax2 = Math.max(Math.max(this.mPrevText.getMeasuredHeight() + i8, this.mCurrText.getMeasuredHeight() + i9), i10 + this.mNextText.getMeasuredHeight());
        switch (this.mGravity & 112) {
            case 16:
                int i11 = (((height - paddingTop) - paddingBottom) - iMax2) / 2;
                i2 = i8 + i11;
                i3 = i9 + i11;
                i4 = i10 + i11;
                break;
            case 80:
                int i12 = (height - paddingBottom) - iMax2;
                i2 = i8 + i12;
                i3 = i9 + i12;
                i4 = i10 + i12;
                break;
            default:
                i2 = i8 + paddingTop;
                i3 = i9 + paddingTop;
                i4 = i10 + paddingTop;
                break;
        }
        this.mCurrText.layout(i6, i3, i7, this.mCurrText.getMeasuredHeight() + i3);
        int iMin = Math.min(paddingLeft, (i6 - this.mScaledTextSpacing) - measuredWidth);
        this.mPrevText.layout(iMin, i2, measuredWidth + iMin, this.mPrevText.getMeasuredHeight() + i2);
        int iMax3 = Math.max((width - paddingRight) - measuredWidth3, this.mScaledTextSpacing + i7);
        this.mNextText.layout(iMax3, i4, iMax3 + measuredWidth3, this.mNextText.getMeasuredHeight() + i4);
        this.mLastKnownPositionOffset = f;
        this.mUpdatingPositions = false;
    }
}

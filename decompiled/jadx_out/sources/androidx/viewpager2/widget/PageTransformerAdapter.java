package androidx.viewpager2.widget;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes52.dex */
final class PageTransformerAdapter extends ViewPager2.OnPageChangeCallback {
    private final LinearLayoutManager mLayoutManager;
    private ViewPager2.PageTransformer mPageTransformer;

    PageTransformerAdapter(LinearLayoutManager linearLayoutManager) {
        this.mLayoutManager = linearLayoutManager;
    }

    ViewPager2.PageTransformer getPageTransformer() {
        return this.mPageTransformer;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i, float f, int i2) {
        if (this.mPageTransformer == null) {
            return;
        }
        float f2 = -f;
        for (int i3 = 0; i3 < this.mLayoutManager.getChildCount(); i3++) {
            View childAt = this.mLayoutManager.getChildAt(i3);
            if (childAt == null) {
                throw new IllegalStateException(String.format(Locale.US, NPStringFog.decode(new byte[]{124, 88, 78, 9, 65, 67, 125, 88, 89, 7, 83, 82, 66, 25, 69, 3, 64, 66, 66, 87, 82, 2, 20, 86, 16, 87, 66, 10, 88, 23, 83, 81, 94, 10, 80, 23, 81, 77, 23, 22, 91, 68, 16, 28, 83, 73, 17, 83, 16, 78, 95, 15, 88, 82, 16, 77, 69, 7, 90, 68, 86, 86, 69, 11, 93, 89, 87, 25, 71, 7, 83, 82, 67}, "097f47", false, false), Integer.valueOf(i3), Integer.valueOf(this.mLayoutManager.getChildCount())));
            }
            this.mPageTransformer.transformPage(childAt, (this.mLayoutManager.getPosition(childAt) - i) + f2);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i) {
    }

    void setPageTransformer(ViewPager2.PageTransformer pageTransformer) {
        this.mPageTransformer = pageTransformer;
    }
}

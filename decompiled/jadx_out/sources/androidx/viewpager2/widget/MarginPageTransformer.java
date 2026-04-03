package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewParent;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import n.NPStringFog;

/* JADX INFO: loaded from: classes52.dex */
public final class MarginPageTransformer implements ViewPager2.PageTransformer {
    private final int mMarginPx;

    public MarginPageTransformer(int i) {
        Preconditions.checkArgumentNonnegative(i, NPStringFog.decode(new byte[]{46, 0, 69, 82, 92, 88, 67, 12, 66, 70, 65, 22, 1, 4, 23, 91, 90, 88, 78, 15, 82, 82, 84, 66, 10, 23, 82}, "ca7556", 1948601779L));
        this.mMarginPx = i;
    }

    private ViewPager2 requireViewPager(View view) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof ViewPager2)) {
            return (ViewPager2) parent2;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 77, 70, 7, 1, 70, 83, 81, 22, 22, 10, 87, 22, 69, 87, 5, 7, 18, 64, 92, 83, 21, 66, 70, 89, 21, 84, 7, 66, 95, 87, 91, 87, 5, 7, 86, 22, 87, 79, 66, 3, 18, 96, 92, 83, 21, 50, 83, 81, 80, 68, 80, 66, 91, 88, 70, 66, 3, 12, 81, 83, 27}, "656bb2", -23460));
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(View view, float f) {
        ViewPager2 viewPager2RequireViewPager = requireViewPager(view);
        float f2 = this.mMarginPx * f;
        if (viewPager2RequireViewPager.getOrientation() != 0) {
            view.setTranslationY(f2);
            return;
        }
        if (viewPager2RequireViewPager.isRtl()) {
            f2 = -f2;
        }
        view.setTranslationX(f2);
    }
}

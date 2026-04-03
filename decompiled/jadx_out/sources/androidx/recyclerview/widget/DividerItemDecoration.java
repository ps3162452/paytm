package androidx.recyclerview.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import n.NPStringFog;

/* JADX INFO: loaded from: classes42.dex */
public class DividerItemDecoration extends RecyclerView.ItemDecoration {
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;
    private final Rect mBounds = new Rect();
    private Drawable mDivider;
    private int mOrientation;
    private static final String TAG = NPStringFog.decode(new byte[]{38, 80, 68, 8, 92, 81, 16, 112, 70, 4, 85}, "b92a84", -697903066L);
    private static final int[] ATTRS = {R.attr.listDivider};

    public DividerItemDecoration(Context context, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(ATTRS);
        this.mDivider = typedArrayObtainStyledAttributes.getDrawable(0);
        if (this.mDivider == null) {
            Log.w(NPStringFog.decode(new byte[]{117, 11, 66, 91, 7, 6, 67, 43, 64, 87, 14}, "1b42cc", 1.0211367E9f), NPStringFog.decode(new byte[]{116, 84, 93, 85, 71, 95, 93, 81, 9, 80, 65, 68, 70, 26, 95, 88, 70, 68, 112, 92, 69, 88, 81, 85, 70, 21, 68, 80, 70, 16, 90, 90, 71, 17, 70, 85, 64, 21, 90, 95, 21, 68, 92, 80, 19, 69, 93, 85, 89, 80, 19, 68, 70, 85, 80, 21, 85, 94, 71, 16, 64, 93, 90, 66, 21, 116, 93, 67, 90, 85, 80, 66, 125, 65, 86, 92, 113, 85, 87, 90, 65, 80, 65, 89, 91, 91, 29, 17, 101, 92, 81, 84, 64, 84, 21, 67, 81, 65, 19, 69, 93, 81, 64, 21, 82, 69, 65, 66, 93, 87, 70, 69, 80, 16, 85, 89, 95, 17, 86, 81, 88, 89, 19, 66, 80, 68, 112, 71, 82, 70, 84, 82, 88, 80, 27, 24}, "453150", 1.999222714E9d));
        }
        typedArrayObtainStyledAttributes.recycle();
        setOrientation(i);
    }

    private void drawHorizontal(Canvas canvas, RecyclerView recyclerView) {
        int height;
        int paddingTop;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            paddingTop = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), paddingTop, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            paddingTop = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.mBounds);
            int iRound = Math.round(childAt.getTranslationX()) + this.mBounds.right;
            this.mDivider.setBounds(iRound - this.mDivider.getIntrinsicWidth(), paddingTop, iRound, height);
            this.mDivider.draw(canvas);
        }
        canvas.restore();
    }

    private void drawVertical(Canvas canvas, RecyclerView recyclerView) {
        int width;
        int paddingLeft;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            paddingLeft = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(paddingLeft, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            paddingLeft = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            recyclerView.getDecoratedBoundsWithMargins(childAt, this.mBounds);
            int iRound = Math.round(childAt.getTranslationY()) + this.mBounds.bottom;
            this.mDivider.setBounds(paddingLeft, iRound - this.mDivider.getIntrinsicHeight(), width, iRound);
            this.mDivider.draw(canvas);
        }
        canvas.restore();
    }

    @Nullable
    public Drawable getDrawable() {
        return this.mDivider;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        if (this.mDivider == null) {
            rect.set(0, 0, 0, 0);
        } else if (this.mOrientation == 1) {
            rect.set(0, 0, 0, this.mDivider.getIntrinsicHeight());
        } else {
            rect.set(0, 0, this.mDivider.getIntrinsicWidth(), 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (recyclerView.getLayoutManager() == null || this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawVertical(canvas, recyclerView);
        } else {
            drawHorizontal(canvas, recyclerView);
        }
    }

    public void setDrawable(@NonNull Drawable drawable) {
        if (drawable == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 67, 86, 21, 81, 3, 92, 84, 23, 1, 81, 15, 94, 94, 67, 66, 82, 4, 16, 95, 66, 14, 92, 79}, "017b0a", false));
        }
        this.mDivider = drawable;
    }

    public void setOrientation(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{45, 87, 18, 2, 95, 92, 0, 25, 11, 17, 90, 80, 10, 77, 5, 23, 90, 90, 10, 23, 68, 42, 71, 21, 23, 81, 11, 22, 95, 81, 68, 91, 1, 67, 86, 92, 16, 81, 1, 17, 19, 125, 43, 107, 45, 57, 124, 123, 48, 120, 40, 67, 92, 71, 68, 111, 33, 49, 103, 124, 39, 120, 40}, "d9dc35", -1.6283508E9f));
        }
        this.mOrientation = i;
    }
}

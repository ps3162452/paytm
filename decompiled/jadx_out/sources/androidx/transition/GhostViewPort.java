package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
@SuppressLint({"ViewConstructor"})
class GhostViewPort extends ViewGroup implements GhostView {

    @Nullable
    private Matrix mMatrix;
    private final ViewTreeObserver.OnPreDrawListener mOnPreDrawListener;
    int mReferences;
    ViewGroup mStartParent;
    View mStartView;
    final View mView;

    GhostViewPort(View view) {
        super(view.getContext());
        this.mOnPreDrawListener = new ViewTreeObserver.OnPreDrawListener(this) { // from class: androidx.transition.GhostViewPort.1
            final GhostViewPort this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                ViewCompat.postInvalidateOnAnimation(this.this$0);
                if (this.this$0.mStartParent == null || this.this$0.mStartView == null) {
                    return true;
                }
                this.this$0.mStartParent.endViewTransition(this.this$0.mStartView);
                ViewCompat.postInvalidateOnAnimation(this.this$0.mStartParent);
                this.this$0.mStartParent = null;
                this.this$0.mStartView = null;
                return true;
            }
        };
        this.mView = view;
        setWillNotDraw(false);
        setClipChildren(false);
        setLayerType(2, null);
    }

    static GhostViewPort addGhost(View view, ViewGroup viewGroup, Matrix matrix) {
        GhostViewPort ghostViewPort;
        int i;
        GhostViewHolder ghostViewHolder;
        GhostViewHolder ghostViewHolder2;
        if (!(view.getParent() instanceof ViewGroup)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{114, 13, 88, 75, 16, 92, 81, 69, 65, 81, 1, 78, 70, 69, 90, 77, 23, 77, 21, 7, 82, 24, 20, 88, 71, 0, 89, 76, 1, 93, 21, 7, 78, 24, 5, 25, 99, 12, 82, 79, 35, 75, 90, 16, 71}, "5e78d9", 1.60313776E8d));
        }
        GhostViewHolder holder = GhostViewHolder.getHolder(viewGroup);
        GhostViewPort ghostView = getGhostView(view);
        if (ghostView == null || (ghostViewHolder2 = (GhostViewHolder) ghostView.getParent()) == holder) {
            ghostViewPort = ghostView;
            i = 0;
        } else {
            int i2 = ghostView.mReferences;
            ghostViewHolder2.removeView(ghostView);
            ghostViewPort = null;
            i = i2;
        }
        if (ghostViewPort == null) {
            if (matrix == null) {
                matrix = new Matrix();
                calculateMatrix(view, viewGroup, matrix);
            }
            GhostViewPort ghostViewPort2 = new GhostViewPort(view);
            ghostViewPort2.setMatrix(matrix);
            if (holder == null) {
                ghostViewHolder = new GhostViewHolder(viewGroup);
            } else {
                holder.popToOverlayTop();
                ghostViewHolder = holder;
            }
            copySize(viewGroup, ghostViewHolder);
            copySize(viewGroup, ghostViewPort2);
            ghostViewHolder.addGhostView(ghostViewPort2);
            ghostViewPort2.mReferences = i;
            ghostViewPort = ghostViewPort2;
        } else if (matrix != null) {
            ghostViewPort.setMatrix(matrix);
        }
        ghostViewPort.mReferences++;
        return ghostViewPort;
    }

    static void calculateMatrix(View view, ViewGroup viewGroup, Matrix matrix) {
        ViewGroup viewGroup2 = (ViewGroup) view.getParent();
        matrix.reset();
        ViewUtils.transformMatrixToGlobal(viewGroup2, matrix);
        matrix.preTranslate(-viewGroup2.getScrollX(), -viewGroup2.getScrollY());
        ViewUtils.transformMatrixToLocal(viewGroup, matrix);
    }

    static void copySize(View view, View view2) {
        ViewUtils.setLeftTopRightBottom(view2, view2.getLeft(), view2.getTop(), view2.getLeft() + view.getWidth(), view2.getTop() + view.getHeight());
    }

    static GhostViewPort getGhostView(View view) {
        return (GhostViewPort) view.getTag(R.id.ghost_view);
    }

    static void removeGhost(View view) {
        GhostViewPort ghostView = getGhostView(view);
        if (ghostView != null) {
            ghostView.mReferences--;
            if (ghostView.mReferences <= 0) {
                ((GhostViewHolder) ghostView.getParent()).removeView(ghostView);
            }
        }
    }

    static void setGhostView(@NonNull View view, @Nullable GhostViewPort ghostViewPort) {
        view.setTag(R.id.ghost_view, ghostViewPort);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setGhostView(this.mView, this);
        this.mView.getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        ViewUtils.setTransitionVisibility(this.mView, 4);
        if (this.mView.getParent() != null) {
            ((View) this.mView.getParent()).invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.mView.getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        ViewUtils.setTransitionVisibility(this.mView, 0);
        setGhostView(this.mView, null);
        if (this.mView.getParent() != null) {
            ((View) this.mView.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        CanvasUtils.enableZ(canvas, true);
        canvas.setMatrix(this.mMatrix);
        ViewUtils.setTransitionVisibility(this.mView, 0);
        this.mView.invalidate();
        ViewUtils.setTransitionVisibility(this.mView, 4);
        drawChild(canvas, this.mView, getDrawingTime());
        CanvasUtils.enableZ(canvas, false);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // androidx.transition.GhostView
    public void reserveEndViewTransition(ViewGroup viewGroup, View view) {
        this.mStartParent = viewGroup;
        this.mStartView = view;
    }

    void setMatrix(@NonNull Matrix matrix) {
        this.mMatrix = matrix;
    }

    @Override // android.view.View, androidx.transition.GhostView
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (getGhostView(this.mView) == this) {
            ViewUtils.setTransitionVisibility(this.mView, i == 0 ? 4 : 0);
        }
    }
}

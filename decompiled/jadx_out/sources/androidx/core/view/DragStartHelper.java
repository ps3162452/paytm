package androidx.core.view;

import android.graphics.Point;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
public class DragStartHelper {
    private boolean mDragging;
    private int mLastTouchX;
    private int mLastTouchY;
    private final OnDragStartListener mListener;
    private final View.OnLongClickListener mLongClickListener = new View.OnLongClickListener(this) { // from class: androidx.core.view.DragStartHelper.1
        final DragStartHelper this$0;

        {
            this.this$0 = this;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return this.this$0.onLongClick(view);
        }
    };
    private final View.OnTouchListener mTouchListener = new View.OnTouchListener(this) { // from class: androidx.core.view.DragStartHelper.2
        final DragStartHelper this$0;

        {
            this.this$0 = this;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return this.this$0.onTouch(view, motionEvent);
        }
    };
    private final View mView;

    public interface OnDragStartListener {
        boolean onDragStart(View view, DragStartHelper dragStartHelper);
    }

    public DragStartHelper(View view, OnDragStartListener onDragStartListener) {
        this.mView = view;
        this.mListener = onDragStartListener;
    }

    public void attach() {
        this.mView.setOnLongClickListener(this.mLongClickListener);
        this.mView.setOnTouchListener(this.mTouchListener);
    }

    public void detach() {
        this.mView.setOnLongClickListener(null);
        this.mView.setOnTouchListener(null);
    }

    public void getTouchPosition(Point point) {
        point.set(this.mLastTouchX, this.mLastTouchY);
    }

    public boolean onLongClick(View view) {
        return this.mListener.onDragStart(view, this);
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        switch (motionEvent.getAction()) {
            case 0:
                this.mLastTouchX = x;
                this.mLastTouchY = y;
                break;
            case 1:
            case 3:
                this.mDragging = false;
                break;
            case 2:
                if (MotionEventCompat.isFromSource(motionEvent, 8194) && (motionEvent.getButtonState() & 1) != 0 && !this.mDragging) {
                    if (this.mLastTouchX != x || this.mLastTouchY != y) {
                        this.mLastTouchX = x;
                        this.mLastTouchY = y;
                        boolean zOnDragStart = this.mListener.onDragStart(view, this);
                        this.mDragging = zOnDragStart;
                    }
                    break;
                }
                break;
        }
        return false;
    }
}

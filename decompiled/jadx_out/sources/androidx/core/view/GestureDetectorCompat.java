package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class GestureDetectorCompat {
    private final GestureDetectorCompatImpl mImpl;

    interface GestureDetectorCompatImpl {
        boolean isLongpressEnabled();

        boolean onTouchEvent(MotionEvent motionEvent);

        void setIsLongpressEnabled(boolean z);

        void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener);
    }

    static class GestureDetectorCompatImplBase implements GestureDetectorCompatImpl {
        private static final int LONG_PRESS = 2;
        private static final int SHOW_PRESS = 1;
        private static final int TAP = 3;
        private boolean mAlwaysInBiggerTapRegion;
        private boolean mAlwaysInTapRegion;
        MotionEvent mCurrentDownEvent;
        boolean mDeferConfirmSingleTap;
        GestureDetector.OnDoubleTapListener mDoubleTapListener;
        private int mDoubleTapSlopSquare;
        private float mDownFocusX;
        private float mDownFocusY;
        private final Handler mHandler;
        private boolean mInLongPress;
        private boolean mIsDoubleTapping;
        private boolean mIsLongpressEnabled;
        private float mLastFocusX;
        private float mLastFocusY;
        final GestureDetector.OnGestureListener mListener;
        private int mMaximumFlingVelocity;
        private int mMinimumFlingVelocity;
        private MotionEvent mPreviousUpEvent;
        boolean mStillDown;
        private int mTouchSlopSquare;
        private VelocityTracker mVelocityTracker;
        private static final int TAP_TIMEOUT = ViewConfiguration.getTapTimeout();
        private static final int DOUBLE_TAP_TIMEOUT = ViewConfiguration.getDoubleTapTimeout();

        private class GestureHandler extends Handler {
            final GestureDetectorCompatImplBase this$0;

            GestureHandler(GestureDetectorCompatImplBase gestureDetectorCompatImplBase) {
                this.this$0 = gestureDetectorCompatImplBase;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            GestureHandler(GestureDetectorCompatImplBase gestureDetectorCompatImplBase, Handler handler) {
                super(handler.getLooper());
                this.this$0 = gestureDetectorCompatImplBase;
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        this.this$0.mListener.onShowPress(this.this$0.mCurrentDownEvent);
                        return;
                    case 2:
                        this.this$0.dispatchLongPress();
                        return;
                    case 3:
                        if (this.this$0.mDoubleTapListener != null) {
                            if (this.this$0.mStillDown) {
                                this.this$0.mDeferConfirmSingleTap = true;
                                return;
                            } else {
                                this.this$0.mDoubleTapListener.onSingleTapConfirmed(this.this$0.mCurrentDownEvent);
                                return;
                            }
                        }
                        return;
                    default:
                        throw new RuntimeException(NPStringFog.decode(new byte[]{52, 8, 91, 88, 95, 69, 15, 70, 93, 83, 67, 65, 0, 1, 85, 22}, "af0602", -2065818681L) + message);
                }
            }
        }

        GestureDetectorCompatImplBase(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.mHandler = new GestureHandler(this, handler);
            } else {
                this.mHandler = new GestureHandler(this);
            }
            this.mListener = onGestureListener;
            if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
                setOnDoubleTapListener((GestureDetector.OnDoubleTapListener) onGestureListener);
            }
            init(context);
        }

        private void cancel() {
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
            this.mIsDoubleTapping = false;
            this.mStillDown = false;
            this.mAlwaysInTapRegion = false;
            this.mAlwaysInBiggerTapRegion = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mInLongPress) {
                this.mInLongPress = false;
            }
        }

        private void cancelTaps() {
            this.mHandler.removeMessages(1);
            this.mHandler.removeMessages(2);
            this.mHandler.removeMessages(3);
            this.mIsDoubleTapping = false;
            this.mAlwaysInTapRegion = false;
            this.mAlwaysInBiggerTapRegion = false;
            this.mDeferConfirmSingleTap = false;
            if (this.mInLongPress) {
                this.mInLongPress = false;
            }
        }

        private void init(Context context) {
            if (context == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 95, 10, 68, 6, 64, 67, 16, 9, 69, 16, 76, 23, 94, 11, 68, 67, 90, 82, 16, 10, 69, 15, 84}, "70d0c8", -8.575487E8f));
            }
            if (this.mListener == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{127, 86, 126, 4, 67, 21, 69, 74, 92, 45, 89, 18, 68, 93, 87, 4, 66, 65, 93, 77, 74, 21, 16, 15, 95, 76, 25, 3, 85, 65, 94, 77, 85, 13}, "089a0a", -5.64167256E8d));
            }
            this.mIsLongpressEnabled = true;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
            int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
            this.mMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
            this.mMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
            this.mTouchSlopSquare = scaledTouchSlop * scaledTouchSlop;
            this.mDoubleTapSlopSquare = scaledDoubleTapSlop * scaledDoubleTapSlop;
        }

        private boolean isConsideredDoubleTap(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            if (!this.mAlwaysInBiggerTapRegion || motionEvent3.getEventTime() - motionEvent2.getEventTime() > DOUBLE_TAP_TIMEOUT) {
                return false;
            }
            int x = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
            int y = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
            return (x * x) + (y * y) < this.mDoubleTapSlopSquare;
        }

        void dispatchLongPress() {
            this.mHandler.removeMessages(3);
            this.mDeferConfirmSingleTap = false;
            this.mInLongPress = true;
            this.mListener.onLongPress(this.mCurrentDownEvent);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public boolean isLongpressEnabled() {
            return this.mIsLongpressEnabled;
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean zOnDoubleTap;
            MotionEvent motionEvent2;
            boolean zOnFling;
            GestureDetector.OnDoubleTapListener onDoubleTapListener;
            boolean zOnScroll;
            int action = motionEvent.getAction();
            if (this.mVelocityTracker == null) {
                this.mVelocityTracker = VelocityTracker.obtain();
            }
            this.mVelocityTracker.addMovement(motionEvent);
            boolean z = (action & 255) == 6;
            int actionIndex = z ? motionEvent.getActionIndex() : -1;
            int pointerCount = motionEvent.getPointerCount();
            float y = 0.0f;
            float x = 0.0f;
            for (int i = 0; i < pointerCount; i++) {
                if (actionIndex != i) {
                    x += motionEvent.getX(i);
                    y += motionEvent.getY(i);
                }
            }
            int i2 = z ? pointerCount - 1 : pointerCount;
            float f = x / i2;
            float f2 = y / i2;
            switch (action & 255) {
                case 0:
                    if (this.mDoubleTapListener != null) {
                        boolean zHasMessages = this.mHandler.hasMessages(3);
                        if (zHasMessages) {
                            this.mHandler.removeMessages(3);
                        }
                        MotionEvent motionEvent3 = this.mCurrentDownEvent;
                        if (motionEvent3 == null || (motionEvent2 = this.mPreviousUpEvent) == null || !zHasMessages || !isConsideredDoubleTap(motionEvent3, motionEvent2, motionEvent)) {
                            this.mHandler.sendEmptyMessageDelayed(3, DOUBLE_TAP_TIMEOUT);
                            zOnDoubleTap = false;
                        } else {
                            this.mIsDoubleTapping = true;
                            zOnDoubleTap = this.mDoubleTapListener.onDoubleTap(this.mCurrentDownEvent) | false | this.mDoubleTapListener.onDoubleTapEvent(motionEvent);
                        }
                    } else {
                        zOnDoubleTap = false;
                    }
                    this.mLastFocusX = f;
                    this.mDownFocusX = f;
                    this.mLastFocusY = f2;
                    this.mDownFocusY = f2;
                    MotionEvent motionEvent4 = this.mCurrentDownEvent;
                    if (motionEvent4 != null) {
                        motionEvent4.recycle();
                    }
                    this.mCurrentDownEvent = MotionEvent.obtain(motionEvent);
                    this.mAlwaysInTapRegion = true;
                    this.mAlwaysInBiggerTapRegion = true;
                    this.mStillDown = true;
                    this.mInLongPress = false;
                    this.mDeferConfirmSingleTap = false;
                    if (this.mIsLongpressEnabled) {
                        this.mHandler.removeMessages(2);
                        this.mHandler.sendEmptyMessageAtTime(2, this.mCurrentDownEvent.getDownTime() + ((long) TAP_TIMEOUT) + ((long) ViewConfiguration.getLongPressTimeout()));
                    }
                    this.mHandler.sendEmptyMessageAtTime(1, this.mCurrentDownEvent.getDownTime() + ((long) TAP_TIMEOUT));
                    break;
                case 1:
                    this.mStillDown = false;
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    if (this.mIsDoubleTapping) {
                        zOnFling = this.mDoubleTapListener.onDoubleTapEvent(motionEvent) | false;
                    } else if (this.mInLongPress) {
                        this.mHandler.removeMessages(3);
                        this.mInLongPress = false;
                        zOnFling = false;
                    } else if (this.mAlwaysInTapRegion) {
                        zOnFling = this.mListener.onSingleTapUp(motionEvent);
                        if (this.mDeferConfirmSingleTap && (onDoubleTapListener = this.mDoubleTapListener) != null) {
                            onDoubleTapListener.onSingleTapConfirmed(motionEvent);
                        }
                    } else {
                        VelocityTracker velocityTracker = this.mVelocityTracker;
                        int pointerId = motionEvent.getPointerId(0);
                        velocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
                        float yVelocity = velocityTracker.getYVelocity(pointerId);
                        float xVelocity = velocityTracker.getXVelocity(pointerId);
                        zOnFling = (Math.abs(yVelocity) > ((float) this.mMinimumFlingVelocity) || Math.abs(xVelocity) > ((float) this.mMinimumFlingVelocity)) ? this.mListener.onFling(this.mCurrentDownEvent, motionEvent, xVelocity, yVelocity) : false;
                    }
                    MotionEvent motionEvent5 = this.mPreviousUpEvent;
                    if (motionEvent5 != null) {
                        motionEvent5.recycle();
                    }
                    this.mPreviousUpEvent = motionEventObtain;
                    VelocityTracker velocityTracker2 = this.mVelocityTracker;
                    if (velocityTracker2 != null) {
                        velocityTracker2.recycle();
                        this.mVelocityTracker = null;
                    }
                    this.mIsDoubleTapping = false;
                    this.mDeferConfirmSingleTap = false;
                    this.mHandler.removeMessages(1);
                    this.mHandler.removeMessages(2);
                    break;
                case 2:
                    if (!this.mInLongPress) {
                        float f3 = this.mLastFocusX - f;
                        float f4 = this.mLastFocusY - f2;
                        if (!this.mIsDoubleTapping) {
                            if (this.mAlwaysInTapRegion) {
                                int i3 = (int) (f - this.mDownFocusX);
                                int i4 = (int) (f2 - this.mDownFocusY);
                                int i5 = (i3 * i3) + (i4 * i4);
                                if (i5 > this.mTouchSlopSquare) {
                                    zOnScroll = this.mListener.onScroll(this.mCurrentDownEvent, motionEvent, f3, f4);
                                    this.mLastFocusX = f;
                                    this.mLastFocusY = f2;
                                    this.mAlwaysInTapRegion = false;
                                    this.mHandler.removeMessages(3);
                                    this.mHandler.removeMessages(1);
                                    this.mHandler.removeMessages(2);
                                } else {
                                    zOnScroll = false;
                                }
                                if (i5 > this.mTouchSlopSquare) {
                                    this.mAlwaysInBiggerTapRegion = false;
                                }
                            } else if (Math.abs(f3) >= 1.0f || Math.abs(f4) >= 1.0f) {
                                boolean zOnScroll2 = this.mListener.onScroll(this.mCurrentDownEvent, motionEvent, f3, f4);
                                this.mLastFocusX = f;
                                this.mLastFocusY = f2;
                            } else {
                                zOnScroll = false;
                            }
                            break;
                        }
                    }
                    break;
                case 3:
                    cancel();
                    break;
                case 5:
                    this.mLastFocusX = f;
                    this.mDownFocusX = f;
                    this.mLastFocusY = f2;
                    this.mDownFocusY = f2;
                    cancelTaps();
                    break;
                case 6:
                    this.mLastFocusX = f;
                    this.mDownFocusX = f;
                    this.mLastFocusY = f2;
                    this.mDownFocusY = f2;
                    this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaximumFlingVelocity);
                    int actionIndex2 = motionEvent.getActionIndex();
                    int pointerId2 = motionEvent.getPointerId(actionIndex2);
                    float xVelocity2 = this.mVelocityTracker.getXVelocity(pointerId2);
                    float yVelocity2 = this.mVelocityTracker.getYVelocity(pointerId2);
                    for (int i6 = 0; i6 < pointerCount; i6++) {
                        if (i6 != actionIndex2) {
                            int pointerId3 = motionEvent.getPointerId(i6);
                            if ((this.mVelocityTracker.getYVelocity(pointerId3) * yVelocity2) + (this.mVelocityTracker.getXVelocity(pointerId3) * xVelocity2) < 0.0f) {
                                this.mVelocityTracker.clear();
                                break;
                            }
                        }
                    }
                    break;
            }
            return false;
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public void setIsLongpressEnabled(boolean z) {
            this.mIsLongpressEnabled = z;
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.mDoubleTapListener = onDoubleTapListener;
        }
    }

    static class GestureDetectorCompatImplJellybeanMr2 implements GestureDetectorCompatImpl {
        private final GestureDetector mDetector;

        GestureDetectorCompatImplJellybeanMr2(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.mDetector = new GestureDetector(context, onGestureListener, handler);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public boolean isLongpressEnabled() {
            return this.mDetector.isLongpressEnabled();
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.mDetector.onTouchEvent(motionEvent);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public void setIsLongpressEnabled(boolean z) {
            this.mDetector.setIsLongpressEnabled(z);
        }

        @Override // androidx.core.view.GestureDetectorCompat.GestureDetectorCompatImpl
        public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.mDetector.setOnDoubleTapListener(onDoubleTapListener);
        }
    }

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public GestureDetectorCompat(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        if (Build.VERSION.SDK_INT > 17) {
            this.mImpl = new GestureDetectorCompatImplJellybeanMr2(context, onGestureListener, handler);
        } else {
            this.mImpl = new GestureDetectorCompatImplBase(context, onGestureListener, handler);
        }
    }

    public boolean isLongpressEnabled() {
        return this.mImpl.isLongpressEnabled();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.mImpl.onTouchEvent(motionEvent);
    }

    public void setIsLongpressEnabled(boolean z) {
        this.mImpl.setIsLongpressEnabled(z);
    }

    public void setOnDoubleTapListener(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.mImpl.setOnDoubleTapListener(onDoubleTapListener);
    }
}

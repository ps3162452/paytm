package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.Placeholder;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.motion.utils.StopLogic;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.widget.MotionScene;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.R;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class MotionLayout extends ConstraintLayout implements NestedScrollingParent3 {
    private static final boolean DEBUG = false;
    public static final int DEBUG_SHOW_NONE = 0;
    public static final int DEBUG_SHOW_PATH = 2;
    public static final int DEBUG_SHOW_PROGRESS = 1;
    private static final float EPSILON = 1.0E-5f;
    public static boolean IS_IN_EDIT_MODE = false;
    static final int MAX_KEY_FRAMES = 50;
    static final String TAG = NPStringFog.decode(new byte[]{127, 89, 69, 8, 90, 87, 126, 87, 72, 14, 64, 77}, "261a59", -2.0970007E9f);
    public static final int TOUCH_UP_COMPLETE = 0;
    public static final int TOUCH_UP_COMPLETE_TO_END = 2;
    public static final int TOUCH_UP_COMPLETE_TO_START = 1;
    public static final int TOUCH_UP_DECELERATE = 4;
    public static final int TOUCH_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int TOUCH_UP_NEVER_TO_END = 7;
    public static final int TOUCH_UP_NEVER_TO_START = 6;
    public static final int TOUCH_UP_STOP = 3;
    public static final int VELOCITY_LAYOUT = 1;
    public static final int VELOCITY_POST_LAYOUT = 0;
    public static final int VELOCITY_STATIC_LAYOUT = 3;
    public static final int VELOCITY_STATIC_POST_LAYOUT = 2;
    boolean firstDown;
    private float lastPos;
    private float lastY;
    private long mAnimationStartTime;
    private int mBeginState;
    private RectF mBoundsCheck;
    int mCurrentState;
    int mDebugPath;
    private DecelerateInterpolator mDecelerateLogic;
    private ArrayList<MotionHelper> mDecoratorsHelpers;
    private boolean mDelayedApply;
    private DesignTool mDesignTool;
    DevModeDraw mDevModeDraw;
    private int mEndState;
    int mEndWrapHeight;
    int mEndWrapWidth;
    HashMap<View, MotionController> mFrameArrayList;
    private int mFrames;
    int mHeightMeasureMode;
    private boolean mInLayout;
    private boolean mInRotation;
    boolean mInTransition;
    boolean mIndirectTransition;
    private boolean mInteractionEnabled;
    Interpolator mInterpolator;
    private Matrix mInverseMatrix;
    boolean mIsAnimating;
    private boolean mKeepAnimating;
    private KeyCache mKeyCache;
    private long mLastDrawTime;
    private float mLastFps;
    private int mLastHeightMeasureSpec;
    int mLastLayoutHeight;
    int mLastLayoutWidth;
    float mLastVelocity;
    private int mLastWidthMeasureSpec;
    private float mListenerPosition;
    private int mListenerState;
    protected boolean mMeasureDuringTransition;
    Model mModel;
    private boolean mNeedsFireTransitionCompleted;
    int mOldHeight;
    int mOldWidth;
    private Runnable mOnComplete;
    private ArrayList<MotionHelper> mOnHideHelpers;
    private ArrayList<MotionHelper> mOnShowHelpers;
    float mPostInterpolationPosition;
    HashMap<View, ViewState> mPreRotate;
    private int mPreRotateHeight;
    private int mPreRotateWidth;
    private int mPreviouseRotation;
    Interpolator mProgressInterpolator;
    private View mRegionView;
    int mRotatMode;
    MotionScene mScene;
    private int[] mScheduledTransitionTo;
    int mScheduledTransitions;
    float mScrollTargetDT;
    float mScrollTargetDX;
    float mScrollTargetDY;
    long mScrollTargetTime;
    int mStartWrapHeight;
    int mStartWrapWidth;
    private StateCache mStateCache;
    private StopLogic mStopLogic;
    Rect mTempRect;
    private boolean mTemporalInterpolator;
    ArrayList<Integer> mTransitionCompleted;
    private float mTransitionDuration;
    float mTransitionGoalPosition;
    private boolean mTransitionInstantly;
    float mTransitionLastPosition;
    private long mTransitionLastTime;
    private TransitionListener mTransitionListener;
    private CopyOnWriteArrayList<TransitionListener> mTransitionListeners;
    float mTransitionPosition;
    TransitionState mTransitionState;
    boolean mUndergoingMotion;
    int mWidthMeasureMode;

    /* JADX INFO: renamed from: androidx.constraintlayout.motion.widget.MotionLayout$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final int[] $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState;

        static {
            int[] iArr = new int[TransitionState.values().length];
            $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState = iArr;
            try {
                iArr[TransitionState.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[TransitionState.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    class DecelerateInterpolator extends MotionInterpolator {
        float maxA;
        final MotionLayout this$0;
        float initalV = 0.0f;
        float currentP = 0.0f;

        DecelerateInterpolator(MotionLayout motionLayout) {
            this.this$0 = motionLayout;
        }

        public void config(float f, float f2, float f3) {
            this.initalV = f;
            this.currentP = f2;
            this.maxA = f3;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator, android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = this.initalV;
            if (f2 > 0.0f) {
                float f3 = this.maxA;
                if (f2 / f3 < f) {
                    f = f2 / f3;
                }
                this.this$0.mLastVelocity = f2 - (f3 * f);
                float f4 = this.initalV;
                return ((f4 * f) - (((this.maxA * f) * f) / 2.0f)) + this.currentP;
            }
            float f5 = this.maxA;
            if ((-f2) / f5 < f) {
                f = (-f2) / f5;
            }
            this.this$0.mLastVelocity = f2 + (f5 * f);
            float f6 = this.initalV;
            return (f6 * f) + (((this.maxA * f) * f) / 2.0f) + this.currentP;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
        public float getVelocity() {
            return this.this$0.mLastVelocity;
        }
    }

    private class DevModeDraw {
        private static final int DEBUG_PATH_TICKS_PER_MS = 16;
        DashPathEffect mDashPathEffect;
        Paint mFillPaint;
        int mKeyFrameCount;
        float[] mKeyFramePoints;
        Paint mPaint;
        Paint mPaintGraph;
        Paint mPaintKeyframes;
        Path mPath;
        int[] mPathMode;
        float[] mPoints;
        private float[] mRectangle;
        int mShadowTranslate;
        Paint mTextPaint;
        final MotionLayout this$0;
        final int RED_COLOR = -21965;
        final int KEYFRAME_COLOR = -2067046;
        final int GRAPH_COLOR = -13391360;
        final int SHADOW_COLOR = 1996488704;
        final int DIAMOND_SIZE = 10;
        Rect mBounds = new Rect();
        boolean mPresentationMode = false;

        public DevModeDraw(MotionLayout motionLayout) {
            this.this$0 = motionLayout;
            this.mShadowTranslate = 1;
            Paint paint = new Paint();
            this.mPaint = paint;
            paint.setAntiAlias(true);
            this.mPaint.setColor(-21965);
            this.mPaint.setStrokeWidth(2.0f);
            this.mPaint.setStyle(Paint.Style.STROKE);
            Paint paint2 = new Paint();
            this.mPaintKeyframes = paint2;
            paint2.setAntiAlias(true);
            this.mPaintKeyframes.setColor(-2067046);
            this.mPaintKeyframes.setStrokeWidth(2.0f);
            this.mPaintKeyframes.setStyle(Paint.Style.STROKE);
            Paint paint3 = new Paint();
            this.mPaintGraph = paint3;
            paint3.setAntiAlias(true);
            this.mPaintGraph.setColor(-13391360);
            this.mPaintGraph.setStrokeWidth(2.0f);
            this.mPaintGraph.setStyle(Paint.Style.STROKE);
            Paint paint4 = new Paint();
            this.mTextPaint = paint4;
            paint4.setAntiAlias(true);
            this.mTextPaint.setColor(-13391360);
            this.mTextPaint.setTextSize(motionLayout.getContext().getResources().getDisplayMetrics().density * 12.0f);
            this.mRectangle = new float[8];
            Paint paint5 = new Paint();
            this.mFillPaint = paint5;
            paint5.setAntiAlias(true);
            DashPathEffect dashPathEffect = new DashPathEffect(new float[]{4.0f, 8.0f}, 0.0f);
            this.mDashPathEffect = dashPathEffect;
            this.mPaintGraph.setPathEffect(dashPathEffect);
            this.mKeyFramePoints = new float[100];
            this.mPathMode = new int[50];
            if (this.mPresentationMode) {
                this.mPaint.setStrokeWidth(8.0f);
                this.mFillPaint.setStrokeWidth(8.0f);
                this.mPaintKeyframes.setStrokeWidth(8.0f);
                this.mShadowTranslate = 4;
            }
        }

        private void drawBasicPath(Canvas canvas) {
            canvas.drawLines(this.mPoints, this.mPaint);
        }

        private void drawPathAsConfigured(Canvas canvas) {
            boolean z = false;
            boolean z2 = false;
            for (int i = 0; i < this.mKeyFrameCount; i++) {
                int[] iArr = this.mPathMode;
                if (iArr[i] == 1) {
                    z2 = true;
                }
                if (iArr[i] == 0) {
                    z = true;
                }
            }
            if (z2) {
                drawPathRelative(canvas);
            }
            if (z) {
                drawPathCartesian(canvas);
            }
        }

        private void drawPathCartesian(Canvas canvas) {
            float[] fArr = this.mPoints;
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[fArr.length - 2];
            float f4 = fArr[fArr.length - 1];
            canvas.drawLine(Math.min(f, f3), Math.max(f2, f4), Math.max(f, f3), Math.max(f2, f4), this.mPaintGraph);
            canvas.drawLine(Math.min(f, f3), Math.min(f2, f4), Math.min(f, f3), Math.max(f2, f4), this.mPaintGraph);
        }

        private void drawPathCartesianTicks(Canvas canvas, float f, float f2) {
            float[] fArr = this.mPoints;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float fMin = Math.min(f3, f5);
            float fMax = Math.max(f4, f6);
            float fMin2 = f - Math.min(f3, f5);
            float fMax2 = Math.max(f4, f6) - f2;
            Double.isNaN((100.0f * fMin2) / Math.abs(f5 - f3));
            StringBuilder sb = new StringBuilder(15);
            sb.append(((int) (r4 + 0.5d)) / 100.0f);
            String string = sb.toString();
            getTextBounds(string, this.mTextPaint);
            canvas.drawText(string, fMin + ((fMin2 / 2.0f) - (this.mBounds.width() / 2)), f2 - 20.0f, this.mTextPaint);
            canvas.drawLine(f, f2, Math.min(f3, f5), f2, this.mPaintGraph);
            Double.isNaN((100.0f * fMax2) / Math.abs(f6 - f4));
            StringBuilder sb2 = new StringBuilder(15);
            sb2.append(((int) (r0 + 0.5d)) / 100.0f);
            String string2 = sb2.toString();
            getTextBounds(string2, this.mTextPaint);
            canvas.drawText(string2, 5.0f + f, fMax - ((fMax2 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
            canvas.drawLine(f, f2, f, Math.max(f4, f6), this.mPaintGraph);
        }

        private void drawPathRelative(Canvas canvas) {
            float[] fArr = this.mPoints;
            canvas.drawLine(fArr[0], fArr[1], fArr[fArr.length - 2], fArr[fArr.length - 1], this.mPaintGraph);
        }

        private void drawPathRelativeTicks(Canvas canvas, float f, float f2) {
            float[] fArr = this.mPoints;
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = fArr[fArr.length - 2];
            float f6 = fArr[fArr.length - 1];
            float fHypot = (float) Math.hypot(f3 - f5, f4 - f6);
            float f7 = (((f - f3) * (f5 - f3)) + ((f2 - f4) * (f6 - f4))) / (fHypot * fHypot);
            float f8 = f3 + ((f5 - f3) * f7);
            float f9 = f4 + ((f6 - f4) * f7);
            Path path = new Path();
            path.moveTo(f, f2);
            path.lineTo(f8, f9);
            float fHypot2 = (float) Math.hypot(f8 - f, f9 - f2);
            StringBuilder sb = new StringBuilder(15);
            sb.append(((int) ((fHypot2 * 100.0f) / fHypot)) / 100.0f);
            String string = sb.toString();
            getTextBounds(string, this.mTextPaint);
            canvas.drawTextOnPath(string, path, (fHypot2 / 2.0f) - (this.mBounds.width() / 2), -20.0f, this.mTextPaint);
            canvas.drawLine(f, f2, f8, f9, this.mPaintGraph);
        }

        private void drawPathScreenTicks(Canvas canvas, float f, float f2, int i, int i2) {
            Double.isNaN(((f - (i / 2)) * 100.0f) / (this.this$0.getWidth() - i));
            StringBuilder sb = new StringBuilder(15);
            sb.append(((int) (r0 + 0.5d)) / 100.0f);
            String string = sb.toString();
            getTextBounds(string, this.mTextPaint);
            canvas.drawText(string, ((f / 2.0f) - (this.mBounds.width() / 2)) + 0.0f, f2 - 20.0f, this.mTextPaint);
            canvas.drawLine(f, f2, Math.min(0.0f, 1.0f), f2, this.mPaintGraph);
            Double.isNaN(((f2 - (i2 / 2)) * 100.0f) / (this.this$0.getHeight() - i2));
            StringBuilder sb2 = new StringBuilder(15);
            sb2.append(((int) (r0 + 0.5d)) / 100.0f);
            String string2 = sb2.toString();
            getTextBounds(string2, this.mTextPaint);
            canvas.drawText(string2, 5.0f + f, 0.0f - ((f2 / 2.0f) - (this.mBounds.height() / 2)), this.mTextPaint);
            canvas.drawLine(f, f2, f, Math.max(0.0f, 1.0f), this.mPaintGraph);
        }

        private void drawRectangle(Canvas canvas, MotionController motionController) {
            this.mPath.reset();
            for (int i = 0; i <= 50; i++) {
                motionController.buildRect(i / 50, this.mRectangle, 0);
                Path path = this.mPath;
                float[] fArr = this.mRectangle;
                path.moveTo(fArr[0], fArr[1]);
                Path path2 = this.mPath;
                float[] fArr2 = this.mRectangle;
                path2.lineTo(fArr2[2], fArr2[3]);
                Path path3 = this.mPath;
                float[] fArr3 = this.mRectangle;
                path3.lineTo(fArr3[4], fArr3[5]);
                Path path4 = this.mPath;
                float[] fArr4 = this.mRectangle;
                path4.lineTo(fArr4[6], fArr4[7]);
                this.mPath.close();
            }
            this.mPaint.setColor(1140850688);
            canvas.translate(2.0f, 2.0f);
            canvas.drawPath(this.mPath, this.mPaint);
            canvas.translate(-2.0f, -2.0f);
            this.mPaint.setColor(SupportMenu.CATEGORY_MASK);
            canvas.drawPath(this.mPath, this.mPaint);
        }

        private void drawTicks(Canvas canvas, int i, int i2, MotionController motionController) {
            int width;
            int height;
            if (motionController.mView != null) {
                width = motionController.mView.getWidth();
                height = motionController.mView.getHeight();
            } else {
                width = 0;
                height = 0;
            }
            int i3 = 1;
            while (true) {
                int i4 = i3;
                if (i4 >= i2 - 1) {
                    break;
                }
                if (i != 4 || this.mPathMode[i4 - 1] != 0) {
                    float[] fArr = this.mKeyFramePoints;
                    float f = fArr[i4 * 2];
                    float f2 = fArr[(i4 * 2) + 1];
                    this.mPath.reset();
                    this.mPath.moveTo(f, 10.0f + f2);
                    this.mPath.lineTo(10.0f + f, f2);
                    this.mPath.lineTo(f, f2 - 10.0f);
                    this.mPath.lineTo(f - 10.0f, f2);
                    this.mPath.close();
                    motionController.getKeyFrame(i4 - 1);
                    if (i == 4) {
                        int[] iArr = this.mPathMode;
                        if (iArr[i4 - 1] == 1) {
                            drawPathRelativeTicks(canvas, f - 0.0f, f2 - 0.0f);
                        } else if (iArr[i4 - 1] == 0) {
                            drawPathCartesianTicks(canvas, f - 0.0f, f2 - 0.0f);
                        } else if (iArr[i4 - 1] == 2) {
                            drawPathScreenTicks(canvas, f - 0.0f, f2 - 0.0f, width, height);
                        }
                        canvas.drawPath(this.mPath, this.mFillPaint);
                    }
                    if (i == 2) {
                        drawPathRelativeTicks(canvas, f - 0.0f, f2 - 0.0f);
                    }
                    if (i == 3) {
                        drawPathCartesianTicks(canvas, f - 0.0f, f2 - 0.0f);
                    }
                    if (i == 6) {
                        drawPathScreenTicks(canvas, f - 0.0f, f2 - 0.0f, width, height);
                    }
                    if (0.0f == 0.0f && 0.0f == 0.0f) {
                        canvas.drawPath(this.mPath, this.mFillPaint);
                    } else {
                        drawTranslation(canvas, f - 0.0f, f2 - 0.0f, f, f2);
                    }
                }
                i3 = i4 + 1;
            }
            float[] fArr2 = this.mPoints;
            if (fArr2.length > 1) {
                canvas.drawCircle(fArr2[0], fArr2[1], 8.0f, this.mPaintKeyframes);
                float[] fArr3 = this.mPoints;
                canvas.drawCircle(fArr3[fArr3.length - 2], fArr3[fArr3.length - 1], 8.0f, this.mPaintKeyframes);
            }
        }

        private void drawTranslation(Canvas canvas, float f, float f2, float f3, float f4) {
            canvas.drawRect(f, f2, f3, f4, this.mPaintGraph);
            canvas.drawLine(f, f2, f3, f4, this.mPaintGraph);
        }

        public void draw(Canvas canvas, HashMap<View, MotionController> map, int i, int i2) {
            if (map == null || map.size() == 0) {
                return;
            }
            canvas.save();
            if (!this.this$0.isInEditMode() && (i2 & 1) == 2) {
                String resourceName = this.this$0.getContext().getResources().getResourceName(this.this$0.mEndState);
                float progress = this.this$0.getProgress();
                StringBuilder sb = new StringBuilder(String.valueOf(resourceName).length() + 16);
                sb.append(resourceName);
                sb.append(NPStringFog.decode(new byte[]{2}, "8c5051", true));
                sb.append(progress);
                String string = sb.toString();
                canvas.drawText(string, 10.0f, this.this$0.getHeight() - 30, this.mTextPaint);
                canvas.drawText(string, 11.0f, this.this$0.getHeight() - 29, this.mPaint);
            }
            for (MotionController motionController : map.values()) {
                int drawPath = motionController.getDrawPath();
                if (i2 > 0 && drawPath == 0) {
                    drawPath = 1;
                }
                if (drawPath != 0) {
                    this.mKeyFrameCount = motionController.buildKeyFrames(this.mKeyFramePoints, this.mPathMode);
                    if (drawPath >= 1) {
                        int i3 = i / 16;
                        float[] fArr = this.mPoints;
                        if (fArr == null || fArr.length != i3 * 2) {
                            this.mPoints = new float[i3 * 2];
                            this.mPath = new Path();
                        }
                        int i4 = this.mShadowTranslate;
                        canvas.translate(i4, i4);
                        this.mPaint.setColor(1996488704);
                        this.mFillPaint.setColor(1996488704);
                        this.mPaintKeyframes.setColor(1996488704);
                        this.mPaintGraph.setColor(1996488704);
                        motionController.buildPath(this.mPoints, i3);
                        drawAll(canvas, drawPath, this.mKeyFrameCount, motionController);
                        this.mPaint.setColor(-21965);
                        this.mPaintKeyframes.setColor(-2067046);
                        this.mFillPaint.setColor(-2067046);
                        this.mPaintGraph.setColor(-13391360);
                        int i5 = this.mShadowTranslate;
                        canvas.translate(-i5, -i5);
                        drawAll(canvas, drawPath, this.mKeyFrameCount, motionController);
                        if (drawPath == 5) {
                            drawRectangle(canvas, motionController);
                        }
                    }
                }
            }
            canvas.restore();
        }

        public void drawAll(Canvas canvas, int i, int i2, MotionController motionController) {
            if (i == 4) {
                drawPathAsConfigured(canvas);
            }
            if (i == 2) {
                drawPathRelative(canvas);
            }
            if (i == 3) {
                drawPathCartesian(canvas);
            }
            drawBasicPath(canvas);
            drawTicks(canvas, i, i2, motionController);
        }

        void getTextBounds(String str, Paint paint) {
            paint.getTextBounds(str, 0, str.length(), this.mBounds);
        }
    }

    class Model {
        int mEndId;
        int mStartId;
        final MotionLayout this$0;
        ConstraintWidgetContainer mLayoutStart = new ConstraintWidgetContainer();
        ConstraintWidgetContainer mLayoutEnd = new ConstraintWidgetContainer();
        ConstraintSet mStart = null;
        ConstraintSet mEnd = null;

        Model(MotionLayout motionLayout) {
            this.this$0 = motionLayout;
        }

        private void computeStartEndSize(int i, int i2) {
            int optimizationLevel = this.this$0.getOptimizationLevel();
            if (this.this$0.mCurrentState != this.this$0.getStartState()) {
                ConstraintSet constraintSet = this.mStart;
                if (constraintSet != null) {
                    this.this$0.resolveSystem(this.mLayoutStart, optimizationLevel, constraintSet.mRotate == 0 ? i : i2, this.mStart.mRotate == 0 ? i2 : i);
                }
                MotionLayout motionLayout = this.this$0;
                ConstraintWidgetContainer constraintWidgetContainer = this.mLayoutEnd;
                ConstraintSet constraintSet2 = this.mEnd;
                int i3 = (constraintSet2 == null || constraintSet2.mRotate == 0) ? i : i2;
                ConstraintSet constraintSet3 = this.mEnd;
                if (constraintSet3 != null && constraintSet3.mRotate != 0) {
                    i2 = i;
                }
                motionLayout.resolveSystem(constraintWidgetContainer, optimizationLevel, i3, i2);
                return;
            }
            MotionLayout motionLayout2 = this.this$0;
            ConstraintWidgetContainer constraintWidgetContainer2 = this.mLayoutEnd;
            ConstraintSet constraintSet4 = this.mEnd;
            int i4 = (constraintSet4 == null || constraintSet4.mRotate == 0) ? i : i2;
            ConstraintSet constraintSet5 = this.mEnd;
            motionLayout2.resolveSystem(constraintWidgetContainer2, optimizationLevel, i4, (constraintSet5 == null || constraintSet5.mRotate == 0) ? i2 : i);
            ConstraintSet constraintSet6 = this.mStart;
            if (constraintSet6 != null) {
                MotionLayout motionLayout3 = this.this$0;
                ConstraintWidgetContainer constraintWidgetContainer3 = this.mLayoutStart;
                int i5 = constraintSet6.mRotate == 0 ? i : i2;
                if (this.mStart.mRotate != 0) {
                    i2 = i;
                }
                motionLayout3.resolveSystem(constraintWidgetContainer3, optimizationLevel, i5, i2);
            }
        }

        private void debugLayout(String str, ConstraintWidgetContainer constraintWidgetContainer) {
            String string;
            String name = Debug.getName((View) constraintWidgetContainer.getCompanionWidget());
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(name).length());
            sb.append(str);
            sb.append(" ");
            sb.append(name);
            String string2 = sb.toString();
            String strValueOf = String.valueOf(constraintWidgetContainer);
            StringBuilder sb2 = new StringBuilder(String.valueOf(string2).length() + 12 + String.valueOf(strValueOf).length());
            sb2.append(string2);
            sb2.append(NPStringFog.decode(new byte[]{67, 70, 95, 15, 10, 5, 94, 91, 95, 15, 10, 24}, "cfb278", -1542));
            sb2.append(strValueOf);
            Log.v(NPStringFog.decode(new byte[]{126, 92, 67, 90, 87, 88, 127, 82, 78, 92, 77, 66}, "337386", true, true), sb2.toString());
            int size = constraintWidgetContainer.getChildren().size();
            for (int i = 0; i < size; i++) {
                StringBuilder sb3 = new StringBuilder(String.valueOf(string2).length() + 14);
                sb3.append(string2);
                sb3.append(NPStringFog.decode(new byte[]{62}, "e544bd", 7666));
                sb3.append(i);
                sb3.append(NPStringFog.decode(new byte[]{62, 21}, "c5c4c6", -876757358L));
                String string3 = sb3.toString();
                ConstraintWidget constraintWidget = constraintWidgetContainer.getChildren().get(i);
                String strValueOf2 = String.valueOf("");
                ConstraintAnchor constraintAnchor = constraintWidget.mTop.mTarget;
                String strDecode = NPStringFog.decode(new byte[]{103}, "829599", false, false);
                String strValueOf3 = String.valueOf(constraintAnchor != null ? NPStringFog.decode(new byte[]{98}, "61907f", -514687028L) : NPStringFog.decode(new byte[]{61}, "b6087e", true, true));
                String strValueOf4 = String.valueOf(strValueOf3.length() != 0 ? strValueOf2.concat(strValueOf3) : new String(strValueOf2));
                String strValueOf5 = String.valueOf(constraintWidget.mBottom.mTarget != null ? NPStringFog.decode(new byte[]{115}, "1e58ba", true, false) : NPStringFog.decode(new byte[]{61}, "b4ca0e", -10081));
                String strValueOf6 = String.valueOf(strValueOf5.length() != 0 ? strValueOf4.concat(strValueOf5) : new String(strValueOf4));
                String strValueOf7 = String.valueOf(constraintWidget.mLeft.mTarget != null ? NPStringFog.decode(new byte[]{45}, "aa1221", false) : NPStringFog.decode(new byte[]{108}, "3f30ed", 24293));
                String strValueOf8 = String.valueOf(strValueOf7.length() != 0 ? strValueOf6.concat(strValueOf7) : new String(strValueOf6));
                String strValueOf9 = String.valueOf(constraintWidget.mRight.mTarget != null ? NPStringFog.decode(new byte[]{99}, "15ae48", -571) : strDecode);
                String strConcat = strValueOf9.length() != 0 ? strValueOf8.concat(strValueOf9) : new String(strValueOf8);
                View view = (View) constraintWidget.getCompanionWidget();
                String name2 = Debug.getName(view);
                if (view instanceof TextView) {
                    String strValueOf10 = String.valueOf(name2);
                    String strValueOf11 = String.valueOf(((TextView) view).getText());
                    StringBuilder sb4 = new StringBuilder(String.valueOf(strValueOf10).length() + 2 + String.valueOf(strValueOf11).length());
                    sb4.append(strValueOf10);
                    sb4.append(NPStringFog.decode(new byte[]{28}, "4fcb81", false, false));
                    sb4.append(strValueOf11);
                    sb4.append(NPStringFog.decode(new byte[]{17}, "876d23", -1710919212L));
                    string = sb4.toString();
                } else {
                    string = name2;
                }
                String strValueOf12 = String.valueOf(constraintWidget);
                StringBuilder sb5 = new StringBuilder(String.valueOf(string3).length() + 4 + String.valueOf(string).length() + String.valueOf(strValueOf12).length() + String.valueOf(strConcat).length());
                sb5.append(string3);
                sb5.append("  ");
                sb5.append(string);
                sb5.append(" ");
                sb5.append(strValueOf12);
                sb5.append(" ");
                sb5.append(strConcat);
                Log.v(NPStringFog.decode(new byte[]{121, 93, 64, 88, 11, 8, 120, 83, 77, 94, 17, 18}, "4241df", false, true), sb5.toString());
            }
            Log.v(NPStringFog.decode(new byte[]{117, 13, 68, 13, 9, 11, 116, 3, 73, 11, 19, 17}, "8b0dfe", false, false), String.valueOf(string2).concat(NPStringFog.decode(new byte[]{16, 93, 86, 94, 82, 29, 16}, "099073", true)));
        }

        private void debugLayoutParam(String str, ConstraintLayout.LayoutParams layoutParams) {
            String strValueOf = String.valueOf(" ");
            String strValueOf2 = String.valueOf(layoutParams.startToStart != -1 ? NPStringFog.decode(new byte[]{53, 102}, "f5f01e", -8.816596E8f) : NPStringFog.decode(new byte[]{107, 61}, "4b206d", -5.65189185E8d));
            String strValueOf3 = String.valueOf(strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf));
            int i = layoutParams.startToEnd;
            String strDecode = NPStringFog.decode(new byte[]{29, 59, 59}, "add5d2", false);
            String strValueOf4 = String.valueOf(i != -1 ? NPStringFog.decode(new byte[]{30, 107, 112}, "b85fa9", -1.3941696E9f) : NPStringFog.decode(new byte[]{24, 108, 103}, "d3840b", 1.739476727E9d));
            String strValueOf5 = String.valueOf(strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3));
            String strValueOf6 = String.valueOf(layoutParams.endToStart != -1 ? NPStringFog.decode(new byte[]{72, 38, 48}, "4cc6cf", -417963897L) : NPStringFog.decode(new byte[]{79, 61, 102}, "3b961f", true));
            String strValueOf7 = String.valueOf(strValueOf6.length() != 0 ? strValueOf5.concat(strValueOf6) : new String(strValueOf5));
            String strValueOf8 = String.valueOf(layoutParams.endToEnd != -1 ? NPStringFog.decode(new byte[]{73, 35, 118}, "5f342d", false) : NPStringFog.decode(new byte[]{77, 105, 62}, "16a598", false, true));
            String strValueOf9 = String.valueOf(strValueOf8.length() != 0 ? strValueOf7.concat(strValueOf8) : new String(strValueOf7));
            String strValueOf10 = String.valueOf(layoutParams.leftToLeft != -1 ? NPStringFog.decode(new byte[]{69, 123, 42}, "97f977", 1372077922L) : NPStringFog.decode(new byte[]{31, 105, 58}, "c6e928", 779588022L));
            String strValueOf11 = String.valueOf(strValueOf10.length() != 0 ? strValueOf9.concat(strValueOf10) : new String(strValueOf9));
            String strValueOf12 = String.valueOf(layoutParams.leftToRight != -1 ? NPStringFog.decode(new byte[]{75, 41, 99}, "7e1b67", -854697686L) : NPStringFog.decode(new byte[]{25, 62, 105}, "ea6831", false));
            String strValueOf13 = String.valueOf(strValueOf12.length() != 0 ? strValueOf11.concat(strValueOf12) : new String(strValueOf11));
            String strValueOf14 = String.valueOf(layoutParams.rightToLeft != -1 ? NPStringFog.decode(new byte[]{78, 103, 117}, "259da2", 1.359496996E9d) : NPStringFog.decode(new byte[]{68, 111, 110}, "80172e", -331780.0d));
            String strValueOf15 = String.valueOf(strValueOf14.length() != 0 ? strValueOf13.concat(strValueOf14) : new String(strValueOf13));
            String strValueOf16 = String.valueOf(layoutParams.rightToRight != -1 ? NPStringFog.decode(new byte[]{77, 100, 99}, "161358", -196963616L) : NPStringFog.decode(new byte[]{26, 104, 60}, "f7c292", 1.03373536E9f));
            String strValueOf17 = String.valueOf(strValueOf16.length() != 0 ? strValueOf15.concat(strValueOf16) : new String(strValueOf15));
            String strValueOf18 = String.valueOf(layoutParams.topToTop != -1 ? NPStringFog.decode(new byte[]{78, 103, 49}, "23e943", true, false) : NPStringFog.decode(new byte[]{31, 61, 105}, "cb6b07", false));
            String strValueOf19 = String.valueOf(strValueOf18.length() != 0 ? strValueOf17.concat(strValueOf18) : new String(strValueOf17));
            String strValueOf20 = String.valueOf(layoutParams.topToBottom != -1 ? NPStringFog.decode(new byte[]{68, 55, 117}, "8c7787", true) : NPStringFog.decode(new byte[]{68, 106, 103}, "8586d1", -4.338586E8f));
            String strValueOf21 = String.valueOf(strValueOf20.length() != 0 ? strValueOf19.concat(strValueOf20) : new String(strValueOf19));
            String strValueOf22 = String.valueOf(layoutParams.bottomToTop != -1 ? NPStringFog.decode(new byte[]{78, 122, 99}, "2870a3", true) : NPStringFog.decode(new byte[]{68, 102, 62}, "89a9e1", -4.1552832E8f));
            String strValueOf23 = String.valueOf(strValueOf22.length() != 0 ? strValueOf21.concat(strValueOf22) : new String(strValueOf21));
            String strValueOf24 = String.valueOf(layoutParams.bottomToBottom != -1 ? NPStringFog.decode(new byte[]{75, 39, 32}, "7ebe62", true) : strDecode);
            String strConcat = strValueOf24.length() != 0 ? strValueOf23.concat(strValueOf24) : new String(strValueOf23);
            String strValueOf25 = String.valueOf(str);
            String strValueOf26 = String.valueOf(strConcat);
            Log.v(NPStringFog.decode(new byte[]{122, 10, 69, 91, 86, 10, 123, 4, 72, 93, 76, 16}, "7e129d", -1910246988L), strValueOf26.length() != 0 ? strValueOf25.concat(strValueOf26) : new String(strValueOf25));
        }

        private void debugWidget(String str, ConstraintWidget constraintWidget) {
            String strDecode;
            String strDecode2;
            String strDecode3;
            String strConcat;
            String strValueOf = String.valueOf(" ");
            ConstraintAnchor constraintAnchor = constraintWidget.mTop.mTarget;
            String strDecode4 = NPStringFog.decode(new byte[]{50}, "f063dd", -1.22958018E9d);
            String strDecode5 = NPStringFog.decode(new byte[]{59, 107}, "d469ad", 1.2610199E9f);
            if (constraintAnchor != null) {
                String strValueOf2 = String.valueOf(constraintWidget.mTop.mTarget.mType == ConstraintAnchor.Type.TOP ? NPStringFog.decode(new byte[]{96}, "44d01f", true, false) : NPStringFog.decode(new byte[]{119}, "53713f", true, false));
                strDecode = strValueOf2.length() != 0 ? NPStringFog.decode(new byte[]{49}, "edb4a3", -4.691104E8f).concat(strValueOf2) : new String(NPStringFog.decode(new byte[]{109}, "922d20", 7.71974318E8d));
            } else {
                strDecode = NPStringFog.decode(new byte[]{62, 109}, "a26d08", -19310);
            }
            String strValueOf3 = String.valueOf(strDecode);
            String strValueOf4 = String.valueOf(strValueOf3.length() != 0 ? strValueOf.concat(strValueOf3) : new String(strValueOf));
            if (constraintWidget.mBottom.mTarget != null) {
                String strValueOf5 = String.valueOf(constraintWidget.mBottom.mTarget.mType == ConstraintAnchor.Type.TOP ? strDecode4 : NPStringFog.decode(new byte[]{35}, "aac735", 6989));
                strDecode2 = strValueOf5.length() != 0 ? NPStringFog.decode(new byte[]{33}, "c611cd", 2.0815266E9d).concat(strValueOf5) : new String(NPStringFog.decode(new byte[]{32}, "ba886f", -11608));
            } else {
                strDecode2 = NPStringFog.decode(new byte[]{58, 59}, "ed003c", false, false);
            }
            String strValueOf6 = String.valueOf(strDecode2);
            String strValueOf7 = String.valueOf(strValueOf6.length() != 0 ? strValueOf4.concat(strValueOf6) : new String(strValueOf4));
            ConstraintAnchor constraintAnchor2 = constraintWidget.mLeft.mTarget;
            String strDecode6 = NPStringFog.decode(new byte[]{127}, "3913e3", -31645);
            if (constraintAnchor2 != null) {
                String strValueOf8 = String.valueOf(constraintWidget.mLeft.mTarget.mType == ConstraintAnchor.Type.LEFT ? NPStringFog.decode(new byte[]{47}, "cca429", -25772) : NPStringFog.decode(new byte[]{54}, "dedc4c", 424436382L));
                strDecode3 = strValueOf8.length() != 0 ? NPStringFog.decode(new byte[]{126}, "2da9ec", true, false).concat(strValueOf8) : new String(NPStringFog.decode(new byte[]{47}, "c501ed", 2813));
            } else {
                strDecode3 = NPStringFog.decode(new byte[]{58, 106}, "e571f4", true, true);
            }
            String strValueOf9 = String.valueOf(strDecode3);
            String strValueOf10 = String.valueOf(strValueOf9.length() != 0 ? strValueOf7.concat(strValueOf9) : new String(strValueOf7));
            if (constraintWidget.mRight.mTarget != null) {
                String strValueOf11 = String.valueOf(constraintWidget.mRight.mTarget.mType == ConstraintAnchor.Type.LEFT ? strDecode6 : NPStringFog.decode(new byte[]{101}, "7ae86d", -1.50910941E9d));
                strConcat = strValueOf11.length() != 0 ? NPStringFog.decode(new byte[]{106}, "863c9f", -2.06481007E8d).concat(strValueOf11) : new String(NPStringFog.decode(new byte[]{55}, "e67a8e", true, false));
            } else {
                strConcat = strDecode5;
            }
            String strValueOf12 = String.valueOf(strConcat);
            String strConcat2 = strValueOf12.length() != 0 ? strValueOf10.concat(strValueOf12) : new String(strValueOf10);
            String strValueOf13 = String.valueOf(constraintWidget);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 6 + String.valueOf(strConcat2).length() + String.valueOf(strValueOf13).length());
            sb.append(str);
            sb.append(strConcat2);
            sb.append(NPStringFog.decode(new byte[]{18, 24, 28, 79, 18, 23}, "251b27", false, false));
            sb.append(strValueOf13);
            Log.v(NPStringFog.decode(new byte[]{117, 91, 69, 12, 11, 10, 116, 85, 72, 10, 17, 16}, "841edd", 5493), sb.toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void setupConstraintWidget(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet) {
            SparseArray<ConstraintWidget> sparseArray = new SparseArray<>();
            Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(-2, -2);
            sparseArray.clear();
            sparseArray.put(0, constraintWidgetContainer);
            sparseArray.put(this.this$0.getId(), constraintWidgetContainer);
            if (constraintSet != null && constraintSet.mRotate != 0) {
                MotionLayout motionLayout = this.this$0;
                motionLayout.resolveSystem(this.mLayoutEnd, motionLayout.getOptimizationLevel(), View.MeasureSpec.makeMeasureSpec(this.this$0.getHeight(), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(this.this$0.getWidth(), BasicMeasure.EXACTLY));
            }
            for (ConstraintWidget constraintWidget : constraintWidgetContainer.getChildren()) {
                sparseArray.put(((View) constraintWidget.getCompanionWidget()).getId(), constraintWidget);
            }
            for (ConstraintWidget constraintWidget2 : constraintWidgetContainer.getChildren()) {
                View view = (View) constraintWidget2.getCompanionWidget();
                constraintSet.applyToLayoutParams(view.getId(), layoutParams);
                constraintWidget2.setWidth(constraintSet.getWidth(view.getId()));
                constraintWidget2.setHeight(constraintSet.getHeight(view.getId()));
                if (view instanceof ConstraintHelper) {
                    constraintSet.applyToHelper((ConstraintHelper) view, constraintWidget2, layoutParams, sparseArray);
                    if (view instanceof Barrier) {
                        ((Barrier) view).validateParams();
                    }
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    layoutParams.resolveLayoutDirection(this.this$0.getLayoutDirection());
                } else {
                    layoutParams.resolveLayoutDirection(0);
                }
                this.this$0.applyConstraintsFromLayoutParams(false, view, constraintWidget2, layoutParams, sparseArray);
                if (constraintSet.getVisibilityMode(view.getId()) == 1) {
                    constraintWidget2.setVisibility(view.getVisibility());
                } else {
                    constraintWidget2.setVisibility(constraintSet.getVisibility(view.getId()));
                }
            }
            for (ConstraintWidget constraintWidget3 : constraintWidgetContainer.getChildren()) {
                if (constraintWidget3 instanceof VirtualLayout) {
                    ConstraintHelper constraintHelper = (ConstraintHelper) constraintWidget3.getCompanionWidget();
                    Helper helper = (Helper) constraintWidget3;
                    constraintHelper.updatePreLayout(constraintWidgetContainer, helper, sparseArray);
                    ((VirtualLayout) helper).captureWidgets();
                }
            }
        }

        public void build() {
            int childCount = this.this$0.getChildCount();
            this.this$0.mFrameArrayList.clear();
            SparseArray sparseArray = new SparseArray();
            int[] iArr = new int[childCount];
            for (int i = 0; i < childCount; i++) {
                View childAt = this.this$0.getChildAt(i);
                MotionController motionController = new MotionController(childAt);
                int id = childAt.getId();
                iArr[i] = id;
                sparseArray.put(id, motionController);
                this.this$0.mFrameArrayList.put(childAt, motionController);
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt2 = this.this$0.getChildAt(i2);
                MotionController motionController2 = this.this$0.mFrameArrayList.get(childAt2);
                if (motionController2 != null) {
                    if (this.mStart != null) {
                        ConstraintWidget widget = getWidget(this.mLayoutStart, childAt2);
                        if (widget != null) {
                            motionController2.setStartState(this.this$0.toRect(widget), this.mStart, this.this$0.getWidth(), this.this$0.getHeight());
                        } else if (this.this$0.mDebugPath != 0) {
                            String location = Debug.getLocation();
                            String name = Debug.getName(childAt2);
                            String name2 = childAt2.getClass().getName();
                            StringBuilder sb = new StringBuilder(String.valueOf(location).length() + 18 + String.valueOf(name).length() + String.valueOf(name2).length());
                            sb.append(location);
                            sb.append(NPStringFog.decode(new byte[]{15, 90, 24, 66, 8, 0, 6, 80, 76, 21, 7, 11, 19, 21, 24}, "a585ad", 2.0363695E9f));
                            sb.append(name);
                            sb.append(NPStringFog.decode(new byte[]{22, 16}, "6821cb", false, false));
                            sb.append(name2);
                            sb.append(NPStringFog.decode(new byte[]{26}, "3ddb7c", -500330792L));
                            Log.e(NPStringFog.decode(new byte[]{123, 9, 18, 8, 14, 86, 122, 7, 31, 14, 20, 76}, "6ffaa8", -1.2824602E9f), sb.toString());
                        }
                    } else if (this.this$0.mInRotation) {
                        motionController2.setStartState(this.this$0.mPreRotate.get(childAt2), childAt2, this.this$0.mRotatMode, this.this$0.mPreRotateWidth, this.this$0.mPreRotateHeight);
                    }
                    if (this.mEnd != null) {
                        ConstraintWidget widget2 = getWidget(this.mLayoutEnd, childAt2);
                        if (widget2 != null) {
                            motionController2.setEndState(this.this$0.toRect(widget2), this.mEnd, this.this$0.getWidth(), this.this$0.getHeight());
                        } else if (this.this$0.mDebugPath != 0) {
                            String location2 = Debug.getLocation();
                            String name3 = Debug.getName(childAt2);
                            String name4 = childAt2.getClass().getName();
                            StringBuilder sb2 = new StringBuilder(String.valueOf(location2).length() + 18 + String.valueOf(name3).length() + String.valueOf(name4).length());
                            sb2.append(location2);
                            sb2.append(NPStringFog.decode(new byte[]{91, 13, 20, 20, 11, 86, 82, 7, 64, 67, 4, 93, 71, 66, 20}, "5b4cb2", -812114458L));
                            sb2.append(name3);
                            sb2.append(NPStringFog.decode(new byte[]{65, 30}, "a65c07", true, false));
                            sb2.append(name4);
                            sb2.append(NPStringFog.decode(new byte[]{25}, "00dbd5", true));
                            Log.e(NPStringFog.decode(new byte[]{121, 95, 71, 10, 9, 94, 120, 81, 74, 12, 19, 68}, "403cf0", 1.3192923E9f), sb2.toString());
                        }
                    }
                }
            }
            for (int i3 = 0; i3 < childCount; i3++) {
                MotionController motionController3 = (MotionController) sparseArray.get(iArr[i3]);
                int animateRelativeTo = motionController3.getAnimateRelativeTo();
                if (animateRelativeTo != -1) {
                    motionController3.setupRelative((MotionController) sparseArray.get(animateRelativeTo));
                }
            }
        }

        void copy(ConstraintWidgetContainer constraintWidgetContainer, ConstraintWidgetContainer constraintWidgetContainer2) {
            ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
            HashMap<ConstraintWidget, ConstraintWidget> map = new HashMap<>();
            map.put(constraintWidgetContainer, constraintWidgetContainer2);
            constraintWidgetContainer2.getChildren().clear();
            constraintWidgetContainer2.copy(constraintWidgetContainer, map);
            for (ConstraintWidget constraintWidget : children) {
                ConstraintWidget barrier = constraintWidget instanceof androidx.constraintlayout.core.widgets.Barrier ? new androidx.constraintlayout.core.widgets.Barrier() : constraintWidget instanceof Guideline ? new Guideline() : constraintWidget instanceof Flow ? new Flow() : constraintWidget instanceof Placeholder ? new Placeholder() : constraintWidget instanceof Helper ? new HelperWidget() : new ConstraintWidget();
                constraintWidgetContainer2.add(barrier);
                map.put(constraintWidget, barrier);
            }
            for (ConstraintWidget constraintWidget2 : children) {
                map.get(constraintWidget2).copy(constraintWidget2, map);
            }
        }

        ConstraintWidget getWidget(ConstraintWidgetContainer constraintWidgetContainer, View view) {
            if (constraintWidgetContainer.getCompanionWidget() == view) {
                return constraintWidgetContainer;
            }
            ArrayList<ConstraintWidget> children = constraintWidgetContainer.getChildren();
            int size = children.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = children.get(i);
                if (constraintWidget.getCompanionWidget() == view) {
                    return constraintWidget;
                }
            }
            return null;
        }

        void initFrom(ConstraintWidgetContainer constraintWidgetContainer, ConstraintSet constraintSet, ConstraintSet constraintSet2) {
            this.mStart = constraintSet;
            this.mEnd = constraintSet2;
            this.mLayoutStart = new ConstraintWidgetContainer();
            this.mLayoutEnd = new ConstraintWidgetContainer();
            this.mLayoutStart.setMeasurer(this.this$0.mLayoutWidget.getMeasurer());
            this.mLayoutEnd.setMeasurer(this.this$0.mLayoutWidget.getMeasurer());
            this.mLayoutStart.removeAllChildren();
            this.mLayoutEnd.removeAllChildren();
            copy(this.this$0.mLayoutWidget, this.mLayoutStart);
            copy(this.this$0.mLayoutWidget, this.mLayoutEnd);
            if (this.this$0.mTransitionLastPosition > 0.5d) {
                if (constraintSet != null) {
                    setupConstraintWidget(this.mLayoutStart, constraintSet);
                }
                setupConstraintWidget(this.mLayoutEnd, constraintSet2);
            } else {
                setupConstraintWidget(this.mLayoutEnd, constraintSet2);
                if (constraintSet != null) {
                    setupConstraintWidget(this.mLayoutStart, constraintSet);
                }
            }
            this.mLayoutStart.setRtl(this.this$0.isRtl());
            this.mLayoutStart.updateHierarchy();
            this.mLayoutEnd.setRtl(this.this$0.isRtl());
            this.mLayoutEnd.updateHierarchy();
            ViewGroup.LayoutParams layoutParams = this.this$0.getLayoutParams();
            if (layoutParams != null) {
                if (layoutParams.width == -2) {
                    this.mLayoutStart.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                    this.mLayoutEnd.setHorizontalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                }
                if (layoutParams.height == -2) {
                    this.mLayoutStart.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                    this.mLayoutEnd.setVerticalDimensionBehaviour(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                }
            }
        }

        public boolean isNotConfiguredWith(int i, int i2) {
            return (i == this.mStartId && i2 == this.mEndId) ? false : true;
        }

        public void measure(int i, int i2) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.this$0.mWidthMeasureMode = mode;
            this.this$0.mHeightMeasureMode = mode2;
            this.this$0.getOptimizationLevel();
            computeStartEndSize(i, i2);
            if (((this.this$0.getParent() instanceof MotionLayout) && mode == 1073741824 && mode2 == 1073741824) ? false : true) {
                computeStartEndSize(i, i2);
                this.this$0.mStartWrapWidth = this.mLayoutStart.getWidth();
                this.this$0.mStartWrapHeight = this.mLayoutStart.getHeight();
                this.this$0.mEndWrapWidth = this.mLayoutEnd.getWidth();
                this.this$0.mEndWrapHeight = this.mLayoutEnd.getHeight();
                MotionLayout motionLayout = this.this$0;
                motionLayout.mMeasureDuringTransition = (motionLayout.mStartWrapWidth == this.this$0.mEndWrapWidth && this.this$0.mStartWrapHeight == this.this$0.mEndWrapHeight) ? false : true;
            }
            int i3 = this.this$0.mStartWrapWidth;
            int i4 = this.this$0.mStartWrapHeight;
            if (this.this$0.mWidthMeasureMode == Integer.MIN_VALUE || this.this$0.mWidthMeasureMode == 0) {
                i3 = (int) (this.this$0.mStartWrapWidth + (this.this$0.mPostInterpolationPosition * (this.this$0.mEndWrapWidth - this.this$0.mStartWrapWidth)));
            }
            if (this.this$0.mHeightMeasureMode == Integer.MIN_VALUE || this.this$0.mHeightMeasureMode == 0) {
                i4 = (int) (this.this$0.mStartWrapHeight + (this.this$0.mPostInterpolationPosition * (this.this$0.mEndWrapHeight - this.this$0.mStartWrapHeight)));
            }
            this.this$0.resolveMeasuredDimension(i, i2, i3, i4, this.mLayoutStart.isWidthMeasuredTooSmall() || this.mLayoutEnd.isWidthMeasuredTooSmall(), this.mLayoutStart.isHeightMeasuredTooSmall() || this.mLayoutEnd.isHeightMeasuredTooSmall());
        }

        public void reEvaluateState() {
            measure(this.this$0.mLastWidthMeasureSpec, this.this$0.mLastHeightMeasureSpec);
            this.this$0.setupMotionViews();
        }

        public void setMeasuredId(int i, int i2) {
            this.mStartId = i;
            this.mEndId = i2;
        }
    }

    protected interface MotionTracker {
        void addMovement(MotionEvent motionEvent);

        void clear();

        void computeCurrentVelocity(int i);

        void computeCurrentVelocity(int i, float f);

        float getXVelocity();

        float getXVelocity(int i);

        float getYVelocity();

        float getYVelocity(int i);

        void recycle();
    }

    private static class MyTracker implements MotionTracker {

        /* JADX INFO: renamed from: me, reason: collision with root package name */
        private static MyTracker f0me = new MyTracker();
        VelocityTracker tracker;

        private MyTracker() {
        }

        public static MyTracker obtain() {
            f0me.tracker = VelocityTracker.obtain();
            return f0me;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void addMovement(MotionEvent motionEvent) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void clear() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int i) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(i);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void computeCurrentVelocity(int i, float f) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.computeCurrentVelocity(i, f);
            }
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getXVelocity(int i) {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                return velocityTracker.getXVelocity(i);
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                return velocityTracker.getYVelocity();
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public float getYVelocity(int i) {
            if (this.tracker != null) {
                return getYVelocity(i);
            }
            return 0.0f;
        }

        @Override // androidx.constraintlayout.motion.widget.MotionLayout.MotionTracker
        public void recycle() {
            VelocityTracker velocityTracker = this.tracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.tracker = null;
            }
        }
    }

    class StateCache {
        final MotionLayout this$0;
        float mProgress = Float.NaN;
        float mVelocity = Float.NaN;
        int startState = -1;
        int endState = -1;
        final String KeyProgress = NPStringFog.decode(new byte[]{84, 94, 64, 13, 94, 91, 23, 65, 70, 11, 86, 71, 92, 66, 71}, "914d15", false, true);
        final String KeyVelocity = NPStringFog.decode(new byte[]{85, 10, 65, 80, 89, 86, 22, 19, 80, 85, 89, 91, 81, 17, 76}, "8e5968", false);
        final String KeyStartState = NPStringFog.decode(new byte[]{90, 9, 69, 81, 13, 94, 25, 53, 69, 89, 16, 68, 100, 18, 80, 76, 7}, "7f18b0", true);
        final String KeyEndState = NPStringFog.decode(new byte[]{88, 10, 71, 95, 87, 8, 27, 32, 93, 82, 107, 18, 84, 17, 86}, "5e368f", 1003595299L);

        StateCache(MotionLayout motionLayout) {
            this.this$0 = motionLayout;
        }

        void apply() {
            int i = this.startState;
            if (i != -1 || this.endState != -1) {
                if (i == -1) {
                    this.this$0.transitionToState(this.endState);
                } else {
                    int i2 = this.endState;
                    if (i2 == -1) {
                        this.this$0.setState(i, -1, -1);
                    } else {
                        this.this$0.setTransition(i, i2);
                    }
                }
                this.this$0.setState(TransitionState.SETUP);
            }
            if (Float.isNaN(this.mVelocity)) {
                if (Float.isNaN(this.mProgress)) {
                    return;
                }
                this.this$0.setProgress(this.mProgress);
            } else {
                this.this$0.setProgress(this.mProgress, this.mVelocity);
                this.mProgress = Float.NaN;
                this.mVelocity = Float.NaN;
                this.startState = -1;
                this.endState = -1;
            }
        }

        public Bundle getTransitionState() {
            Bundle bundle = new Bundle();
            bundle.putFloat(NPStringFog.decode(new byte[]{15, 87, 67, 10, 87, 90, 76, 72, 69, 12, 95, 70, 7, 75, 68}, "b87c84", 2.1305225E9f), this.mProgress);
            bundle.putFloat(NPStringFog.decode(new byte[]{92, 94, 23, 10, 88, 13, 31, 71, 6, 15, 88, 0, 88, 69, 26}, "11cc7c", -7.2395746E7d), this.mVelocity);
            bundle.putInt(NPStringFog.decode(new byte[]{14, 9, 66, 10, 91, 10, 77, 53, 66, 2, 70, 16, 48, 18, 87, 23, 81}, "cf6c4d", -585042094L), this.startState);
            bundle.putInt(NPStringFog.decode(new byte[]{94, 12, 16, 8, 94, 12, 29, 38, 10, 5, 98, 22, 82, 23, 1}, "3cda1b", true), this.endState);
            return bundle;
        }

        public void recordState() {
            this.endState = this.this$0.mEndState;
            this.startState = this.this$0.mBeginState;
            this.mVelocity = this.this$0.getVelocity();
            this.mProgress = this.this$0.getProgress();
        }

        public void setEndState(int i) {
            this.endState = i;
        }

        public void setProgress(float f) {
            this.mProgress = f;
        }

        public void setStartState(int i) {
            this.startState = i;
        }

        public void setTransitionState(Bundle bundle) {
            this.mProgress = bundle.getFloat(NPStringFog.decode(new byte[]{94, 94, 71, 91, 87, 8, 29, 65, 65, 93, 95, 20, 86, 66, 64}, "31328f", 2296));
            this.mVelocity = bundle.getFloat(NPStringFog.decode(new byte[]{95, 92, 16, 12, 86, 94, 28, 69, 1, 9, 86, 83, 91, 71, 29}, "23de90", -5163));
            this.startState = bundle.getInt(NPStringFog.decode(new byte[]{95, 86, 69, 89, 93, 87, 28, 106, 69, 81, 64, 77, 97, 77, 80, 68, 87}, "291029", -1973356975L));
            this.endState = bundle.getInt(NPStringFog.decode(new byte[]{85, 87, 70, 90, 90, 10, 22, 125, 92, 87, 102, 16, 89, 76, 87}, "88235d", -12930));
        }

        public void setVelocity(float f) {
            this.mVelocity = f;
        }
    }

    public interface TransitionListener {
        void onTransitionChange(MotionLayout motionLayout, int i, int i2, float f);

        void onTransitionCompleted(MotionLayout motionLayout, int i);

        void onTransitionStarted(MotionLayout motionLayout, int i, int i2);

        void onTransitionTrigger(MotionLayout motionLayout, int i, boolean z, float f);
    }

    enum TransitionState {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    public MotionLayout(Context context) {
        super(context);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator(this);
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model(this);
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(null);
    }

    public MotionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator(this);
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model(this);
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(attributeSet);
    }

    public MotionLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mProgressInterpolator = null;
        this.mLastVelocity = 0.0f;
        this.mBeginState = -1;
        this.mCurrentState = -1;
        this.mEndState = -1;
        this.mLastWidthMeasureSpec = 0;
        this.mLastHeightMeasureSpec = 0;
        this.mInteractionEnabled = true;
        this.mFrameArrayList = new HashMap<>();
        this.mAnimationStartTime = 0L;
        this.mTransitionDuration = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionGoalPosition = 0.0f;
        this.mInTransition = false;
        this.mIndirectTransition = false;
        this.mDebugPath = 0;
        this.mTemporalInterpolator = false;
        this.mStopLogic = new StopLogic();
        this.mDecelerateLogic = new DecelerateInterpolator(this);
        this.firstDown = true;
        this.mUndergoingMotion = false;
        this.mKeepAnimating = false;
        this.mOnShowHelpers = null;
        this.mOnHideHelpers = null;
        this.mDecoratorsHelpers = null;
        this.mTransitionListeners = null;
        this.mFrames = 0;
        this.mLastDrawTime = -1L;
        this.mLastFps = 0.0f;
        this.mListenerState = 0;
        this.mListenerPosition = 0.0f;
        this.mIsAnimating = false;
        this.mMeasureDuringTransition = false;
        this.mKeyCache = new KeyCache();
        this.mInLayout = false;
        this.mOnComplete = null;
        this.mScheduledTransitionTo = null;
        this.mScheduledTransitions = 0;
        this.mInRotation = false;
        this.mRotatMode = 0;
        this.mPreRotate = new HashMap<>();
        this.mTempRect = new Rect();
        this.mDelayedApply = false;
        this.mTransitionState = TransitionState.UNDEFINED;
        this.mModel = new Model(this);
        this.mNeedsFireTransitionCompleted = false;
        this.mBoundsCheck = new RectF();
        this.mRegionView = null;
        this.mInverseMatrix = null;
        this.mTransitionCompleted = new ArrayList<>();
        init(attributeSet);
    }

    private boolean callTransformedTouchEvent(View view, MotionEvent motionEvent, float f, float f2) {
        Matrix matrix = view.getMatrix();
        if (matrix.isIdentity()) {
            motionEvent.offsetLocation(f, f2);
            boolean zOnTouchEvent = view.onTouchEvent(motionEvent);
            motionEvent.offsetLocation(-f, -f2);
            return zOnTouchEvent;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(f, f2);
        if (this.mInverseMatrix == null) {
            this.mInverseMatrix = new Matrix();
        }
        matrix.invert(this.mInverseMatrix);
        motionEventObtain.transform(this.mInverseMatrix);
        boolean zOnTouchEvent2 = view.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
        return zOnTouchEvent2;
    }

    private void checkStructure() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, NPStringFog.decode(new byte[]{34, 43, 119, 114, 114, 2, 65, 14, 93, 69, 80, 87, 15, 67, 65, 82, 92, 86, 4, 67, 92, 94, 77, 24, 18, 6, 70, 16, 25, 75, 4, 23, 18, 19, 88, 72, 17, 89, 94, 80, 64, 87, 20, 23, 118, 84, 74, 91, 19, 10, 66, 69, 80, 87, 15, 94, 16, 113, 65, 85, 13, 76, 84, 88, 85, 93, 67}, "ac2198", 1.042285406E9d));
            return;
        }
        int startId = motionScene.getStartId();
        MotionScene motionScene2 = this.mScene;
        checkStructure(startId, motionScene2.getConstraintSet(motionScene2.getStartId()));
        SparseIntArray sparseIntArray = new SparseIntArray();
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        for (MotionScene.Transition transition : this.mScene.getDefinedTransitions()) {
            if (transition == this.mScene.mCurrentTransition) {
                Log.v(TAG, NPStringFog.decode(new byte[]{114, 113, 118, 117, 45, 91, 17, 122, 102, 100, 52, 36, 127, 109}, "1936fa", -1.1513107E9f));
            }
            checkStructure(transition);
            int startConstraintSetId = transition.getStartConstraintSetId();
            int endConstraintSetId = transition.getEndConstraintSetId();
            String name = Debug.getName(getContext(), startConstraintSetId);
            String name2 = Debug.getName(getContext(), endConstraintSetId);
            if (sparseIntArray.get(startConstraintSetId) == endConstraintSetId) {
                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 53 + String.valueOf(name2).length());
                sb.append(NPStringFog.decode(new byte[]{37, 45, 113, 114, 40, 95, 70, 17, 67, 94, 67, 17, 20, 4, 90, 66, 10, 17, 15, 10, 90, 66, 67, 18, 15, 17, 92, 17, 23, 13, 3, 69, 71, 80, 14, 0, 70, 22, 64, 80, 17, 17, 70, 4, 90, 85, 67, 0, 8, 1, 20}, "fe41ce", -9.72217375E8d));
                sb.append(name);
                sb.append(NPStringFog.decode(new byte[]{76, 91}, "aeea1b", true));
                sb.append(name2);
                Log.e(TAG, sb.toString());
            }
            if (sparseIntArray2.get(endConstraintSetId) == startConstraintSetId) {
                StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 43 + String.valueOf(name2).length());
                sb2.append(NPStringFog.decode(new byte[]{33, 44, 115, 34, 120, 15, 66, 29, 89, 20, 19, 86, 3, 10, 17, 21, 19, 93, 3, 18, 83, 65, 65, 80, 20, 1, 68, 18, 86, 21, 22, 22, 87, 15, 64, 92, 22, 13, 89, 15, 64}, "bd6a35", -4.47709436E8d));
                sb2.append(name);
                sb2.append(NPStringFog.decode(new byte[]{30, 6}, "389962", 28950));
                sb2.append(name2);
                Log.e(TAG, sb2.toString());
            }
            sparseIntArray.put(startConstraintSetId, endConstraintSetId);
            sparseIntArray2.put(endConstraintSetId, startConstraintSetId);
            if (this.mScene.getConstraintSet(startConstraintSetId) == null) {
                String strValueOf = String.valueOf(name);
                Log.e(TAG, strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{67, 91, 90, 23, 21, 19, 0, 93, 21, 84, 9, 8, 16, 65, 71, 86, 15, 8, 23, 102, 80, 67, 53, 18, 2, 71, 65, 23}, "c557ff", -8.474425E8f).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{21, 90, 92, 24, 64, 65, 86, 92, 19, 91, 92, 90, 70, 64, 65, 89, 90, 90, 65, 103, 86, 76, 96, 64, 84, 70, 71, 24}, "543834", 1.3714806E9f)));
            }
            if (this.mScene.getConstraintSet(endConstraintSetId) == null) {
                String strValueOf2 = String.valueOf(name);
                Log.e(TAG, strValueOf2.length() != 0 ? NPStringFog.decode(new byte[]{25, 90, 94, 67, 64, 67, 90, 92, 17, 0, 92, 88, 74, 64, 67, 2, 90, 88, 77, 103, 84, 23, 118, 88, 93, 20}, "941c36", -22833).concat(strValueOf2) : new String(NPStringFog.decode(new byte[]{23, 94, 13, 67, 17, 22, 84, 88, 66, 0, 13, 13, 68, 68, 16, 2, 11, 13, 67, 99, 7, 23, 39, 13, 83, 16}, "70bcbc", false)));
            }
        }
    }

    private void checkStructure(int i, ConstraintSet constraintSet) {
        String name = Debug.getName(getContext(), i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            if (id == -1) {
                String name2 = childAt.getClass().getName();
                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 45 + String.valueOf(name2).length());
                sb.append(NPStringFog.decode(new byte[]{34, 42, 113, 123, 124, 14, 65}, "ab4874", 1870484076L));
                sb.append(name);
                sb.append(NPStringFog.decode(new byte[]{68, 112, 116, 127, 66, 111, 45, 116, 111, 96, 66, 106, 44, 126, 109, 127, 38, 25, 44, 112, 110, 118, 66, 112, 32, 22, 75, 19}, "d183b9", -9.52361432E8d));
                sb.append(name2);
                sb.append(NPStringFog.decode(new byte[]{19, 82, 10, 93, 18, 67, 93, 89, 17, 25}, "36e8ac", true, false));
                Log.w(TAG, sb.toString());
            }
            if (constraintSet.getConstraint(id) == null) {
                String name3 = Debug.getName(childAt);
                StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 27 + String.valueOf(name3).length());
                sb2.append(NPStringFog.decode(new byte[]{33, 125, 119, 119, 123, 89, 66}, "b5240c", true));
                sb2.append(name);
                sb2.append(NPStringFog.decode(new byte[]{68, 121, 118, 21, 113, 127, 42, 100, 109, 103, 115, 121, 42, 99, 106, 21, 84, 95, 22, 23}, "d79520", 1.5293485E9f));
                sb2.append(name3);
                Log.w(TAG, sb2.toString());
            }
        }
        int[] knownIds = constraintSet.getKnownIds();
        for (int i3 = 0; i3 < knownIds.length; i3++) {
            int i4 = knownIds[i3];
            String name4 = Debug.getName(getContext(), i4);
            if (findViewById(knownIds[i3]) == null) {
                StringBuilder sb3 = new StringBuilder(String.valueOf(name).length() + 27 + String.valueOf(name4).length());
                sb3.append(NPStringFog.decode(new byte[]{34, 124, 33, 38, 41, 13, 65}, "a4deb7", -29789));
                sb3.append(name);
                sb3.append(NPStringFog.decode(new byte[]{70, 124, 42, 69, 48, 15, 3, 69, 69, 8, 7, 18, 5, 90, 0, 22, 70, 15, 2, 18}, "f2eeff", 1.431866215E9d));
                sb3.append(name4);
                Log.w(TAG, sb3.toString());
            }
            if (constraintSet.getHeight(i4) == -1) {
                StringBuilder sb4 = new StringBuilder(String.valueOf(name).length() + 26 + String.valueOf(name4).length());
                sb4.append(NPStringFog.decode(new byte[]{32, 126, 115, 33, 122, 89, 67}, "c66b1c", -29319));
                sb4.append(name);
                sb4.append(NPStringFog.decode(new byte[]{31}, "764d05", -18127));
                sb4.append(name4);
                sb4.append(NPStringFog.decode(new byte[]{28, 67, 94, 89, 16, 122, 116, 58, 127, 99, 100, 105, 125, 38, 121, 113, 120, 98}, "5c0606", 1.146304914E9d));
                Log.w(TAG, sb4.toString());
            }
            if (constraintSet.getWidth(i4) == -1) {
                StringBuilder sb5 = new StringBuilder(String.valueOf(name).length() + 26 + String.valueOf(name4).length());
                sb5.append(NPStringFog.decode(new byte[]{123, 125, 33, 116, 121, 89, 24}, "85d72c", false));
                sb5.append(name);
                sb5.append(NPStringFog.decode(new byte[]{31}, "72764a", true));
                sb5.append(name4);
                sb5.append(NPStringFog.decode(new byte[]{30, 23, 92, 89, 19, 45, 118, 110, 125, 99, 103, 62, 127, 114, 123, 113, 123, 53}, "77263a", 2.97983197E8d));
                Log.w(TAG, sb5.toString());
            }
        }
    }

    private void checkStructure(MotionScene.Transition transition) {
        if (transition.getStartConstraintSetId() == transition.getEndConstraintSetId()) {
            Log.e(TAG, NPStringFog.decode(new byte[]{32, 127, 125, 123, 40, 88, 67, 68, 76, 89, 17, 22, 67, 86, 86, 92, 67, 7, 13, 83, 24, 91, 12, 12, 16, 67, 74, 89, 10, 12, 23, 23, 75, 93, 23, 66, 16, 95, 87, 77, 15, 6, 67, 89, 87, 76, 67, 0, 6, 23, 76, 80, 6, 66, 16, 86, 85, 93, 66}, "c788cb", false, true));
        }
    }

    private void computeCurrentPositions() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.setStartCurrentState(childAt);
            }
        }
    }

    private void debugPos() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            String location = Debug.getLocation();
            String name = Debug.getName(this);
            String name2 = Debug.getName(getContext(), this.mCurrentState);
            String name3 = Debug.getName(childAt);
            int left = childAt.getLeft();
            int top = childAt.getTop();
            StringBuilder sb = new StringBuilder(String.valueOf(location).length() + 27 + String.valueOf(name).length() + String.valueOf(name2).length() + String.valueOf(name3).length());
            sb.append(" ");
            sb.append(location);
            sb.append(" ");
            sb.append(name);
            sb.append(" ");
            sb.append(name2);
            sb.append(" ");
            sb.append(name3);
            sb.append(left);
            sb.append(" ");
            sb.append(top);
            Log.v(TAG, sb.toString());
        }
    }

    private void evaluateLayout() {
        boolean z;
        float fSignum = Math.signum(this.mTransitionGoalPosition - this.mTransitionLastPosition);
        long nanoTime = getNanoTime();
        Interpolator interpolator = this.mInterpolator;
        float interpolation = (!(interpolator instanceof StopLogic) ? (((nanoTime - this.mTransitionLastTime) * fSignum) * 1.0E-9f) / this.mTransitionDuration : 0.0f) + this.mTransitionLastPosition;
        if (this.mTransitionInstantly) {
            interpolation = this.mTransitionGoalPosition;
        }
        if ((fSignum <= 0.0f || interpolation < this.mTransitionGoalPosition) && (fSignum > 0.0f || interpolation > this.mTransitionGoalPosition)) {
            z = false;
        } else {
            interpolation = this.mTransitionGoalPosition;
            z = true;
        }
        if (interpolator != null && !z) {
            interpolation = this.mTemporalInterpolator ? interpolator.getInterpolation((nanoTime - this.mAnimationStartTime) * 1.0E-9f) : interpolator.getInterpolation(interpolation);
        }
        if ((fSignum > 0.0f && interpolation >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && interpolation <= this.mTransitionGoalPosition)) {
            interpolation = this.mTransitionGoalPosition;
        }
        this.mPostInterpolationPosition = interpolation;
        int childCount = getChildCount();
        long nanoTime2 = getNanoTime();
        Interpolator interpolator2 = this.mProgressInterpolator;
        float interpolation2 = interpolator2 == null ? interpolation : interpolator2.getInterpolation(interpolation);
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            MotionController motionController = this.mFrameArrayList.get(childAt);
            if (motionController != null) {
                motionController.interpolate(childAt, interpolation2, nanoTime2, this.mKeyCache);
            }
        }
        if (this.mMeasureDuringTransition) {
            requestLayout();
        }
    }

    private void fireTransitionChange() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) || this.mListenerPosition == this.mTransitionPosition) {
            return;
        }
        if (this.mListenerState != -1) {
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.onTransitionStarted(this, this.mBeginState, this.mEndState);
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().onTransitionStarted(this, this.mBeginState, this.mEndState);
                }
            }
            this.mIsAnimating = true;
        }
        this.mListenerState = -1;
        float f = this.mTransitionPosition;
        this.mListenerPosition = f;
        TransitionListener transitionListener2 = this.mTransitionListener;
        if (transitionListener2 != null) {
            transitionListener2.onTransitionChange(this, this.mBeginState, this.mEndState, f);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList3 = this.mTransitionListeners;
        if (copyOnWriteArrayList3 != null) {
            Iterator<TransitionListener> it2 = copyOnWriteArrayList3.iterator();
            while (it2.hasNext()) {
                it2.next().onTransitionChange(this, this.mBeginState, this.mEndState, this.mTransitionPosition);
            }
        }
        this.mIsAnimating = true;
    }

    private void fireTransitionStarted(MotionLayout motionLayout, int i, int i2) {
        TransitionListener transitionListener = this.mTransitionListener;
        if (transitionListener != null) {
            transitionListener.onTransitionStarted(this, i, i2);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().onTransitionStarted(motionLayout, i, i2);
            }
        }
    }

    private boolean handlesTouchEvent(float f, float f2, View view, MotionEvent motionEvent) {
        boolean z;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                if (handlesTouchEvent((r4.getLeft() + f) - view.getScrollX(), (r4.getTop() + f2) - view.getScrollY(), viewGroup.getChildAt(childCount), motionEvent)) {
                    z = true;
                    break;
                }
            }
            z = false;
        } else {
            z = false;
        }
        if (z) {
            return z;
        }
        this.mBoundsCheck.set(f, f2, (view.getRight() + f) - view.getLeft(), (view.getBottom() + f2) - view.getTop());
        if ((motionEvent.getAction() != 0 || this.mBoundsCheck.contains(motionEvent.getX(), motionEvent.getY())) && callTransformedTouchEvent(view, motionEvent, -f, -f2)) {
            return true;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void init(android.util.AttributeSet r11) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.MotionLayout.init(android.util.AttributeSet):void");
    }

    private void processTransitionCompleted() {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if (this.mTransitionListener == null && ((copyOnWriteArrayList = this.mTransitionListeners) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        this.mIsAnimating = false;
        for (Integer num : this.mTransitionCompleted) {
            TransitionListener transitionListener = this.mTransitionListener;
            if (transitionListener != null) {
                transitionListener.onTransitionCompleted(this, num.intValue());
            }
            CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList2 = this.mTransitionListeners;
            if (copyOnWriteArrayList2 != null) {
                Iterator<TransitionListener> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().onTransitionCompleted(this, num.intValue());
                }
            }
        }
        this.mTransitionCompleted.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setupMotionViews() {
        boolean z;
        float f;
        float fMax;
        int i;
        int childCount = getChildCount();
        this.mModel.build();
        this.mInTransition = true;
        SparseArray sparseArray = new SparseArray();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            sparseArray.put(childAt.getId(), this.mFrameArrayList.get(childAt));
        }
        int width = getWidth();
        int height = getHeight();
        int iGatPathMotionArc = this.mScene.gatPathMotionArc();
        if (iGatPathMotionArc != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                MotionController motionController = this.mFrameArrayList.get(getChildAt(i3));
                if (motionController != null) {
                    motionController.setPathMotionArc(iGatPathMotionArc);
                }
            }
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        int[] iArr = new int[this.mFrameArrayList.size()];
        int i4 = 0;
        int i5 = 0;
        while (i5 < childCount) {
            MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i5));
            if (motionController2.getAnimateRelativeTo() != -1) {
                sparseBooleanArray.put(motionController2.getAnimateRelativeTo(), true);
                iArr[i4] = motionController2.getAnimateRelativeTo();
                i = i4 + 1;
            } else {
                i = i4;
            }
            i5++;
            i4 = i;
        }
        if (this.mDecoratorsHelpers != null) {
            for (int i6 = 0; i6 < i4; i6++) {
                MotionController motionController3 = this.mFrameArrayList.get(findViewById(iArr[i6]));
                if (motionController3 != null) {
                    this.mScene.getKeyFrames(motionController3);
                }
            }
            Iterator<MotionHelper> it = this.mDecoratorsHelpers.iterator();
            while (it.hasNext()) {
                it.next().onPreSetup(this, this.mFrameArrayList);
            }
            for (int i7 = 0; i7 < i4; i7++) {
                MotionController motionController4 = this.mFrameArrayList.get(findViewById(iArr[i7]));
                if (motionController4 != null) {
                    motionController4.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        } else {
            for (int i8 = 0; i8 < i4; i8++) {
                MotionController motionController5 = this.mFrameArrayList.get(findViewById(iArr[i8]));
                if (motionController5 != null) {
                    this.mScene.getKeyFrames(motionController5);
                    motionController5.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        }
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt2 = getChildAt(i9);
            MotionController motionController6 = this.mFrameArrayList.get(childAt2);
            if (!sparseBooleanArray.get(childAt2.getId()) && motionController6 != null) {
                this.mScene.getKeyFrames(motionController6);
                motionController6.setup(width, height, this.mTransitionDuration, getNanoTime());
            }
        }
        float staggered = this.mScene.getStaggered();
        if (staggered != 0.0f) {
            boolean z2 = ((double) staggered) < 0.0d;
            float fAbs = Math.abs(staggered);
            float fMax2 = -3.4028235E38f;
            int i10 = 0;
            float f2 = Float.MAX_VALUE;
            while (true) {
                if (i10 >= childCount) {
                    z = false;
                    break;
                }
                MotionController motionController7 = this.mFrameArrayList.get(getChildAt(i10));
                if (!Float.isNaN(motionController7.mMotionStagger)) {
                    z = true;
                    break;
                }
                float finalX = motionController7.getFinalX();
                float finalY = motionController7.getFinalY();
                float f3 = z2 ? finalY - finalX : finalY + finalX;
                float fMin = Math.min(f2, f3);
                fMax2 = Math.max(fMax2, f3);
                i10++;
                f2 = fMin;
            }
            if (!z) {
                for (int i11 = 0; i11 < childCount; i11++) {
                    MotionController motionController8 = this.mFrameArrayList.get(getChildAt(i11));
                    float finalX2 = motionController8.getFinalX();
                    float finalY2 = motionController8.getFinalY();
                    float f4 = z2 ? finalY2 - finalX2 : finalX2 + finalY2;
                    motionController8.mStaggerScale = 1.0f / (1.0f - fAbs);
                    motionController8.mStaggerOffset = fAbs - (((f4 - f2) * fAbs) / (fMax2 - f2));
                }
                return;
            }
            float f5 = Float.MAX_VALUE;
            float f6 = -3.4028235E38f;
            int i12 = 0;
            while (i12 < childCount) {
                MotionController motionController9 = this.mFrameArrayList.get(getChildAt(i12));
                if (Float.isNaN(motionController9.mMotionStagger)) {
                    f = f5;
                    fMax = f6;
                } else {
                    float fMin2 = Math.min(f5, motionController9.mMotionStagger);
                    fMax = Math.max(f6, motionController9.mMotionStagger);
                    f = fMin2;
                }
                i12++;
                f6 = fMax;
                f5 = f;
            }
            for (int i13 = 0; i13 < childCount; i13++) {
                MotionController motionController10 = this.mFrameArrayList.get(getChildAt(i13));
                if (!Float.isNaN(motionController10.mMotionStagger)) {
                    motionController10.mStaggerScale = 1.0f / (1.0f - fAbs);
                    if (z2) {
                        motionController10.mStaggerOffset = fAbs - (((f6 - motionController10.mMotionStagger) / (f6 - f5)) * fAbs);
                    } else {
                        motionController10.mStaggerOffset = fAbs - (((motionController10.mMotionStagger - f5) * fAbs) / (f6 - f5));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect toRect(ConstraintWidget constraintWidget) {
        this.mTempRect.top = constraintWidget.getY();
        this.mTempRect.left = constraintWidget.getX();
        this.mTempRect.right = constraintWidget.getWidth() + this.mTempRect.left;
        this.mTempRect.bottom = constraintWidget.getHeight() + this.mTempRect.top;
        return this.mTempRect;
    }

    private static boolean willJump(float f, float f2, float f3) {
        if (f > 0.0f) {
            float f4 = f / f3;
            return ((f * f4) - ((f4 * (f3 * f4)) / 2.0f)) + f2 > 1.0f;
        }
        float f5 = (-f) / f3;
        return (((f5 * (f3 * f5)) / 2.0f) + (f * f5)) + f2 < 0.0f;
    }

    public void addTransitionListener(TransitionListener transitionListener) {
        if (this.mTransitionListeners == null) {
            this.mTransitionListeners = new CopyOnWriteArrayList<>();
        }
        this.mTransitionListeners.add(transitionListener);
    }

    void animateTo(float f) {
        if (this.mScene == null) {
            return;
        }
        float f2 = this.mTransitionLastPosition;
        float f3 = this.mTransitionPosition;
        if (f2 != f3 && this.mTransitionInstantly) {
            this.mTransitionLastPosition = f3;
        }
        if (this.mTransitionLastPosition != f) {
            this.mTemporalInterpolator = false;
            float f4 = this.mTransitionLastPosition;
            this.mTransitionGoalPosition = f;
            this.mTransitionDuration = r0.getDuration() / 1000.0f;
            setProgress(this.mTransitionGoalPosition);
            this.mInterpolator = null;
            this.mProgressInterpolator = this.mScene.getInterpolator();
            this.mTransitionInstantly = false;
            this.mAnimationStartTime = getNanoTime();
            this.mInTransition = true;
            this.mTransitionPosition = f4;
            this.mTransitionLastPosition = f4;
            invalidate();
        }
    }

    public boolean applyViewTransition(int i, MotionController motionController) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            return motionScene.applyViewTransition(i, motionController);
        }
        return false;
    }

    public ConstraintSet cloneConstraintSet(int i) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        ConstraintSet constraintSet = motionScene.getConstraintSet(i);
        ConstraintSet constraintSet2 = new ConstraintSet();
        constraintSet2.clone(constraintSet);
        return constraintSet2;
    }

    void disableAutoTransition(boolean z) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        motionScene.disableAutoTransition(z);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
        if (arrayList != null) {
            Iterator<MotionHelper> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().onPreDraw(canvas);
            }
        }
        evaluate(false);
        MotionScene motionScene = this.mScene;
        if (motionScene != null && motionScene.mViewTransitionController != null) {
            this.mScene.mViewTransitionController.animate();
        }
        super.dispatchDraw(canvas);
        if (this.mScene == null) {
            return;
        }
        if ((this.mDebugPath & 1) == 1 && !isInEditMode()) {
            this.mFrames++;
            long nanoTime = getNanoTime();
            long j = this.mLastDrawTime;
            if (j != -1) {
                if (nanoTime - j > 200000000) {
                    this.mLastFps = ((int) ((this.mFrames / (r2 * 1.0E-9f)) * 100.0f)) / 100.0f;
                    this.mFrames = 0;
                    this.mLastDrawTime = nanoTime;
                }
            } else {
                this.mLastDrawTime = nanoTime;
            }
            Paint paint = new Paint();
            paint.setTextSize(42.0f);
            float progress = ((int) (getProgress() * 1000.0f)) / 10.0f;
            float f = this.mLastFps;
            String state = Debug.getState(this, this.mBeginState);
            StringBuilder sb = new StringBuilder(String.valueOf(state).length() + 24);
            sb.append(f);
            sb.append(NPStringFog.decode(new byte[]{19, 86, 66, 67, 67}, "3020c3", -2136975118L));
            sb.append(state);
            sb.append(NPStringFog.decode(new byte[]{17, 26, 93, 66}, "17cb52", 27069));
            String strValueOf = String.valueOf(sb.toString());
            String state2 = Debug.getState(this, this.mEndState);
            int i = this.mCurrentState;
            String strDecode = i == -1 ? NPStringFog.decode(new byte[]{16, 87, 5, 82, 82, 93, 11, 92, 5}, "e9a744", 157465855L) : Debug.getState(this, i);
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 36 + String.valueOf(state2).length() + String.valueOf(strDecode).length());
            sb2.append(strValueOf);
            sb2.append(state2);
            sb2.append(NPStringFog.decode(new byte[]{20, 26, 18, 23, 93, 6, 70, 87, 17, 22, 8, 65}, "42be2a", -31312));
            sb2.append(progress);
            sb2.append(NPStringFog.decode(new byte[]{17, 29, 70, 71, 17, 82, 69, 81, 91}, "14f4e3", -28336));
            sb2.append(strDecode);
            String string = sb2.toString();
            paint.setColor(ViewCompat.MEASURED_STATE_MASK);
            canvas.drawText(string, 11.0f, getHeight() - 29, paint);
            paint.setColor(-7864184);
            canvas.drawText(string, 10.0f, getHeight() - 30, paint);
        }
        if (this.mDebugPath > 1) {
            if (this.mDevModeDraw == null) {
                this.mDevModeDraw = new DevModeDraw(this);
            }
            this.mDevModeDraw.draw(canvas, this.mFrameArrayList, this.mScene.getDuration(), this.mDebugPath);
        }
        ArrayList<MotionHelper> arrayList2 = this.mDecoratorsHelpers;
        if (arrayList2 != null) {
            Iterator<MotionHelper> it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                it2.next().onPostDraw(canvas);
            }
        }
    }

    public void enableTransition(int i, boolean z) {
        MotionScene.Transition transition = getTransition(i);
        if (z) {
            transition.setEnabled(true);
            return;
        }
        if (transition == this.mScene.mCurrentTransition) {
            Iterator<MotionScene.Transition> it = this.mScene.getTransitionsWithState(this.mCurrentState).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                MotionScene.Transition next = it.next();
                if (next.isEnabled()) {
                    this.mScene.mCurrentTransition = next;
                    break;
                }
            }
        }
        transition.setEnabled(false);
    }

    public void enableViewTransition(int i, boolean z) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.enableViewTransition(i, z);
        }
    }

    void endTrigger(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            MotionController motionController = this.mFrameArrayList.get(getChildAt(i));
            if (motionController != null) {
                motionController.endTrigger(z);
            }
        }
    }

    void evaluate(boolean z) {
        char c;
        float f;
        int i;
        if (this.mTransitionLastTime == -1) {
            this.mTransitionLastTime = getNanoTime();
        }
        float f2 = this.mTransitionLastPosition;
        if (f2 > 0.0f && f2 < 1.0f) {
            this.mCurrentState = -1;
        }
        boolean z2 = false;
        if (this.mKeepAnimating || (this.mInTransition && (z || this.mTransitionGoalPosition != f2))) {
            float fSignum = Math.signum(this.mTransitionGoalPosition - f2);
            long nanoTime = getNanoTime();
            Interpolator interpolator = this.mInterpolator;
            float f3 = !(interpolator instanceof MotionInterpolator) ? (((nanoTime - this.mTransitionLastTime) * fSignum) * 1.0E-9f) / this.mTransitionDuration : 0.0f;
            float f4 = this.mTransitionLastPosition + f3;
            boolean z3 = false;
            if (this.mTransitionInstantly) {
                f4 = this.mTransitionGoalPosition;
            }
            if ((fSignum > 0.0f && f4 >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && f4 <= this.mTransitionGoalPosition)) {
                f4 = this.mTransitionGoalPosition;
                this.mInTransition = false;
                z3 = true;
            }
            this.mTransitionLastPosition = f4;
            this.mTransitionPosition = f4;
            this.mTransitionLastTime = nanoTime;
            if (interpolator == null || z3) {
                this.mLastVelocity = f3;
                c = 0;
                f = f4;
            } else if (this.mTemporalInterpolator) {
                float interpolation = interpolator.getInterpolation((nanoTime - this.mAnimationStartTime) * 1.0E-9f);
                Interpolator interpolator2 = this.mInterpolator;
                StopLogic stopLogic = this.mStopLogic;
                c = interpolator2 == stopLogic ? stopLogic.isStopped() ? (char) 2 : (char) 1 : (char) 0;
                this.mTransitionLastPosition = interpolation;
                this.mTransitionLastTime = nanoTime;
                Interpolator interpolator3 = this.mInterpolator;
                if (interpolator3 instanceof MotionInterpolator) {
                    float velocity = ((MotionInterpolator) interpolator3).getVelocity();
                    this.mLastVelocity = velocity;
                    if (Math.abs(velocity) * this.mTransitionDuration <= EPSILON && c == 2) {
                        this.mInTransition = false;
                    }
                    if (velocity > 0.0f && interpolation >= 1.0f) {
                        interpolation = 1.0f;
                        this.mTransitionLastPosition = 1.0f;
                        this.mInTransition = false;
                    }
                    f = interpolation;
                    if (velocity < 0.0f && f <= 0.0f) {
                        f = 0.0f;
                        this.mTransitionLastPosition = 0.0f;
                        this.mInTransition = false;
                    }
                } else {
                    f = interpolation;
                }
            } else {
                float interpolation2 = interpolator.getInterpolation(f4);
                Interpolator interpolator4 = this.mInterpolator;
                if (interpolator4 instanceof MotionInterpolator) {
                    this.mLastVelocity = ((MotionInterpolator) interpolator4).getVelocity();
                } else {
                    this.mLastVelocity = ((interpolator4.getInterpolation(f4 + f3) - interpolation2) * fSignum) / f3;
                }
                c = 0;
                f = interpolation2;
            }
            if (Math.abs(this.mLastVelocity) > EPSILON) {
                setState(TransitionState.MOVING);
            }
            if (c != 1) {
                if ((fSignum > 0.0f && f >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && f <= this.mTransitionGoalPosition)) {
                    f = this.mTransitionGoalPosition;
                    this.mInTransition = false;
                }
                if (f >= 1.0f || f <= 0.0f) {
                    this.mInTransition = false;
                    setState(TransitionState.FINISHED);
                }
            }
            int childCount = getChildCount();
            this.mKeepAnimating = false;
            long nanoTime2 = getNanoTime();
            this.mPostInterpolationPosition = f;
            Interpolator interpolator5 = this.mProgressInterpolator;
            float interpolation3 = interpolator5 == null ? f : interpolator5.getInterpolation(f);
            Interpolator interpolator6 = this.mProgressInterpolator;
            if (interpolator6 != null) {
                float interpolation4 = interpolator6.getInterpolation((fSignum / this.mTransitionDuration) + f);
                this.mLastVelocity = interpolation4;
                this.mLastVelocity = interpolation4 - this.mProgressInterpolator.getInterpolation(f);
            }
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                MotionController motionController = this.mFrameArrayList.get(childAt);
                if (motionController != null) {
                    this.mKeepAnimating = motionController.interpolate(childAt, interpolation3, nanoTime2, this.mKeyCache) | this.mKeepAnimating;
                }
            }
            boolean z4 = (fSignum > 0.0f && f >= this.mTransitionGoalPosition) || (fSignum <= 0.0f && f <= this.mTransitionGoalPosition);
            if (!this.mKeepAnimating && !this.mInTransition && z4) {
                setState(TransitionState.FINISHED);
            }
            if (this.mMeasureDuringTransition) {
                requestLayout();
            }
            this.mKeepAnimating = (!z4) | this.mKeepAnimating;
            if (f > 0.0f || (i = this.mBeginState) == -1 || this.mCurrentState == i) {
                z2 = false;
            } else {
                this.mCurrentState = i;
                this.mScene.getConstraintSet(i).applyCustomAttributes(this);
                setState(TransitionState.FINISHED);
                z2 = true;
            }
            if (f >= 1.0d) {
                int i3 = this.mCurrentState;
                int i4 = this.mEndState;
                if (i3 != i4) {
                    this.mCurrentState = i4;
                    this.mScene.getConstraintSet(i4).applyCustomAttributes(this);
                    setState(TransitionState.FINISHED);
                    z2 = true;
                }
            }
            if (this.mKeepAnimating || this.mInTransition) {
                invalidate();
            } else if ((fSignum > 0.0f && f == 1.0f) || (fSignum < 0.0f && f == 0.0f)) {
                setState(TransitionState.FINISHED);
            }
            if (!this.mKeepAnimating && !this.mInTransition && ((fSignum > 0.0f && f == 1.0f) || (fSignum < 0.0f && f == 0.0f))) {
                onNewStateAttachHandlers();
            }
        }
        float f5 = this.mTransitionLastPosition;
        if (f5 >= 1.0f) {
            int i5 = this.mCurrentState;
            int i6 = this.mEndState;
            if (i5 != i6) {
                z2 = true;
            }
            this.mCurrentState = i6;
        } else if (f5 <= 0.0f) {
            int i7 = this.mCurrentState;
            int i8 = this.mBeginState;
            if (i7 != i8) {
                z2 = true;
            }
            this.mCurrentState = i8;
        }
        this.mNeedsFireTransitionCompleted |= z2;
        if (z2 && !this.mInLayout) {
            requestLayout();
        }
        this.mTransitionPosition = this.mTransitionLastPosition;
    }

    protected void fireTransitionCompleted() {
        int iIntValue;
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList;
        if ((this.mTransitionListener != null || ((copyOnWriteArrayList = this.mTransitionListeners) != null && !copyOnWriteArrayList.isEmpty())) && this.mListenerState == -1) {
            this.mListenerState = this.mCurrentState;
            if (this.mTransitionCompleted.isEmpty()) {
                iIntValue = -1;
            } else {
                iIntValue = this.mTransitionCompleted.get(r0.size() - 1).intValue();
            }
            int i = this.mCurrentState;
            if (iIntValue != i && i != -1) {
                this.mTransitionCompleted.add(Integer.valueOf(i));
            }
        }
        processTransitionCompleted();
        Runnable runnable = this.mOnComplete;
        if (runnable != null) {
            runnable.run();
        }
        int[] iArr = this.mScheduledTransitionTo;
        if (iArr == null || this.mScheduledTransitions <= 0) {
            return;
        }
        transitionToState(iArr[0]);
        int[] iArr2 = this.mScheduledTransitionTo;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.mScheduledTransitions--;
    }

    public void fireTrigger(int i, boolean z, float f) {
        TransitionListener transitionListener = this.mTransitionListener;
        if (transitionListener != null) {
            transitionListener.onTransitionTrigger(this, i, z, f);
        }
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList != null) {
            Iterator<TransitionListener> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                it.next().onTransitionTrigger(this, i, z, f);
            }
        }
    }

    void getAnchorDpDt(int i, float f, float f2, float f3, float[] fArr) {
        String resourceName;
        HashMap<View, MotionController> map = this.mFrameArrayList;
        View viewById = getViewById(i);
        MotionController motionController = map.get(viewById);
        if (motionController == null) {
            if (viewById == null) {
                StringBuilder sb = new StringBuilder(11);
                sb.append(i);
                resourceName = sb.toString();
            } else {
                resourceName = viewById.getContext().getResources().getResourceName(i);
            }
            String strValueOf = String.valueOf(resourceName);
            Log.w(TAG, strValueOf.length() != 0 ? NPStringFog.decode(new byte[]{99, 35, 49, 127, 112, 122, 115, 66, 0, 94, 76, 88, 80, 66, 13, 94, 77, 20, 82, 11, 13, 85, 25, 66, 93, 7, 20, 17, 80, 80, 20}, "4bc194", -1388).concat(strValueOf) : new String(NPStringFog.decode(new byte[]{103, 120, 55, 43, 47, 118, 119, 25, 6, 10, 19, 84, 84, 25, 11, 10, 18, 24, 86, 80, 11, 1, 70, 78, 89, 92, 18, 69, 15, 92, 16}, "09eef8", 17968)));
            return;
        }
        motionController.getDpDt(f, f2, f3, fArr);
        float y = viewById.getY();
        float f4 = f - this.lastPos;
        float f5 = this.lastY;
        if (f4 != 0.0f) {
            float f6 = (y - f5) / f4;
        }
        this.lastPos = f;
        this.lastY = y;
    }

    public ConstraintSet getConstraintSet(int i) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSet(i);
    }

    public int[] getConstraintSetIds() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getConstraintSetIds();
    }

    String getConstraintSetNames(int i) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.lookUpConstraintName(i);
    }

    public int getCurrentState() {
        return this.mCurrentState;
    }

    public void getDebugMode(boolean z) {
        this.mDebugPath = z ? 2 : 1;
        invalidate();
    }

    public ArrayList<MotionScene.Transition> getDefinedTransitions() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return null;
        }
        return motionScene.getDefinedTransitions();
    }

    public DesignTool getDesignTool() {
        if (this.mDesignTool == null) {
            this.mDesignTool = new DesignTool(this);
        }
        return this.mDesignTool;
    }

    public int getEndState() {
        return this.mEndState;
    }

    MotionController getMotionController(int i) {
        return this.mFrameArrayList.get(findViewById(i));
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.mTransitionLastPosition;
    }

    public MotionScene getScene() {
        return this.mScene;
    }

    public int getStartState() {
        return this.mBeginState;
    }

    public float getTargetPosition() {
        return this.mTransitionGoalPosition;
    }

    public MotionScene.Transition getTransition(int i) {
        return this.mScene.getTransitionById(i);
    }

    public Bundle getTransitionState() {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache(this);
        }
        this.mStateCache.recordState();
        return this.mStateCache.getTransitionState();
    }

    public long getTransitionTimeMs() {
        if (this.mScene != null) {
            this.mTransitionDuration = r0.getDuration() / 1000.0f;
        }
        return (long) (this.mTransitionDuration * 1000.0f);
    }

    public float getVelocity() {
        return this.mLastVelocity;
    }

    public void getViewVelocity(View view, float f, float f2, float[] fArr, int i) {
        float f3;
        float f4 = this.mLastVelocity;
        float interpolation = this.mTransitionLastPosition;
        if (this.mInterpolator != null) {
            float fSignum = Math.signum(this.mTransitionGoalPosition - this.mTransitionLastPosition);
            float interpolation2 = this.mInterpolator.getInterpolation(this.mTransitionLastPosition + EPSILON);
            interpolation = this.mInterpolator.getInterpolation(this.mTransitionLastPosition);
            f3 = (fSignum * ((interpolation2 - interpolation) / EPSILON)) / this.mTransitionDuration;
        } else {
            f3 = f4;
        }
        Interpolator interpolator = this.mInterpolator;
        float velocity = interpolator instanceof MotionInterpolator ? ((MotionInterpolator) interpolator).getVelocity() : f3;
        MotionController motionController = this.mFrameArrayList.get(view);
        if ((i & 1) == 0) {
            motionController.getPostLayoutDvDp(interpolation, view.getWidth(), view.getHeight(), f, f2, fArr);
        } else {
            motionController.getDpDt(interpolation, f, f2, fArr);
        }
        if (i < 2) {
            fArr[0] = fArr[0] * velocity;
            fArr[1] = fArr[1] * velocity;
        }
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return Build.VERSION.SDK_INT >= 19 ? super.isAttachedToWindow() : getWindowToken() != null;
    }

    public boolean isDelayedApplicationOfInitialState() {
        return this.mDelayedApply;
    }

    public boolean isInRotation() {
        return this.mInRotation;
    }

    public boolean isInteractionEnabled() {
        return this.mInteractionEnabled;
    }

    public boolean isViewTransitionEnabled(int i) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            return motionScene.isViewTransitionEnabled(i);
        }
        return false;
    }

    public void jumpToState(int i) {
        if (!isAttachedToWindow()) {
            this.mCurrentState = i;
        }
        if (this.mBeginState == i) {
            setProgress(0.0f);
        } else if (this.mEndState == i) {
            setProgress(1.0f);
        } else {
            setTransition(i, i);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void loadLayoutDescription(int i) {
        if (i == 0) {
            this.mScene = null;
            return;
        }
        try {
            MotionScene motionScene = new MotionScene(getContext(), this, i);
            this.mScene = motionScene;
            if (this.mCurrentState == -1) {
                this.mCurrentState = motionScene.getStartId();
                this.mBeginState = this.mScene.getStartId();
                this.mEndState = this.mScene.getEndId();
            }
            if (Build.VERSION.SDK_INT >= 19 && !isAttachedToWindow()) {
                this.mScene = null;
                return;
            }
            try {
                if (Build.VERSION.SDK_INT >= 17) {
                    Display display = getDisplay();
                    this.mPreviouseRotation = display == null ? 0 : display.getRotation();
                }
                MotionScene motionScene2 = this.mScene;
                if (motionScene2 != null) {
                    ConstraintSet constraintSet = motionScene2.getConstraintSet(this.mCurrentState);
                    this.mScene.readFallback(this);
                    ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
                    if (arrayList != null) {
                        Iterator<MotionHelper> it = arrayList.iterator();
                        while (it.hasNext()) {
                            it.next().onFinishedMotionScene(this);
                        }
                    }
                    if (constraintSet != null) {
                        constraintSet.applyTo(this);
                    }
                    this.mBeginState = this.mCurrentState;
                }
                onNewStateAttachHandlers();
                StateCache stateCache = this.mStateCache;
                if (stateCache != null) {
                    if (this.mDelayedApply) {
                        post(new Runnable(this) { // from class: androidx.constraintlayout.motion.widget.MotionLayout.1
                            final MotionLayout this$0;

                            {
                                this.this$0 = this;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                this.this$0.mStateCache.apply();
                            }
                        });
                        return;
                    } else {
                        stateCache.apply();
                        return;
                    }
                }
                MotionScene motionScene3 = this.mScene;
                if (motionScene3 == null || motionScene3.mCurrentTransition == null || this.mScene.mCurrentTransition.getAutoTransition() != 4) {
                    return;
                }
                transitionToEnd();
                setState(TransitionState.SETUP);
                setState(TransitionState.MOVING);
            } catch (Exception e) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{69, 90, 4, 81, 9, 4, 16, 64, 10, 19, 21, 0, 66, 71, 0, 19, 40, 14, 68, 93, 10, 93, 54, 2, 85, 90, 0, 19, 3, 8, 92, 81}, "04e3ea", -7.98797803E8d), e);
            }
        } catch (Exception e2) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{66, 8, 86, 0, 15, 93, 23, 18, 88, 66, 19, 89, 69, 21, 82, 66, 46, 87, 67, 15, 88, 12, 48, 91, 82, 8, 82, 66, 5, 81, 91, 3}, "7f7bc8", true), e2);
        }
    }

    int lookUpConstraintId(String str) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return 0;
        }
        return motionScene.lookUpConstraintId(str);
    }

    protected MotionTracker obtainVelocityTracker() {
        return MyTracker.obtain();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        int i;
        Display display;
        super.onAttachedToWindow();
        if (Build.VERSION.SDK_INT >= 17 && (display = getDisplay()) != null) {
            this.mPreviouseRotation = display.getRotation();
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null && (i = this.mCurrentState) != -1) {
            ConstraintSet constraintSet = motionScene.getConstraintSet(i);
            this.mScene.readFallback(this);
            ArrayList<MotionHelper> arrayList = this.mDecoratorsHelpers;
            if (arrayList != null) {
                Iterator<MotionHelper> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().onFinishedMotionScene(this);
                }
            }
            if (constraintSet != null) {
                constraintSet.applyTo(this);
            }
            this.mBeginState = this.mCurrentState;
        }
        onNewStateAttachHandlers();
        StateCache stateCache = this.mStateCache;
        if (stateCache != null) {
            if (this.mDelayedApply) {
                post(new Runnable(this) { // from class: androidx.constraintlayout.motion.widget.MotionLayout.4
                    final MotionLayout this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.this$0.mStateCache.apply();
                    }
                });
                return;
            } else {
                stateCache.apply();
                return;
            }
        }
        MotionScene motionScene2 = this.mScene;
        if (motionScene2 == null || motionScene2.mCurrentTransition == null || this.mScene.mCurrentTransition.getAutoTransition() != 4) {
            return;
        }
        transitionToEnd();
        setState(TransitionState.SETUP);
        setState(TransitionState.MOVING);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        TouchResponse touchResponse;
        int touchRegionId;
        RectF touchRegion;
        MotionScene motionScene = this.mScene;
        if (motionScene == null || !this.mInteractionEnabled) {
            return false;
        }
        if (motionScene.mViewTransitionController != null) {
            this.mScene.mViewTransitionController.touchEvent(motionEvent);
        }
        MotionScene.Transition transition = this.mScene.mCurrentTransition;
        if (transition == null || !transition.isEnabled() || (touchResponse = transition.getTouchResponse()) == null) {
            return false;
        }
        if ((motionEvent.getAction() == 0 && (touchRegion = touchResponse.getTouchRegion(this, new RectF())) != null && !touchRegion.contains(motionEvent.getX(), motionEvent.getY())) || (touchRegionId = touchResponse.getTouchRegionId()) == -1) {
            return false;
        }
        View view = this.mRegionView;
        if (view == null || view.getId() != touchRegionId) {
            this.mRegionView = findViewById(touchRegionId);
        }
        if (this.mRegionView == null) {
            return false;
        }
        this.mBoundsCheck.set(r1.getLeft(), this.mRegionView.getTop(), this.mRegionView.getRight(), this.mRegionView.getBottom());
        if (!this.mBoundsCheck.contains(motionEvent.getX(), motionEvent.getY()) || handlesTouchEvent(this.mRegionView.getLeft(), this.mRegionView.getTop(), this.mRegionView, motionEvent)) {
            return false;
        }
        return onTouchEvent(motionEvent);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.mInLayout = true;
        try {
            if (this.mScene == null) {
                super.onLayout(z, i, i2, i3, i4);
                return;
            }
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (this.mLastLayoutWidth != i5 || this.mLastLayoutHeight != i6) {
                rebuildScene();
                evaluate(true);
            }
            this.mLastLayoutWidth = i5;
            this.mLastLayoutHeight = i6;
            this.mOldWidth = i5;
            this.mOldHeight = i6;
        } finally {
            this.mInLayout = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z = true;
        if (this.mScene == null) {
            super.onMeasure(i, i2);
            return;
        }
        boolean z2 = (this.mLastWidthMeasureSpec == i && this.mLastHeightMeasureSpec == i2) ? false : true;
        if (this.mNeedsFireTransitionCompleted) {
            this.mNeedsFireTransitionCompleted = false;
            onNewStateAttachHandlers();
            processTransitionCompleted();
            z2 = true;
        }
        if (this.mDirtyHierarchy) {
            z2 = true;
        }
        this.mLastWidthMeasureSpec = i;
        this.mLastHeightMeasureSpec = i2;
        int startId = this.mScene.getStartId();
        int endId = this.mScene.getEndId();
        if ((z2 || this.mModel.isNotConfiguredWith(startId, endId)) && this.mBeginState != -1) {
            super.onMeasure(i, i2);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(startId), this.mScene.getConstraintSet(endId));
            this.mModel.reEvaluateState();
            this.mModel.setMeasuredId(startId, endId);
            z = false;
        } else if (z2) {
            super.onMeasure(i, i2);
        }
        if (this.mMeasureDuringTransition || z) {
            int paddingTop = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            int paddingLeft = getPaddingLeft() + getPaddingRight() + this.mLayoutWidget.getWidth();
            int height = paddingTop + paddingBottom + this.mLayoutWidget.getHeight();
            int i3 = this.mWidthMeasureMode;
            if (i3 == Integer.MIN_VALUE || i3 == 0) {
                paddingLeft = (int) (((this.mEndWrapWidth - r0) * this.mPostInterpolationPosition) + this.mStartWrapWidth);
                requestLayout();
            }
            int i4 = this.mHeightMeasureMode;
            if (i4 == Integer.MIN_VALUE || i4 == 0) {
                height = (int) (((this.mEndWrapHeight - r1) * this.mPostInterpolationPosition) + this.mStartWrapHeight);
                requestLayout();
            }
            setMeasuredDimension(paddingLeft, height);
        }
        evaluateLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        MotionScene.Transition transition;
        TouchResponse touchResponse;
        int touchRegionId;
        int i4 = -1;
        MotionScene motionScene = this.mScene;
        if (motionScene == null || (transition = motionScene.mCurrentTransition) == null || !transition.isEnabled()) {
            return;
        }
        if (!transition.isEnabled() || (touchResponse = transition.getTouchResponse()) == null || (touchRegionId = touchResponse.getTouchRegionId()) == -1 || view.getId() == touchRegionId) {
            if (motionScene.getMoveWhenScrollAtTop()) {
                TouchResponse touchResponse2 = transition.getTouchResponse();
                if (touchResponse2 != null && (touchResponse2.getFlags() & 4) != 0) {
                    i4 = i2;
                }
                float f = this.mTransitionPosition;
                if ((f == 1.0f || f == 0.0f) && view.canScrollVertically(i4)) {
                    return;
                }
            }
            if (transition.getTouchResponse() != null && (transition.getTouchResponse().getFlags() & 1) != 0) {
                float progressDirection = motionScene.getProgressDirection(i, i2);
                float f2 = this.mTransitionLastPosition;
                if ((f2 <= 0.0f && progressDirection < 0.0f) || (f2 >= 1.0f && progressDirection > 0.0f)) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        view.setNestedScrollingEnabled(false);
                        view.post(new Runnable(this, view) { // from class: androidx.constraintlayout.motion.widget.MotionLayout.3
                            final View val$target;

                            {
                                this.val$target = view;
                            }

                            @Override // java.lang.Runnable
                            public void run() {
                                this.val$target.setNestedScrollingEnabled(true);
                            }
                        });
                        return;
                    }
                    return;
                }
            }
            float f3 = this.mTransitionPosition;
            long nanoTime = getNanoTime();
            this.mScrollTargetDX = i;
            this.mScrollTargetDY = i2;
            double d = nanoTime - this.mScrollTargetTime;
            Double.isNaN(d);
            this.mScrollTargetDT = (float) (d * 1.0E-9d);
            this.mScrollTargetTime = nanoTime;
            motionScene.processScrollMove(i, i2);
            if (f3 != this.mTransitionPosition) {
                iArr[0] = i;
                iArr[1] = i2;
            }
            evaluate(false);
            if (iArr[0] == 0 && iArr[1] == 0) {
                return;
            }
            this.mUndergoingMotion = true;
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (this.mUndergoingMotion || i != 0 || i2 != 0) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
        }
        this.mUndergoingMotion = false;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        this.mScrollTargetTime = getNanoTime();
        this.mScrollTargetDT = 0.0f;
        this.mScrollTargetDX = 0.0f;
        this.mScrollTargetDY = 0.0f;
    }

    void onNewStateAttachHandlers() {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            return;
        }
        if (motionScene.autoTransition(this, this.mCurrentState)) {
            requestLayout();
            return;
        }
        int i = this.mCurrentState;
        if (i != -1) {
            this.mScene.addOnClickListeners(this, i);
        }
        if (this.mScene.supportTouch()) {
            this.mScene.setupTouch();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.setRtl(isRtl());
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        MotionScene motionScene = this.mScene;
        return (motionScene == null || motionScene.mCurrentTransition == null || this.mScene.mCurrentTransition.getTouchResponse() == null || (this.mScene.mCurrentTransition.getTouchResponse().getFlags() & 2) != 0) ? false : true;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            float f = this.mScrollTargetDT;
            if (f == 0.0f) {
                return;
            }
            motionScene.processScrollUp(this.mScrollTargetDX / f, this.mScrollTargetDY / f);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null || !this.mInteractionEnabled || !motionScene.supportTouch()) {
            return super.onTouchEvent(motionEvent);
        }
        MotionScene.Transition transition = this.mScene.mCurrentTransition;
        if (transition != null && !transition.isEnabled()) {
            return super.onTouchEvent(motionEvent);
        }
        this.mScene.processTouchEvent(motionEvent, getCurrentState(), this);
        if (this.mScene.mCurrentTransition.isTransitionFlag(4)) {
            return this.mScene.mCurrentTransition.getTouchResponse().isDragStarted();
        }
        return true;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof MotionHelper) {
            MotionHelper motionHelper = (MotionHelper) view;
            if (this.mTransitionListeners == null) {
                this.mTransitionListeners = new CopyOnWriteArrayList<>();
            }
            this.mTransitionListeners.add(motionHelper);
            if (motionHelper.isUsedOnShow()) {
                if (this.mOnShowHelpers == null) {
                    this.mOnShowHelpers = new ArrayList<>();
                }
                this.mOnShowHelpers.add(motionHelper);
            }
            if (motionHelper.isUseOnHide()) {
                if (this.mOnHideHelpers == null) {
                    this.mOnHideHelpers = new ArrayList<>();
                }
                this.mOnHideHelpers.add(motionHelper);
            }
            if (motionHelper.isDecorator()) {
                if (this.mDecoratorsHelpers == null) {
                    this.mDecoratorsHelpers = new ArrayList<>();
                }
                this.mDecoratorsHelpers.add(motionHelper);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<MotionHelper> arrayList2 = this.mOnHideHelpers;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    protected void parseLayoutDescription(int i) {
        this.mConstraintLayoutSpec = null;
    }

    @Deprecated
    public void rebuildMotion() {
        Log.e(TAG, NPStringFog.decode(new byte[]{96, 91, 81, 66, 16, 14, 81, 71, 80, 94, 84, 67, 93, 64, 24, 85, 85, 19, 70, 86, 91, 80, 68, 6, 80, 29, 24, 97, 92, 6, 85, 64, 93, 17, 83, 2, 88, 95, 24, 67, 85, 1, 65, 90, 84, 85, 99, 0, 81, 93, 93, 25, 25, 67, 93, 93, 75, 69, 85, 2, 80, 29}, "43810c", true));
        rebuildScene();
    }

    public void rebuildScene() {
        this.mModel.reEvaluateState();
        invalidate();
    }

    public boolean removeTransitionListener(TransitionListener transitionListener) {
        CopyOnWriteArrayList<TransitionListener> copyOnWriteArrayList = this.mTransitionListeners;
        if (copyOnWriteArrayList == null) {
            return false;
        }
        return copyOnWriteArrayList.remove(transitionListener);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        MotionScene motionScene;
        if (!this.mMeasureDuringTransition && this.mCurrentState == -1 && (motionScene = this.mScene) != null && motionScene.mCurrentTransition != null) {
            int layoutDuringTransition = this.mScene.mCurrentTransition.getLayoutDuringTransition();
            if (layoutDuringTransition == 0) {
                return;
            }
            if (layoutDuringTransition == 2) {
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    this.mFrameArrayList.get(getChildAt(i)).remeasure();
                }
                return;
            }
        }
        super.requestLayout();
    }

    public void rotateTo(int i, int i2) {
        this.mInRotation = true;
        this.mPreRotateWidth = getWidth();
        this.mPreRotateHeight = getHeight();
        int rotation = getDisplay().getRotation();
        this.mRotatMode = (rotation + 1) % 4 <= (this.mPreviouseRotation + 1) % 4 ? 2 : 1;
        this.mPreviouseRotation = rotation;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            ViewState viewState = this.mPreRotate.get(childAt);
            if (viewState == null) {
                viewState = new ViewState();
                this.mPreRotate.put(childAt, viewState);
            }
            viewState.getState(childAt);
        }
        this.mBeginState = -1;
        this.mEndState = i;
        this.mScene.setTransition(-1, i);
        this.mModel.initFrom(this.mLayoutWidget, null, this.mScene.getConstraintSet(this.mEndState));
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        invalidate();
        transitionToEnd(new Runnable(this) { // from class: androidx.constraintlayout.motion.widget.MotionLayout.2
            final MotionLayout this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.mInRotation = false;
            }
        });
        if (i2 > 0) {
            this.mTransitionDuration = i2 / 1000.0f;
        }
    }

    public void scheduleTransitionTo(int i) {
        if (getCurrentState() == -1) {
            transitionToState(i);
            return;
        }
        int[] iArr = this.mScheduledTransitionTo;
        if (iArr == null) {
            this.mScheduledTransitionTo = new int[4];
        } else if (iArr.length <= this.mScheduledTransitions) {
            this.mScheduledTransitionTo = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.mScheduledTransitionTo;
        int i2 = this.mScheduledTransitions;
        this.mScheduledTransitions = i2 + 1;
        iArr2[i2] = i;
    }

    public void setDebugMode(int i) {
        this.mDebugPath = i;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z) {
        this.mDelayedApply = z;
    }

    public void setInteractionEnabled(boolean z) {
        this.mInteractionEnabled = z;
    }

    public void setInterpolatedProgress(float f) {
        if (this.mScene != null) {
            setState(TransitionState.MOVING);
            Interpolator interpolator = this.mScene.getInterpolator();
            if (interpolator != null) {
                setProgress(interpolator.getInterpolation(f));
                return;
            }
        }
        setProgress(f);
    }

    public void setOnHide(float f) {
        ArrayList<MotionHelper> arrayList = this.mOnHideHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.mOnHideHelpers.get(i).setProgress(f);
            }
        }
    }

    public void setOnShow(float f) {
        ArrayList<MotionHelper> arrayList = this.mOnShowHelpers;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.mOnShowHelpers.get(i).setProgress(f);
            }
        }
    }

    public void setProgress(float f) {
        if (f < 0.0f || f > 1.0f) {
            Log.w(TAG, NPStringFog.decode(new byte[]{101, 88, 68, 89, 12, 86, 85, 24, 22, 103, 23, 87, 85, 75, 83, 68, 22, 24, 91, 74, 22, 83, 0, 94, 91, 87, 83, 83, 69, 94, 93, 75, 22, 65, 4, 84, 71, 92, 69, 23, 7, 93, 70, 78, 83, 82, 11, 24, 2, 23, 6, 23, 4, 86, 86, 25, 7, 25, 85, 24, 91, 87, 85, 91, 16, 75, 91, 79, 83}, "2967e8", -6.27425518E8d));
        }
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache(this);
            }
            this.mStateCache.setProgress(f);
            return;
        }
        if (f <= 0.0f) {
            if (this.mTransitionLastPosition == 1.0f && this.mCurrentState == this.mEndState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mBeginState;
            if (this.mTransitionLastPosition == 0.0f) {
                setState(TransitionState.FINISHED);
            }
        } else if (f >= 1.0f) {
            if (this.mTransitionLastPosition == 0.0f && this.mCurrentState == this.mBeginState) {
                setState(TransitionState.MOVING);
            }
            this.mCurrentState = this.mEndState;
            if (this.mTransitionLastPosition == 1.0f) {
                setState(TransitionState.FINISHED);
            }
        } else {
            this.mCurrentState = -1;
            setState(TransitionState.MOVING);
        }
        if (this.mScene != null) {
            this.mTransitionInstantly = true;
            this.mTransitionGoalPosition = f;
            this.mTransitionPosition = f;
            this.mTransitionLastTime = -1L;
            this.mAnimationStartTime = -1L;
            this.mInterpolator = null;
            this.mInTransition = true;
            invalidate();
        }
    }

    public void setProgress(float f, float f2) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache(this);
            }
            this.mStateCache.setProgress(f);
            this.mStateCache.setVelocity(f2);
            return;
        }
        setProgress(f);
        setState(TransitionState.MOVING);
        this.mLastVelocity = f2;
        if (f2 != 0.0f) {
            animateTo(f2 <= 0.0f ? 0.0f : 1.0f);
        } else {
            if (f == 0.0f || f == 1.0f) {
                return;
            }
            animateTo(f <= 0.5f ? 0.0f : 1.0f);
        }
    }

    public void setScene(MotionScene motionScene) {
        this.mScene = motionScene;
        motionScene.setRtl(isRtl());
        rebuildScene();
    }

    void setStartState(int i) {
        if (isAttachedToWindow()) {
            this.mCurrentState = i;
            return;
        }
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache(this);
        }
        this.mStateCache.setStartState(i);
        this.mStateCache.setEndState(i);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public void setState(int i, int i2, int i3) {
        setState(TransitionState.SETUP);
        this.mCurrentState = i;
        this.mBeginState = -1;
        this.mEndState = -1;
        if (this.mConstraintLayoutSpec != null) {
            this.mConstraintLayoutSpec.updateConstraints(i, i2, i3);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.getConstraintSet(i).applyTo(this);
        }
    }

    void setState(TransitionState transitionState) {
        if (transitionState == TransitionState.FINISHED && this.mCurrentState == -1) {
        }
        TransitionState transitionState2 = this.mTransitionState;
        this.mTransitionState = transitionState;
        if (transitionState2 == TransitionState.MOVING && transitionState == TransitionState.MOVING) {
            fireTransitionChange();
        }
        switch (AnonymousClass5.$SwitchMap$androidx$constraintlayout$motion$widget$MotionLayout$TransitionState[transitionState2.ordinal()]) {
            case 1:
            case 2:
                if (transitionState == TransitionState.MOVING) {
                    fireTransitionChange();
                }
                if (transitionState == TransitionState.FINISHED) {
                    fireTransitionCompleted();
                }
                break;
            case 3:
                if (transitionState == TransitionState.FINISHED) {
                    fireTransitionCompleted();
                }
                break;
        }
    }

    public void setTransition(int i) {
        if (this.mScene != null) {
            MotionScene.Transition transition = getTransition(i);
            int i2 = this.mCurrentState;
            this.mBeginState = transition.getStartConstraintSetId();
            this.mEndState = transition.getEndConstraintSetId();
            if (!isAttachedToWindow()) {
                if (this.mStateCache == null) {
                    this.mStateCache = new StateCache(this);
                }
                this.mStateCache.setStartState(this.mBeginState);
                this.mStateCache.setEndState(this.mEndState);
                return;
            }
            float f = Float.NaN;
            int i3 = this.mCurrentState;
            if (i3 == this.mBeginState) {
                f = 0.0f;
            } else if (i3 == this.mEndState) {
                f = 1.0f;
            }
            this.mScene.setTransition(transition);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
            rebuildScene();
            if (this.mTransitionLastPosition != f) {
                if (f == 0.0f) {
                    endTrigger(true);
                    this.mScene.getConstraintSet(this.mBeginState).applyTo(this);
                } else if (f == 1.0f) {
                    endTrigger(false);
                    this.mScene.getConstraintSet(this.mEndState).applyTo(this);
                }
            }
            this.mTransitionLastPosition = Float.isNaN(f) ? 0.0f : f;
            if (!Float.isNaN(f)) {
                setProgress(f);
            } else {
                Log.v(TAG, String.valueOf(Debug.getLocation()).concat(NPStringFog.decode(new byte[]{65, 66, 67, 80, 90, 16, 8, 66, 88, 94, 90, 55, 14, 101, 69, 80, 70, 23, 65}, "a6114c", -1.9996251E9f)));
                transitionToStart();
            }
        }
    }

    public void setTransition(int i, int i2) {
        if (!isAttachedToWindow()) {
            if (this.mStateCache == null) {
                this.mStateCache = new StateCache(this);
            }
            this.mStateCache.setStartState(i);
            this.mStateCache.setEndState(i2);
            return;
        }
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            this.mBeginState = i;
            this.mEndState = i2;
            motionScene.setTransition(i, i2);
            this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(i), this.mScene.getConstraintSet(i2));
            rebuildScene();
            this.mTransitionLastPosition = 0.0f;
            transitionToStart();
        }
    }

    protected void setTransition(MotionScene.Transition transition) {
        this.mScene.setTransition(transition);
        setState(TransitionState.SETUP);
        if (this.mCurrentState == this.mScene.getEndId()) {
            this.mTransitionLastPosition = 1.0f;
            this.mTransitionPosition = 1.0f;
            this.mTransitionGoalPosition = 1.0f;
        } else {
            this.mTransitionLastPosition = 0.0f;
            this.mTransitionPosition = 0.0f;
            this.mTransitionGoalPosition = 0.0f;
        }
        this.mTransitionLastTime = transition.isTransitionFlag(1) ? -1L : getNanoTime();
        int startId = this.mScene.getStartId();
        int endId = this.mScene.getEndId();
        if (startId == this.mBeginState && endId == this.mEndState) {
            return;
        }
        this.mBeginState = startId;
        this.mEndState = endId;
        this.mScene.setTransition(startId, endId);
        this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        this.mModel.setMeasuredId(this.mBeginState, this.mEndState);
        this.mModel.reEvaluateState();
        rebuildScene();
    }

    public void setTransitionDuration(int i) {
        MotionScene motionScene = this.mScene;
        if (motionScene == null) {
            Log.e(TAG, NPStringFog.decode(new byte[]{123, 89, 65, 89, 10, 8, 101, 85, 80, 94, 0, 70, 88, 89, 65, 16, 1, 3, 80, 95, 91, 85, 1}, "6650ef", -1078147065L));
        } else {
            motionScene.setDuration(i);
        }
    }

    public void setTransitionListener(TransitionListener transitionListener) {
        this.mTransitionListener = transitionListener;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache(this);
        }
        this.mStateCache.setTransitionState(bundle);
        if (isAttachedToWindow()) {
            this.mStateCache.apply();
        }
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        String name = Debug.getName(context, this.mBeginState);
        String name2 = Debug.getName(context, this.mEndState);
        float f = this.mTransitionLastPosition;
        float f2 = this.mLastVelocity;
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 47 + String.valueOf(name2).length());
        sb.append(name);
        sb.append(NPStringFog.decode(new byte[]{28, 14}, "107e4c", -16736));
        sb.append(name2);
        sb.append(NPStringFog.decode(new byte[]{18, 25, 66, 11, 18, 95}, "212dae", -9.40798843E8d));
        sb.append(f);
        sb.append(NPStringFog.decode(new byte[]{68, 39, 64, 90, 66, 30, 32, 23, 10}, "dc0511", 1304322321L));
        sb.append(f2);
        return sb.toString();
    }

    public void touchAnimateTo(int i, float f, float f2) {
        if (this.mScene == null || this.mTransitionLastPosition == f) {
            return;
        }
        this.mTemporalInterpolator = true;
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        this.mTransitionGoalPosition = f;
        this.mInTransition = true;
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 6:
            case 7:
                float f3 = (i == 1 || i == 7) ? 0.0f : (i == 2 || i == 6) ? 1.0f : f;
                if (this.mScene.getAutoCompleteMode() == 0) {
                    this.mStopLogic.config(this.mTransitionLastPosition, f3, f2, this.mTransitionDuration, this.mScene.getMaxAcceleration(), this.mScene.getMaxVelocity());
                } else {
                    this.mStopLogic.springConfig(this.mTransitionLastPosition, f3, f2, this.mScene.getSpringMass(), this.mScene.getSpringStiffiness(), this.mScene.getSpringDamping(), this.mScene.getSpringStopThreshold(), this.mScene.getSpringBoundary());
                }
                int i2 = this.mCurrentState;
                this.mTransitionGoalPosition = f3;
                this.mCurrentState = i2;
                this.mInterpolator = this.mStopLogic;
                break;
            case 4:
                this.mDecelerateLogic.config(f2, this.mTransitionLastPosition, this.mScene.getMaxAcceleration());
                this.mInterpolator = this.mDecelerateLogic;
                break;
            case 5:
                if (!willJump(f2, this.mTransitionLastPosition, this.mScene.getMaxAcceleration())) {
                    this.mStopLogic.config(this.mTransitionLastPosition, f, f2, this.mTransitionDuration, this.mScene.getMaxAcceleration(), this.mScene.getMaxVelocity());
                    this.mLastVelocity = 0.0f;
                    int i3 = this.mCurrentState;
                    this.mTransitionGoalPosition = f;
                    this.mCurrentState = i3;
                    this.mInterpolator = this.mStopLogic;
                } else {
                    this.mDecelerateLogic.config(f2, this.mTransitionLastPosition, this.mScene.getMaxAcceleration());
                    this.mInterpolator = this.mDecelerateLogic;
                }
                break;
        }
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        invalidate();
    }

    public void touchSpringTo(float f, float f2) {
        if (this.mScene == null || this.mTransitionLastPosition == f) {
            return;
        }
        this.mTemporalInterpolator = true;
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        this.mTransitionGoalPosition = f;
        this.mInTransition = true;
        this.mStopLogic.springConfig(this.mTransitionLastPosition, f, f2, this.mScene.getSpringMass(), this.mScene.getSpringStiffiness(), this.mScene.getSpringDamping(), this.mScene.getSpringStopThreshold(), this.mScene.getSpringBoundary());
        int i = this.mCurrentState;
        this.mTransitionGoalPosition = f;
        this.mCurrentState = i;
        this.mInterpolator = this.mStopLogic;
        this.mTransitionInstantly = false;
        this.mAnimationStartTime = getNanoTime();
        invalidate();
    }

    public void transitionToEnd() {
        animateTo(1.0f);
        this.mOnComplete = null;
    }

    public void transitionToEnd(Runnable runnable) {
        animateTo(1.0f);
        this.mOnComplete = runnable;
    }

    public void transitionToStart() {
        animateTo(0.0f);
    }

    public void transitionToState(int i) {
        if (isAttachedToWindow()) {
            transitionToState(i, -1, -1);
            return;
        }
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache(this);
        }
        this.mStateCache.setEndState(i);
    }

    public void transitionToState(int i, int i2) {
        if (isAttachedToWindow()) {
            transitionToState(i, -1, -1, i2);
            return;
        }
        if (this.mStateCache == null) {
            this.mStateCache = new StateCache(this);
        }
        this.mStateCache.setEndState(i);
    }

    public void transitionToState(int i, int i2, int i3) {
        transitionToState(i, i2, i3, -1);
    }

    public void transitionToState(int i, int i2, int i3, int i4) {
        int iConvertToConstraintSet;
        MotionScene motionScene = this.mScene;
        if (motionScene != null && motionScene.mStateSet != null && (iConvertToConstraintSet = this.mScene.mStateSet.convertToConstraintSet(this.mCurrentState, i, i2, i3)) != -1) {
            i = iConvertToConstraintSet;
        }
        int i5 = this.mCurrentState;
        if (i5 == i) {
            return;
        }
        if (this.mBeginState == i) {
            animateTo(0.0f);
            if (i4 > 0) {
                this.mTransitionDuration = i4 / 1000.0f;
                return;
            }
            return;
        }
        if (this.mEndState == i) {
            animateTo(1.0f);
            if (i4 > 0) {
                this.mTransitionDuration = i4 / 1000.0f;
                return;
            }
            return;
        }
        this.mEndState = i;
        if (i5 != -1) {
            setTransition(i5, i);
            animateTo(1.0f);
            this.mTransitionLastPosition = 0.0f;
            transitionToEnd();
            if (i4 > 0) {
                this.mTransitionDuration = i4 / 1000.0f;
                return;
            }
            return;
        }
        this.mTemporalInterpolator = false;
        this.mTransitionGoalPosition = 1.0f;
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mTransitionLastTime = getNanoTime();
        this.mAnimationStartTime = getNanoTime();
        this.mTransitionInstantly = false;
        this.mInterpolator = null;
        if (i4 == -1) {
            this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        }
        this.mBeginState = -1;
        this.mScene.setTransition(-1, this.mEndState);
        SparseArray sparseArray = new SparseArray();
        if (i4 == 0) {
            this.mTransitionDuration = this.mScene.getDuration() / 1000.0f;
        } else if (i4 > 0) {
            this.mTransitionDuration = i4 / 1000.0f;
        }
        int childCount = getChildCount();
        this.mFrameArrayList.clear();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            this.mFrameArrayList.put(childAt, new MotionController(childAt));
            sparseArray.put(childAt.getId(), this.mFrameArrayList.get(childAt));
        }
        this.mInTransition = true;
        this.mModel.initFrom(this.mLayoutWidget, null, this.mScene.getConstraintSet(i));
        rebuildScene();
        this.mModel.build();
        computeCurrentPositions();
        int width = getWidth();
        int height = getHeight();
        if (this.mDecoratorsHelpers != null) {
            for (int i7 = 0; i7 < childCount; i7++) {
                MotionController motionController = this.mFrameArrayList.get(getChildAt(i7));
                if (motionController != null) {
                    this.mScene.getKeyFrames(motionController);
                }
            }
            Iterator<MotionHelper> it = this.mDecoratorsHelpers.iterator();
            while (it.hasNext()) {
                it.next().onPreSetup(this, this.mFrameArrayList);
            }
            for (int i8 = 0; i8 < childCount; i8++) {
                MotionController motionController2 = this.mFrameArrayList.get(getChildAt(i8));
                if (motionController2 != null) {
                    motionController2.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        } else {
            for (int i9 = 0; i9 < childCount; i9++) {
                MotionController motionController3 = this.mFrameArrayList.get(getChildAt(i9));
                if (motionController3 != null) {
                    this.mScene.getKeyFrames(motionController3);
                    motionController3.setup(width, height, this.mTransitionDuration, getNanoTime());
                }
            }
        }
        float staggered = this.mScene.getStaggered();
        if (staggered != 0.0f) {
            float fMax = -3.4028235E38f;
            float fMin = Float.MAX_VALUE;
            int i10 = 0;
            while (i10 < childCount) {
                MotionController motionController4 = this.mFrameArrayList.get(getChildAt(i10));
                float finalX = motionController4.getFinalX();
                float finalY = motionController4.getFinalY();
                fMin = Math.min(fMin, finalY + finalX);
                i10++;
                fMax = Math.max(fMax, finalY + finalX);
            }
            for (int i11 = 0; i11 < childCount; i11++) {
                MotionController motionController5 = this.mFrameArrayList.get(getChildAt(i11));
                float finalX2 = motionController5.getFinalX();
                float finalY2 = motionController5.getFinalY();
                motionController5.mStaggerScale = 1.0f / (1.0f - staggered);
                motionController5.mStaggerOffset = staggered - ((((finalX2 + finalY2) - fMin) * staggered) / (fMax - fMin));
            }
        }
        this.mTransitionPosition = 0.0f;
        this.mTransitionLastPosition = 0.0f;
        this.mInTransition = true;
        invalidate();
    }

    public void updateState() {
        this.mModel.initFrom(this.mLayoutWidget, this.mScene.getConstraintSet(this.mBeginState), this.mScene.getConstraintSet(this.mEndState));
        rebuildScene();
    }

    public void updateState(int i, ConstraintSet constraintSet) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.setConstraintSet(i, constraintSet);
        }
        updateState();
        if (this.mCurrentState == i) {
            constraintSet.applyTo(this);
        }
    }

    public void updateStateAnimate(int i, ConstraintSet constraintSet, int i2) {
        if (this.mScene != null && this.mCurrentState == i) {
            updateState(R.id.view_transition, getConstraintSet(i));
            setState(R.id.view_transition, -1, -1);
            updateState(i, constraintSet);
            MotionScene.Transition transition = new MotionScene.Transition(-1, this.mScene, R.id.view_transition, i);
            transition.setDuration(i2);
            setTransition(transition);
            transitionToEnd();
        }
    }

    public void viewTransition(int i, View... viewArr) {
        MotionScene motionScene = this.mScene;
        if (motionScene != null) {
            motionScene.viewTransition(i, viewArr);
        } else {
            Log.e(TAG, NPStringFog.decode(new byte[]{21, 11, 12, 23, 12, 93, 65, 12, 12, 89, 50, 81, 80, 11, 6}, "5ec7a2", 28341));
        }
    }
}

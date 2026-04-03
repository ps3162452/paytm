package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.Debug;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.KeyAttributes;
import androidx.constraintlayout.motion.widget.KeyPosition;
import androidx.constraintlayout.motion.widget.MotionController;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;
import java.util.HashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class MotionEffect extends MotionHelper {
    public static final int AUTO = -1;
    public static final int EAST = 2;
    public static final int NORTH = 0;
    public static final int SOUTH = 1;
    public static final String TAG = NPStringFog.decode(new byte[]{39, 0, 86, 3, 127, 89, 23, 4}, "aa2f26", -5.621822E8f);
    private static final int UNSET = -1;
    public static final int WEST = 3;
    private int fadeMove;
    private float motionEffectAlpha;
    private int motionEffectEnd;
    private int motionEffectStart;
    private boolean motionEffectStrictMove;
    private int motionEffectTranslationX;
    private int motionEffectTranslationY;
    private int viewTransitionId;

    public MotionEffect(Context context) {
        super(context);
        this.motionEffectAlpha = 0.1f;
        this.motionEffectStart = 49;
        this.motionEffectEnd = 50;
        this.motionEffectTranslationX = 0;
        this.motionEffectTranslationY = 0;
        this.motionEffectStrictMove = true;
        this.viewTransitionId = -1;
        this.fadeMove = -1;
    }

    public MotionEffect(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.motionEffectAlpha = 0.1f;
        this.motionEffectStart = 49;
        this.motionEffectEnd = 50;
        this.motionEffectTranslationX = 0;
        this.motionEffectTranslationY = 0;
        this.motionEffectStrictMove = true;
        this.viewTransitionId = -1;
        this.fadeMove = -1;
        init(context, attributeSet);
    }

    public MotionEffect(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.motionEffectAlpha = 0.1f;
        this.motionEffectStart = 49;
        this.motionEffectEnd = 50;
        this.motionEffectTranslationX = 0;
        this.motionEffectTranslationY = 0;
        this.motionEffectStrictMove = true;
        this.viewTransitionId = -1;
        this.fadeMove = -1;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MotionEffect);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.MotionEffect_motionEffect_start) {
                    int i2 = typedArrayObtainStyledAttributes.getInt(index, this.motionEffectStart);
                    this.motionEffectStart = i2;
                    this.motionEffectStart = Math.max(Math.min(i2, 99), 0);
                } else if (index == R.styleable.MotionEffect_motionEffect_end) {
                    int i3 = typedArrayObtainStyledAttributes.getInt(index, this.motionEffectEnd);
                    this.motionEffectEnd = i3;
                    this.motionEffectEnd = Math.max(Math.min(i3, 99), 0);
                } else if (index == R.styleable.MotionEffect_motionEffect_translationX) {
                    this.motionEffectTranslationX = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.motionEffectTranslationX);
                } else if (index == R.styleable.MotionEffect_motionEffect_translationY) {
                    this.motionEffectTranslationY = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.motionEffectTranslationY);
                } else if (index == R.styleable.MotionEffect_motionEffect_alpha) {
                    this.motionEffectAlpha = typedArrayObtainStyledAttributes.getFloat(index, this.motionEffectAlpha);
                } else if (index == R.styleable.MotionEffect_motionEffect_move) {
                    this.fadeMove = typedArrayObtainStyledAttributes.getInt(index, this.fadeMove);
                } else if (index == R.styleable.MotionEffect_motionEffect_strict) {
                    this.motionEffectStrictMove = typedArrayObtainStyledAttributes.getBoolean(index, this.motionEffectStrictMove);
                } else if (index == R.styleable.MotionEffect_motionEffect_viewTransition) {
                    this.viewTransitionId = typedArrayObtainStyledAttributes.getResourceId(index, this.viewTransitionId);
                }
            }
            int i4 = this.motionEffectStart;
            int i5 = this.motionEffectEnd;
            if (i4 == i5) {
                if (i4 > 0) {
                    this.motionEffectStart = i4 - 1;
                } else {
                    this.motionEffectEnd = i5 + 1;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionHelperInterface
    public boolean isDecorator() {
        return true;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionHelper, androidx.constraintlayout.motion.widget.MotionHelperInterface
    public void onPreSetup(MotionLayout motionLayout, HashMap<View, MotionController> map) {
        Key key;
        Key key2;
        Key key3;
        Key key4;
        View[] views = getViews((ConstraintLayout) getParent());
        if (views == null) {
            Log.v(TAG, String.valueOf(Debug.getLoc()).concat(NPStringFog.decode(new byte[]{68, 70, 10, 4, 69, 70, 68, 13, 67, 15, 71, 89, 8}, "d0ca25", 19267)));
            return;
        }
        Key keyAttributes = new KeyAttributes();
        Key keyAttributes2 = new KeyAttributes();
        keyAttributes.setValue(NPStringFog.decode(new byte[]{4, 95, 19, 93, 85}, "e3c547", false, true), Float.valueOf(this.motionEffectAlpha));
        keyAttributes2.setValue(NPStringFog.decode(new byte[]{5, 9, 21, 11, 83}, "deec23", -1.6314412E9f), Float.valueOf(this.motionEffectAlpha));
        keyAttributes.setFramePosition(this.motionEffectStart);
        keyAttributes2.setFramePosition(this.motionEffectEnd);
        KeyPosition keyPosition = new KeyPosition();
        keyPosition.setFramePosition(this.motionEffectStart);
        keyPosition.setType(0);
        keyPosition.setValue(NPStringFog.decode(new byte[]{65, 82, 69, 83, 87, 87, 69, 111}, "177029", -23784), 0);
        keyPosition.setValue(NPStringFog.decode(new byte[]{65, 3, 64, 84, 93, 90, 69, 63}, "1f2784", -26946), 0);
        KeyPosition keyPosition2 = new KeyPosition();
        keyPosition2.setFramePosition(this.motionEffectEnd);
        keyPosition2.setType(0);
        keyPosition2.setValue(NPStringFog.decode(new byte[]{71, 93, 22, 91, 4, 8, 67, 96}, "78d8af", 24011), 1);
        keyPosition2.setValue(NPStringFog.decode(new byte[]{19, 4, 68, 80, 6, 12, 23, 56}, "ca63cb", true), 1);
        if (this.motionEffectTranslationX > 0) {
            Key keyAttributes3 = new KeyAttributes();
            Key keyAttributes4 = new KeyAttributes();
            keyAttributes3.setValue(NPStringFog.decode(new byte[]{70, 17, 89, 91, 21, 91, 83, 23, 81, 90, 8, 111}, "2c85f7", true, true), Integer.valueOf(this.motionEffectTranslationX));
            keyAttributes3.setFramePosition(this.motionEffectEnd);
            keyAttributes4.setValue(NPStringFog.decode(new byte[]{76, 65, 81, 89, 17, 89, 89, 71, 89, 88, 12, 109}, "8307b5", -1.9873929E9f), 0);
            keyAttributes4.setFramePosition(this.motionEffectEnd - 1);
            key = keyAttributes3;
            key2 = keyAttributes4;
        } else {
            key = null;
            key2 = null;
        }
        if (this.motionEffectTranslationY > 0) {
            Key keyAttributes5 = new KeyAttributes();
            Key keyAttributes6 = new KeyAttributes();
            keyAttributes5.setValue(NPStringFog.decode(new byte[]{17, 71, 3, 8, 17, 84, 4, 65, 11, 9, 12, 97}, "e5bfb8", -1.6253937E9f), Integer.valueOf(this.motionEffectTranslationY));
            keyAttributes5.setFramePosition(this.motionEffectEnd);
            keyAttributes6.setValue(NPStringFog.decode(new byte[]{71, 19, 88, 93, 65, 9, 82, 21, 80, 92, 92, 60}, "3a932e", false, true), 0);
            keyAttributes6.setFramePosition(this.motionEffectEnd - 1);
            key3 = keyAttributes5;
            key4 = keyAttributes6;
        } else {
            key3 = null;
            key4 = null;
        }
        int i = this.fadeMove;
        if (this.fadeMove == -1) {
            int[] iArr = new int[4];
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= views.length) {
                    break;
                }
                MotionController motionController = map.get(views[i3]);
                if (motionController != null) {
                    float finalX = motionController.getFinalX() - motionController.getStartX();
                    float finalY = motionController.getFinalY() - motionController.getStartY();
                    if (finalY < 0.0f) {
                        iArr[1] = iArr[1] + 1;
                    }
                    if (finalY > 0.0f) {
                        iArr[0] = iArr[0] + 1;
                    }
                    if (finalX > 0.0f) {
                        iArr[3] = iArr[3] + 1;
                    }
                    if (finalX < 0.0f) {
                        iArr[2] = iArr[2] + 1;
                    }
                }
                i2 = i3 + 1;
            }
            int i4 = iArr[0];
            i = 0;
            for (int i5 = 1; i5 < 4; i5++) {
                if (i4 < iArr[i5]) {
                    i4 = iArr[i5];
                    i = i5;
                }
            }
        }
        int i6 = i;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i8 >= views.length) {
                return;
            }
            MotionController motionController2 = map.get(views[i8]);
            if (motionController2 != null) {
                float finalX2 = motionController2.getFinalX() - motionController2.getStartX();
                float finalY2 = motionController2.getFinalY() - motionController2.getStartY();
                boolean z = true;
                if (i6 == 0) {
                    if (finalY2 > 0.0f && (!this.motionEffectStrictMove || finalX2 == 0.0f)) {
                        z = false;
                    }
                } else if (i6 == 1) {
                    if (finalY2 < 0.0f && (!this.motionEffectStrictMove || finalX2 == 0.0f)) {
                        z = false;
                    }
                } else if (i6 == 2) {
                    if (finalX2 < 0.0f && (!this.motionEffectStrictMove || finalY2 == 0.0f)) {
                        z = false;
                    }
                } else if (i6 == 3 && finalX2 > 0.0f && (!this.motionEffectStrictMove || finalY2 == 0.0f)) {
                    z = false;
                }
                if (z) {
                    int i9 = this.viewTransitionId;
                    if (i9 == -1) {
                        motionController2.addKey(keyAttributes);
                        motionController2.addKey(keyAttributes2);
                        motionController2.addKey(keyPosition);
                        motionController2.addKey(keyPosition2);
                        if (this.motionEffectTranslationX > 0) {
                            motionController2.addKey(key);
                            motionController2.addKey(key2);
                        }
                        if (this.motionEffectTranslationY > 0) {
                            motionController2.addKey(key3);
                            motionController2.addKey(key4);
                        }
                    } else {
                        motionLayout.applyViewTransition(i9, motionController2);
                    }
                }
            }
            i7 = i8 + 1;
        }
    }
}

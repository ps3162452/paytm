package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.TextDelegate;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes64.dex */
public class TextLayer extends BaseLayer {
    private final LongSparseArray<String> codePointCache;

    @Nullable
    private BaseKeyframeAnimation<Integer, Integer> colorAnimation;

    @Nullable
    private BaseKeyframeAnimation<Integer, Integer> colorCallbackAnimation;
    private final LottieComposition composition;
    private final Map<FontCharacter, List<ContentGroup>> contentsForCharacter;
    private final Paint fillPaint;
    private final LottieDrawable lottieDrawable;
    private final Matrix matrix;
    private final RectF rectF;
    private final StringBuilder stringBuilder;

    @Nullable
    private BaseKeyframeAnimation<Integer, Integer> strokeColorAnimation;

    @Nullable
    private BaseKeyframeAnimation<Integer, Integer> strokeColorCallbackAnimation;
    private final Paint strokePaint;

    @Nullable
    private BaseKeyframeAnimation<Float, Float> strokeWidthAnimation;

    @Nullable
    private BaseKeyframeAnimation<Float, Float> strokeWidthCallbackAnimation;
    private final TextKeyframeAnimation textAnimation;

    @Nullable
    private BaseKeyframeAnimation<Float, Float> textSizeAnimation;

    @Nullable
    private BaseKeyframeAnimation<Float, Float> textSizeCallbackAnimation;

    @Nullable
    private BaseKeyframeAnimation<Float, Float> trackingAnimation;

    @Nullable
    private BaseKeyframeAnimation<Float, Float> trackingCallbackAnimation;

    /* JADX INFO: renamed from: com.airbnb.lottie.model.layer.TextLayer$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final int[] $SwitchMap$com$airbnb$lottie$model$DocumentData$Justification = new int[DocumentData.Justification.values().length];

        static {
            try {
                $SwitchMap$com$airbnb$lottie$model$DocumentData$Justification[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$DocumentData$Justification[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$DocumentData$Justification[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        int i = 1;
        this.stringBuilder = new StringBuilder(2);
        this.rectF = new RectF();
        this.matrix = new Matrix();
        this.fillPaint = new Paint(this, i) { // from class: com.airbnb.lottie.model.layer.TextLayer.1
            final TextLayer this$0;

            {
                this.this$0 = this;
                setStyle(Paint.Style.FILL);
            }
        };
        this.strokePaint = new Paint(this, i) { // from class: com.airbnb.lottie.model.layer.TextLayer.2
            final TextLayer this$0;

            {
                this.this$0 = this;
                setStyle(Paint.Style.STROKE);
            }
        };
        this.contentsForCharacter = new HashMap();
        this.codePointCache = new LongSparseArray<>();
        this.lottieDrawable = lottieDrawable;
        this.composition = layer.getComposition();
        this.textAnimation = layer.getText().createAnimation();
        this.textAnimation.addUpdateListener(this);
        addAnimation(this.textAnimation);
        AnimatableTextProperties textProperties = layer.getTextProperties();
        if (textProperties != null && textProperties.color != null) {
            this.colorAnimation = textProperties.color.createAnimation();
            this.colorAnimation.addUpdateListener(this);
            addAnimation(this.colorAnimation);
        }
        if (textProperties != null && textProperties.stroke != null) {
            this.strokeColorAnimation = textProperties.stroke.createAnimation();
            this.strokeColorAnimation.addUpdateListener(this);
            addAnimation(this.strokeColorAnimation);
        }
        if (textProperties != null && textProperties.strokeWidth != null) {
            this.strokeWidthAnimation = textProperties.strokeWidth.createAnimation();
            this.strokeWidthAnimation.addUpdateListener(this);
            addAnimation(this.strokeWidthAnimation);
        }
        if (textProperties == null || textProperties.tracking == null) {
            return;
        }
        this.trackingAnimation = textProperties.tracking.createAnimation();
        this.trackingAnimation.addUpdateListener(this);
        addAnimation(this.trackingAnimation);
    }

    private void applyJustification(DocumentData.Justification justification, Canvas canvas, float f) {
        switch (AnonymousClass3.$SwitchMap$com$airbnb$lottie$model$DocumentData$Justification[justification.ordinal()]) {
            case 2:
                canvas.translate(-f, 0.0f);
                break;
            case 3:
                canvas.translate((-f) / 2.0f, 0.0f);
                break;
        }
    }

    private String codePointToString(String str, int i) {
        int iCodePointAt = str.codePointAt(i);
        int iCharCount = Character.charCount(iCodePointAt) + i;
        while (iCharCount < str.length()) {
            int iCodePointAt2 = str.codePointAt(iCharCount);
            if (!isModifier(iCodePointAt2)) {
                break;
            }
            iCharCount += Character.charCount(iCodePointAt2);
            iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
        }
        if (this.codePointCache.containsKey(iCodePointAt)) {
            return this.codePointCache.get(iCodePointAt);
        }
        this.stringBuilder.setLength(0);
        while (i < iCharCount) {
            int iCodePointAt3 = str.codePointAt(i);
            this.stringBuilder.appendCodePoint(iCodePointAt3);
            i += Character.charCount(iCodePointAt3);
        }
        String string = this.stringBuilder.toString();
        this.codePointCache.put(iCodePointAt, string);
        return string;
    }

    private void drawCharacter(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    private void drawCharacterAsGlyph(FontCharacter fontCharacter, Matrix matrix, float f, DocumentData documentData, Canvas canvas) {
        List<ContentGroup> contentsForCharacter = getContentsForCharacter(fontCharacter);
        for (int i = 0; i < contentsForCharacter.size(); i++) {
            Path path = contentsForCharacter.get(i).getPath();
            path.computeBounds(this.rectF, false);
            this.matrix.set(matrix);
            this.matrix.preTranslate(0.0f, (-documentData.baselineShift) * Utils.dpScale());
            this.matrix.preScale(f, f);
            path.transform(this.matrix);
            if (documentData.strokeOverFill) {
                drawGlyph(path, this.fillPaint, canvas);
                drawGlyph(path, this.strokePaint, canvas);
            } else {
                drawGlyph(path, this.strokePaint, canvas);
                drawGlyph(path, this.fillPaint, canvas);
            }
        }
    }

    private void drawCharacterFromFont(String str, DocumentData documentData, Canvas canvas) {
        if (documentData.strokeOverFill) {
            drawCharacter(str, this.fillPaint, canvas);
            drawCharacter(str, this.strokePaint, canvas);
        } else {
            drawCharacter(str, this.strokePaint, canvas);
            drawCharacter(str, this.fillPaint, canvas);
        }
    }

    private void drawFontTextLine(String str, DocumentData documentData, Canvas canvas, float f) {
        int length = 0;
        while (length < str.length()) {
            String strCodePointToString = codePointToString(str, length);
            length += strCodePointToString.length();
            drawCharacterFromFont(strCodePointToString, documentData, canvas);
            canvas.translate(this.fillPaint.measureText(strCodePointToString) + f, 0.0f);
        }
    }

    private void drawGlyph(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    private void drawGlyphTextLine(String str, DocumentData documentData, Matrix matrix, Font font, Canvas canvas, float f, float f2) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= str.length()) {
                return;
            }
            FontCharacter fontCharacter = this.composition.getCharacters().get(FontCharacter.hashFor(str.charAt(i2), font.getFamily(), font.getStyle()));
            if (fontCharacter != null) {
                drawCharacterAsGlyph(fontCharacter, matrix, f2, documentData, canvas);
                float width = (float) fontCharacter.getWidth();
                float f3 = documentData.tracking / 10.0f;
                canvas.translate(((this.trackingCallbackAnimation != null ? this.trackingCallbackAnimation.getValue().floatValue() + f3 : this.trackingAnimation != null ? this.trackingAnimation.getValue().floatValue() + f3 : f3) * f) + (width * f2 * Utils.dpScale() * f), 0.0f);
            }
            i = i2 + 1;
        }
    }

    private void drawTextGlyphs(DocumentData documentData, Matrix matrix, Font font, Canvas canvas) {
        float fFloatValue = (this.textSizeCallbackAnimation != null ? this.textSizeCallbackAnimation.getValue().floatValue() : this.textSizeAnimation != null ? this.textSizeAnimation.getValue().floatValue() : documentData.size) / 100.0f;
        float scale = Utils.getScale(matrix);
        String str = documentData.text;
        float fDpScale = documentData.lineHeight * Utils.dpScale();
        List<String> textLines = getTextLines(str);
        int size = textLines.size();
        for (int i = 0; i < size; i++) {
            String str2 = textLines.get(i);
            float textLineWidthForGlyphs = getTextLineWidthForGlyphs(str2, font, fFloatValue, scale);
            canvas.save();
            applyJustification(documentData.justification, canvas, textLineWidthForGlyphs);
            canvas.translate(0.0f, (i * fDpScale) - (((size - 1) * fDpScale) / 2.0f));
            drawGlyphTextLine(str2, documentData, matrix, font, canvas, scale, fFloatValue);
            canvas.restore();
        }
    }

    private void drawTextWithFont(DocumentData documentData, Font font, Matrix matrix, Canvas canvas) {
        Utils.getScale(matrix);
        Typeface typeface = this.lottieDrawable.getTypeface(font.getFamily(), font.getStyle());
        if (typeface == null) {
            return;
        }
        String str = documentData.text;
        TextDelegate textDelegate = this.lottieDrawable.getTextDelegate();
        String textInternal = textDelegate != null ? textDelegate.getTextInternal(str) : str;
        this.fillPaint.setTypeface(typeface);
        float fFloatValue = this.textSizeCallbackAnimation != null ? this.textSizeCallbackAnimation.getValue().floatValue() : this.textSizeAnimation != null ? this.textSizeAnimation.getValue().floatValue() : documentData.size;
        this.fillPaint.setTextSize(Utils.dpScale() * fFloatValue);
        this.strokePaint.setTypeface(this.fillPaint.getTypeface());
        this.strokePaint.setTextSize(this.fillPaint.getTextSize());
        float fDpScale = documentData.lineHeight * Utils.dpScale();
        float f = documentData.tracking / 10.0f;
        float fFloatValue2 = (((this.trackingCallbackAnimation != null ? this.trackingCallbackAnimation.getValue().floatValue() + f : this.trackingAnimation != null ? this.trackingAnimation.getValue().floatValue() + f : f) * Utils.dpScale()) * fFloatValue) / 100.0f;
        List<String> textLines = getTextLines(textInternal);
        int size = textLines.size();
        for (int i = 0; i < size; i++) {
            String str2 = textLines.get(i);
            canvas.save();
            applyJustification(documentData.justification, canvas, this.strokePaint.measureText(str2) + ((str2.length() - 1) * fFloatValue2));
            canvas.translate(0.0f, (i * fDpScale) - (((size - 1) * fDpScale) / 2.0f));
            drawFontTextLine(str2, documentData, canvas, fFloatValue2);
            canvas.restore();
        }
    }

    private List<ContentGroup> getContentsForCharacter(FontCharacter fontCharacter) {
        if (this.contentsForCharacter.containsKey(fontCharacter)) {
            return this.contentsForCharacter.get(fontCharacter);
        }
        List<ShapeGroup> shapes = fontCharacter.getShapes();
        int size = shapes.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new ContentGroup(this.lottieDrawable, this, shapes.get(i)));
        }
        this.contentsForCharacter.put(fontCharacter, arrayList);
        return arrayList;
    }

    private float getTextLineWidthForGlyphs(String str, Font font, float f, float f2) {
        int i = 0;
        float width = 0.0f;
        while (true) {
            int i2 = i;
            if (i2 >= str.length()) {
                return width;
            }
            FontCharacter fontCharacter = this.composition.getCharacters().get(FontCharacter.hashFor(str.charAt(i2), font.getFamily(), font.getStyle()));
            if (fontCharacter != null) {
                width = (float) (((double) width) + (fontCharacter.getWidth() * ((double) f) * ((double) Utils.dpScale()) * ((double) f2)));
            }
            i = i2 + 1;
        }
    }

    private List<String> getTextLines(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
    }

    private boolean isModifier(int i) {
        return Character.getType(i) == 16 || Character.getType(i) == 27 || Character.getType(i) == 6 || Character.getType(i) == 28 || Character.getType(i) == 19;
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        super.addValueCallback(t, lottieValueCallback);
        if (t == LottieProperty.COLOR) {
            if (this.colorCallbackAnimation != null) {
                removeAnimation(this.colorCallbackAnimation);
            }
            if (lottieValueCallback == null) {
                this.colorCallbackAnimation = null;
                return;
            }
            this.colorCallbackAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.colorCallbackAnimation.addUpdateListener(this);
            addAnimation(this.colorCallbackAnimation);
            return;
        }
        if (t == LottieProperty.STROKE_COLOR) {
            if (this.strokeColorCallbackAnimation != null) {
                removeAnimation(this.strokeColorCallbackAnimation);
            }
            if (lottieValueCallback == null) {
                this.strokeColorCallbackAnimation = null;
                return;
            }
            this.strokeColorCallbackAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.strokeColorCallbackAnimation.addUpdateListener(this);
            addAnimation(this.strokeColorCallbackAnimation);
            return;
        }
        if (t == LottieProperty.STROKE_WIDTH) {
            if (this.strokeWidthCallbackAnimation != null) {
                removeAnimation(this.strokeWidthCallbackAnimation);
            }
            if (lottieValueCallback == null) {
                this.strokeWidthCallbackAnimation = null;
                return;
            }
            this.strokeWidthCallbackAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.strokeWidthCallbackAnimation.addUpdateListener(this);
            addAnimation(this.strokeWidthCallbackAnimation);
            return;
        }
        if (t == LottieProperty.TEXT_TRACKING) {
            if (this.trackingCallbackAnimation != null) {
                removeAnimation(this.trackingCallbackAnimation);
            }
            if (lottieValueCallback == null) {
                this.trackingCallbackAnimation = null;
                return;
            }
            this.trackingCallbackAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.trackingCallbackAnimation.addUpdateListener(this);
            addAnimation(this.trackingCallbackAnimation);
            return;
        }
        if (t == LottieProperty.TEXT_SIZE) {
            if (this.textSizeCallbackAnimation != null) {
                removeAnimation(this.textSizeCallbackAnimation);
            }
            if (lottieValueCallback == null) {
                this.textSizeCallbackAnimation = null;
                return;
            }
            this.textSizeCallbackAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.textSizeCallbackAnimation.addUpdateListener(this);
            addAnimation(this.textSizeCallbackAnimation);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    void drawLayer(Canvas canvas, Matrix matrix, int i) {
        canvas.save();
        if (!this.lottieDrawable.useTextGlyphs()) {
            canvas.concat(matrix);
        }
        DocumentData value = this.textAnimation.getValue();
        Font font = this.composition.getFonts().get(value.fontName);
        if (font == null) {
            canvas.restore();
            return;
        }
        if (this.colorCallbackAnimation != null) {
            this.fillPaint.setColor(this.colorCallbackAnimation.getValue().intValue());
        } else if (this.colorAnimation != null) {
            this.fillPaint.setColor(this.colorAnimation.getValue().intValue());
        } else {
            this.fillPaint.setColor(value.color);
        }
        if (this.strokeColorCallbackAnimation != null) {
            this.strokePaint.setColor(this.strokeColorCallbackAnimation.getValue().intValue());
        } else if (this.strokeColorAnimation != null) {
            this.strokePaint.setColor(this.strokeColorAnimation.getValue().intValue());
        } else {
            this.strokePaint.setColor(value.strokeColor);
        }
        int iIntValue = ((this.transform.getOpacity() == null ? 100 : this.transform.getOpacity().getValue().intValue()) * 255) / 100;
        this.fillPaint.setAlpha(iIntValue);
        this.strokePaint.setAlpha(iIntValue);
        if (this.strokeWidthCallbackAnimation != null) {
            this.strokePaint.setStrokeWidth(this.strokeWidthCallbackAnimation.getValue().floatValue());
        } else if (this.strokeWidthAnimation != null) {
            this.strokePaint.setStrokeWidth(this.strokeWidthAnimation.getValue().floatValue());
        } else {
            this.strokePaint.setStrokeWidth(Utils.getScale(matrix) * value.strokeWidth * Utils.dpScale());
        }
        if (this.lottieDrawable.useTextGlyphs()) {
            drawTextGlyphs(value, matrix, font, canvas);
        } else {
            drawTextWithFont(value, font, matrix, canvas);
        }
        canvas.restore();
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        super.getBounds(rectF, matrix, z);
        rectF.set(0.0f, 0.0f, this.composition.getBounds().width(), this.composition.getBounds().height());
    }
}

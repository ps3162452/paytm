package androidx.emoji2.text;

import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.core.util.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes27.dex */
public abstract class EmojiSpan extends ReplacementSpan {
    private final EmojiMetadata mMetadata;
    private final Paint.FontMetricsInt mTmpFontMetrics = new Paint.FontMetricsInt();
    private short mWidth = (short) (-1);
    private short mHeight = (short) (-1);
    private float mRatio = 1.0f;

    EmojiSpan(EmojiMetadata emojiMetadata) {
        Preconditions.checkNotNull(emojiMetadata, NPStringFog.decode(new byte[]{12, 0, 66, 3, 83, 80, 21, 4, 22, 1, 86, 95, 15, 10, 66, 66, 85, 84, 65, 11, 67, 14, 91}, "ae6b71", false, true));
        this.mMetadata = emojiMetadata;
    }

    public final int getHeight() {
        return this.mHeight;
    }

    public final int getId() {
        return getMetadata().getId();
    }

    public final EmojiMetadata getMetadata() {
        return this.mMetadata;
    }

    final float getRatio() {
        return this.mRatio;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        paint.getFontMetricsInt(this.mTmpFontMetrics);
        this.mRatio = (Math.abs(this.mTmpFontMetrics.descent - this.mTmpFontMetrics.ascent) * 1.0f) / this.mMetadata.getHeight();
        this.mHeight = (short) (this.mMetadata.getHeight() * this.mRatio);
        this.mWidth = (short) (this.mMetadata.getWidth() * this.mRatio);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = this.mTmpFontMetrics.ascent;
            fontMetricsInt.descent = this.mTmpFontMetrics.descent;
            fontMetricsInt.top = this.mTmpFontMetrics.top;
            fontMetricsInt.bottom = this.mTmpFontMetrics.bottom;
        }
        return this.mWidth;
    }

    final int getWidth() {
        return this.mWidth;
    }
}

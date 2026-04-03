package com.google.android.gms.internal.base;

import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.recyclerview.widget.ItemTouchHelper;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zak extends Drawable implements Drawable.Callback {
    private int zaa;
    private long zab;
    private int zac;
    private int zad;
    private int zae;
    private int zaf;
    private boolean zag;
    private boolean zah;
    private zaj zai;
    private Drawable zaj;
    private Drawable zak;
    private boolean zal;
    private boolean zam;
    private boolean zan;
    private int zao;

    public zak(Drawable drawable, Drawable drawable2) {
        this(null);
        drawable = drawable == null ? zai.zaa : drawable;
        this.zaj = drawable;
        drawable.setCallback(this);
        this.zai.zab |= drawable.getChangingConfigurations();
        drawable2 = drawable2 == null ? zai.zaa : drawable2;
        this.zak = drawable2;
        drawable2.setCallback(this);
        this.zai.zab |= drawable2.getChangingConfigurations();
    }

    zak(zaj zajVar) {
        this.zaa = 0;
        this.zad = 255;
        this.zaf = 0;
        this.zag = true;
        this.zai = new zaj(zajVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void draw(android.graphics.Canvas r9) {
        /*
            r8 = this;
            r0 = 1
            r7 = 1065353216(0x3f800000, float:1.0)
            r1 = 0
            int r2 = r8.zaa
            switch(r2) {
                case 1: goto L52;
                case 2: goto L26;
                default: goto L9;
            }
        L9:
            int r2 = r8.zaf
            boolean r3 = r8.zag
            android.graphics.drawable.Drawable r4 = r8.zaj
            android.graphics.drawable.Drawable r5 = r8.zak
            if (r0 == 0) goto L5f
            if (r3 == 0) goto L5d
            if (r2 != 0) goto L1b
        L17:
            r4.draw(r9)
            r2 = r1
        L1b:
            int r0 = r8.zad
            if (r2 != r0) goto L25
            r5.setAlpha(r0)
            r5.draw(r9)
        L25:
            return
        L26:
            long r2 = r8.zab
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 < 0) goto L9
            long r2 = android.os.SystemClock.uptimeMillis()
            long r4 = r8.zab
            int r6 = r8.zae
            float r6 = (float) r6
            long r2 = r2 - r4
            float r2 = (float) r2
            float r2 = r2 / r6
            int r3 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r3 < 0) goto L50
        L3e:
            if (r0 == 0) goto L42
            r8.zaa = r1
        L42:
            float r2 = java.lang.Math.min(r2, r7)
            int r3 = r8.zac
            float r3 = (float) r3
            float r2 = r2 * r3
            r3 = 0
            float r2 = r2 + r3
            int r2 = (int) r2
            r8.zaf = r2
            goto L9
        L50:
            r0 = r1
            goto L3e
        L52:
            long r2 = android.os.SystemClock.uptimeMillis()
            r8.zab = r2
            r0 = 2
            r8.zaa = r0
            r0 = r1
            goto L9
        L5d:
            r1 = r2
            goto L17
        L5f:
            if (r3 == 0) goto L67
            int r0 = r8.zad
            int r0 = r0 - r2
            r4.setAlpha(r0)
        L67:
            r4.draw(r9)
            if (r3 == 0) goto L71
            int r0 = r8.zad
            r4.setAlpha(r0)
        L71:
            if (r2 <= 0) goto L7e
            r5.setAlpha(r2)
            r5.draw(r9)
            int r0 = r8.zad
            r5.setAlpha(r0)
        L7e:
            r8.invalidateSelf()
            goto L25
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.base.zak.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        zaj zajVar = this.zai;
        return changingConfigurations | zajVar.zaa | zajVar.zab;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!zac()) {
            return null;
        }
        this.zai.zaa = getChangingConfigurations();
        return this.zai;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.zaj.getIntrinsicHeight(), this.zak.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.zaj.getIntrinsicWidth(), this.zak.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (!this.zan) {
            this.zao = Drawable.resolveOpacity(this.zaj.getOpacity(), this.zak.getOpacity());
            this.zan = true;
        }
        return this.zao;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.zah && super.mutate() == this) {
            if (!zac()) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{45, 10, 83, 22, 90, 70, 66, 9, 89, 68, 80, 20, 1, 12, 95, 90, 81, 70, 7, 10, 22, 89, 83, 20, 22, 12, 95, 69, 21, 120, 3, 29, 83, 68, 113, 70, 3, 19, 87, 84, 89, 81, 66, 0, 89, 83, 70, 20, 12, 11, 66, 22, 93, 85, 20, 1, 22, 85, 90, 90, 17, 16, 87, 88, 65, 20, 17, 16, 87, 66, 80, 15, 66, 16, 94, 95, 70, 20, 6, 22, 87, 65, 84, 86, 14, 1, 22, 85, 84, 90, 12, 11, 66, 22, 87, 81, 66, 9, 67, 66, 84, 64, 7, 0, 24}, "bd6654", 20065));
            }
            this.zaj.mutate();
            this.zak.mutate();
            this.zah = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        this.zaj.setBounds(rect);
        this.zak.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.zaf == this.zad) {
            this.zaf = i;
        }
        this.zad = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.zaj.setColorFilter(colorFilter);
        this.zak.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final Drawable zaa() {
        return this.zak;
    }

    public final void zab(int i) {
        this.zac = this.zad;
        this.zaf = 0;
        this.zae = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
        this.zaa = 1;
        invalidateSelf();
    }

    public final boolean zac() {
        if (!this.zal) {
            boolean z = false;
            if (this.zaj.getConstantState() != null && this.zak.getConstantState() != null) {
                z = true;
            }
            this.zam = z;
            this.zal = true;
        }
        return this.zam;
    }
}

package androidx.core.view.accessibility;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class AccessibilityClickableSpanCompat extends ClickableSpan {
    public static final String SPAN_ID = NPStringFog.decode(new byte[]{112, 37, 116, 36, 48, 96, 120, 36, 126, 45, 42, 103, 104, 57, 116, 45, 42, 112, 122, 39, 117, 45, 38, 108, 98, 54, 118, 47, 60, 122, 117}, "1f7ac3", 1.10019812E9d);
    private final int mClickableSpanActionId;
    private final AccessibilityNodeInfoCompat mNodeInfoCompat;
    private final int mOriginalClickableSpanId;

    public AccessibilityClickableSpanCompat(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, int i2) {
        this.mOriginalClickableSpanId = i;
        this.mNodeInfoCompat = accessibilityNodeInfoCompat;
        this.mClickableSpanActionId = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt(SPAN_ID, this.mOriginalClickableSpanId);
        this.mNodeInfoCompat.performAction(this.mClickableSpanActionId, bundle);
    }
}

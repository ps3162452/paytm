package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.annotation.RestrictTo;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
import java.io.IOException;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes22.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
public class AnimationUtilsCompat {
    private AnimationUtilsCompat() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0160, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.view.animation.Interpolator createInterpolatorFromXml(android.content.Context r12, android.content.res.Resources r13, android.content.res.Resources.Theme r14, org.xmlpull.v1.XmlPullParser r15) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimationUtilsCompat.createInterpolatorFromXml(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser):android.view.animation.Interpolator");
    }

    public static Interpolator loadInterpolator(Context context, int i) throws Resources.NotFoundException {
        Interpolator interpolatorCreateInterpolatorFromXml;
        XmlResourceParser animation = null;
        if (Build.VERSION.SDK_INT >= 21) {
            return AnimationUtils.loadInterpolator(context, i);
        }
        try {
            try {
                if (i == 17563663) {
                    interpolatorCreateInterpolatorFromXml = new FastOutLinearInInterpolator();
                } else if (i == 17563661) {
                    interpolatorCreateInterpolatorFromXml = new FastOutSlowInInterpolator();
                } else if (i == 17563662) {
                    interpolatorCreateInterpolatorFromXml = new LinearOutSlowInInterpolator();
                } else {
                    animation = context.getResources().getAnimation(i);
                    interpolatorCreateInterpolatorFromXml = createInterpolatorFromXml(context, context.getResources(), context.getTheme(), animation);
                }
                return interpolatorCreateInterpolatorFromXml;
            } catch (IOException e) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException(NPStringFog.decode(new byte[]{38, 2, 94, 18, 65, 17, 9, 12, 81, 81, 21, 80, 11, 10, 93, 84, 65, 88, 10, 13, 16, 71, 80, 66, 10, 22, 66, 86, 80, 17, 44, 39, 16, 22, 5, 73}, "ec0551", false, true) + Integer.toHexString(i));
                notFoundException.initCause(e);
                throw notFoundException;
            } catch (XmlPullParserException e2) {
                Resources.NotFoundException notFoundException2 = new Resources.NotFoundException(NPStringFog.decode(new byte[]{123, 80, 13, 66, 76, 70, 84, 94, 2, 1, 24, 7, 86, 88, 14, 4, 76, 15, 87, 95, 67, 23, 93, 21, 87, 68, 17, 6, 93, 70, 113, 117, 67, 70, 8, 30}, "81ce8f", 9.62455706E8d) + Integer.toHexString(i));
                notFoundException2.initCause(e2);
                throw notFoundException2;
            }
        } finally {
            if (animation != null) {
                animation.close();
            }
        }
    }
}

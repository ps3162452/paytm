package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import androidx.core.graphics.BitmapCompat;
import androidx.core.view.GravityCompat;
import java.io.InputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class RoundedBitmapDrawableFactory {
    private static final String TAG = NPStringFog.decode(new byte[]{100, 12, 76, 90, 1, 7, 82, 33, 80, 64, 8, 3, 70, 39, 75, 85, 18, 3, 84, 15, 92, 114, 4}, "6c94eb", 2.3689026E8f);

    private static class DefaultRoundedBitmapDrawable extends RoundedBitmapDrawable {
        DefaultRoundedBitmapDrawable(Resources resources, Bitmap bitmap) {
            super(resources, bitmap);
        }

        @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
        void gravityCompatApply(int i, int i2, int i3, Rect rect, Rect rect2) {
            GravityCompat.apply(i, i2, i3, rect, rect2, 0);
        }

        @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
        public boolean hasMipMap() {
            return this.mBitmap != null && BitmapCompat.hasMipMap(this.mBitmap);
        }

        @Override // androidx.core.graphics.drawable.RoundedBitmapDrawable
        public void setMipMap(boolean z) {
            if (this.mBitmap != null) {
                BitmapCompat.setHasMipMap(this.mBitmap, z);
                invalidateSelf();
            }
        }
    }

    private RoundedBitmapDrawableFactory() {
    }

    public static RoundedBitmapDrawable create(Resources resources, Bitmap bitmap) {
        return Build.VERSION.SDK_INT >= 21 ? new RoundedBitmapDrawable21(resources, bitmap) : new DefaultRoundedBitmapDrawable(resources, bitmap);
    }

    public static RoundedBitmapDrawable create(Resources resources, InputStream inputStream) {
        RoundedBitmapDrawable roundedBitmapDrawableCreate = create(resources, BitmapFactory.decodeStream(inputStream));
        if (roundedBitmapDrawableCreate.getBitmap() == null) {
            Log.w(TAG, NPStringFog.decode(new byte[]{103, 10, 68, 95, 93, 0, 81, 39, 88, 69, 84, 4, 69, 33, 67, 80, 78, 4, 87, 9, 84, 17, 90, 4, 91, 11, 94, 69, 25, 1, 80, 6, 94, 85, 92, 69}, "5e119e", true) + inputStream);
        }
        return roundedBitmapDrawableCreate;
    }

    public static RoundedBitmapDrawable create(Resources resources, String str) {
        RoundedBitmapDrawable roundedBitmapDrawableCreate = create(resources, BitmapFactory.decodeFile(str));
        if (roundedBitmapDrawableCreate.getBitmap() == null) {
            Log.w(TAG, NPStringFog.decode(new byte[]{102, 93, 66, 90, 2, 84, 80, 112, 94, 64, 11, 80, 68, 118, 69, 85, 17, 80, 86, 94, 82, 20, 5, 80, 90, 92, 88, 64, 70, 85, 81, 81, 88, 80, 3, 17}, "4274f1", -19506) + str);
        }
        return roundedBitmapDrawableCreate;
    }
}

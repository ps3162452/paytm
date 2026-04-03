package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.widget.ImageView;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.internal.base.zam;
import com.google.android.gms.internal.base.zat;
import com.google.android.gms.internal.base.zau;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class ImageManager {
    private static final Object zaa = new Object();
    private static final HashSet zab = new HashSet();
    private static ImageManager zac;
    private final Context zad;
    private final Handler zae = new zau(Looper.getMainLooper());
    private final ExecutorService zaf = zat.zaa().zab(4, 2);
    private final zam zag = new zam();
    private final Map zah = new HashMap();
    private final Map zai = new HashMap();
    private final Map zaj = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    final class ImageReceiver extends ResultReceiver {
        final ImageManager zaa;
        private final Uri zab;
        private final ArrayList zac;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ImageReceiver(ImageManager imageManager, Uri uri) {
            super(new zau(Looper.getMainLooper()));
            this.zaa = imageManager;
            this.zab = uri;
            this.zac = new ArrayList();
        }

        @Override // android.os.ResultReceiver
        public final void onReceiveResult(int i, Bundle bundle) {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) bundle.getParcelable(NPStringFog.decode(new byte[]{80, 10, 94, 74, 6, 86, 92, 2, 95, 1, 79, 88, 93, 1, 65, 11, 8, 93, 29, 2, 94, 23, 79, 92, 75, 17, 65, 5, 79, 95, 90, 9, 86, 32, 4, 74, 80, 23, 90, 20, 21, 86, 65}, "3e3da9", 29722257L));
            ImageManager imageManager = this.zaa;
            imageManager.zaf.execute(new zaa(imageManager, this.zab, parcelFileDescriptor));
        }

        public final void zab(zag zagVar) {
            Asserts.checkMainThread(NPStringFog.decode(new byte[]{126, 15, 4, 4, 81, 103, 82, 1, 0, 10, 66, 80, 69, 76, 4, 7, 80, 124, 90, 3, 2, 6, 102, 80, 70, 23, 0, 16, 64, 29, 30, 66, 8, 22, 71, 65, 23, 0, 0, 67, 87, 84, 91, 14, 0, 7, 20, 92, 89, 66, 17, 11, 81, 21, 90, 3, 12, 13, 20, 65, 95, 16, 0, 2, 80}, "7bec45", 1.529193175E9d));
            this.zac.add(zagVar);
        }

        public final void zac(zag zagVar) {
            Asserts.checkMainThread(NPStringFog.decode(new byte[]{121, 92, 81, 2, 83, 99, 85, 82, 85, 12, 64, 84, 66, 31, 66, 0, 91, 94, 70, 84, 121, 8, 87, 86, 85, 99, 85, 20, 67, 84, 67, 69, 24, 76, 22, 92, 69, 66, 68, 69, 84, 84, 16, 82, 81, 9, 90, 84, 84, 17, 89, 11, 22, 69, 88, 84, 16, 8, 87, 88, 94, 17, 68, 13, 68, 84, 81, 85}, "010e61", -9747));
            this.zac.remove(zagVar);
        }

        public final void zad() {
            Intent intent = new Intent(NPStringFog.decode(new byte[]{82, 91, 9, 27, 4, 12, 94, 83, 8, 80, 77, 2, 95, 80, 22, 90, 10, 7, 31, 83, 9, 70, 77, 0, 94, 89, 9, 90, 13, 77, 88, 89, 5, 82, 6, 16, 31, 120, 43, 116, 39, 60, 120, 121, 37, 114, 38}, "14d5cc", 4.86906333E8d));
            intent.setPackage(NPStringFog.decode(new byte[]{83, 12, 11, 26, 83, 86, 95, 4, 10, 81, 26, 88, 94, 7, 20, 91, 93, 93, 30, 4, 11, 71}, "0cf449", true));
            intent.putExtra(NPStringFog.decode(new byte[]{85, 11, 93, 28, 4, 10, 89, 3, 92, 87, 77, 4, 88, 0, 66, 93, 10, 1, 24, 3, 93, 65, 77, 0, 78, 16, 66, 83, 16, 75, 67, 22, 89}, "6d02ce", 1.907459751E9d), this.zab);
            intent.putExtra(NPStringFog.decode(new byte[]{83, 94, 12, 75, 83, 91, 95, 86, 13, 0, 26, 85, 94, 85, 19, 10, 93, 80, 30, 86, 12, 22, 26, 81, 72, 69, 19, 4, 71, 26, 66, 84, 18, 16, 88, 64, 98, 84, 2, 0, 93, 66, 85, 67}, "01ae44", false), this);
            intent.putExtra(NPStringFog.decode(new byte[]{90, 13, 92, 27, 95, 87, 86, 5, 93, 80, 22, 89, 87, 6, 67, 90, 81, 92, 23, 5, 92, 70, 22, 93, 65, 22, 67, 84, 75, 22, 73, 16, 88, 90, 74, 81, 77, 27}, "9b1588", 3053), 3);
            this.zaa.zad.sendBroadcast(intent);
        }
    }

    public interface OnImageLoadedListener {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    private ImageManager(Context context, boolean z) {
        this.zad = context.getApplicationContext();
    }

    public static ImageManager create(Context context) {
        if (zac == null) {
            zac = new ImageManager(context, false);
        }
        return zac;
    }

    public void loadImage(ImageView imageView, int i) {
        zaj(new zae(imageView, i));
    }

    public void loadImage(ImageView imageView, Uri uri) {
        zaj(new zae(imageView, uri));
    }

    public void loadImage(ImageView imageView, Uri uri, int i) {
        zae zaeVar = new zae(imageView, uri);
        zaeVar.zab = i;
        zaj(zaeVar);
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri) {
        zaj(new zaf(onImageLoadedListener, uri));
    }

    public void loadImage(OnImageLoadedListener onImageLoadedListener, Uri uri, int i) {
        zaf zafVar = new zaf(onImageLoadedListener, uri);
        zafVar.zab = i;
        zaj(zafVar);
    }

    public final void zaj(zag zagVar) {
        Asserts.checkMainThread(NPStringFog.decode(new byte[]{126, 12, 88, 83, 93, 123, 86, 15, 88, 83, 93, 68, 25, 13, 86, 85, 92, 127, 90, 0, 94, 81, 16, 31, 23, 12, 76, 71, 76, 22, 85, 4, 25, 87, 89, 90, 91, 4, 93, 20, 81, 88, 23, 21, 81, 81, 24, 91, 86, 8, 87, 20, 76, 94, 69, 4, 88, 80}, "7a9486", true));
        new zab(this, zagVar).run();
    }
}

package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.Asserts;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zac implements Runnable {
    final ImageManager zaa;
    private final Uri zab;
    private final Bitmap zac;
    private final CountDownLatch zad;

    public zac(ImageManager imageManager, Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
        this.zaa = imageManager;
        this.zab = uri;
        this.zac = bitmap;
        this.zad = countDownLatch;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Asserts.checkMainThread(NPStringFog.decode(new byte[]{121, 13, 113, 95, 16, 92, 87, 19, 127, 89, 5, 85, 83, 7, 97, 67, 10, 95, 87, 1, 95, 83, 68, 92, 67, 16, 71, 22, 6, 84, 22, 6, 75, 83, 7, 68, 66, 6, 87, 22, 13, 95, 22, 23, 91, 83, 68, 92, 87, 10, 93, 22, 16, 89, 68, 6, 82, 82}, "6c36d1", 538055993L));
        Bitmap bitmap = this.zac;
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) this.zaa.zai.remove(this.zab);
        if (imageReceiver != null) {
            ArrayList arrayList = imageReceiver.zac;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zag zagVar = (zag) arrayList.get(i);
                Bitmap bitmap2 = this.zac;
                if (bitmap2 == null || bitmap == null) {
                    this.zaa.zaj.put(this.zab, Long.valueOf(SystemClock.elapsedRealtime()));
                    ImageManager imageManager = this.zaa;
                    zagVar.zab(imageManager.zad, imageManager.zag, false);
                } else {
                    zagVar.zac(this.zaa.zad, bitmap2, false);
                }
                if (!(zagVar instanceof zaf)) {
                    this.zaa.zah.remove(zagVar);
                }
            }
        }
        this.zad.countDown();
        synchronized (ImageManager.zaa) {
            ImageManager.zab.remove(this.zab);
        }
    }
}

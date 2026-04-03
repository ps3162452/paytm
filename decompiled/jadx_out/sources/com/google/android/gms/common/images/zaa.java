package com.google.android.gms.common.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.google.android.gms.common.internal.Asserts;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zaa implements Runnable {
    final ImageManager zaa;
    private final Uri zab;
    private final ParcelFileDescriptor zac;

    public zaa(ImageManager imageManager, Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.zaa = imageManager;
        this.zab = uri;
        this.zac = parcelFileDescriptor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bitmap bitmapDecodeFileDescriptor = null;
        boolean z = false;
        Asserts.checkNotMainThread(NPStringFog.decode(new byte[]{117, 90, 84, 84, 32, 92, 77, 88, 84, 64, 36, 71, 86, 88, 113, 89, 17, 94, 107, 64, 91, 94, 3, 87, 85, 80, 21, 83, 3, 91, 30, 65, 21, 82, 7, 21, 92, 77, 80, 83, 23, 65, 92, 81, 21, 89, 12, 21, 77, 93, 80, 16, 15, 84, 80, 91, 21, 68, 10, 71, 92, 84, 81}, "9550b5", 572636737L));
        ParcelFileDescriptor parcelFileDescriptor = this.zac;
        if (parcelFileDescriptor != null) {
            try {
                bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
            } catch (OutOfMemoryError e) {
                Log.e(NPStringFog.decode(new byte[]{126, 90, 84, 5, 85, 120, 86, 89, 84, 5, 85, 71}, "775b05", -29598), NPStringFog.decode(new byte[]{125, 119, 127, 24, 70, 14, 91, 84, 87, 24, 93, 9, 83, 92, 91, 86, 86, 70, 80, 81, 70, 85, 80, 22, 18, 94, 93, 74, 17, 19, 64, 81, 8, 24}, "28281f", true, true).concat(String.valueOf(String.valueOf(this.zab))), e);
                z = true;
            }
            try {
                this.zac.close();
            } catch (IOException e2) {
                Log.e(NPStringFog.decode(new byte[]{127, 85, 88, 4, 0, 125, 87, 86, 88, 4, 0, 66}, "689ce0", -9.6035955E8f), NPStringFog.decode(new byte[]{87, 8, 13, 70, 6, 7, 20, 2, 3, 92, 15, 6, 80}, "4db5cc", 1.185797E9f), e2);
            }
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        ImageManager imageManager = this.zaa;
        imageManager.zae.post(new zac(imageManager, this.zab, bitmapDecodeFileDescriptor, z, countDownLatch));
        try {
            countDownLatch.await();
        } catch (InterruptedException e3) {
            Log.w(NPStringFog.decode(new byte[]{123, 8, 4, 86, 0, 40, 83, 11, 4, 86, 0, 23}, "2ee1ee", 11598), NPStringFog.decode(new byte[]{127, 81, 76, 91, 90, 20, 90, 94, 76, 93, 64, 70, 70, 64, 76, 93, 86, 20, 68, 88, 81, 84, 87, 20, 67, 95, 75, 76, 91, 90, 84, 16}, "308824", -4.8000637E8f).concat(String.valueOf(String.valueOf(this.zab))));
        }
    }
}

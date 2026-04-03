package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.images.ImageManager;
import com.google.android.gms.common.internal.Asserts;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
final class zab implements Runnable {
    final ImageManager zaa;
    private final zag zab;

    public zab(ImageManager imageManager, zag zagVar) {
        this.zaa = imageManager;
        this.zab = zagVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Asserts.checkMainThread(NPStringFog.decode(new byte[]{41, 13, 82, 85, 122, 95, 4, 5, 86, 99, 70, 92, 11, 3, 81, 93, 86, 18, 8, 23, 64, 69, 19, 80, 0, 66, 86, 73, 86, 81, 16, 22, 86, 85, 19, 93, 11, 66, 71, 89, 86, 18, 8, 3, 90, 95, 19, 70, 13, 16, 86, 80, 87}, "eb3132", true));
        ImageManager.ImageReceiver imageReceiver = (ImageManager.ImageReceiver) this.zaa.zah.get(this.zab);
        if (imageReceiver != null) {
            this.zaa.zah.remove(this.zab);
            imageReceiver.zac(this.zab);
        }
        zag zagVar = this.zab;
        zad zadVar = zagVar.zaa;
        Uri uri = zadVar.zaa;
        if (uri == null) {
            ImageManager imageManager = this.zaa;
            zagVar.zab(imageManager.zad, imageManager.zag, true);
            return;
        }
        Long l = (Long) this.zaa.zaj.get(uri);
        if (l != null) {
            if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                zag zagVar2 = this.zab;
                ImageManager imageManager2 = this.zaa;
                zagVar2.zab(imageManager2.zad, imageManager2.zag, true);
                return;
            }
            this.zaa.zaj.remove(zadVar.zaa);
        }
        this.zab.zaa(null, false, true, false);
        ImageManager.ImageReceiver imageReceiver2 = (ImageManager.ImageReceiver) this.zaa.zai.get(zadVar.zaa);
        if (imageReceiver2 == null) {
            imageReceiver2 = new ImageManager.ImageReceiver(this.zaa, zadVar.zaa);
            this.zaa.zai.put(zadVar.zaa, imageReceiver2);
        }
        imageReceiver2.zab(this.zab);
        zag zagVar3 = this.zab;
        if (!(zagVar3 instanceof zaf)) {
            this.zaa.zah.put(zagVar3, imageReceiver2);
        }
        synchronized (ImageManager.zaa) {
            if (!ImageManager.zab.contains(zadVar.zaa)) {
                ImageManager.zab.add(zadVar.zaa);
                imageReceiver2.zad();
            }
        }
    }
}

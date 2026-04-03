package com.google.android.material.color;

import android.content.Context;
import android.content.res.loader.ResourcesLoader;
import android.content.res.loader.ResourcesProvider;
import android.os.ParcelFileDescriptor;
import android.system.Os;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
final class ColorResourcesLoaderCreator {
    private static final String TAG = ColorResourcesLoaderCreator.class.getSimpleName();

    private ColorResourcesLoaderCreator() {
    }

    static ResourcesLoader create(Context context, Map<Integer, Integer> map) throws Throwable {
        FileDescriptor fileDescriptorMemfd_create;
        try {
            byte[] bArrCreate = ColorResourcesTableCreator.create(context, map);
            Log.i(TAG, NPStringFog.decode(new byte[]{103, 85, 91, 8, 81, 22, 80, 70, 92, 5, 64, 83, 87, 24, 25, 8, 81, 88, 84, 64, 81, 94, 20}, "349d46", -9.8632635E8d) + bArrCreate.length);
            if (bArrCreate.length == 0) {
                return null;
            }
            try {
                fileDescriptorMemfd_create = Os.memfd_create(NPStringFog.decode(new byte[]{22, 84, 89, 67, 77, 4, 16, 66, 87}, "b143ce", 15546), 0);
            } catch (Throwable th) {
                th = th;
                fileDescriptorMemfd_create = null;
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(fileDescriptorMemfd_create);
                try {
                    fileOutputStream.write(bArrCreate);
                    ParcelFileDescriptor parcelFileDescriptorDup = ParcelFileDescriptor.dup(fileDescriptorMemfd_create);
                    try {
                        ResourcesLoader resourcesLoader = new ResourcesLoader();
                        resourcesLoader.addProvider(ResourcesProvider.loadFromTable(parcelFileDescriptorDup, null));
                        if (parcelFileDescriptorDup != null) {
                            parcelFileDescriptorDup.close();
                        }
                        fileOutputStream.close();
                        if (fileDescriptorMemfd_create != null) {
                            Os.close(fileDescriptorMemfd_create);
                        }
                        return resourcesLoader;
                    } finally {
                    }
                } finally {
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileDescriptorMemfd_create != null) {
                    Os.close(fileDescriptorMemfd_create);
                }
                throw th;
            }
        } catch (Exception e) {
            Log.e(TAG, NPStringFog.decode(new byte[]{34, 85, 92, 9, 7, 1, 68, 64, 90, 69, 1, 23, 1, 85, 65, 0, 66, 17, 12, 81, 21, 38, 13, 9, 11, 70, 103, 0, 17, 10, 17, 70, 86, 0, 17, 49, 5, 86, 89, 0, 33, 23, 1, 85, 65, 10, 16, 75}, "d45ebe", 16748), e);
            return null;
        }
    }
}

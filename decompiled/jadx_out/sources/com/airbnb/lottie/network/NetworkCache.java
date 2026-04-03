package com.airbnb.lottie.network;

import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.utils.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class NetworkCache {

    @NonNull
    private final LottieNetworkCacheProvider cacheProvider;

    public NetworkCache(@NonNull LottieNetworkCacheProvider lottieNetworkCacheProvider) {
        this.cacheProvider = lottieNetworkCacheProvider;
    }

    private static String filenameForUrl(String str, FileExtension fileExtension, boolean z) {
        return NPStringFog.decode(new byte[]{93, 12, 21, 16, 93, 1, 110, 0, 0, 7, 92, 1, 110}, "1cad4d", 10699) + str.replaceAll(NPStringFog.decode(new byte[]{106, 50, 28}, "6e7ff8", 1.731025436E9d), "") + (z ? fileExtension.tempExtension() : fileExtension.extension);
    }

    @Nullable
    private File getCachedFile(String str) throws FileNotFoundException {
        File file = new File(parentDir(), filenameForUrl(str, FileExtension.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(parentDir(), filenameForUrl(str, FileExtension.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        return null;
    }

    private File parentDir() {
        File cacheDir = this.cacheProvider.getCacheDir();
        if (cacheDir.isFile()) {
            cacheDir.delete();
        }
        if (!cacheDir.exists()) {
            cacheDir.mkdirs();
        }
        return cacheDir;
    }

    public void clear() {
        File fileParentDir = parentDir();
        if (fileParentDir.exists()) {
            File[] fileArrListFiles = fileParentDir.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (File file : fileParentDir.listFiles()) {
                    file.delete();
                }
            }
            fileParentDir.delete();
        }
    }

    @Nullable
    @WorkerThread
    Pair<FileExtension, InputStream> fetch(String str) {
        try {
            File cachedFile = getCachedFile(str);
            if (cachedFile == null) {
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(cachedFile);
                FileExtension fileExtension = cachedFile.getAbsolutePath().endsWith(NPStringFog.decode(new byte[]{29, 31, 92, 69}, "3e554d", -1.6183512E9f)) ? FileExtension.ZIP : FileExtension.JSON;
                Logger.debug(NPStringFog.decode(new byte[]{117, 3, 84, 90, 82, 24, 94, 11, 67, 18, 81, 87, 68, 66}, "6b7278", 1.998311262E9d) + str + NPStringFog.decode(new byte[]{67, 83, 70, 22}, "c22681", false, false) + cachedFile.getAbsolutePath());
                return new Pair<>(fileExtension, fileInputStream);
            } catch (FileNotFoundException e) {
                return null;
            }
        } catch (FileNotFoundException e2) {
            return null;
        }
    }

    void renameTempFile(String str, FileExtension fileExtension) {
        File file = new File(parentDir(), filenameForUrl(str, fileExtension, true));
        File file2 = new File(file.getAbsolutePath().replace(NPStringFog.decode(new byte[]{30, 16, 80, 8, 71}, "0d5e7c", false, true), ""));
        boolean zRenameTo = file.renameTo(file2);
        Logger.debug(NPStringFog.decode(new byte[]{37, 89, 68, 29, 95, 90, 1, 22, 64, 1, 91, 68, 70, 80, 93, 8, 83, 20, 18, 89, 20, 22, 83, 85, 10, 22, 82, 13, 90, 81, 70, 30}, "f64d64", -8737) + file2 + NPStringFog.decode(new byte[]{74}, "cc0643", true));
        if (zRenameTo) {
            return;
        }
        Logger.warning(NPStringFog.decode(new byte[]{52, 86, 87, 81, 89, 3, 65, 76, 89, 19, 71, 3, 15, 89, 91, 86, 21, 5, 0, 91, 94, 86, 21, 0, 8, 84, 83, 19}, "a8635f", false, true) + file.getAbsolutePath() + NPStringFog.decode(new byte[]{65, 65, 14, 66}, "a5ab84", 14070) + file2.getAbsolutePath() + NPStringFog.decode(new byte[]{23}, "97803e", -721520285L));
    }

    File writeTempCacheFile(String str, InputStream inputStream, FileExtension fileExtension) throws IOException {
        File file = new File(parentDir(), filenameForUrl(str, fileExtension, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = inputStream.read(bArr);
                    if (i == -1) {
                        fileOutputStream.flush();
                        return file;
                    }
                    fileOutputStream.write(bArr, 0, i);
                }
            } finally {
                fileOutputStream.close();
            }
        } finally {
            inputStream.close();
        }
    }
}

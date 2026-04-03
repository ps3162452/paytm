package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import androidx.core.provider.FontsContractCompat;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class TypefaceCompatUtil {
    private static final String CACHE_FILE_PREFIX = NPStringFog.decode(new byte[]{29, 2, 92, 13, 65}, "3d3c59", 22132);
    private static final String TAG = NPStringFog.decode(new byte[]{97, 24, 18, 4, 3, 87, 86, 4, 33, 14, 8, 70, 84, 21, 55, 21, 12, 90}, "5abae6", -27759);

    private TypefaceCompatUtil() {
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }

    public static ByteBuffer copyToDirectBuffer(Context context, Resources resources, int i) {
        ByteBuffer byteBufferMmap = null;
        File tempFile = getTempFile(context);
        if (tempFile != null) {
            try {
                if (copyToFile(tempFile, resources, i)) {
                    byteBufferMmap = mmap(tempFile);
                }
            } finally {
                tempFile.delete();
            }
        }
        return byteBufferMmap;
    }

    public static boolean copyToFile(File file, Resources resources, int i) {
        InputStream inputStreamOpenRawResource = null;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i);
            return copyToFile(file, inputStreamOpenRawResource);
        } finally {
            closeQuietly(inputStreamOpenRawResource);
        }
    }

    public static boolean copyToFile(File file, InputStream inputStream) throws Throwable {
        FileOutputStream fileOutputStream;
        IOException e;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskWrites = StrictMode.allowThreadDiskWrites();
        try {
            try {
                fileOutputStream = new FileOutputStream(file, false);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i == -1) {
                            closeQuietly(fileOutputStream);
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i);
                    }
                } catch (IOException e2) {
                    e = e2;
                    Log.e(TAG, NPStringFog.decode(new byte[]{36, 69, 65, 91, 65, 23, 2, 88, 67, 77, 90, 89, 6, 23, 65, 81, 64, 88, 20, 69, 80, 81, 19, 84, 14, 89, 71, 81, 93, 67, 18, 23, 71, 91, 19, 67, 4, 90, 67, 20, 85, 94, 13, 82, 9, 20}, "a73437", -1989336848L) + e.getMessage());
                    closeQuietly(fileOutputStream);
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                closeQuietly(null);
                StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
                throw th;
            }
        } catch (IOException e3) {
            fileOutputStream = null;
            e = e3;
        } catch (Throwable th2) {
            th = th2;
            closeQuietly(null);
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskWrites);
            throw th;
        }
    }

    public static File getTempFile(Context context) {
        int i = 0;
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        String str = CACHE_FILE_PREFIX + Process.myPid() + NPStringFog.decode(new byte[]{79}, "b1cb75", -17962) + Process.myTid() + NPStringFog.decode(new byte[]{21}, "8d851c", true, false);
        while (true) {
            int i2 = i;
            if (i2 >= 100) {
                return null;
            }
            File file = new File(cacheDir, str + i2);
            if (file.createNewFile()) {
                return file;
            }
            i = i2 + 1;
        }
    }

    public static ByteBuffer mmap(Context context, CancellationSignal cancellationSignal, Uri uri) {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, NPStringFog.decode(new byte[]{19}, "a7ce62", 4.2318077E8f), cancellationSignal);
            if (parcelFileDescriptorOpenFileDescriptor == null) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                }
                return null;
            }
            try {
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    FileChannel channel = fileInputStream.getChannel();
                    MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                    fileInputStream.close();
                    if (parcelFileDescriptorOpenFileDescriptor == null) {
                        return map;
                    }
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return map;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th4) {
                    }
                }
                throw th3;
            }
        } catch (IOException e) {
            return null;
        }
    }

    private static ByteBuffer mmap(File file) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                FileChannel channel = fileInputStream.getChannel();
                MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                fileInputStream.close();
                return map;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        } catch (IOException e) {
            return null;
        }
    }

    public static Map<Uri, ByteBuffer> readFontInfoIntoByteBuffer(Context context, FontsContractCompat.FontInfo[] fontInfoArr, CancellationSignal cancellationSignal) {
        HashMap map = new HashMap();
        for (FontsContractCompat.FontInfo fontInfo : fontInfoArr) {
            if (fontInfo.getResultCode() == 0) {
                Uri uri = fontInfo.getUri();
                if (!map.containsKey(uri)) {
                    map.put(uri, mmap(context, cancellationSignal, uri));
                }
            }
        }
        return Collections.unmodifiableMap(map);
    }
}

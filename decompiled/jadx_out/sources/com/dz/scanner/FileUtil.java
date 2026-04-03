package com.dz.scanner;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Environment;
import com.budiyev.android.codescanner.BarcodeUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import n.NPStringFog;

/* JADX INFO: loaded from: classes73.dex */
public class FileUtil {
    public static int calculateInSampleSize(BitmapFactory.Options options, int i, int i2) {
        int i3 = 1;
        int i4 = options.outWidth;
        int i5 = options.outHeight;
        if (i5 > i2 || i4 > i) {
            int i6 = i5 / 2;
            int i7 = i4 / 2;
            while (i6 / i3 >= i2 && i7 / i3 >= i) {
                i3 *= 2;
            }
        }
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String convertUriToFilePath(android.content.Context r8, android.net.Uri r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dz.scanner.FileUtil.convertUriToFilePath(android.content.Context, android.net.Uri):java.lang.String");
    }

    public static void copyDir(String str, String str2) throws Throwable {
        File[] fileArrListFiles = new File(str).listFiles();
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isFile()) {
                copyFile(file2.getPath(), String.valueOf(str2) + NPStringFog.decode(new byte[]{30}, "1105fa", -13029) + file2.getName());
            } else if (file2.isDirectory()) {
                copyDir(file2.getPath(), String.valueOf(str2) + NPStringFog.decode(new byte[]{77}, "be791c", 6280) + file2.getName());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0051 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0028 -> B:57:0x0007). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void copyFile(java.lang.String r5, java.lang.String r6) throws java.lang.Throwable {
        /*
            r1 = 0
            boolean r0 = isExistFile(r5)
            if (r0 != 0) goto L8
        L7:
            return
        L8:
            createNewFile(r6)
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5d
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L58 java.io.IOException -> L5d
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L55
            r2 = 0
            r0.<init>(r6, r2)     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L55
            r1 = 1024(0x400, float:1.435E-42)
            byte[] r1 = new byte[r1]     // Catch: java.io.IOException -> L36 java.lang.Throwable -> L71
        L1a:
            int r2 = r4.read(r1)     // Catch: java.io.IOException -> L36 java.lang.Throwable -> L71
            if (r2 > 0) goto L31
            r4.close()     // Catch: java.io.IOException -> L2c
        L23:
            r0.close()     // Catch: java.io.IOException -> L27
            goto L7
        L27:
            r0 = move-exception
            r0.printStackTrace()
            goto L7
        L2c:
            r1 = move-exception
            r1.printStackTrace()
            goto L23
        L31:
            r3 = 0
            r0.write(r1, r3, r2)     // Catch: java.io.IOException -> L36 java.lang.Throwable -> L71
            goto L1a
        L36:
            r1 = move-exception
            r2 = r1
        L38:
            r3 = r0
        L39:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L74
            if (r4 == 0) goto L41
            r4.close()     // Catch: java.io.IOException -> L62
        L41:
            if (r3 == 0) goto L7
            r3.close()     // Catch: java.io.IOException -> L27
            goto L7
        L47:
            r2 = move-exception
            r0 = r1
        L49:
            r3 = r0
        L4a:
            if (r4 == 0) goto L4f
            r4.close()     // Catch: java.io.IOException -> L67
        L4f:
            if (r3 == 0) goto L54
            r3.close()     // Catch: java.io.IOException -> L6c
        L54:
            throw r2
        L55:
            r2 = move-exception
            r0 = r1
            goto L38
        L58:
            r0 = move-exception
            r3 = r1
            r2 = r0
            r4 = r1
            goto L4a
        L5d:
            r0 = move-exception
            r3 = r1
            r2 = r0
            r4 = r1
            goto L39
        L62:
            r0 = move-exception
            r0.printStackTrace()
            goto L41
        L67:
            r0 = move-exception
            r0.printStackTrace()
            goto L4f
        L6c:
            r0 = move-exception
            r0.printStackTrace()
            goto L54
        L71:
            r1 = move-exception
            r2 = r1
            goto L49
        L74:
            r2 = move-exception
            goto L4a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dz.scanner.FileUtil.copyFile(java.lang.String, java.lang.String):void");
    }

    private static void createNewFile(String str) {
        int iLastIndexOf = str.lastIndexOf(File.separator);
        if (iLastIndexOf > 0) {
            makeDir(str.substring(0, iLastIndexOf));
        }
        File file = new File(str);
        try {
            if (file.exists()) {
                return;
            }
            file.createNewFile();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static File createNewPictureFile(Context context) {
        return new File(String.valueOf(context.getExternalFilesDir(Environment.DIRECTORY_DCIM).getAbsolutePath()) + File.separator + (String.valueOf(new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date())) + ".jpg"));
    }

    public static void cropBitmapFileFromCenter(String str, String str2, int i, int i2) {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            int width = bitmapDecodeFile.getWidth();
            int height = bitmapDecodeFile.getHeight();
            if (width >= i || height >= i2) {
                int i3 = width > i ? (width - i) / 2 : 0;
                int i4 = height > i2 ? (height - i2) / 2 : 0;
                if (i > width) {
                    i = width;
                }
                if (i2 > height) {
                    i2 = height;
                }
                saveBitmap(Bitmap.createBitmap(bitmapDecodeFile, i3, i4, i, i2), str2);
            }
        }
    }

    public static Bitmap decodeSampleBitmapFromPath(String str, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = calculateInSampleSize(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    public static void deleteFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2.isDirectory()) {
                        deleteFile(file2.getAbsolutePath());
                    }
                    if (file2.isFile()) {
                        file2.delete();
                    }
                }
            }
            file.delete();
        }
    }

    private static String getDataColumn(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Throwable th;
        Throwable th2;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        if (cursorQuery == null) {
                            return string;
                        }
                        cursorQuery.close();
                        return string;
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable th4) {
                            th = th4;
                            if (th2 == null) {
                                throw th;
                            }
                            if (th2 == th) {
                                throw th2;
                            }
                            try {
                                th2.addSuppressed(th);
                                throw th2;
                            } catch (Exception e) {
                            }
                        }
                    }
                    throw th2;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Throwable th5) {
            th = th5;
            th2 = null;
        }
    }

    public static String getExternalStorageDir() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static long getFileLength(String str) {
        if (isExistFile(str)) {
            return new File(str).length();
        }
        return 0L;
    }

    public static int getJpegRotate(String str) {
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt("Orientation", -1);
            if (attributeInt == 3) {
                return BarcodeUtils.ROTATION_180;
            }
            if (attributeInt == 6) {
                return 90;
            }
            if (attributeInt != 8) {
                return 0;
            }
            return BarcodeUtils.ROTATION_270;
        } catch (IOException e) {
            return 0;
        }
    }

    public static String getPackageDataDir(Context context) {
        return context.getExternalFilesDir(null).getAbsolutePath();
    }

    public static String getPublicDir(String str) {
        return Environment.getExternalStoragePublicDirectory(str).getAbsolutePath();
    }

    public static Bitmap getScaledBitmap(String str, int i) {
        int i2;
        int i3;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
        int width = bitmapDecodeFile.getWidth();
        int height = bitmapDecodeFile.getHeight();
        if (width > height) {
            i3 = (int) ((i / width) * height);
            i2 = i;
        } else {
            i2 = (int) (width * (i / height));
            i3 = i;
        }
        return Bitmap.createScaledBitmap(bitmapDecodeFile, i2, i3, true);
    }

    public static boolean isDirectory(String str) {
        if (isExistFile(str)) {
            return new File(str).isDirectory();
        }
        return false;
    }

    private static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isExistFile(String str) {
        return new File(str).exists();
    }

    private static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isFile(String str) {
        if (isExistFile(str)) {
            return new File(str).isFile();
        }
        return false;
    }

    private static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static void listDir(String str, ArrayList<String> arrayList) {
        File[] fileArrListFiles;
        File file = new File(str);
        if (!file.exists() || file.isFile() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0 || arrayList == null) {
            return;
        }
        arrayList.clear();
        for (File file2 : fileArrListFiles) {
            arrayList.add(file2.getAbsolutePath());
        }
    }

    public static void makeDir(String str) {
        if (isExistFile(str)) {
            return;
        }
        new File(str).mkdirs();
    }

    public static void moveFile(String str, String str2) throws Throwable {
        copyFile(str, str2);
        deleteFile(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0042 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String readFile(java.lang.String r6) throws java.lang.Throwable {
        /*
            r2 = 0
            createNewFile(r6)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.lang.Throwable -> L3e java.io.IOException -> L46
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L3e java.io.IOException -> L46
            r0.<init>(r6)     // Catch: java.lang.Throwable -> L3e java.io.IOException -> L46
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L3e java.io.IOException -> L46
            r0 = 1024(0x400, float:1.435E-42)
            char[] r0 = new char[r0]     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L50
        L17:
            int r2 = r1.read(r0)     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L50
            if (r2 > 0) goto L25
            r1.close()     // Catch: java.lang.Exception -> L39
        L20:
            java.lang.String r0 = r3.toString()
            return r0
        L25:
            java.lang.String r4 = new java.lang.String     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L50
            r5 = 0
            r4.<init>(r0, r5, r2)     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L50
            r3.append(r4)     // Catch: java.io.IOException -> L2f java.lang.Throwable -> L50
            goto L17
        L2f:
            r0 = move-exception
        L30:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L4e
            if (r1 == 0) goto L20
            r1.close()     // Catch: java.lang.Exception -> L39
            goto L20
        L39:
            r0 = move-exception
            r0.printStackTrace()
            goto L20
        L3e:
            r0 = move-exception
            r1 = r2
        L40:
            if (r1 == 0) goto L45
            r1.close()     // Catch: java.lang.Exception -> L49
        L45:
            throw r0
        L46:
            r0 = move-exception
            r1 = r2
            goto L30
        L49:
            r1 = move-exception
            r1.printStackTrace()
            goto L45
        L4e:
            r0 = move-exception
            goto L40
        L50:
            r0 = move-exception
            goto L40
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dz.scanner.FileUtil.readFile(java.lang.String):java.lang.String");
    }

    public static void resizeBitmapFileRetainRatio(String str, String str2, int i) {
        if (isExistFile(str)) {
            saveBitmap(getScaledBitmap(str, i), str2);
        }
    }

    public static void resizeBitmapFileToCircle(String str, String str2) {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            Rect rect = new Rect(0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(-12434878);
            canvas.drawCircle(bitmapDecodeFile.getWidth() / 2, bitmapDecodeFile.getHeight() / 2, bitmapDecodeFile.getWidth() / 2, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(bitmapDecodeFile, rect, rect, paint);
            saveBitmap(bitmapCreateBitmap, str2);
        }
    }

    public static void resizeBitmapFileToSquare(String str, String str2, int i) {
        if (isExistFile(str)) {
            saveBitmap(Bitmap.createScaledBitmap(BitmapFactory.decodeFile(str), i, i, true), str2);
        }
    }

    public static void resizeBitmapFileWithRoundedBorder(String str, String str2, int i) {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            Rect rect = new Rect(0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
            RectF rectF = new RectF(rect);
            float f = i;
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(-12434878);
            canvas.drawRoundRect(rectF, f, f, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(bitmapDecodeFile, rect, rect, paint);
            saveBitmap(bitmapCreateBitmap, str2);
        }
    }

    public static void rotateBitmapFile(String str, String str2, float f) {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            Matrix matrix = new Matrix();
            matrix.postRotate(f);
            saveBitmap(Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true), str2);
        }
    }

    private static void saveBitmap(Bitmap bitmap, String str) {
        createNewFile(str);
        Throwable th = null;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            } finally {
                fileOutputStream.close();
            }
        } catch (Throwable th2) {
            if (0 == 0) {
                throw th2;
            }
            if (null == th2) {
                throw null;
            }
            try {
                th.addSuppressed(th2);
                throw null;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void scaleBitmapFile(String str, String str2, float f, float f2) {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            Matrix matrix = new Matrix();
            matrix.postScale(f, f2);
            saveBitmap(Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true), str2);
        }
    }

    public static void setBitmapFileBrightness(String str, String str2, float f) {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            ColorMatrix colorMatrix = new ColorMatrix(new float[]{1.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 1.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 1.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), bitmapDecodeFile.getConfig());
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            canvas.drawBitmap(bitmapDecodeFile, 0.0f, 0.0f, paint);
            saveBitmap(bitmapCreateBitmap, str2);
        }
    }

    public static void setBitmapFileColorFilter(String str, String str2, int i) {
        if (isExistFile(str)) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(BitmapFactory.decodeFile(str), 0, 0, r0.getWidth() - 1, r0.getHeight() - 1);
            Paint paint = new Paint();
            paint.setColorFilter(new LightingColorFilter(i, 1));
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCreateBitmap, 0.0f, 0.0f, paint);
            saveBitmap(bitmapCreateBitmap, str2);
        }
    }

    public static void setBitmapFileContrast(String str, String str2, float f) {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            ColorMatrix colorMatrix = new ColorMatrix(new float[]{f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f});
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), bitmapDecodeFile.getConfig());
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint = new Paint();
            paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            canvas.drawBitmap(bitmapDecodeFile, 0.0f, 0.0f, paint);
            saveBitmap(bitmapCreateBitmap, str2);
        }
    }

    public static void skewBitmapFile(String str, String str2, float f, float f2) {
        if (isExistFile(str)) {
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str);
            Matrix matrix = new Matrix();
            matrix.postSkew(f, f2);
            saveBitmap(Bitmap.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix, true), str2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x001d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void writeFile(java.lang.String r4, java.lang.String r5) throws java.lang.Throwable {
        /*
            r0 = 0
            createNewFile(r4)
            java.io.FileWriter r2 = new java.io.FileWriter     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L3c
            java.io.File r1 = new java.io.File     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L3c
            r1.<init>(r4)     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L3c
            r3 = 0
            r2.<init>(r1, r3)     // Catch: java.io.IOException -> L3a java.lang.Throwable -> L3c
            r2.write(r5)     // Catch: java.io.IOException -> L21 java.lang.Throwable -> L37
            r2.flush()     // Catch: java.io.IOException -> L21 java.lang.Throwable -> L37
            r2.close()     // Catch: java.io.IOException -> L2d
        L18:
            return
        L19:
            r1 = move-exception
        L1a:
            r2 = r0
        L1b:
            if (r2 == 0) goto L20
            r2.close()     // Catch: java.io.IOException -> L32
        L20:
            throw r1
        L21:
            r0 = move-exception
            r1 = r0
            r0 = r2
        L24:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L19
            if (r0 == 0) goto L18
            r0.close()     // Catch: java.io.IOException -> L2d
            goto L18
        L2d:
            r0 = move-exception
            r0.printStackTrace()
            goto L18
        L32:
            r0 = move-exception
            r0.printStackTrace()
            goto L20
        L37:
            r0 = move-exception
            r1 = r0
            goto L1b
        L3a:
            r1 = move-exception
            goto L24
        L3c:
            r1 = move-exception
            goto L1a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.dz.scanner.FileUtil.writeFile(java.lang.String, java.lang.String):void");
    }
}

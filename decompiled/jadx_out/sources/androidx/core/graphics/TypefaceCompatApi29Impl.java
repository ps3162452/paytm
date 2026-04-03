package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.IOException;
import java.io.InputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class TypefaceCompatApi29Impl extends TypefaceCompatBaseImpl {
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        FontFamily.Builder builder;
        try {
            FontResourcesParserCompat.FontFileResourceEntry[] entries = fontFamilyFilesResourceEntry.getEntries();
            int length = entries.length;
            int i2 = 0;
            FontFamily.Builder builder2 = null;
            while (i2 < length) {
                FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry = entries[i2];
                try {
                    Font fontBuild = new Font.Builder(resources, fontFileResourceEntry.getResourceId()).setWeight(fontFileResourceEntry.getWeight()).setSlant(fontFileResourceEntry.isItalic() ? 1 : 0).setTtcIndex(fontFileResourceEntry.getTtcIndex()).setFontVariationSettings(fontFileResourceEntry.getVariationSettings()).build();
                    if (builder2 == null) {
                        builder = new FontFamily.Builder(fontBuild);
                    } else {
                        builder2.addFont(fontBuild);
                        builder = builder2;
                    }
                } catch (IOException e) {
                    builder = builder2;
                }
                i2++;
                builder2 = builder;
            }
            if (builder2 == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(builder2.build()).setStyle(new FontStyle((i & 1) != 0 ? 700 : 400, (i & 2) != 0 ? 1 : 0)).build();
        } catch (Exception e2) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0078, code lost:
    
        if (r0 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007a, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0080, code lost:
    
        if ((r16 & 1) == 0) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0082, code lost:
    
        r3 = 700;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0087, code lost:
    
        if ((r16 & 2) == 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0089, code lost:
    
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009f, code lost:
    
        r3 = 400;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a3, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:?, code lost:
    
        return new android.graphics.Typeface.CustomFallbackBuilder(r0.build()).setStyle(new android.graphics.fonts.FontStyle(r3, r1)).build();
     */
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Typeface createFromFontInfo(android.content.Context r13, android.os.CancellationSignal r14, androidx.core.provider.FontsContractCompat.FontInfo[] r15, int r16) {
        /*
            r12 = this;
            r1 = 0
            android.content.ContentResolver r4 = r13.getContentResolver()
            int r5 = r15.length     // Catch: java.lang.Exception -> L75
            r2 = 0
            r0 = 0
            r3 = r0
            r0 = r1
        La:
            r1 = 1
            if (r3 >= r5) goto L78
            r6 = r15[r3]
            android.net.Uri r7 = r6.getUri()     // Catch: java.io.IOException -> L66 java.lang.Exception -> L75
            r8 = 1
            byte[] r8 = new byte[r8]     // Catch: java.io.IOException -> L66 java.lang.Exception -> L75
            r9 = 0
            r10 = 20
            r8[r9] = r10     // Catch: java.io.IOException -> L66 java.lang.Exception -> L75
            java.lang.String r9 = "f32281"
            r10 = 4746678875260452864(0x41df9749bec00000, double:2.120034043E9)
            java.lang.String r8 = n.NPStringFog.decode(r8, r9, r10)     // Catch: java.io.IOException -> L66 java.lang.Exception -> L75
            android.os.ParcelFileDescriptor r7 = r4.openFileDescriptor(r7, r8, r14)     // Catch: java.io.IOException -> L66 java.lang.Exception -> L75
            if (r7 != 0) goto L35
            if (r7 == 0) goto L31
            r7.close()     // Catch: java.io.IOException -> L66 java.lang.Exception -> L75
        L31:
            int r1 = r3 + 1
            r3 = r1
            goto La
        L35:
            android.graphics.fonts.Font$Builder r8 = new android.graphics.fonts.Font$Builder     // Catch: java.lang.Throwable -> L6e
            r8.<init>(r7)     // Catch: java.lang.Throwable -> L6e
            int r9 = r6.getWeight()     // Catch: java.lang.Throwable -> L6e
            android.graphics.fonts.Font$Builder r8 = r8.setWeight(r9)     // Catch: java.lang.Throwable -> L6e
            boolean r9 = r6.isItalic()     // Catch: java.lang.Throwable -> L6e
            if (r9 == 0) goto L68
        L48:
            android.graphics.fonts.Font$Builder r1 = r8.setSlant(r1)     // Catch: java.lang.Throwable -> L6e
            int r6 = r6.getTtcIndex()     // Catch: java.lang.Throwable -> L6e
            android.graphics.fonts.Font$Builder r1 = r1.setTtcIndex(r6)     // Catch: java.lang.Throwable -> L6e
            android.graphics.fonts.Font r6 = r1.build()     // Catch: java.lang.Throwable -> L6e
            if (r0 != 0) goto L6a
            android.graphics.fonts.FontFamily$Builder r1 = new android.graphics.fonts.FontFamily$Builder     // Catch: java.lang.Throwable -> L6e
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L6e
            r0 = r1
        L60:
            if (r7 == 0) goto L31
            r7.close()     // Catch: java.io.IOException -> L66 java.lang.Exception -> L75
            goto L31
        L66:
            r1 = move-exception
            goto L31
        L68:
            r1 = 0
            goto L48
        L6a:
            r0.addFont(r6)     // Catch: java.lang.Throwable -> L6e
            goto L60
        L6e:
            r1 = move-exception
            if (r7 == 0) goto L74
            r7.close()     // Catch: java.lang.Throwable -> La5
        L74:
            throw r1     // Catch: java.io.IOException -> L66 java.lang.Exception -> L75
        L75:
            r0 = move-exception
            r0 = 0
        L77:
            return r0
        L78:
            if (r0 != 0) goto L7c
            r0 = 0
            goto L77
        L7c:
            android.graphics.fonts.FontStyle r4 = new android.graphics.fonts.FontStyle     // Catch: java.lang.Exception -> L75
            r1 = r16 & 1
            if (r1 == 0) goto L9f
            r1 = 700(0x2bc, float:9.81E-43)
            r3 = r1
        L85:
            r1 = r16 & 2
            if (r1 == 0) goto La3
            r1 = 1
        L8a:
            r4.<init>(r3, r1)     // Catch: java.lang.Exception -> L75
            android.graphics.Typeface$CustomFallbackBuilder r1 = new android.graphics.Typeface$CustomFallbackBuilder     // Catch: java.lang.Exception -> L75
            android.graphics.fonts.FontFamily r0 = r0.build()     // Catch: java.lang.Exception -> L75
            r1.<init>(r0)     // Catch: java.lang.Exception -> L75
            android.graphics.Typeface$CustomFallbackBuilder r0 = r1.setStyle(r4)     // Catch: java.lang.Exception -> L75
            android.graphics.Typeface r0 = r0.build()     // Catch: java.lang.Exception -> L75
            goto L77
        L9f:
            r1 = 400(0x190, float:5.6E-43)
            r3 = r1
            goto L85
        La3:
            r1 = r2
            goto L8a
        La5:
            r6 = move-exception
            goto L74
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.TypefaceCompatApi29Impl.createFromFontInfo(android.content.Context, android.os.CancellationSignal, androidx.core.provider.FontsContractCompat$FontInfo[], int):android.graphics.Typeface");
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    protected Typeface createFromInputStream(Context context, InputStream inputStream) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{113, 10, 20, 10, 10, 65, 21, 16, 71, 1, 69, 65, 93, 12, 71, 68, 3, 64, 91, 6, 64, 13, 10, 91, 21, 12, 90, 68, 36, 101, 124, 69, 6, 93, 69, 90, 71, 69, 88, 5, 17, 80, 71, 75}, "5e4de5", false, false));
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font fontBuild = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(fontBuild).build()).setStyle(fontBuild.getStyle()).build();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    protected FontsContractCompat.FontInfo findBestInfo(FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{125, 91, 17, 87, 12, 66, 25, 65, 66, 92, 67, 66, 81, 93, 66, 25, 5, 67, 87, 87, 69, 80, 12, 88, 25, 93, 95, 25, 34, 102, 112, 20, 3, 0, 67, 89, 75, 20, 93, 88, 23, 83, 75, 26}, "9419c6", false));
    }
}

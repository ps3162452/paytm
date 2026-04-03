package com.airbnb.lottie.network;

import com.airbnb.lottie.utils.Logger;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public enum FileExtension {
    JSON(NPStringFog.decode(new byte[]{24, 89, 69, 9, 13}, "636fc7", false)),
    ZIP(NPStringFog.decode(new byte[]{30, 72, 80, 65}, "0291ef", false));

    public final String extension;

    FileExtension(String str) {
        this.extension = str;
    }

    public static FileExtension forFile(String str) {
        for (FileExtension fileExtension : values()) {
            if (str.endsWith(fileExtension.extension)) {
                return fileExtension;
            }
        }
        Logger.warning(NPStringFog.decode(new byte[]{102, 86, 88, 85, 92, 87, 19, 76, 86, 23, 86, 91, 93, 92, 25, 84, 95, 64, 65, 93, 90, 67, 16, 87, 75, 76, 92, 89, 67, 91, 92, 86, 25, 81, 95, 64, 19}, "389702", true) + str);
        return JSON;
    }

    public String tempExtension() {
        return NPStringFog.decode(new byte[]{79, 21, 84, 89, 20}, "aa14d0", -1.707216E9f) + this.extension;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.extension;
    }
}

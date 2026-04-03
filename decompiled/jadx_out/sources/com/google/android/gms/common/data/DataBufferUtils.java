package com.google.android.gms.common.data;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class DataBufferUtils {
    public static final String KEY_NEXT_PAGE_TOKEN = NPStringFog.decode(new byte[]{91, 85, 29, 70, 106, 66, 84, 87, 0, 109, 65, 93, 94, 85, 11}, "50e252", true, false);
    public static final String KEY_PREV_PAGE_TOKEN = NPStringFog.decode(new byte[]{73, 68, 82, 20, 102, 19, 88, 81, 82, 61, 77, 12, 82, 83, 89}, "967b9c", true);

    private DataBufferUtils() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T, E extends Freezable<T>> ArrayList<T> freezeAndClose(DataBuffer<E> dataBuffer) {
        ArrayList<T> arrayList = (ArrayList<T>) new ArrayList(dataBuffer.getCount());
        try {
            Iterator<E> it = dataBuffer.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().freeze());
            }
            return arrayList;
        } finally {
            dataBuffer.close();
        }
    }

    public static boolean hasData(DataBuffer<?> dataBuffer) {
        return dataBuffer != null && dataBuffer.getCount() > 0;
    }

    public static boolean hasNextPage(DataBuffer<?> dataBuffer) {
        Bundle metadata = dataBuffer.getMetadata();
        return (metadata == null || metadata.getString(KEY_NEXT_PAGE_TOKEN) == null) ? false : true;
    }

    public static boolean hasPrevPage(DataBuffer<?> dataBuffer) {
        Bundle metadata = dataBuffer.getMetadata();
        return (metadata == null || metadata.getString(KEY_PREV_PAGE_TOKEN) == null) ? false : true;
    }
}

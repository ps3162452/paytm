package com.google.zxing.pdf417.decoder;

import com.google.zxing.pdf417.PDF417Common;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes65.dex */
final class BarcodeValue {
    private final Map<Integer, Integer> values = new HashMap();

    BarcodeValue() {
    }

    public Integer getConfidence(int i) {
        return this.values.get(Integer.valueOf(i));
    }

    int[] getValue() {
        int i = -1;
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<Integer, Integer>> it = this.values.entrySet().iterator();
        while (true) {
            int iIntValue = i;
            if (!it.hasNext()) {
                return PDF417Common.toIntArray(arrayList);
            }
            Map.Entry<Integer, Integer> next = it.next();
            if (next.getValue().intValue() > iIntValue) {
                iIntValue = next.getValue().intValue();
                arrayList.clear();
                arrayList.add(next.getKey());
            } else if (next.getValue().intValue() == iIntValue) {
                arrayList.add(next.getKey());
            }
            i = iIntValue;
        }
    }

    void setValue(int i) {
        Integer num = this.values.get(Integer.valueOf(i));
        if (num == null) {
            num = 0;
        }
        this.values.put(Integer.valueOf(i), Integer.valueOf(num.intValue() + 1));
    }
}

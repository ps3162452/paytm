package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class AI01320xDecoder extends AI013x0xDecoder {
    AI01320xDecoder(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    protected void addWeightCode(StringBuilder sb, int i) {
        if (i < 10000) {
            sb.append(NPStringFog.decode(new byte[]{25, 1, 80, 8, 87, 24}, "12b8e1", false, true));
        } else {
            sb.append(NPStringFog.decode(new byte[]{74, 81, 86, 2, 3, 17}, "bbd208", false, true));
        }
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    protected int checkWeight(int i) {
        return i < 10000 ? i : i - 10000;
    }
}

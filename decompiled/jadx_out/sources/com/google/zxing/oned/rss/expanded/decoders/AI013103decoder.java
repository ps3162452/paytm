package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
final class AI013103decoder extends AI013x0xDecoder {
    AI013103decoder(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    protected void addWeightCode(StringBuilder sb, int i) {
        sb.append(NPStringFog.decode(new byte[]{29, 11, 87, 1, 4, 29}, "58f174", 1.9975835E9f));
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    protected int checkWeight(int i) {
        return i;
    }
}

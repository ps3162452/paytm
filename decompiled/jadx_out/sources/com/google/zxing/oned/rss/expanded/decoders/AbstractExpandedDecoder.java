package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public abstract class AbstractExpandedDecoder {
    private final GeneralAppIdDecoder generalDecoder;
    private final BitArray information;

    AbstractExpandedDecoder(BitArray bitArray) {
        this.information = bitArray;
        this.generalDecoder = new GeneralAppIdDecoder(bitArray);
    }

    public static AbstractExpandedDecoder createDecoder(BitArray bitArray) {
        if (bitArray.get(1)) {
            return new AI01AndOtherAIs(bitArray);
        }
        if (!bitArray.get(2)) {
            return new AnyAIDecoder(bitArray);
        }
        switch (GeneralAppIdDecoder.extractNumericValueFromBitArray(bitArray, 1, 4)) {
            case 4:
                return new AI013103decoder(bitArray);
            case 5:
                return new AI01320xDecoder(bitArray);
            default:
                switch (GeneralAppIdDecoder.extractNumericValueFromBitArray(bitArray, 1, 5)) {
                    case 12:
                        return new AI01392xDecoder(bitArray);
                    case 13:
                        return new AI01393xDecoder(bitArray);
                    default:
                        switch (GeneralAppIdDecoder.extractNumericValueFromBitArray(bitArray, 1, 7)) {
                            case 56:
                                return new AI013x0x1xDecoder(bitArray, NPStringFog.decode(new byte[]{0, 84, 85}, "3eef78", 1570573904L), NPStringFog.decode(new byte[]{9, 4}, "8509b3", -1544385432L));
                            case 57:
                                return new AI013x0x1xDecoder(bitArray, NPStringFog.decode(new byte[]{1, 84, 9}, "2f9ce2", -748413813L), NPStringFog.decode(new byte[]{84, 4}, "e55d7b", 5.7786113E8d));
                            case 58:
                                return new AI013x0x1xDecoder(bitArray, NPStringFog.decode(new byte[]{4, 82, 9}, "7c960e", 1.602942182E9d), NPStringFog.decode(new byte[]{5, 2}, "41427d", -69297803L));
                            case 59:
                                return new AI013x0x1xDecoder(bitArray, NPStringFog.decode(new byte[]{6, 3, 2}, "512bd4", -17283), NPStringFog.decode(new byte[]{6, 85}, "7f2623", 1390239444L));
                            case 60:
                                return new AI013x0x1xDecoder(bitArray, NPStringFog.decode(new byte[]{11, 1, 7}, "8076cb", 1326437330L), NPStringFog.decode(new byte[]{0, 2}, "17f6cb", true));
                            case 61:
                                return new AI013x0x1xDecoder(bitArray, NPStringFog.decode(new byte[]{5, 2, 2}, "602701", false, false), NPStringFog.decode(new byte[]{0, 3}, "168af4", 1.7625357E9f));
                            case 62:
                                return new AI013x0x1xDecoder(bitArray, NPStringFog.decode(new byte[]{85, 1, 5}, "f05fc2", -8672), NPStringFog.decode(new byte[]{83, 83}, "bdbac5", false));
                            case 63:
                                return new AI013x0x1xDecoder(bitArray, NPStringFog.decode(new byte[]{3, 0, 81}, "02a15c", 1.257368931E9d), NPStringFog.decode(new byte[]{1, 0}, "07012b", 1.4231008E9f));
                            default:
                                throw new IllegalStateException(NPStringFog.decode(new byte[]{67, 8, 10, 87, 89, 65, 88, 70, 5, 92, 85, 89, 82, 3, 19, 3, 22}, "6fa966", 2.67276E8f) + bitArray);
                        }
                }
        }
    }

    protected final GeneralAppIdDecoder getGeneralDecoder() {
        return this.generalDecoder;
    }

    protected final BitArray getInformation() {
        return this.information;
    }

    public abstract String parseInformation() throws NotFoundException, FormatException;
}

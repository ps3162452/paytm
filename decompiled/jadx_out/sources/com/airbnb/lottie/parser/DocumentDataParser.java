package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class DocumentDataParser implements ValueParser<DocumentData> {
    public static final DocumentDataParser INSTANCE = new DocumentDataParser();
    private static final JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{21}, "ade0ec", -396393827L), NPStringFog.decode(new byte[]{4}, "bf6c6a", 1591122250L), NPStringFog.decode(new byte[]{70}, "52a64e", -1.822463334E9d), NPStringFog.decode(new byte[]{14}, "d1eb82", 13383), NPStringFog.decode(new byte[]{16, 19}, "da2786", 19149), NPStringFog.decode(new byte[]{95, 80}, "38f88b", 1.770884405E9d), NPStringFog.decode(new byte[]{88, 18}, "4a9d5a", 1.1573304E8d), NPStringFog.decode(new byte[]{7, 2}, "aa2bbd", 87099197L), NPStringFog.decode(new byte[]{67, 83}, "00856f", 1.9164348E9f), NPStringFog.decode(new byte[]{18, 19}, "adcc3b", 2.146539272E9d), NPStringFog.decode(new byte[]{12, 86}, "c00c57", -1.5925071E9f));

    private DocumentDataParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.parser.ValueParser
    public DocumentData parse(JsonReader jsonReader, float f) throws IOException {
        String strNextString = null;
        String strNextString2 = null;
        float fNextDouble = 0.0f;
        DocumentData.Justification justification = DocumentData.Justification.CENTER;
        int iNextInt = 0;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        int iJsonToColor = 0;
        int iJsonToColor2 = 0;
        float fNextDouble4 = 0.0f;
        boolean zNextBoolean = true;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    strNextString = jsonReader.nextString();
                    break;
                case 1:
                    strNextString2 = jsonReader.nextString();
                    break;
                case 2:
                    fNextDouble = (float) jsonReader.nextDouble();
                    break;
                case 3:
                    int iNextInt2 = jsonReader.nextInt();
                    justification = (iNextInt2 <= DocumentData.Justification.CENTER.ordinal() && iNextInt2 >= 0) ? DocumentData.Justification.values()[iNextInt2] : DocumentData.Justification.CENTER;
                    break;
                case 4:
                    iNextInt = jsonReader.nextInt();
                    break;
                case 5:
                    fNextDouble2 = (float) jsonReader.nextDouble();
                    break;
                case 6:
                    fNextDouble3 = (float) jsonReader.nextDouble();
                    break;
                case 7:
                    iJsonToColor = JsonUtils.jsonToColor(jsonReader);
                    break;
                case 8:
                    iJsonToColor2 = JsonUtils.jsonToColor(jsonReader);
                    break;
                case 9:
                    fNextDouble4 = (float) jsonReader.nextDouble();
                    break;
                case 10:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new DocumentData(strNextString, strNextString2, fNextDouble, justification, iNextInt, fNextDouble2, fNextDouble3, iJsonToColor, iJsonToColor2, fNextDouble4, zNextBoolean);
    }
}

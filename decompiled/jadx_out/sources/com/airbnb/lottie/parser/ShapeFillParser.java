package com.airbnb.lottie.parser;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.content.ShapeFill;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.value.Keyframe;
import java.io.IOException;
import java.util.Collections;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
class ShapeFillParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of(NPStringFog.decode(new byte[]{87, 88}, "959508", -1537377376L), NPStringFog.decode(new byte[]{83}, "05d25b", false), NPStringFog.decode(new byte[]{91}, "45566c", true, false), NPStringFog.decode(new byte[]{80, 88, 84, 84, 113, 87, 87, 83, 84, 93, 80}, "618849", false, false), NPStringFog.decode(new byte[]{71}, "540498", -2.1233338E9f), NPStringFog.decode(new byte[]{89, 2}, "1fd064", true));

    private ShapeFillParser() {
    }

    static ShapeFill parse(JsonReader jsonReader, LottieComposition lottieComposition) throws IOException {
        boolean zNextBoolean = false;
        String strNextString = null;
        int iNextInt = 1;
        AnimatableIntegerValue animatableIntegerValue = null;
        boolean zNextBoolean2 = false;
        AnimatableColorValue color = null;
        while (jsonReader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    strNextString = jsonReader.nextString();
                    break;
                case 1:
                    color = AnimatableValueParser.parseColor(jsonReader, lottieComposition);
                    break;
                case 2:
                    animatableIntegerValue = AnimatableValueParser.parseInteger(jsonReader, lottieComposition);
                    break;
                case 3:
                    zNextBoolean2 = jsonReader.nextBoolean();
                    break;
                case 4:
                    iNextInt = jsonReader.nextInt();
                    break;
                case 5:
                    zNextBoolean = jsonReader.nextBoolean();
                    break;
                default:
                    jsonReader.skipName();
                    jsonReader.skipValue();
                    break;
            }
        }
        if (animatableIntegerValue == null) {
            animatableIntegerValue = new AnimatableIntegerValue(Collections.singletonList(new Keyframe(100)));
        }
        return new ShapeFill(strNextString, zNextBoolean2, iNextInt == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, color, animatableIntegerValue, zNextBoolean);
    }
}

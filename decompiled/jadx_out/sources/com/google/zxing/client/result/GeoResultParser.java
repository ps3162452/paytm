package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class GeoResultParser extends ResultParser {
    private static final Pattern GEO_URL_PATTERN = Pattern.compile(NPStringFog.decode(new byte[]{82, 83, 12, 92, 25, 62, 105, 27, 83, 75, 8, 75, 104, 29, 74, 74, 25, 62, 105, 27, 83, 75, 8, 75, 104, 29, 74, 78, 14, 95, 25, 30, 56, 58, 28, 85, 24, 15, 77, 59, 26, 76, 28, 9, 75, 89, 11, 57, 10, 30, 77, 76, 24, 76, 10}, "56cf1e", 244971796L), 2);

    @Override // com.google.zxing.client.result.ResultParser
    public GeoParsedResult parse(Result result) {
        double d = 0.0d;
        Matcher matcher = GEO_URL_PATTERN.matcher(getMassagedText(result));
        if (!matcher.matches()) {
            return null;
        }
        String strGroup = matcher.group(4);
        try {
            double d2 = Double.parseDouble(matcher.group(1));
            if (d2 > 90.0d || d2 < -90.0d) {
                return null;
            }
            double d3 = Double.parseDouble(matcher.group(2));
            if (d3 > 180.0d || d3 < -180.0d) {
                return null;
            }
            if (matcher.group(3) != null) {
                double d4 = Double.parseDouble(matcher.group(3));
                if (d4 < 0.0d) {
                    return null;
                }
                d = d4;
            }
            return new GeoParsedResult(d2, d3, d, strGroup);
        } catch (NumberFormatException e) {
            return null;
        }
    }
}

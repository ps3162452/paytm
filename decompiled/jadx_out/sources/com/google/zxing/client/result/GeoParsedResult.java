package com.google.zxing.client.result;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class GeoParsedResult extends ParsedResult {
    private final double altitude;
    private final double latitude;
    private final double longitude;
    private final String query;

    GeoParsedResult(double d, double d2, double d3, String str) {
        super(ParsedResultType.GEO);
        this.latitude = d;
        this.longitude = d2;
        this.altitude = d3;
        this.query = str;
    }

    public double getAltitude() {
        return this.altitude;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(20);
        sb.append(this.latitude);
        sb.append(NPStringFog.decode(new byte[]{29, 69}, "1ef996", false));
        sb.append(this.longitude);
        if (this.altitude > 0.0d) {
            sb.append(NPStringFog.decode(new byte[]{31, 67}, "3c234d", 1.750829842E9d));
            sb.append(this.altitude);
            sb.append('m');
        }
        if (this.query != null) {
            sb.append(NPStringFog.decode(new byte[]{22, 24}, "6072b2", false));
            sb.append(this.query);
            sb.append(')');
        }
        return sb.toString();
    }

    public String getGeoURI() {
        StringBuilder sb = new StringBuilder();
        sb.append(NPStringFog.decode(new byte[]{86, 81, 86, 88}, "149bea", true));
        sb.append(this.latitude);
        sb.append(',');
        sb.append(this.longitude);
        if (this.altitude > 0.0d) {
            sb.append(',');
            sb.append(this.altitude);
        }
        if (this.query != null) {
            sb.append('?');
            sb.append(this.query);
        }
        return sb.toString();
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getQuery() {
        return this.query;
    }
}

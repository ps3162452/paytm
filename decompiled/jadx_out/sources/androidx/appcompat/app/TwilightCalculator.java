package androidx.appcompat.app;

/* JADX INFO: loaded from: classes2.dex */
class TwilightCalculator {
    private static final float ALTIDUTE_CORRECTION_CIVIL_TWILIGHT = -0.10471976f;
    private static final float C1 = 0.0334196f;
    private static final float C2 = 3.49066E-4f;
    private static final float C3 = 5.236E-6f;
    public static final int DAY = 0;
    private static final float DEGREES_TO_RADIANS = 0.017453292f;
    private static final float J0 = 9.0E-4f;
    public static final int NIGHT = 1;
    private static final float OBLIQUITY = 0.4092797f;
    private static final long UTC_2000 = 946728000000L;
    private static TwilightCalculator sInstance;
    public int state;
    public long sunrise;
    public long sunset;

    TwilightCalculator() {
    }

    static TwilightCalculator getInstance() {
        if (sInstance == null) {
            sInstance = new TwilightCalculator();
        }
        return sInstance;
    }

    public void calculateTwilight(long j, double d, double d2) {
        float f = (j - UTC_2000) / 8.64E7f;
        float f2 = (0.01720197f * f) + 6.24006f;
        double d3 = f2;
        double dSin = Math.sin(f2);
        Double.isNaN(d3);
        double dSin2 = d3 + (dSin * 0.03341960161924362d) + (Math.sin(2.0f * f2) * 3.4906598739326E-4d) + (Math.sin(3.0f * f2) * 5.236000106378924E-6d) + 1.796593063d + 3.141592653589793d;
        Double.isNaN(f - J0);
        double dRound = J0 + Math.round(r8 - r6);
        Double.isNaN(dRound);
        double dSin3 = (Math.sin(f2) * 0.0053d) + ((-d2) / 360.0d) + dRound + (Math.sin(2.0d * dSin2) * (-0.0069d));
        double dAsin = Math.asin(Math.sin(dSin2) * Math.sin(0.4092797040939331d));
        double d4 = 0.01745329238474369d * d;
        double dSin4 = (Math.sin(-0.10471975803375244d) - (Math.sin(d4) * Math.sin(dAsin))) / (Math.cos(dAsin) * Math.cos(d4));
        if (dSin4 >= 1.0d) {
            this.state = 1;
            this.sunset = -1L;
            this.sunrise = -1L;
            return;
        }
        if (dSin4 <= -1.0d) {
            this.state = 0;
            this.sunset = -1L;
            this.sunrise = -1L;
            return;
        }
        float fAcos = (float) (Math.acos(dSin4) / 6.283185307179586d);
        double d5 = fAcos;
        Double.isNaN(d5);
        this.sunset = Math.round((d5 + dSin3) * 8.64E7d) + UTC_2000;
        double d6 = fAcos;
        Double.isNaN(d6);
        long jRound = Math.round((dSin3 - d6) * 8.64E7d) + UTC_2000;
        this.sunrise = jRound;
        if (jRound >= j || this.sunset <= j) {
            this.state = 1;
        } else {
            this.state = 0;
        }
    }
}

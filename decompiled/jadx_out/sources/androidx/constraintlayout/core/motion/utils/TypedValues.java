package androidx.constraintlayout.core.motion.utils;

import n.NPStringFog;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes40.dex */
public interface TypedValues {
    public static final int BOOLEAN_MASK = 1;
    public static final int FLOAT_MASK = 4;
    public static final int INT_MASK = 2;
    public static final int STRING_MASK = 8;
    public static final String S_CUSTOM = NPStringFog.decode(new byte[]{119, 108, 50, 99, 119, 40}, "49a78e", 1.753570135E9d);
    public static final int TYPE_FRAME_POSITION = 100;
    public static final int TYPE_TARGET = 101;

    public interface Attributes {
        public static final int TYPE_ALPHA = 303;
        public static final int TYPE_CURVE_FIT = 301;
        public static final int TYPE_EASING = 317;
        public static final int TYPE_ELEVATION = 307;
        public static final int TYPE_PATH_ROTATE = 316;
        public static final int TYPE_PIVOT_TARGET = 318;
        public static final int TYPE_PIVOT_X = 313;
        public static final int TYPE_PIVOT_Y = 314;
        public static final int TYPE_PROGRESS = 315;
        public static final int TYPE_ROTATION_X = 308;
        public static final int TYPE_ROTATION_Y = 309;
        public static final int TYPE_ROTATION_Z = 310;
        public static final int TYPE_SCALE_X = 311;
        public static final int TYPE_SCALE_Y = 312;
        public static final int TYPE_TRANSLATION_X = 304;
        public static final int TYPE_TRANSLATION_Y = 305;
        public static final int TYPE_TRANSLATION_Z = 306;
        public static final int TYPE_VISIBILITY = 302;
        public static final String NAME = NPStringFog.decode(new byte[]{40, 80, 78, 32, 66, 66, 17, 92, 85, 20, 66, 83, 16}, "c57a66", true, false);
        public static final String S_ALPHA = NPStringFog.decode(new byte[]{5, 9, 22, 91, 82}, "def331", false);
        public static final String S_CURVE_FIT = NPStringFog.decode(new byte[]{1, 68, 17, 69, 82, 117, 11, 69}, "b1c373", -20132);
        public static final String S_CUSTOM = NPStringFog.decode(new byte[]{116, 97, 102, 54, 122, 43}, "745b5f", true);
        public static final String S_EASING = NPStringFog.decode(new byte[]{85, 0, 18, 90, 88, 94}, "0aa369", -19238);
        public static final String S_ELEVATION = NPStringFog.decode(new byte[]{1, 94, 6, 66, 89, 68, 13, 93, 13}, "d2c480", -8.08714E8f);
        public static final String S_FRAME = NPStringFog.decode(new byte[]{94, 19, 0, 92, 87}, "8aa12d", false);
        public static final String S_PATH_ROTATE = NPStringFog.decode(new byte[]{69, 88, 21, 13, 48, 89, 65, 88, 21, 0}, "59aeb6", false, true);
        public static final String S_PIVOT_TARGET = NPStringFog.decode(new byte[]{68, 8, 69, 93, 21, 98, 85, 19, 84, 87, 21}, "4a32a6", -1057533906L);
        public static final String S_PIVOT_X = NPStringFog.decode(new byte[]{20, 12, 71, 87, 66, 62}, "de186f", -1.6534097E9f);
        public static final String S_PIVOT_Y = NPStringFog.decode(new byte[]{70, 92, 19, 86, 18, 56}, "65e9fa", false, false);
        public static final String S_PROGRESS = NPStringFog.decode(new byte[]{72, 74, 94, 5, 68, 85, 75, 75}, "881b60", -396);
        public static final String S_ROTATION_X = NPStringFog.decode(new byte[]{20, 90, 18, 80, 64, 12, 9, 91, 62}, "f5f14e", 28456);
        public static final String S_ROTATION_Y = NPStringFog.decode(new byte[]{70, 10, 23, 89, 18, 80, 91, 11, 58}, "4ec8f9", 1.752231667E9d);
        public static final String S_ROTATION_Z = NPStringFog.decode(new byte[]{69, 94, 77, 3, 23, 81, 88, 95, 99}, "719bc8", true, true);
        public static final String S_SCALE_X = NPStringFog.decode(new byte[]{17, 84, 84, 84, 81, 108}, "b75844", false);
        public static final String S_SCALE_Y = NPStringFog.decode(new byte[]{64, 6, 82, 92, 0, 97}, "3e30e8", true);
        public static final String S_TARGET = NPStringFog.decode(new byte[]{16, 88, 16, 84, 84, 67}, "d9b317", -1062790150L);
        public static final String S_TRANSLATION_X = NPStringFog.decode(new byte[]{65, 69, 87, 10, 75, 14, 84, 67, 95, 11, 86, 58}, "576d8b", 2.097768E9f);
        public static final String S_TRANSLATION_Y = NPStringFog.decode(new byte[]{21, 70, 84, 11, 75, 93, 0, 64, 92, 10, 86, 104}, "a45e81", -1990392712L);
        public static final String S_TRANSLATION_Z = NPStringFog.decode(new byte[]{67, 66, 7, 10, 18, 13, 86, 68, 15, 11, 15, 59}, "70fdaa", true);
        public static final String S_VISIBILITY = NPStringFog.decode(new byte[]{65, 80, 16, 12, 83, 94, 91, 80, 23, 28}, "79ce17", 1723687701L);
        public static final String[] KEY_WORDS = {NPStringFog.decode(new byte[]{1, 64, 66, 70, 92, 114, 11, 65}, "b50094", 1.3553635E9f), NPStringFog.decode(new byte[]{21, 89, 17, 88, 83, 15, 15, 89, 22, 72}, "c0b11f", false, false), NPStringFog.decode(new byte[]{84, 90, 68, 93, 88}, "56459a", -1.7292371E8f), NPStringFog.decode(new byte[]{77, 64, 89, 15, 69, 15, 88, 70, 81, 14, 88, 59}, "928a6c", -117395298L), NPStringFog.decode(new byte[]{67, 23, 85, 91, 75, 85, 86, 17, 93, 90, 86, 96}, "7e4589", -133567619L), NPStringFog.decode(new byte[]{64, 74, 7, 88, 22, 13, 85, 76, 15, 89, 11, 59}, "48f6ea", -1399745969L), NPStringFog.decode(new byte[]{0, 9, 85, 68, 84, 66, 12, 10, 94}, "ee0256", true, true), NPStringFog.decode(new byte[]{74, 89, 17, 2, 66, 93, 87, 88, 61}, "86ec64", -1915499843L), NPStringFog.decode(new byte[]{69, 89, 65, 83, 22, 92, 88, 88, 108}, "7652b5", -8766), NPStringFog.decode(new byte[]{64, 90, 23, 83, 70, 90, 93, 91, 57}, "25c223", 1.405673549E9d), NPStringFog.decode(new byte[]{16, 87, 81, 90, 80, 59}, "c4065c", 6.11558352E8d), NPStringFog.decode(new byte[]{17, 2, 7, 14, 3, 56}, "bafbfa", 1.38185248E8d), NPStringFog.decode(new byte[]{64, 90, 67, 12, 17, 109}, "035ce5", false, false), NPStringFog.decode(new byte[]{65, 10, 23, 88, 65, 105}, "1ca750", 1.7170339E9f), NPStringFog.decode(new byte[]{71, 20, 92, 95, 68, 1, 68, 21}, "7f386d", true, false), NPStringFog.decode(new byte[]{71, 7, 16, 13, 107, 86, 67, 7, 16, 0}, "7fde99", 1.6854838E9f), NPStringFog.decode(new byte[]{81, 87, 22, 15, 91, 81}, "46ef56", 1.9923782E9f), NPStringFog.decode(new byte[]{113, 96, 107, 103, 45, 46}, "2583bc", true), NPStringFog.decode(new byte[]{5, 70, 4, 89, 92}, "c4e499", true), NPStringFog.decode(new byte[]{23, 84, 74, 1, 0, 16}, "c58fed", 16605), NPStringFog.decode(new byte[]{22, 91, 64, 10, 66, 100, 7, 64, 81, 0, 66}, "f26e60", true)};

        /* JADX INFO: renamed from: androidx.constraintlayout.core.motion.utils.TypedValues$Attributes$-CC, reason: invalid class name */
        public final /* synthetic */ class CC {
            static {
                String str = Attributes.NAME;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Removed duplicated region for block: B:4:0x000e  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public static int getId(java.lang.String r6) {
                /*
                    Method dump skipped, instruction units count: 855
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.TypedValues.Attributes.CC.getId(java.lang.String):int");
            }

            public static int getType(int i) {
                switch (i) {
                    case 100:
                    case 301:
                    case 302:
                        return 2;
                    case 101:
                    case Attributes.TYPE_EASING /* 317 */:
                    case Attributes.TYPE_PIVOT_TARGET /* 318 */:
                        return 8;
                    case 303:
                    case 304:
                    case 305:
                    case 306:
                    case 307:
                    case 308:
                    case 309:
                    case 310:
                    case 311:
                    case 312:
                    case 313:
                    case 314:
                    case 315:
                    case Attributes.TYPE_PATH_ROTATE /* 316 */:
                        return 4;
                    default:
                        return -1;
                }
            }
        }
    }

    public interface Custom {
        public static final int TYPE_BOOLEAN = 904;
        public static final int TYPE_COLOR = 902;
        public static final int TYPE_DIMENSION = 905;
        public static final int TYPE_FLOAT = 901;
        public static final int TYPE_INT = 900;
        public static final int TYPE_REFERENCE = 906;
        public static final int TYPE_STRING = 903;
        public static final String NAME = NPStringFog.decode(new byte[]{115, 23, 23, 67, 92, 90}, "0bd737", -430857761L);
        public static final String S_BOOLEAN = NPStringFog.decode(new byte[]{7, 95, 9, 91, 81, 0, 11}, "e0f74a", 677876482L);
        public static final String S_COLOR = NPStringFog.decode(new byte[]{81, 11, 89, 13, 70}, "2d5b46", -602173582L);
        public static final String S_DIMENSION = NPStringFog.decode(new byte[]{85, 94, 89, 86, 15, 18, 88, 88, 90}, "1743aa", true, false);
        public static final String S_FLOAT = NPStringFog.decode(new byte[]{5, 13, 89, 89, 65}, "ca685a", -8502);
        public static final String S_INT = NPStringFog.decode(new byte[]{11, 90, 17, 85, 6, 1, 16}, "b4e0ad", true, false);
        public static final String S_REFERENCE = NPStringFog.decode(new byte[]{20, 84, 84, 23, 81, 86, 5, 84}, "f12e48", -1.9017637E9f);
        public static final String S_STRING = NPStringFog.decode(new byte[]{74, 70, 65, 81, 95, 85}, "923812", true);
        public static final String[] KEY_WORDS = {NPStringFog.decode(new byte[]{84, 91, 87, 4, 66}, "278e6c", -5.09122279E8d), NPStringFog.decode(new byte[]{82, 88, 13, 94, 75}, "17a192", -29465), NPStringFog.decode(new byte[]{64, 76, 16, 13, 88, 94}, "38bd69", -1995163790L), NPStringFog.decode(new byte[]{83, 12, 90, 88, 80, 88, 95}, "1c5459", 1.205299466E9d), NPStringFog.decode(new byte[]{5, 8, 89, 1, 92, 65, 8, 14, 90}, "aa4d22", 5.3332397E7d), NPStringFog.decode(new byte[]{74, 80, 3, 65, 85, 12, 91, 80}, "85e30b", true, true)};

        /* JADX INFO: renamed from: androidx.constraintlayout.core.motion.utils.TypedValues$Custom$-CC, reason: invalid class name */
        public final /* synthetic */ class CC {
            static {
                String str = Custom.NAME;
            }

            public static int getId(String str) {
                byte b = 0;
                switch (str.hashCode()) {
                    case -1095013018:
                        b = !str.equals(NPStringFog.decode(new byte[]{1, 8, 12, 87, 86, 16, 12, 14, 15}, "eaa28c", -1.656960426E9d)) ? (byte) -1 : (byte) 5;
                        break;
                    case -891985903:
                        b = !str.equals(NPStringFog.decode(new byte[]{18, 66, 67, 13, 90, 84}, "a61d43", false)) ? (byte) -1 : (byte) 3;
                        break;
                    case -710953590:
                        b = !str.equals(NPStringFog.decode(new byte[]{74, 6, 2, 69, 84, 87, 91, 6}, "8cd719", 707402325L)) ? (byte) -1 : (byte) 6;
                        break;
                    case 64711720:
                        b = !str.equals(NPStringFog.decode(new byte[]{3, 9, 90, 15, 4, 83, 15}, "af5ca2", 27675)) ? (byte) -1 : (byte) 4;
                        break;
                    case 94842723:
                        b = !str.equals(NPStringFog.decode(new byte[]{84, 10, 88, 89, 22}, "7e46de", 1777794266L)) ? (byte) -1 : (byte) 2;
                        break;
                    case 97526364:
                        b = !str.equals(NPStringFog.decode(new byte[]{2, 90, 11, 88, 68}, "d6d909", 2.109110366E9d)) ? (byte) -1 : (byte) 1;
                        break;
                    case 1958052158:
                        if (!str.equals(NPStringFog.decode(new byte[]{10, 89, 23, 86, 82, 92, 17}, "c7c359", -1050282727L))) {
                            b = -1;
                        }
                        break;
                    default:
                        b = -1;
                        break;
                }
                switch (b) {
                    case 0:
                        return Custom.TYPE_INT;
                    case 1:
                        return Custom.TYPE_FLOAT;
                    case 2:
                        return Custom.TYPE_COLOR;
                    case 3:
                        return Custom.TYPE_STRING;
                    case 4:
                        return Custom.TYPE_BOOLEAN;
                    case 5:
                        return Custom.TYPE_DIMENSION;
                    case 6:
                        return Custom.TYPE_REFERENCE;
                    default:
                        return -1;
                }
            }
        }
    }

    public interface Cycle {
        public static final int TYPE_ALPHA = 403;
        public static final int TYPE_CURVE_FIT = 401;
        public static final int TYPE_CUSTOM_WAVE_SHAPE = 422;
        public static final int TYPE_EASING = 420;
        public static final int TYPE_ELEVATION = 307;
        public static final int TYPE_PATH_ROTATE = 416;
        public static final int TYPE_PIVOT_X = 313;
        public static final int TYPE_PIVOT_Y = 314;
        public static final int TYPE_PROGRESS = 315;
        public static final int TYPE_ROTATION_X = 308;
        public static final int TYPE_ROTATION_Y = 309;
        public static final int TYPE_ROTATION_Z = 310;
        public static final int TYPE_SCALE_X = 311;
        public static final int TYPE_SCALE_Y = 312;
        public static final int TYPE_TRANSLATION_X = 304;
        public static final int TYPE_TRANSLATION_Y = 305;
        public static final int TYPE_TRANSLATION_Z = 306;
        public static final int TYPE_VISIBILITY = 402;
        public static final int TYPE_WAVE_OFFSET = 424;
        public static final int TYPE_WAVE_PERIOD = 423;
        public static final int TYPE_WAVE_PHASE = 425;
        public static final int TYPE_WAVE_SHAPE = 421;
        public static final String NAME = NPStringFog.decode(new byte[]{124, 82, 77, 119, 73, 1, 91, 82}, "77440b", true);
        public static final String S_ALPHA = NPStringFog.decode(new byte[]{80, 13, 66, 89, 0}, "1a21aa", true, false);
        public static final String S_CURVE_FIT = NPStringFog.decode(new byte[]{6, 66, 71, 19, 92, 117, 12, 67}, "e75e93", false);
        public static final String S_CUSTOM_WAVE_SHAPE = NPStringFog.decode(new byte[]{5, 16, 16, 66, 9, 88, 49, 4, 21, 83}, "fec6f5", 9.929917E8f);
        public static final String S_EASING = NPStringFog.decode(new byte[]{86, 2, 16, 81, 88, 82}, "3cc865", -1.06087386E9f);
        public static final String S_ELEVATION = NPStringFog.decode(new byte[]{92, 8, 7, 18, 84, 70, 80, 11, 12}, "9dbd52", false, false);
        public static final String S_PATH_ROTATE = NPStringFog.decode(new byte[]{66, 4, 16, 14, 51, 10, 70, 4, 16, 3}, "2edfae", 1482055809L);
        public static final String S_PIVOT_X = NPStringFog.decode(new byte[]{69, 90, 79, 9, 16, 104}, "539fd0", false, false);
        public static final String S_PIVOT_Y = NPStringFog.decode(new byte[]{21, 95, 69, 11, 64, 60}, "e63d4e", 129721227L);
        public static final String S_PROGRESS = NPStringFog.decode(new byte[]{73, 20, 14, 4, 23, 1, 74, 21}, "9faced", true, true);
        public static final String S_ROTATION_X = NPStringFog.decode(new byte[]{16, 88, 68, 2, 76, 89, 13, 89, 104}, "b70c80", 2.5958605E8f);
        public static final String S_ROTATION_Y = NPStringFog.decode(new byte[]{67, 92, 65, 88, 69, 95, 94, 93, 108}, "135916", 1.8890792E8f);
        public static final String S_ROTATION_Z = NPStringFog.decode(new byte[]{23, 89, 18, 3, 23, 81, 10, 88, 60}, "e6fbc8", -2.0595803E9f);
        public static final String S_SCALE_X = NPStringFog.decode(new byte[]{65, 6, 89, 15, 80, 57}, "2e8c5a", 1299639483L);
        public static final String S_SCALE_Y = NPStringFog.decode(new byte[]{71, 91, 82, 92, 84, 58}, "48301c", 25385);
        public static final String S_TRANSLATION_X = NPStringFog.decode(new byte[]{67, 19, 89, 10, 68, 10, 86, 21, 81, 11, 89, 62}, "7a8d7f", -22874);
        public static final String S_TRANSLATION_Y = NPStringFog.decode(new byte[]{77, 69, 4, 95, 68, 90, 88, 67, 12, 94, 89, 111}, "97e176", 2.5950045E8f);
        public static final String S_TRANSLATION_Z = NPStringFog.decode(new byte[]{16, 74, 87, 87, 75, 88, 5, 76, 95, 86, 86, 110}, "d86984", 342583558L);
        public static final String S_VISIBILITY = NPStringFog.decode(new byte[]{79, 90, 17, 12, 82, 91, 85, 90, 22, 28}, "93be02", false, false);
        public static final String S_WAVE_OFFSET = NPStringFog.decode(new byte[]{13, 85, 87, 68, 86, 69}, "b31731", -285322966L);
        public static final String S_WAVE_PERIOD = NPStringFog.decode(new byte[]{22, 87, 66, 92, 92, 85}, "f20531", false, true);
        public static final String S_WAVE_PHASE = NPStringFog.decode(new byte[]{70, 12, 86, 70, 3}, "6d75ff", 1.5558979E9f);
        public static final String S_WAVE_SHAPE = NPStringFog.decode(new byte[]{65, 2, 18, 80, 49, 12, 87, 19, 1}, "6cd5bd", false, false);
        public static final String[] KEY_WORDS = {NPStringFog.decode(new byte[]{5, 65, 23, 65, 3, 115, 15, 64}, "f4e7f5", false), NPStringFog.decode(new byte[]{23, 89, 68, 10, 6, 12, 13, 89, 67, 26}, "a07cde", -5.15264079E8d), NPStringFog.decode(new byte[]{86, 92, 72, 80, 85}, "708843", true), NPStringFog.decode(new byte[]{22, 65, 5, 91, 67, 8, 3, 71, 13, 90, 94, 60}, "b3d50d", 1.759828778E9d), NPStringFog.decode(new byte[]{18, 20, 85, 12, 21, 92, 7, 18, 93, 13, 8, 105}, "ff4bf0", true), NPStringFog.decode(new byte[]{71, 20, 85, 86, 75, 91, 82, 18, 93, 87, 86, 109}, "3f4887", 1078958968L), NPStringFog.decode(new byte[]{85, 85, 3, 67, 80, 65, 89, 86, 8}, "09f515", 3.88214603E8d), NPStringFog.decode(new byte[]{65, 95, 64, 0, 22, 90, 92, 94, 108}, "304ab3", -7.245965E8f), NPStringFog.decode(new byte[]{74, 86, 68, 80, 70, 90, 87, 87, 105}, "890123", 20684), NPStringFog.decode(new byte[]{70, 10, 66, 5, 64, 93, 91, 11, 108}, "4e6d44", 1.1728952E9f), NPStringFog.decode(new byte[]{22, 2, 83, 10, 81, 96}, "ea2f48", 2086240410L), NPStringFog.decode(new byte[]{69, 84, 81, 15, 80, 104}, "670c51", -2.0526726E9f), NPStringFog.decode(new byte[]{65, 91, 18, 95, 76, 58}, "12d08b", false, false), NPStringFog.decode(new byte[]{21, 92, 69, 86, 65, 108}, "e53955", 1.846526516E9d), NPStringFog.decode(new byte[]{17, 64, 13, 2, 23, 82, 18, 65}, "a2bee7", -454560312L), NPStringFog.decode(new byte[]{68, 84, 18, 9, 98, 87, 64, 84, 18, 4}, "45fa08", -28514), NPStringFog.decode(new byte[]{6, 4, 23, 11, 12, 2}, "cedbbe", -1.6461742E9f), NPStringFog.decode(new byte[]{71, 2, 71, 93, 49, 12, 81, 19, 84}, "0c18bd", false, false), NPStringFog.decode(new byte[]{91, 71, 17, 64, 95, 95, 111, 83, 20, 81}, "82b402", -1.618407146E9d), NPStringFog.decode(new byte[]{73, 82, 70, 89, 94, 81}, "974015", -1.2437686E9f), NPStringFog.decode(new byte[]{91, 87, 0, 65, 7, 21}, "41f2ba", 1080364198L), NPStringFog.decode(new byte[]{69, 90, 7, 74, 1}, "52f9d0", -1.1786084E9f)};

        /* JADX INFO: renamed from: androidx.constraintlayout.core.motion.utils.TypedValues$Cycle$-CC, reason: invalid class name */
        public final /* synthetic */ class CC {
            static {
                String str = Cycle.NAME;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Removed duplicated region for block: B:4:0x000e  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public static int getId(java.lang.String r6) {
                /*
                    Method dump skipped, instruction units count: 697
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.TypedValues.Cycle.CC.getId(java.lang.String):int");
            }

            public static int getType(int i) {
                switch (i) {
                    case 100:
                    case 401:
                    case 402:
                        return 2;
                    case 101:
                    case 420:
                    case Cycle.TYPE_WAVE_SHAPE /* 421 */:
                        return 8;
                    case 304:
                    case 305:
                    case 306:
                    case 307:
                    case 308:
                    case 309:
                    case 310:
                    case 311:
                    case 312:
                    case 313:
                    case 314:
                    case 315:
                    case 403:
                    case 416:
                    case 423:
                    case 424:
                    case Cycle.TYPE_WAVE_PHASE /* 425 */:
                        return 4;
                    default:
                        return -1;
                }
            }
        }
    }

    public interface Motion {
        public static final int TYPE_ANIMATE_CIRCLEANGLE_TO = 606;
        public static final int TYPE_ANIMATE_RELATIVE_TO = 605;
        public static final int TYPE_DRAW_PATH = 608;
        public static final int TYPE_EASING = 603;
        public static final int TYPE_PATHMOTION_ARC = 607;
        public static final int TYPE_PATH_ROTATE = 601;
        public static final int TYPE_POLAR_RELATIVETO = 609;
        public static final int TYPE_QUANTIZE_INTERPOLATOR = 604;
        public static final int TYPE_QUANTIZE_INTERPOLATOR_ID = 612;
        public static final int TYPE_QUANTIZE_INTERPOLATOR_TYPE = 611;
        public static final int TYPE_QUANTIZE_MOTIONSTEPS = 610;
        public static final int TYPE_QUANTIZE_MOTION_PHASE = 602;
        public static final int TYPE_STAGGER = 600;
        public static final String NAME = NPStringFog.decode(new byte[]{43, 14, 68, 10, 92, 95}, "fa0c31", false, false);
        public static final String S_ANIMATE_CIRCLEANGLE_TO = NPStringFog.decode(new byte[]{39, 13, 91, 14, 0, 65, 3, 32, 91, 17, 2, 89, 3, 34, 92, 4, 13, 80, 50, 12}, "fc2ca5", 1.5394944E8f);
        public static final String S_ANIMATE_RELATIVE_TO = NPStringFog.decode(new byte[]{112, 15, 91, 91, 85, 66, 84, 51, 87, 90, 85, 66, 88, 23, 87, 98, 91}, "1a2646", false, false);
        public static final String S_DRAW_PATH = NPStringFog.decode(new byte[]{115, 23, 2, 70, 52, 85, 67, 13}, "7ec1d4", 1.1940339E9f);
        public static final String S_EASING = NPStringFog.decode(new byte[]{97, 69, 80, 11, 64, 95, 65, 94, 94, 11, 118, 87, 70, 94, 95, 2}, "571e36", true);
        public static final String S_PATHMOTION_ARC = NPStringFog.decode(new byte[]{105, 84, 68, 95, 47, 94, 77, 92, 95, 89, 35, 67, 90}, "9507b1", 1685328541L);
        public static final String S_PATH_ROTATE = NPStringFog.decode(new byte[]{53, 82, 21, 81, 52, 95, 17, 82, 21, 92}, "e3a9f0", false);
        public static final String S_POLAR_RELATIVETO = NPStringFog.decode(new byte[]{50, 88, 84, 85, 74, 51, 7, 91, 89, 64, 81, 23, 7, 99, 87}, "b7848a", 176408172L);
        public static final String S_QUANTIZE_INTERPOLATOR = NPStringFog.decode(new byte[]{96, 16, 86, 15, 22, 92, 75, 0, 126, 15, 22, 80, 67, 21, 88, 13, 3, 65, 94, 23}, "1e7ab5", 701960062L);
        public static final String S_QUANTIZE_INTERPOLATOR_ID = NPStringFog.decode(new byte[]{48, 65, 81, 89, 21, 91, 27, 81, 121, 89, 21, 87, 19, 68, 95, 91, 0, 70, 14, 70, 121, 115}, "a407a2", 4.2250576E8f);
        public static final String S_QUANTIZE_INTERPOLATOR_TYPE = NPStringFog.decode(new byte[]{98, 68, 2, 8, 21, 92, 73, 84, 42, 8, 21, 80, 65, 65, 12, 10, 0, 65, 92, 67, 55, 31, 17, 80}, "31cfa5", 24054);
        public static final String S_QUANTIZE_MOTIONSTEPS = NPStringFog.decode(new byte[]{50, 19, 88, 89, 68, 80, 25, 3, 116, 88, 68, 80, 12, 8, 106, 67, 85, 73, 16}, "cf9709", true);
        public static final String S_QUANTIZE_MOTION_PHASE = NPStringFog.decode(new byte[]{55, 70, 80, 89, 21, 81, 28, 86, 124, 88, 21, 81, 9, 93, 97, 95, 0, 75, 3}, "f317a8", true);
        public static final String S_STAGGER = NPStringFog.decode(new byte[]{54, 64, 4, 4, 83, 83, 23}, "e4ec46", 235221597L);
        public static final String[] KEY_WORDS = {NPStringFog.decode(new byte[]{49, 65, 87, 83, 87, 1, 16}, "b5640d", false, true), NPStringFog.decode(new byte[]{96, 81, 23, 14, 107, 94, 68, 81, 23, 3}, "00cf91", true), NPStringFog.decode(new byte[]{101, 22, 3, 94, 77, 15, 78, 6, 47, 95, 77, 15, 91, 13, 50, 88, 88, 21, 81}, "4cb09f", 31260), NPStringFog.decode(new byte[]{99, 17, 80, 90, 17, 12, 67, 10, 94, 90, 39, 4, 68, 10, 95, 83}, "7c14be", 2.09445375E8d), NPStringFog.decode(new byte[]{53, 69, 3, 15, 66, 11, 30, 85, 43, 15, 66, 7, 22, 64, 13, 13, 87, 22, 11, 66}, "d0ba6b", -12912), NPStringFog.decode(new byte[]{115, 12, 80, 14, 3, 71, 87, 48, 92, 15, 3, 71, 91, 20, 92, 55, 13}, "2b9cb3", 1844009580L), NPStringFog.decode(new byte[]{113, 10, 95, 91, 85, 22, 85, 39, 95, 68, 87, 14, 85, 37, 88, 81, 88, 7, 100, 11}, "0d664b", -2062224882L), NPStringFog.decode(new byte[]{101, 3, 71, 14, 120, 88, 65, 11, 92, 8, 116, 69, 86}, "5b3f57", false, true), NPStringFog.decode(new byte[]{38, 22, 0, 65, 99, 4, 22, 12}, "bda63e", -8.77384766E8d), NPStringFog.decode(new byte[]{52, 10, 85, 87, 75, 103, 1, 9, 88, 66, 80, 67, 1, 49, 86}, "de9695", 15041), NPStringFog.decode(new byte[]{51, 71, 86, 13, 68, 10, 24, 87, 122, 12, 68, 10, 13, 92, 100, 23, 85, 19, 17}, "b27c0c", -8601), NPStringFog.decode(new byte[]{53, 70, 85, 93, 70, 93, 30, 86, 125, 93, 70, 81, 22, 67, 91, 95, 83, 64, 11, 65, 96, 74, 66, 81}, "d34324", -1.5938044E9f), NPStringFog.decode(new byte[]{100, 71, 83, 88, 21, 8, 79, 87, 123, 88, 21, 4, 71, 66, 93, 90, 0, 21, 90, 64, 123, 114}, "5226aa", false, false)};

        /* JADX INFO: renamed from: androidx.constraintlayout.core.motion.utils.TypedValues$Motion$-CC, reason: invalid class name */
        public final /* synthetic */ class CC {
            static {
                String str = Motion.NAME;
            }

            public static int getId(String str) {
                byte b = 7;
                switch (str.hashCode()) {
                    case -2033446275:
                        b = !str.equals(NPStringFog.decode(new byte[]{112, 8, 12, 93, 80, 70, 84, 37, 12, 66, 82, 94, 84, 39, 11, 87, 93, 87, 101, 9}, "1fe012", true)) ? (byte) -1 : (byte) 6;
                        break;
                    case -1532277420:
                        b = !str.equals(NPStringFog.decode(new byte[]{51, 68, 80, 87, 18, 12, 24, 84, 124, 86, 18, 12, 13, 95, 97, 81, 7, 22, 7}, "b119fe", -1407550830L)) ? (byte) -1 : (byte) 2;
                        break;
                    case -1529145600:
                        b = !str.equals(NPStringFog.decode(new byte[]{97, 69, 7, 95, 76, 95, 74, 85, 43, 94, 76, 95, 95, 94, 53, 69, 93, 70, 67}, "00f186", -16144)) ? (byte) -1 : (byte) 10;
                        break;
                    case -1498310144:
                        b = !str.equals(NPStringFog.decode(new byte[]{100, 86, 77, 12, 107, 13, 64, 86, 77, 1}, "479d9b", -2.069872148E9d)) ? (byte) -1 : (byte) 1;
                        break;
                    case -1030753096:
                        b = !str.equals(NPStringFog.decode(new byte[]{53, 22, 87, 89, 17, 80, 30, 6, 127, 89, 17, 92, 22, 19, 89, 91, 4, 77, 11, 17}, "dc67e9", 5.4905884E7f)) ? (byte) -1 : (byte) 4;
                        break;
                    case -762370135:
                        b = !str.equals(NPStringFog.decode(new byte[]{119, 19, 85, 68, 51, 7, 71, 9}, "3a43cf", 6.31560973E8d)) ? (byte) -1 : (byte) 8;
                        break;
                    case -232872051:
                        b = !str.equals(NPStringFog.decode(new byte[]{53, 77, 86, 83, 83, 92, 20}, "f97449", 11444)) ? (byte) -1 : (byte) 0;
                        break;
                    case 1138491429:
                        b = !str.equals(NPStringFog.decode(new byte[]{54, 95, 9, 7, 70, 101, 3, 92, 4, 18, 93, 65, 3, 100, 10}, "f0ef47", -1.7539488E9f)) ? (byte) -1 : (byte) 9;
                        break;
                    case 1539234834:
                        b = !str.equals(NPStringFog.decode(new byte[]{98, 66, 5, 94, 18, 12, 73, 82, 45, 94, 18, 0, 65, 71, 11, 92, 7, 17, 92, 69, 48, 73, 22, 0}, "37d0fe", false)) ? (byte) -1 : (byte) 11;
                        break;
                    case 1583722451:
                        b = !str.equals(NPStringFog.decode(new byte[]{98, 19, 83, 8, 16, 11, 73, 3, 123, 8, 16, 7, 65, 22, 93, 10, 5, 22, 92, 20, 123, 34}, "3f2fdb", true)) ? (byte) -1 : (byte) 12;
                        break;
                    case 1639368448:
                        b = !str.equals(NPStringFog.decode(new byte[]{99, 66, 7, 10, 70, 13, 67, 89, 9, 10, 112, 5, 68, 89, 8, 3}, "70fd5d", -795279231L)) ? (byte) -1 : (byte) 3;
                        break;
                    case 1900899336:
                        b = !str.equals(NPStringFog.decode(new byte[]{114, 8, 95, 88, 87, 23, 86, 52, 83, 89, 87, 23, 90, 16, 83, 97, 89}, "3f656c", -1.038041313E9d)) ? (byte) -1 : (byte) 5;
                        break;
                    case 2109694967:
                        if (!str.equals(NPStringFog.decode(new byte[]{53, 89, 69, 88, 121, 87, 17, 81, 94, 94, 117, 74, 6}, "e81048", true))) {
                            b = -1;
                        }
                        break;
                    default:
                        b = -1;
                        break;
                }
                switch (b) {
                    case 0:
                        return 600;
                    case 1:
                        return 601;
                    case 2:
                        return Motion.TYPE_QUANTIZE_MOTION_PHASE;
                    case 3:
                        return Motion.TYPE_EASING;
                    case 4:
                        return Motion.TYPE_QUANTIZE_INTERPOLATOR;
                    case 5:
                        return Motion.TYPE_ANIMATE_RELATIVE_TO;
                    case 6:
                        return Motion.TYPE_ANIMATE_CIRCLEANGLE_TO;
                    case 7:
                        return Motion.TYPE_PATHMOTION_ARC;
                    case 8:
                        return Motion.TYPE_DRAW_PATH;
                    case 9:
                        return Motion.TYPE_POLAR_RELATIVETO;
                    case 10:
                        return Motion.TYPE_QUANTIZE_MOTIONSTEPS;
                    case 11:
                        return Motion.TYPE_QUANTIZE_INTERPOLATOR_TYPE;
                    case 12:
                        return Motion.TYPE_QUANTIZE_INTERPOLATOR_ID;
                    default:
                        return -1;
                }
            }
        }
    }

    public interface MotionScene {
        public static final int TYPE_DEFAULT_DURATION = 600;
        public static final int TYPE_LAYOUT_DURING_TRANSITION = 601;
        public static final String NAME = NPStringFog.decode(new byte[]{120, 91, 65, 15, 95, 87, 102, 87, 80, 8, 85}, "545f09", -9.60760253E8d);
        public static final String S_DEFAULT_DURATION = NPStringFog.decode(new byte[]{82, 80, 5, 87, 71, 92, 66, 113, 22, 68, 83, 68, 95, 90, 13}, "65c620", 5.91619553E8d);
        public static final String S_LAYOUT_DURING_TRANSITION = NPStringFog.decode(new byte[]{85, 82, 64, 94, 22, 70, 125, 70, 75, 88, 13, 85, 109, 65, 88, 95, 16, 91, 77, 90, 86, 95}, "9391c2", -30828);
        public static final String[] KEY_WORDS = {NPStringFog.decode(new byte[]{85, 93, 4, 85, 76, 13, 69, 124, 23, 70, 88, 21, 88, 87, 12}, "18b49a", -1.475639651E9d), NPStringFog.decode(new byte[]{94, 81, 74, 86, 64, 16, 118, 69, 65, 80, 91, 3, 102, 66, 82, 87, 70, 13, 70, 89, 92, 87}, "20395d", false, false)};

        /* JADX INFO: renamed from: androidx.constraintlayout.core.motion.utils.TypedValues$MotionScene$-CC, reason: invalid class name */
        public final /* synthetic */ class CC {
            static {
                String str = MotionScene.NAME;
            }

            public static int getId(String str) {
                byte b = 1;
                switch (str.hashCode()) {
                    case 6076149:
                        b = !str.equals(NPStringFog.decode(new byte[]{6, 6, 87, 3, 22, 95, 22, 39, 68, 16, 2, 71, 11, 12, 95}, "bc1bc3", true)) ? (byte) -1 : (byte) 0;
                        break;
                    case 1028758976:
                        if (!str.equals(NPStringFog.decode(new byte[]{14, 88, 24, 88, 22, 68, 38, 76, 19, 94, 13, 87, 54, 75, 0, 89, 16, 89, 22, 80, 14, 89}, "b9a7c0", true))) {
                            b = -1;
                        }
                        break;
                    default:
                        b = -1;
                        break;
                }
                switch (b) {
                    case 0:
                        return 600;
                    case 1:
                        return 601;
                    default:
                        return -1;
                }
            }

            public static int getType(int i) {
                switch (i) {
                    case 600:
                        return 2;
                    case 601:
                        return 1;
                    default:
                        return -1;
                }
            }
        }
    }

    public interface OnSwipe {
        public static final String AUTOCOMPLETE_MODE = NPStringFog.decode(new byte[]{80, 66, 21, 95, 86, 86, 92, 71, 13, 85, 65, 92, 92, 88, 5, 85}, "17a059", true, true);
        public static final String DRAG_DIRECTION = NPStringFog.decode(new byte[]{2, 19, 2, 81, 82, 91, 20, 4, 0, 66, 95, 93, 8}, "fac662", false, true);
        public static final String DRAG_SCALE = NPStringFog.decode(new byte[]{0, 19, 86, 6, 17, 90, 5, 13, 82}, "da7ab9", true, true);
        public static final String DRAG_THRESHOLD = NPStringFog.decode(new byte[]{2, 22, 80, 84, 17, 91, 20, 1, 66, 91, 10, 95, 2}, "fd13e3", false, true);
        public static final String LIMIT_BOUNDS_TO = NPStringFog.decode(new byte[]{91, 90, 84, 11, 77, 83, 88, 70, 87, 6, 74, 69, 88}, "739b91", false);
        public static final String MAX_ACCELERATION = NPStringFog.decode(new byte[]{9, 81, 28, 4, 6, 91, 1, 92, 1, 23, 4, 76, 13, 95, 10}, "d0dee8", -1.0763323E9f);
        public static final String MAX_VELOCITY = NPStringFog.decode(new byte[]{14, 3, 27, 71, 85, 14, 12, 1, 10, 69, 73}, "cbc10b", -2.1063539E9f);
        public static final String MOVE_WHEN_SCROLLAT_TOP = NPStringFog.decode(new byte[]{91, 9, 78, 4, 67, 91, 83, 8, 75, 2, 70, 92, 90, 10, 89, 21, 64, 92, 70}, "6f8a43", -1.84816764E8d);
        public static final String NESTED_SCROLL_FLAGS = NPStringFog.decode(new byte[]{87, 83, 66, 16, 87, 2, 74, 85, 67, 11, 94, 10, 95, 90, 80, 3, 65}, "961d2f", true);
        public static final String ON_TOUCH_UP = NPStringFog.decode(new byte[]{9, 92, 69, 9, 22, 6, 14, 71, 65}, "f21fce", -13273);
        public static final String ROTATION_CENTER_ID = NPStringFog.decode(new byte[]{23, 93, 16, 83, 18, 90, 10, 92, 7, 87, 8, 71, 0, 64, 13, 86}, "e2d2f3", true, false);
        public static final String SPRINGS_TOP_THRESHOLD = NPStringFog.decode(new byte[]{18, 72, 69, 89, 93, 2, 18, 76, 88, 64, 71, 13, 19, 93, 68, 88, 92, 9, 5}, "a8703e", 1.18130983E9d);
        public static final String SPRING_BOUNDARY = NPStringFog.decode(new byte[]{16, 72, 65, 81, 86, 85, 1, 87, 70, 86, 92, 83, 17, 65}, "c83882", 1582573426L);
        public static final String SPRING_DAMPING = NPStringFog.decode(new byte[]{69, 20, 66, 89, 95, 84, 82, 5, 93, 64, 88, 93, 81}, "6d0013", 31437);
        public static final String SPRING_MASS = NPStringFog.decode(new byte[]{64, 71, 75, 10, 10, 5, 94, 86, 74, 16}, "379cdb", false);
        public static final String SPRING_STIFFNESS = NPStringFog.decode(new byte[]{67, 20, 65, 80, 88, 2, 67, 16, 90, 95, 80, 11, 85, 23, 64}, "0d396e", -6830);
        public static final String TOUCH_ANCHOR_ID = NPStringFog.decode(new byte[]{76, 95, 16, 7, 88, 4, 86, 83, 13, 11, 66, 12, 92}, "80ed0e", -8.7393805E8f);
        public static final String TOUCH_ANCHOR_SIDE = NPStringFog.decode(new byte[]{70, 86, 77, 90, 14, 4, 92, 90, 80, 86, 20, 22, 91, 93, 93}, "2989fe", 1436505202L);
        public static final String TOUCH_REGION_ID = NPStringFog.decode(new byte[]{71, 14, 23, 85, 9, 64, 86, 6, 11, 89, 15, 91, 87}, "3ab6a2", -579334012L);
        public static final String[] ON_TOUCH_UP_ENUM = {NPStringFog.decode(new byte[]{7, 20, 68, 9, 119, 14, 11, 17, 92, 3, 64, 4}, "fa0f4a", false, false), NPStringFog.decode(new byte[]{5, 22, 18, 88, 33, 9, 9, 19, 10, 82, 22, 3, 48, 12, 53, 67, 3, 20, 16}, "dcf7bf", 1.5555484E9f), NPStringFog.decode(new byte[]{82, 76, 71, 12, 117, 14, 94, 73, 95, 6, 66, 4, 103, 86, 118, 13, 82}, "393c6a", false, false), NPStringFog.decode(new byte[]{68, 69, 95, 70}, "710659", 1.4205359E9f), NPStringFog.decode(new byte[]{86, 86, 85, 81, 94, 87, 64, 82, 66, 81}, "236422", false, true), NPStringFog.decode(new byte[]{86, 92, 82, 93, 94, 3, 64, 88, 69, 93, 115, 8, 86, 122, 94, 85, 66, 10, 87, 77, 84}, "29182f", -6.284347E8f), NPStringFog.decode(new byte[]{94, 4, 18, 86, 66, 123, 95, 12, 20, 95, 85, 76, 85, 53, 11, 96, 68, 89, 66, 21}, "0ad308", -2.049269778E9d), NPStringFog.decode(new byte[]{90, 81, 23, 86, 20, 33, 91, 89, 17, 95, 3, 22, 81, 96, 14, 118, 8, 6}, "44a3fb", -1.4408372E9f)};
        public static final String[] SPRING_BOUNDARY_ENUM = {NPStringFog.decode(new byte[]{93, 19, 6, 23, 65, 81, 93, 10, 23}, "2ece29", -1.867731756E9d), NPStringFog.decode(new byte[]{3, 91, 23, 11, 80, 83, 50, 64, 3, 23, 71}, "a4be36", 18575), NPStringFog.decode(new byte[]{87, 89, 22, 91, 83, 0, 112, 88, 7}, "56c50e", 5.7812113E7d), NPStringFog.decode(new byte[]{4, 93, 64, 8, 85, 84, 36, 93, 65, 14}, "f25f61", false)};
        public static final String[] AUTOCOMPLETE_MODE_ENUM = {NPStringFog.decode(new byte[]{85, 89, 90, 16, 92, 8, 67, 89, 65, 23, 99, 3, 90, 89, 87, 13, 65, 31}, "664d5f", true), NPStringFog.decode(new byte[]{71, 72, 69, 94, 88, 80}, "487767", true)};
        public static final String[] NESTED_SCROLL_FLAGS_ENUM = {NPStringFog.decode(new byte[]{91, 9, 92, 6}, "5f2c27", true), NPStringFog.decode(new byte[]{5, 10, 18, 85, 90, 13, 4, 51, 14, 71, 76, 50, 2, 17, 14, 88, 84}, "aca48a", false), NPStringFog.decode(new byte[]{5, 90, 75, 7, 83, 85, 4, 96, 91, 20, 94, 85, 13}, "a38f19", -686), NPStringFog.decode(new byte[]{71, 64, 73, 18, 90, 71, 64, 102, 90, 16, 90, 89, 88, 96, 73}, "459b55", false)};
    }

    public interface Position {
        public static final int TYPE_CURVE_FIT = 508;
        public static final int TYPE_DRAWPATH = 502;
        public static final int TYPE_PATH_MOTION_ARC = 509;
        public static final int TYPE_PERCENT_HEIGHT = 504;
        public static final int TYPE_PERCENT_WIDTH = 503;
        public static final int TYPE_PERCENT_X = 506;
        public static final int TYPE_PERCENT_Y = 507;
        public static final int TYPE_POSITION_TYPE = 510;
        public static final int TYPE_SIZE_PERCENT = 505;
        public static final int TYPE_TRANSITION_EASING = 501;
        public static final String NAME = NPStringFog.decode(new byte[]{120, 87, 79, 104, 92, 66, 90, 70, 95, 87, 93}, "326831", true);
        public static final String S_DRAWPATH = NPStringFog.decode(new byte[]{80, 22, 2, 79, 53, 87, 64, 12}, "4dc8e6", -1462403934L);
        public static final String S_PERCENT_HEIGHT = NPStringFog.decode(new byte[]{20, 6, 69, 5, 6, 91, 16, 43, 82, 15, 4, 93, 16}, "dc7fc5", false, true);
        public static final String S_PERCENT_WIDTH = NPStringFog.decode(new byte[]{64, 3, 64, 85, 0, 91, 68, 49, 91, 82, 17, 93}, "0f26e5", -1.9620886E8f);
        public static final String S_PERCENT_X = NPStringFog.decode(new byte[]{69, 85, 23, 84, 81, 95, 65, 104}, "50e741", -331989613L);
        public static final String S_PERCENT_Y = NPStringFog.decode(new byte[]{20, 84, 17, 0, 7, 10, 16, 104}, "d1ccbd", 1188250488L);
        public static final String S_SIZE_PERCENT = NPStringFog.decode(new byte[]{64, 81, 75, 86, 49, 7, 65, 91, 84, 93, 21}, "3813ab", -16959);
        public static final String S_TRANSITION_EASING = NPStringFog.decode(new byte[]{22, 20, 80, 86, 16, 90, 22, 15, 94, 86, 38, 82, 17, 15, 95, 95}, "bf18c3", false, true);
        public static final String[] KEY_WORDS = {NPStringFog.decode(new byte[]{23, 22, 3, 90, 66, 15, 23, 13, 13, 90, 116, 7, 16, 13, 12, 83}, "cdb41f", 1.8763187E9f), NPStringFog.decode(new byte[]{80, 23, 86, 78, 96, 87, 64, 13}, "4e7906", -3.7275561E7d), NPStringFog.decode(new byte[]{65, 87, 65, 82, 4, 12, 69, 101, 90, 85, 21, 10}, "1231ab", -7.181781E8f), NPStringFog.decode(new byte[]{65, 7, 68, 1, 86, 11, 69, 42, 83, 11, 84, 13, 69}, "1b6b3e", -8.47897502E8d), NPStringFog.decode(new byte[]{74, 89, 25, 85, 103, 82, 75, 83, 6, 94, 67}, "90c077", HttpStatus.SC_GONE), NPStringFog.decode(new byte[]{72, 81, 23, 0, 81, 87, 76, 108}, "84ec49", 1855737319L), NPStringFog.decode(new byte[]{69, 93, 19, 83, 93, 12, 65, 97}, "58a08b", -6.668105E8f)};

        /* JADX INFO: renamed from: androidx.constraintlayout.core.motion.utils.TypedValues$Position$-CC, reason: invalid class name */
        public final /* synthetic */ class CC {
            static {
                String str = Position.NAME;
            }

            public static int getId(String str) {
                byte b = 1;
                switch (str.hashCode()) {
                    case -1812823328:
                        b = !str.equals(NPStringFog.decode(new byte[]{64, 65, 85, 12, 16, 91, 64, 90, 91, 12, 38, 83, 71, 90, 90, 5}, "434bc2", -17012)) ? (byte) -1 : (byte) 0;
                        break;
                    case -1127236479:
                        b = !str.equals(NPStringFog.decode(new byte[]{17, 93, 66, 91, 3, 10, 21, 111, 89, 92, 18, 12}, "a808fd", -7.7997494E8d)) ? (byte) -1 : (byte) 2;
                        break;
                    case -1017587252:
                        b = !str.equals(NPStringFog.decode(new byte[]{22, 4, 23, 81, 84, 94, 18, 41, 0, 91, 86, 88, 18}, "fae210", false, false)) ? (byte) -1 : (byte) 3;
                        break;
                    case -827014263:
                        if (!str.equals(NPStringFog.decode(new byte[]{0, 17, 7, 19, 103, 7, 16, 11}, "dcfd7f", false))) {
                            b = -1;
                        }
                        break;
                    case -200259324:
                        b = !str.equals(NPStringFog.decode(new byte[]{68, 94, 79, 82, 104, 93, 69, 84, 80, 89, 76}, "775788", -1.607442619E9d)) ? (byte) -1 : (byte) 4;
                        break;
                    case 428090547:
                        b = !str.equals(NPStringFog.decode(new byte[]{72, 85, 22, 84, 84, 92, 76, 104}, "80d712", 20894)) ? (byte) -1 : (byte) 5;
                        break;
                    case 428090548:
                        b = !str.equals(NPStringFog.decode(new byte[]{70, 0, 74, 83, 3, 13, 66, 60}, "6e80fc", true)) ? (byte) -1 : (byte) 6;
                        break;
                    default:
                        b = -1;
                        break;
                }
                switch (b) {
                    case 0:
                        return 501;
                    case 1:
                        return 502;
                    case 2:
                        return 503;
                    case 3:
                        return 504;
                    case 4:
                        return 505;
                    case 5:
                        return Position.TYPE_PERCENT_X;
                    case 6:
                        return 507;
                    default:
                        return -1;
                }
            }

            public static int getType(int i) {
                switch (i) {
                    case 100:
                    case Position.TYPE_CURVE_FIT /* 508 */:
                        return 2;
                    case 101:
                    case 501:
                    case 502:
                        return 8;
                    case 503:
                    case 504:
                    case 505:
                    case Position.TYPE_PERCENT_X /* 506 */:
                    case 507:
                        return 4;
                    default:
                        return -1;
                }
            }
        }
    }

    public interface Transition {
        public static final int TYPE_AUTO_TRANSITION = 704;
        public static final int TYPE_DURATION = 700;
        public static final int TYPE_FROM = 701;
        public static final int TYPE_INTERPOLATOR = 705;
        public static final int TYPE_PATH_MOTION_ARC = 509;
        public static final int TYPE_STAGGERED = 706;
        public static final int TYPE_TO = 702;
        public static final int TYPE_TRANSITION_FLAGS = 707;
        public static final String NAME = NPStringFog.decode(new byte[]{109, 23, 7, 10, 16, 95, 77, 12, 9, 10, 16}, "9efdc6", -5.916154E8f);
        public static final String S_AUTO_TRANSITION = NPStringFog.decode(new byte[]{81, 76, 21, 88, 97, 64, 81, 87, 18, 94, 65, 91, 95, 87}, "09a752", 26521);
        public static final String S_DURATION = NPStringFog.decode(new byte[]{85, 67, 64, 87, 71, 12, 94, 88}, "16263e", -1946591078L);
        public static final String S_FROM = NPStringFog.decode(new byte[]{84, 66, 11, 90}, "20d790", false);
        public static final String S_INTERPOLATOR = NPStringFog.decode(new byte[]{11, 11, 69, 8, 91, 15, 47, 10, 69, 4, 70, 17, 9, 8, 80, 21, 91, 19}, "fd1a4a", false);
        public static final String S_PATH_MOTION_ARC = NPStringFog.decode(new byte[]{66, 86, 23, 11, 124, 13, 70, 94, 12, 13, 112, 16, 81}, "27cc1b", true, true);
        public static final String S_STAGGERED = NPStringFog.decode(new byte[]{69, 67, 7, 1, 4, 80, 68, 82, 2}, "67ffc5", -1.697810273E9d);
        public static final String S_TO = NPStringFog.decode(new byte[]{70, 14}, "2a515b", true, true);
        public static final String S_TRANSITION_FLAGS = NPStringFog.decode(new byte[]{77, 71, 3, 90, 22, 15, 77, 92, 13, 90, 35, 10, 88, 82, 17}, "95b4ef", 26776);
        public static final String[] KEY_WORDS = {NPStringFog.decode(new byte[]{93, 19, 19, 85, 16, 12, 86, 8}, "9fa4de", 1.4381083E9f), NPStringFog.decode(new byte[]{95, 23, 14, 90}, "9ea78a", 1302552569L), NPStringFog.decode(new byte[]{65, 88}, "570d4d", 6.7318534E8f), NPStringFog.decode(new byte[]{71, 89, 21, 91, 44, 89, 67, 81, 14, 93, 32, 68, 84}, "78a3a6", -1.8942131E9f), NPStringFog.decode(new byte[]{5, 64, 69, 88, 96, 75, 5, 91, 66, 94, 64, 80, 11, 91}, "d51749", 5.393781E8f), NPStringFog.decode(new byte[]{12, 11, 23, 13, 87, 86, 40, 10, 23, 1, 74, 72, 14, 8, 2, 16, 87, 74}, "adcd88", 9.24885066E8d), NPStringFog.decode(new byte[]{75, 70, 82, 95, 95, 87, 74, 87, 87}, "823882", 11358), NPStringFog.decode(new byte[]{80, 19, 90, 11}, "6a5f40", true, true), NPStringFog.decode(new byte[]{67, 67, 86, 91, 74, 80, 67, 88, 88, 91, 127, 85, 86, 86, 68}, "717599", -4352)};

        /* JADX INFO: renamed from: androidx.constraintlayout.core.motion.utils.TypedValues$Transition$-CC, reason: invalid class name */
        public final /* synthetic */ class CC {
            static {
                String str = Transition.NAME;
            }

            public static int getId(String str) {
                byte b = 1;
                switch (str.hashCode()) {
                    case -1996906958:
                        b = !str.equals(NPStringFog.decode(new byte[]{65, 67, 82, 13, 75, 88, 65, 88, 92, 13, 126, 93, 84, 86, 64}, "513c81", 13819)) ? (byte) -1 : (byte) 7;
                        break;
                    case -1992012396:
                        b = !str.equals(NPStringFog.decode(new byte[]{83, 66, 65, 89, 69, 13, 88, 89}, "77381d", 6122)) ? (byte) -1 : (byte) 0;
                        break;
                    case -1357874275:
                        b = !str.equals(NPStringFog.decode(new byte[]{93, 91, 18, 90, 89, 87, 121, 90, 18, 86, 68, 73, 95, 88, 7, 71, 89, 75}, "04f369", 1.437094325E9d)) ? (byte) -1 : (byte) 5;
                        break;
                    case -1298065308:
                        b = !str.equals(NPStringFog.decode(new byte[]{83, 68, 70, 12, 108, 22, 83, 95, 65, 10, 76, 13, 93, 95}, "212c8d", true)) ? (byte) -1 : (byte) 4;
                        break;
                    case 3707:
                        b = !str.equals(NPStringFog.decode(new byte[]{67, 9}, "7f64bb", 1351932528L)) ? (byte) -1 : (byte) 2;
                        break;
                    case 3151786:
                        if (!str.equals(NPStringFog.decode(new byte[]{81, 67, 89, 14}, "716c52", 10249))) {
                            b = -1;
                        }
                        break;
                    case 1310733335:
                        b = !str.equals(NPStringFog.decode(new byte[]{70, 85, 18, 90, 124, 87, 66, 93, 9, 92, 112, 74, 85}, "64f218", 9.177312E8f)) ? (byte) -1 : (byte) 3;
                        break;
                    case 1839260940:
                        b = !str.equals(NPStringFog.decode(new byte[]{70, 22, 7, 4, 81, 93, 71, 7, 2}, "5bfc68", 1189097065L)) ? (byte) -1 : (byte) 6;
                        break;
                    default:
                        b = -1;
                        break;
                }
                switch (b) {
                    case 0:
                        return Transition.TYPE_DURATION;
                    case 1:
                        return Transition.TYPE_FROM;
                    case 2:
                        return Transition.TYPE_TO;
                    case 3:
                        return 509;
                    case 4:
                        return Transition.TYPE_AUTO_TRANSITION;
                    case 5:
                        return Transition.TYPE_INTERPOLATOR;
                    case 6:
                        return Transition.TYPE_STAGGERED;
                    case 7:
                        return Transition.TYPE_TRANSITION_FLAGS;
                    default:
                        return -1;
                }
            }

            public static int getType(int i) {
                switch (i) {
                    case 509:
                    case Transition.TYPE_DURATION /* 700 */:
                        return 2;
                    case Transition.TYPE_FROM /* 701 */:
                    case Transition.TYPE_TO /* 702 */:
                    case Transition.TYPE_INTERPOLATOR /* 705 */:
                    case Transition.TYPE_TRANSITION_FLAGS /* 707 */:
                        return 8;
                    case Transition.TYPE_STAGGERED /* 706 */:
                        return 4;
                    default:
                        return -1;
                }
            }
        }
    }

    public interface Trigger {
        public static final int TYPE_CROSS = 312;
        public static final int TYPE_NEGATIVE_CROSS = 310;
        public static final int TYPE_POSITIVE_CROSS = 309;
        public static final int TYPE_POST_LAYOUT = 304;
        public static final int TYPE_TRIGGER_COLLISION_ID = 307;
        public static final int TYPE_TRIGGER_COLLISION_VIEW = 306;
        public static final int TYPE_TRIGGER_ID = 308;
        public static final int TYPE_TRIGGER_RECEIVER = 311;
        public static final int TYPE_TRIGGER_SLACK = 305;
        public static final int TYPE_VIEW_TRANSITION_ON_CROSS = 301;
        public static final int TYPE_VIEW_TRANSITION_ON_NEGATIVE_CROSS = 303;
        public static final int TYPE_VIEW_TRANSITION_ON_POSITIVE_CROSS = 302;
        public static final String CROSS = NPStringFog.decode(new byte[]{122, 101, 44, 101, 98}, "97c611", -462430254L);
        public static final String NAME = NPStringFog.decode(new byte[]{46, 93, 27, 96, 19, 90, 2, 95, 7, 70}, "e8b4a3", true);
        public static final String NEGATIVE_CROSS = NPStringFog.decode(new byte[]{11, 0, 81, 88, 77, 94, 19, 0, 117, 75, 86, 68, 22}, "ee6997", true, true);
        public static final String POSITIVE_CROSS = NPStringFog.decode(new byte[]{22, 95, 68, 92, 64, 12, 16, 85, 116, 71, 91, 22, 21}, "f0754e", true);
        public static final String POST_LAYOUT = NPStringFog.decode(new byte[]{66, 94, 17, 23, 127, 4, 75, 94, 23, 23}, "21bc3e", true, false);
        public static final String TRIGGER_COLLISION_ID = NPStringFog.decode(new byte[]{21, 64, 89, 86, 95, 84, 19, 113, 95, 93, 84, 88, 18, 91, 95, 95, 113, 85}, "a20181", -1.1584379E9f);
        public static final String TRIGGER_COLLISION_VIEW = NPStringFog.decode(new byte[]{67, 23, 95, 3, 86, 85, 69, 38, 89, 8, 93, 89, 68, 12, 89, 10, 103, 89, 82, 18}, "7e6d10", 2.0492773E9f);
        public static final String TRIGGER_ID = NPStringFog.decode(new byte[]{67, 19, 88, 85, 6, 86, 69, 40, 117}, "7a12a3", false, true);
        public static final String TRIGGER_RECEIVER = NPStringFog.decode(new byte[]{18, 67, 93, 86, 5, 1, 20, 99, 81, 82, 7, 13, 16, 84, 70}, "f141bd", false);
        public static final String TRIGGER_SLACK = NPStringFog.decode(new byte[]{23, 75, 88, 85, 85, 4, 17, 106, 93, 83, 81, 10}, "c9122a", 3.0706565E7d);
        public static final String VIEW_TRANSITION_ON_CROSS = NPStringFog.decode(new byte[]{20, 94, 86, 65, 97, 66, 3, 89, 64, 95, 65, 89, 13, 89, 124, 88, 118, 66, 13, 68, 64}, "b73650", 1167);
        public static final String VIEW_TRANSITION_ON_NEGATIVE_CROSS = NPStringFog.decode(new byte[]{19, 94, 86, 69, 102, 17, 4, 89, 64, 91, 70, 10, 10, 89, 124, 92, 124, 6, 2, 86, 71, 91, 68, 6, 38, 69, 92, 65, 65}, "e7322c", true, true);
        public static final String VIEW_TRANSITION_ON_POSITIVE_CROSS = NPStringFog.decode(new byte[]{64, 10, 92, 21, 54, 71, 87, 13, 74, 11, 22, 92, 89, 13, 118, 12, 50, 90, 69, 10, 77, 11, 20, 80, 117, 17, 86, 17, 17}, "6c9bb5", -1404);
        public static final String[] KEY_WORDS = {NPStringFog.decode(new byte[]{65, 95, 0, 19, 108, 22, 86, 88, 22, 13, 76, 13, 88, 88, 42, 10, 123, 22, 88, 69, 22}, "76ed8d", false), NPStringFog.decode(new byte[]{65, 92, 3, 68, 101, 64, 86, 91, 21, 90, 69, 91, 88, 91, 41, 93, 97, 93, 68, 92, 18, 90, 71, 87, 116, 71, 9, 64, 66}, "75f312", 9.965451E8d), NPStringFog.decode(new byte[]{78, 10, 86, 67, 54, 66, 89, 13, 64, 93, 22, 89, 87, 13, 124, 90, 44, 85, 95, 2, 71, 93, 20, 85, 123, 17, 92, 71, 17}, "8c34b0", false), NPStringFog.decode(new byte[]{73, 13, 23, 66, 46, 87, 64, 13, 17, 66}, "9bd6b6", -1.1843374E9f), NPStringFog.decode(new byte[]{21, 68, 92, 95, 94, 93, 19, 101, 89, 89, 90, 83}, "a65898", -1.0879639E9f), NPStringFog.decode(new byte[]{69, 67, 8, 2, 3, 0, 67, 114, 14, 9, 8, 12, 66, 88, 14, 11, 50, 12, 84, 70}, "11aede", true, true), NPStringFog.decode(new byte[]{21, 16, 11, 87, 81, 87, 19, 33, 13, 92, 90, 91, 18, 11, 13, 94, 127, 86}, "abb062", false), NPStringFog.decode(new byte[]{68, 74, 10, 5, 94, 86, 66, 113, 39}, "08cb93", -2817), NPStringFog.decode(new byte[]{21, 89, 64, 91, 17, 94, 19, 83, 112, 64, 10, 68, 22}, "e632e7", -9.3876525E8f), NPStringFog.decode(new byte[]{90, 85, 80, 0, 65, 8, 66, 85, 116, 19, 90, 18, 71}, "407a5a", true), NPStringFog.decode(new byte[]{17, 20, 92, 85, 94, 87, 23, 52, 80, 81, 92, 91, 19, 3, 71}, "ef5292", -6.1024247E8d), NPStringFog.decode(new byte[]{114, 103, 126, 49, 48}, "151bc0", -24348)};

        /* JADX INFO: renamed from: androidx.constraintlayout.core.motion.utils.TypedValues$Trigger$-CC, reason: invalid class name */
        public final /* synthetic */ class CC {
            static {
                String str = Trigger.NAME;
            }

            public static int getId(String str) {
                byte b = 0;
                switch (str.hashCode()) {
                    case -1594793529:
                        b = !str.equals(NPStringFog.decode(new byte[]{17, 12, 70, 12, 21, 80, 23, 6, 118, 23, 14, 74, 18}, "ac5ea9", -775069874L)) ? (byte) -1 : (byte) 8;
                        break;
                    case -966421266:
                        b = !str.equals(NPStringFog.decode(new byte[]{65, 90, 4, 65, 109, 71, 86, 93, 18, 95, 77, 92, 88, 93, 46, 88, 105, 90, 68, 90, 21, 95, 79, 80, 116, 65, 14, 69, 74}, "73a695", false)) ? (byte) -1 : (byte) 1;
                        break;
                    case -786670827:
                        b = !str.equals(NPStringFog.decode(new byte[]{64, 65, 8, 80, 84, 92, 70, 112, 14, 91, 95, 80, 71, 90, 14, 89, 122, 93}, "43a739", -1389037189L)) ? (byte) -1 : (byte) 6;
                        break;
                    case -648752941:
                        b = !str.equals(NPStringFog.decode(new byte[]{70, 64, 10, 94, 4, 83, 64, 123, 39}, "22c9c6", true)) ? (byte) -1 : (byte) 7;
                        break;
                    case -638126837:
                        b = !str.equals(NPStringFog.decode(new byte[]{95, 4, 82, 4, 71, 80, 71, 4, 118, 23, 92, 74, 66}, "1a5e39", -5931)) ? (byte) -1 : (byte) 9;
                        break;
                    case -76025313:
                        b = !str.equals(NPStringFog.decode(new byte[]{71, 67, 95, 80, 80, 87, 65, 114, 89, 91, 91, 91, 64, 88, 89, 89, 97, 91, 86, 70}, "316772", -863705167L)) ? (byte) -1 : (byte) 5;
                        break;
                    case -9754574:
                        b = !str.equals(NPStringFog.decode(new byte[]{16, 11, 6, 66, 98, 16, 7, 12, 16, 92, 66, 11, 9, 12, 44, 91, 120, 7, 1, 3, 23, 92, 64, 7, 37, 16, 12, 70, 69}, "fbc56b", 2.76671425E8d)) ? (byte) -1 : (byte) 2;
                        break;
                    case 64397344:
                        b = !str.equals(NPStringFog.decode(new byte[]{112, 51, 45, 102, 53}, "3ab5f1", -747104892L)) ? (byte) -1 : (byte) 11;
                        break;
                    case 364489912:
                        b = !str.equals(NPStringFog.decode(new byte[]{16, 75, 13, 2, 85, 87, 22, 106, 8, 4, 81, 89}, "d9de22", -1.6536988E9f)) ? (byte) -1 : (byte) 4;
                        break;
                    case 1301930599:
                        if (!str.equals(NPStringFog.decode(new byte[]{67, 90, 86, 20, 50, 74, 84, 93, 64, 10, 18, 81, 90, 93, 124, 13, 37, 74, 90, 64, 64}, "533cf8", 5.3620083E8f))) {
                            b = -1;
                        }
                        break;
                    case 1401391082:
                        b = !str.equals(NPStringFog.decode(new byte[]{69, 14, 71, 77, 124, 81, 76, 14, 65, 77}, "5a4900", -1.5305811E9f)) ? (byte) -1 : (byte) 3;
                        break;
                    case 1535404999:
                        b = !str.equals(NPStringFog.decode(new byte[]{17, 71, 92, 94, 3, 86, 23, 103, 80, 90, 1, 90, 19, 80, 71}, "e559d3", -3.9746528E8f)) ? (byte) -1 : (byte) 10;
                        break;
                    default:
                        b = -1;
                        break;
                }
                switch (b) {
                    case 0:
                        return 301;
                    case 1:
                        return 302;
                    case 2:
                        return 303;
                    case 3:
                        return 304;
                    case 4:
                        return 305;
                    case 5:
                        return 306;
                    case 6:
                        return 307;
                    case 7:
                        return 308;
                    case 8:
                        return 309;
                    case 9:
                        return 310;
                    case 10:
                        return 311;
                    case 11:
                        return 312;
                    default:
                        return -1;
                }
            }
        }
    }

    int getId(String str);

    boolean setValue(int i, float f);

    boolean setValue(int i, int i2);

    boolean setValue(int i, String str);

    boolean setValue(int i, boolean z);
}

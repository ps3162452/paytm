package com.google.zxing.oned;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes65.dex */
final class EANManufacturerOrgSupport {
    private final List<int[]> ranges = new ArrayList();
    private final List<String> countryIdentifiers = new ArrayList();

    EANManufacturerOrgSupport() {
    }

    private void add(int[] iArr, String str) {
        this.ranges.add(iArr);
        this.countryIdentifiers.add(str);
    }

    private void initIfNeeded() {
        synchronized (this) {
            if (this.ranges.isEmpty()) {
                add(new int[]{0, 19}, NPStringFog.decode(new byte[]{48, 96, 27, 118, 32}, "e345af", true, false));
                add(new int[]{30, 39}, NPStringFog.decode(new byte[]{101, 100}, "072834", 9.3523334E8f));
                add(new int[]{60, 139}, NPStringFog.decode(new byte[]{100, 107, 25, 114, 37}, "1861d1", true, false));
                add(new int[]{HttpStatus.SC_MULTIPLE_CHOICES, 379}, NPStringFog.decode(new byte[]{34, 106}, "d8bccf", 1.7646825E9f));
                add(new int[]{380}, NPStringFog.decode(new byte[]{119, 34}, "5e01dd", 1820195390L));
                add(new int[]{383}, NPStringFog.decode(new byte[]{99, 125}, "0457f4", 61474899L));
                add(new int[]{385}, NPStringFog.decode(new byte[]{45, 101}, "e78a04", 1.0680426E9f));
                add(new int[]{387}, NPStringFog.decode(new byte[]{115, 116}, "154e8b", 29897));
                add(new int[]{HttpStatus.SC_BAD_REQUEST, 440}, NPStringFog.decode(new byte[]{112, 113}, "44a84f", 1.42884022E8d));
                add(new int[]{450, 459}, NPStringFog.decode(new byte[]{126, 49}, "4af93a", true, false));
                add(new int[]{460, 469}, NPStringFog.decode(new byte[]{49, 98}, "c7bb03", false, false));
                add(new int[]{471}, NPStringFog.decode(new byte[]{49, 98}, "e5af78", 254805874L));
                add(new int[]{474}, NPStringFog.decode(new byte[]{115, 113}, "64eea2", 23039));
                add(new int[]{475}, NPStringFog.decode(new byte[]{123, 53}, "7c30c5", -337836404L));
                add(new int[]{476}, NPStringFog.decode(new byte[]{39, 110}, "f49ba5", 24561));
                add(new int[]{477}, NPStringFog.decode(new byte[]{121, 100}, "50182a", -2.00009378E8d));
                add(new int[]{478}, NPStringFog.decode(new byte[]{108, 60}, "9fc3ec", 13072));
                add(new int[]{479}, NPStringFog.decode(new byte[]{46, 121}, "b27f8b", -6.22636105E8d));
                add(new int[]{480}, NPStringFog.decode(new byte[]{53, 42}, "eb7814", 12768));
                add(new int[]{481}, NPStringFog.decode(new byte[]{115, 108}, "154d0b", true, false));
                add(new int[]{482}, NPStringFog.decode(new byte[]{97, 116}, "458de7", 1331654067L));
                add(new int[]{484}, NPStringFog.decode(new byte[]{127, 39}, "2cb418", true, true));
                add(new int[]{485}, NPStringFog.decode(new byte[]{35, 117}, "b8fde7", -53206006L));
                add(new int[]{486}, NPStringFog.decode(new byte[]{37, 119}, "b256c2", true, true));
                add(new int[]{487}, NPStringFog.decode(new byte[]{120, 104}, "3294c4", 1399243378L));
                add(new int[]{489}, NPStringFog.decode(new byte[]{45, 115}, "e8afe8", 1.8203556E8d));
                add(new int[]{490, 499}, NPStringFog.decode(new byte[]{125, 99}, "73bb16", -9.30222313E8d));
                add(new int[]{HttpStatus.SC_INTERNAL_SERVER_ERROR, 509}, NPStringFog.decode(new byte[]{33, 117}, "f7e6cd", true));
                add(new int[]{520}, NPStringFog.decode(new byte[]{112, 106}, "7816a2", -32185));
                add(new int[]{528}, NPStringFog.decode(new byte[]{41, 114}, "e0f6c6", -14958));
                add(new int[]{529}, NPStringFog.decode(new byte[]{34, 105}, "a0d347", -9.05684582E8d));
                add(new int[]{531}, NPStringFog.decode(new byte[]{43, 46}, "fe555e", 388));
                add(new int[]{535}, NPStringFog.decode(new byte[]{123, 53}, "6a4f4c", -1177634897L));
                add(new int[]{539}, NPStringFog.decode(new byte[]{126, 117}, "709d27", -7.68963001E8d));
                add(new int[]{540, 549}, NPStringFog.decode(new byte[]{118, 113, 27, 124, 98}, "444079", -1.4224547E9f));
                add(new int[]{560}, NPStringFog.decode(new byte[]{100, 50}, "4fa7ec", -1.063731047E9d));
                add(new int[]{569}, NPStringFog.decode(new byte[]{42, 106}, "c99a5c", 1.629625835E9d));
                add(new int[]{570, 579}, NPStringFog.decode(new byte[]{113, 114}, "59d2ac", -24173));
                add(new int[]{590}, NPStringFog.decode(new byte[]{50, 121}, "b579c8", true));
                add(new int[]{594}, NPStringFog.decode(new byte[]{106, 127}, "808c9e", true, false));
                add(new int[]{599}, NPStringFog.decode(new byte[]{42, 108}, "b94590", 1.908191E9f));
                add(new int[]{600, 601}, NPStringFog.decode(new byte[]{104, 39}, "2f0f34", -9291));
                add(new int[]{TypedValues.Motion.TYPE_EASING}, NPStringFog.decode(new byte[]{112, 41}, "7a8c68", -26008));
                add(new int[]{TypedValues.Motion.TYPE_DRAW_PATH}, NPStringFog.decode(new byte[]{122, 46}, "8f243a", 15711));
                add(new int[]{TypedValues.Motion.TYPE_POLAR_RELATIVETO}, NPStringFog.decode(new byte[]{127, 103}, "22501e", 8.1555034E8f));
                add(new int[]{TypedValues.Motion.TYPE_QUANTIZE_INTERPOLATOR_TYPE}, NPStringFog.decode(new byte[]{43, 120}, "f945dc", true));
                add(new int[]{613}, NPStringFog.decode(new byte[]{119, 56}, "3bb424", true, true));
                add(new int[]{616}, NPStringFog.decode(new byte[]{125, 125}, "68b9c4", -685214333L));
                add(new int[]{618}, NPStringFog.decode(new byte[]{114, 124}, "1588ee", true, true));
                add(new int[]{619}, NPStringFog.decode(new byte[]{96, 47}, "4a9bd7", -6750));
                add(new int[]{621}, NPStringFog.decode(new byte[]{53, 109}, "f49dc7", true));
                add(new int[]{622}, NPStringFog.decode(new byte[]{114, 35}, "7dfa5d", false));
                add(new int[]{624}, NPStringFog.decode(new byte[]{41, 108}, "e5f361", 1.5008616E9f));
                add(new int[]{625}, NPStringFog.decode(new byte[]{121, 46}, "3a7571", -28329));
                add(new int[]{626}, NPStringFog.decode(new byte[]{123, 55}, "2ed790", 9.27269085E8d));
                add(new int[]{627}, NPStringFog.decode(new byte[]{46, 54}, "ea5ebc", -1.190489099E9d));
                add(new int[]{628}, NPStringFog.decode(new byte[]{97, 112}, "21cb13", true));
                add(new int[]{629}, NPStringFog.decode(new byte[]{117, 38}, "4ca02a", 1421689933L));
                add(new int[]{640, 649}, NPStringFog.decode(new byte[]{127, 126}, "97836f", 1.1488221E9f));
                add(new int[]{690, 695}, NPStringFog.decode(new byte[]{112, 121}, "377bf4", false, false));
                add(new int[]{TypedValues.Transition.TYPE_DURATION, 709}, NPStringFog.decode(new byte[]{40, 122}, "f5842c", 2.512914E8f));
                add(new int[]{729}, NPStringFog.decode(new byte[]{124, 120}, "541707", false, true));
                add(new int[]{730, 739}, NPStringFog.decode(new byte[]{55, 36}, "daadf1", true, false));
                add(new int[]{740}, NPStringFog.decode(new byte[]{114, 102}, "529e6a", 22845391L));
                add(new int[]{741}, NPStringFog.decode(new byte[]{99, 52}, "0b984a", true));
                add(new int[]{742}, NPStringFog.decode(new byte[]{45, 123}, "e57b9c", true));
                add(new int[]{743}, NPStringFog.decode(new byte[]{118, 44}, "8e4191", 10003));
                add(new int[]{744}, NPStringFog.decode(new byte[]{116, 102}, "747ab3", 2062801392L));
                add(new int[]{745}, NPStringFog.decode(new byte[]{105, 119}, "9633a7", false, true));
                add(new int[]{746}, NPStringFog.decode(new byte[]{118, 123}, "24feed", false, false));
                add(new int[]{750}, NPStringFog.decode(new byte[]{43, 111}, "f73dc8", -3.4346986E8f));
                add(new int[]{754, 755}, NPStringFog.decode(new byte[]{123, 121}, "88d0a7", -2042620965L));
                add(new int[]{759}, NPStringFog.decode(new byte[]{100, 116}, "217b12", -11477));
                add(new int[]{760, 769}, NPStringFog.decode(new byte[]{39, 112}, "d8f876", 1.008993197E9d));
                add(new int[]{770}, NPStringFog.decode(new byte[]{118, 125}, "52cb6c", -533474685L));
                add(new int[]{773}, NPStringFog.decode(new byte[]{49, 96}, "d9ec48", false));
                add(new int[]{775}, NPStringFog.decode(new byte[]{50, 119}, "b29bb1", false));
                add(new int[]{777}, NPStringFog.decode(new byte[]{32, 45}, "bb18b7", 3.05739172E8d));
                add(new int[]{779}, NPStringFog.decode(new byte[]{116, 52}, "5f77a0", true, true));
                add(new int[]{780}, NPStringFog.decode(new byte[]{115, 121}, "0548dc", 497079079L));
                add(new int[]{784}, NPStringFog.decode(new byte[]{50, 104}, "b1f54a", false));
                add(new int[]{785}, NPStringFog.decode(new byte[]{53, 118}, "e33b34", true));
                add(new int[]{786}, NPStringFog.decode(new byte[]{117, 118}, "050cd0", false));
                add(new int[]{789, 790}, NPStringFog.decode(new byte[]{113, 102}, "340662", 1.98943E9f));
                add(new int[]{800, 839}, NPStringFog.decode(new byte[]{122, 49}, "3e8695", -2.1033774E9f));
                add(new int[]{840, 849}, NPStringFog.decode(new byte[]{38, 96}, "c3ffe7", false, true));
                add(new int[]{850}, NPStringFog.decode(new byte[]{122, 48}, "9e6834", -4.88817382E8d));
                add(new int[]{858}, NPStringFog.decode(new byte[]{103, 46}, "4e0bbf", false));
                add(new int[]{859}, NPStringFog.decode(new byte[]{119, 110}, "4407e1", -1.8452718E9f));
                add(new int[]{860}, NPStringFog.decode(new byte[]{56, 48}, "aeee7d", -1413512552L));
                add(new int[]{865}, NPStringFog.decode(new byte[]{117, 125}, "8311d4", true, false));
                add(new int[]{867}, NPStringFog.decode(new byte[]{122, 98}, "12c21a", 1.353792173E9d));
                add(new int[]{868, 869}, NPStringFog.decode(new byte[]{108, 55}, "8e9d9d", 5.25304418E8d));
                add(new int[]{870, 879}, NPStringFog.decode(new byte[]{124, 123}, "27388b", false));
                add(new int[]{880}, NPStringFog.decode(new byte[]{126, 52}, "5f8b7f", true, false));
                add(new int[]{885}, NPStringFog.decode(new byte[]{97, 45}, "5e3a12", -486610130L));
                add(new int[]{888}, NPStringFog.decode(new byte[]{99, 34}, "0e525b", -2.2023298E8f));
                add(new int[]{890}, NPStringFog.decode(new byte[]{126, 123}, "75c861", 1.6874258E9f));
                add(new int[]{893}, NPStringFog.decode(new byte[]{103, 122}, "140fc0", false));
                add(new int[]{896}, NPStringFog.decode(new byte[]{103, 46}, "7ef7f5", 3.93155E8f));
                add(new int[]{899}, NPStringFog.decode(new byte[]{122, 37}, "3add56", 24534));
                add(new int[]{TypedValues.Custom.TYPE_INT, 919}, NPStringFog.decode(new byte[]{112, 50}, "1ff53a", 1.3266308E9f));
                add(new int[]{930, 939}, NPStringFog.decode(new byte[]{119, 98}, "677cb3", -2.2360946E8f));
                add(new int[]{940, 949}, NPStringFog.decode(new byte[]{39, 98}, "f86603", -22659));
                add(new int[]{955}, NPStringFog.decode(new byte[]{116, 111}, "966fb8", true, false));
                add(new int[]{958}, NPStringFog.decode(new byte[]{121, 126}, "41cd1d", -1.7891273E9f));
            }
        }
    }

    String lookupCountryIdentifier(String str) {
        initIfNeeded();
        int i = Integer.parseInt(str.substring(0, 3));
        int size = this.ranges.size();
        for (int i2 = 0; i2 < size; i2++) {
            int[] iArr = this.ranges.get(i2);
            int i3 = iArr[0];
            if (i < i3) {
                return null;
            }
            if (i <= (iArr.length == 1 ? i3 : iArr[1])) {
                return this.countryIdentifiers.get(i2);
            }
        }
        return null;
    }
}

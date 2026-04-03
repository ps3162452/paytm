package androidx.customview.widget;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes26.dex */
class FocusStrategy {

    public interface BoundsAdapter<T> {
        void obtainBounds(T t, Rect rect);
    }

    public interface CollectionAdapter<T, V> {
        V get(T t, int i);

        int size(T t);
    }

    private static class SequentialComparator<T> implements Comparator<T> {
        private final BoundsAdapter<T> mAdapter;
        private final boolean mIsLayoutRtl;
        private final Rect mTemp1 = new Rect();
        private final Rect mTemp2 = new Rect();

        SequentialComparator(boolean z, BoundsAdapter<T> boundsAdapter) {
            this.mIsLayoutRtl = z;
            this.mAdapter = boundsAdapter;
        }

        @Override // java.util.Comparator
        public int compare(T t, T t2) {
            Rect rect = this.mTemp1;
            Rect rect2 = this.mTemp2;
            this.mAdapter.obtainBounds(t, rect);
            this.mAdapter.obtainBounds(t2, rect2);
            if (rect.top < rect2.top) {
                return -1;
            }
            if (rect.top > rect2.top) {
                return 1;
            }
            if (rect.left < rect2.left) {
                return this.mIsLayoutRtl ? 1 : -1;
            }
            if (rect.left > rect2.left) {
                return !this.mIsLayoutRtl ? 1 : -1;
            }
            if (rect.bottom < rect2.bottom) {
                return -1;
            }
            if (rect.bottom > rect2.bottom) {
                return 1;
            }
            if (rect.right < rect2.right) {
                return this.mIsLayoutRtl ? 1 : -1;
            }
            if (rect.right > rect2.right) {
                return !this.mIsLayoutRtl ? 1 : -1;
            }
            return 0;
        }
    }

    private FocusStrategy() {
    }

    private static boolean beamBeats(int i, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean zBeamsOverlap = beamsOverlap(i, rect, rect2);
        if (beamsOverlap(i, rect, rect3) || !zBeamsOverlap) {
            return false;
        }
        return !isToDirectionOf(i, rect, rect3) || i == 17 || i == 66 || majorAxisDistance(i, rect, rect2) < majorAxisDistanceToFarEdge(i, rect, rect3);
    }

    private static boolean beamsOverlap(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        switch (i) {
            case 17:
            case 66:
                return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
            case 33:
            case 130:
                return rect2.right >= rect.left && rect2.left <= rect.right;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{93, 88, 75, 83, 83, 67, 80, 94, 87, 22, 93, 66, 74, 69, 25, 84, 85, 23, 86, 95, 92, 22, 95, 81, 25, 74, 127, 121, 115, 98, 106, 110, 108, 102, 28, 23, 127, 126, 122, 99, 99, 104, 125, 126, 110, 120, 28, 23, 127, 126, 122, 99, 99, 104, 117, 116, 127, 98, 28, 23, 127, 126, 122, 99, 99, 104, 107, 120, 126, 126, 100, 74, 23}, "919607", 2.084435127E9d));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <L, T> T findNextFocusInAbsoluteDirection(@androidx.annotation.NonNull L r7, @androidx.annotation.NonNull androidx.customview.widget.FocusStrategy.CollectionAdapter<L, T> r8, @androidx.annotation.NonNull androidx.customview.widget.FocusStrategy.BoundsAdapter<T> r9, @androidx.annotation.Nullable T r10, @androidx.annotation.NonNull android.graphics.Rect r11, int r12) {
        /*
            r0 = 0
            android.graphics.Rect r3 = new android.graphics.Rect
            r3.<init>(r11)
            switch(r12) {
                case 17: goto L1f;
                case 33: goto L4c;
                case 66: goto L41;
                case 130: goto L56;
                default: goto L9;
            }
        L9:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = 73
            byte[] r1 = new byte[r1]
            r1 = {x0082: FILL_ARRAY_DATA , data: [1, 92, 69, 92, 1, 76, 12, 90, 89, 25, 15, 77, 22, 65, 23, 91, 7, 24, 10, 91, 82, 25, 13, 94, 69, 78, 113, 118, 33, 109, 54, 106, 98, 105, 78, 24, 35, 122, 116, 108, 49, 103, 33, 122, 96, 119, 78, 24, 35, 122, 116, 108, 49, 103, 41, 112, 113, 109, 78, 24, 35, 122, 116, 108, 49, 103, 55, 124, 112, 113, 54, 69, 75} // fill-array
            java.lang.String r2 = "e579b8"
            r4 = -1111009388(0xffffffffbdc75794, double:NaN)
            java.lang.String r1 = n.NPStringFog.decode(r1, r2, r4)
            r0.<init>(r1)
            throw r0
        L1f:
            int r1 = r11.width()
            int r1 = r1 + 1
            r3.offset(r1, r0)
        L28:
            r1 = 0
            int r4 = r8.size(r7)
            android.graphics.Rect r5 = new android.graphics.Rect
            r5.<init>()
            r2 = r0
        L33:
            if (r2 >= r4) goto L6e
            java.lang.Object r0 = r8.get(r7, r2)
            if (r0 != r10) goto L61
        L3b:
            r0 = r1
        L3c:
            int r1 = r2 + 1
            r2 = r1
            r1 = r0
            goto L33
        L41:
            int r1 = r11.width()
            int r1 = r1 + 1
            int r1 = -r1
            r3.offset(r1, r0)
            goto L28
        L4c:
            int r1 = r11.height()
            int r1 = r1 + 1
            r3.offset(r0, r1)
            goto L28
        L56:
            int r1 = r11.height()
            int r1 = r1 + 1
            int r1 = -r1
            r3.offset(r0, r1)
            goto L28
        L61:
            r9.obtainBounds(r0, r5)
            boolean r6 = isBetterCandidate(r12, r11, r5, r3)
            if (r6 == 0) goto L3b
            r3.set(r5)
            goto L3c
        L6e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.FocusStrategy.findNextFocusInAbsoluteDirection(java.lang.Object, androidx.customview.widget.FocusStrategy$CollectionAdapter, androidx.customview.widget.FocusStrategy$BoundsAdapter, java.lang.Object, android.graphics.Rect, int):java.lang.Object");
    }

    public static <L, T> T findNextFocusInRelativeDirection(@NonNull L l, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t, int i, boolean z, boolean z2) {
        int size = collectionAdapter.size(l);
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(collectionAdapter.get(l, i2));
        }
        Collections.sort(arrayList, new SequentialComparator(z, boundsAdapter));
        switch (i) {
            case 1:
                return (T) getPreviousFocusable(t, arrayList, z2);
            case 2:
                return (T) getNextFocusable(t, arrayList, z2);
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{6, 93, 69, 81, 82, 16, 11, 91, 89, 20, 92, 17, 17, 64, 23, 86, 84, 68, 13, 90, 82, 20, 94, 2, 66, 79, 113, 123, 114, 49, 49, 107, 113, 123, 99, 51, 35, 102, 115, 24, 17, 34, 45, 119, 98, 103, 110, 38, 35, 119, 124, 99, 112, 54, 38, 73, 25}, "b4741d", 5608));
        }
    }

    private static <T> T getNextFocusable(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int iLastIndexOf = (t == null ? -1 : arrayList.lastIndexOf(t)) + 1;
        if (iLastIndexOf < size) {
            return arrayList.get(iLastIndexOf);
        }
        if (!z || size <= 0) {
            return null;
        }
        return arrayList.get(0);
    }

    private static <T> T getPreviousFocusable(T t, ArrayList<T> arrayList, boolean z) {
        int size = arrayList.size();
        int iIndexOf = (t == null ? size : arrayList.indexOf(t)) - 1;
        if (iIndexOf >= 0) {
            return arrayList.get(iIndexOf);
        }
        if (!z || size <= 0) {
            return null;
        }
        return arrayList.get(size - 1);
    }

    private static int getWeightedDistanceFor(int i, int i2) {
        return (i * 13 * i) + (i2 * i2);
    }

    private static boolean isBetterCandidate(int i, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        if (isCandidate(rect, rect2, i)) {
            return !isCandidate(rect, rect3, i) || beamBeats(i, rect, rect2, rect3) || (!beamBeats(i, rect, rect3, rect2) && getWeightedDistanceFor(majorAxisDistance(i, rect, rect2), minorAxisDistance(i, rect, rect2)) < getWeightedDistanceFor(majorAxisDistance(i, rect, rect3), minorAxisDistance(i, rect, rect3)));
        }
        return false;
    }

    private static boolean isCandidate(@NonNull Rect rect, @NonNull Rect rect2, int i) {
        switch (i) {
            case 17:
                return (rect.right > rect2.right || rect.left >= rect2.right) && rect.left > rect2.left;
            case 33:
                return (rect.bottom > rect2.bottom || rect.top >= rect2.bottom) && rect.top > rect2.top;
            case 66:
                return (rect.left < rect2.left || rect.right <= rect2.left) && rect.right < rect2.right;
            case 130:
                return (rect.top < rect2.top || rect.bottom <= rect2.top) && rect.bottom < rect2.bottom;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{87, 12, 67, 80, 6, 66, 90, 10, 95, 21, 8, 67, 64, 17, 17, 87, 0, 22, 92, 11, 84, 21, 10, 80, 19, 30, 119, 122, 38, 99, 96, 58, 100, 101, 73, 22, 117, 42, 114, 96, 54, 105, 119, 42, 102, 123, 73, 22, 117, 42, 114, 96, 54, 105, 127, 32, 119, 97, 73, 22, 117, 42, 114, 96, 54, 105, 97, 44, 118, 125, 49, 75, 29}, "3e15e6", 1.7639247E9f));
        }
    }

    private static boolean isToDirectionOf(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        switch (i) {
            case 17:
                if (rect.left < rect2.right) {
                    return false;
                }
                break;
            case 33:
                if (rect.top < rect2.bottom) {
                    return false;
                }
                break;
            case 66:
                if (rect.right > rect2.left) {
                    return false;
                }
                break;
            case 130:
                if (rect.bottom > rect2.top) {
                    return false;
                }
                break;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{82, 89, 64, 7, 80, 21, 95, 95, 92, 66, 94, 20, 69, 68, 18, 0, 86, 65, 89, 94, 87, 66, 92, 7, 22, 75, 116, 45, 112, 52, 101, 111, 103, 50, 31, 65, 112, 127, 113, 55, 96, 62, 114, 127, 101, 44, 31, 65, 112, 127, 113, 55, 96, 62, 122, 117, 116, 54, 31, 65, 112, 127, 113, 55, 96, 62, 100, 121, 117, 42, 103, 28, 24}, "602b3a", -3780));
        }
        return true;
    }

    private static int majorAxisDistance(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(0, majorAxisDistanceRaw(i, rect, rect2));
    }

    private static int majorAxisDistanceRaw(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        switch (i) {
            case 17:
                return rect.left - rect2.right;
            case 33:
                return rect.top - rect2.bottom;
            case 66:
                return rect2.left - rect.right;
            case 130:
                return rect2.top - rect.bottom;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{82, 95, 71, 92, 84, 16, 95, 89, 91, 25, 90, 17, 69, 66, 21, 91, 82, 68, 89, 88, 80, 25, 88, 2, 22, 77, 115, 118, 116, 49, 101, 105, 96, 105, 27, 68, 112, 121, 118, 108, 100, 59, 114, 121, 98, 119, 27, 68, 112, 121, 118, 108, 100, 59, 122, 115, 115, 109, 27, 68, 112, 121, 118, 108, 100, 59, 100, 127, 114, 113, 99, 25, 24}, "66597d", 29209));
        }
    }

    private static int majorAxisDistanceToFarEdge(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(1, majorAxisDistanceToFarEdgeRaw(i, rect, rect2));
    }

    private static int majorAxisDistanceToFarEdgeRaw(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        switch (i) {
            case 17:
                return rect.left - rect2.left;
            case 33:
                return rect.top - rect2.top;
            case 66:
                return rect2.right - rect.right;
            case 130:
                return rect2.bottom - rect.bottom;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{84, 90, 19, 7, 80, 16, 89, 92, 15, 66, 94, 17, 67, 71, 65, 0, 86, 68, 95, 93, 4, 66, 92, 2, 16, 72, 39, 45, 112, 49, 99, 108, 52, 50, 31, 68, 118, 124, 34, 55, 96, 59, 116, 124, 54, 44, 31, 68, 118, 124, 34, 55, 96, 59, 124, 118, 39, 54, 31, 68, 118, 124, 34, 55, 96, 59, 98, 122, 38, 42, 103, 25, 30}, "03ab3d", 1657946800L));
        }
    }

    private static int minorAxisDistance(int i, @NonNull Rect rect, @NonNull Rect rect2) {
        switch (i) {
            case 17:
            case 66:
                return Math.abs((rect.top + (rect.height() / 2)) - (rect2.top + (rect2.height() / 2)));
            case 33:
            case 130:
                return Math.abs((rect.left + (rect.width() / 2)) - (rect2.left + (rect2.width() / 2)));
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{86, 92, 74, 81, 5, 23, 91, 90, 86, 20, 11, 22, 65, 65, 24, 86, 3, 67, 93, 91, 93, 20, 9, 5, 18, 78, 126, 123, 37, 54, 97, 106, 109, 100, 74, 67, 116, 122, 123, 97, 53, 60, 118, 122, 111, 122, 74, 67, 116, 122, 123, 97, 53, 60, 126, 112, 126, 96, 74, 67, 116, 122, 123, 97, 53, 60, 96, 124, 127, 124, 50, 30, 28}, "2584fc", 29176));
        }
    }
}

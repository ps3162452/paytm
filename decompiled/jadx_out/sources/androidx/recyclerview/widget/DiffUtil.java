package androidx.recyclerview.widget;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes42.dex */
public class DiffUtil {
    private static final Comparator<Diagonal> DIAGONAL_COMPARATOR = new Comparator<Diagonal>() { // from class: androidx.recyclerview.widget.DiffUtil.1
        @Override // java.util.Comparator
        public int compare(Diagonal diagonal, Diagonal diagonal2) {
            return diagonal.x - diagonal2.x;
        }
    };

    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int i, int i2);

        public abstract boolean areItemsTheSame(int i, int i2);

        @Nullable
        public Object getChangePayload(int i, int i2) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    static class CenteredArray {
        private final int[] mData;
        private final int mMid;

        CenteredArray(int i) {
            this.mData = new int[i];
            this.mMid = this.mData.length / 2;
        }

        int[] backingData() {
            return this.mData;
        }

        public void fill(int i) {
            Arrays.fill(this.mData, i);
        }

        int get(int i) {
            return this.mData[this.mMid + i];
        }

        void set(int i, int i2) {
            this.mData[this.mMid + i] = i2;
        }
    }

    static class Diagonal {
        public final int size;
        public final int x;
        public final int y;

        Diagonal(int i, int i2, int i3) {
            this.x = i;
            this.y = i2;
            this.size = i3;
        }

        int endX() {
            return this.x + this.size;
        }

        int endY() {
            return this.y + this.size;
        }
    }

    public static class DiffResult {
        private static final int FLAG_CHANGED = 2;
        private static final int FLAG_MASK = 15;
        private static final int FLAG_MOVED = 12;
        private static final int FLAG_MOVED_CHANGED = 4;
        private static final int FLAG_MOVED_NOT_CHANGED = 8;
        private static final int FLAG_NOT_CHANGED = 1;
        private static final int FLAG_OFFSET = 4;
        public static final int NO_POSITION = -1;
        private final Callback mCallback;
        private final boolean mDetectMoves;
        private final List<Diagonal> mDiagonals;
        private final int[] mNewItemStatuses;
        private final int mNewListSize;
        private final int[] mOldItemStatuses;
        private final int mOldListSize;

        DiffResult(Callback callback, List<Diagonal> list, int[] iArr, int[] iArr2, boolean z) {
            this.mDiagonals = list;
            this.mOldItemStatuses = iArr;
            this.mNewItemStatuses = iArr2;
            Arrays.fill(this.mOldItemStatuses, 0);
            Arrays.fill(this.mNewItemStatuses, 0);
            this.mCallback = callback;
            this.mOldListSize = callback.getOldListSize();
            this.mNewListSize = callback.getNewListSize();
            this.mDetectMoves = z;
            addEdgeDiagonals();
            findMatchingItems();
        }

        private void addEdgeDiagonals() {
            Diagonal diagonal = this.mDiagonals.isEmpty() ? null : this.mDiagonals.get(0);
            if (diagonal == null || diagonal.x != 0 || diagonal.y != 0) {
                this.mDiagonals.add(0, new Diagonal(0, 0, 0));
            }
            this.mDiagonals.add(new Diagonal(this.mOldListSize, this.mNewListSize, 0));
        }

        private void findMatchingAddition(int i) {
            int size = this.mDiagonals.size();
            int iEndY = 0;
            for (int i2 = 0; i2 < size; i2++) {
                Diagonal diagonal = this.mDiagonals.get(i2);
                while (iEndY < diagonal.y) {
                    if (this.mNewItemStatuses[iEndY] == 0 && this.mCallback.areItemsTheSame(i, iEndY)) {
                        int i3 = this.mCallback.areContentsTheSame(i, iEndY) ? 8 : 4;
                        this.mOldItemStatuses[i] = (iEndY << 4) | i3;
                        this.mNewItemStatuses[iEndY] = i3 | (i << 4);
                        return;
                    }
                    iEndY++;
                }
                iEndY = diagonal.endY();
            }
        }

        private void findMatchingItems() {
            for (Diagonal diagonal : this.mDiagonals) {
                for (int i = 0; i < diagonal.size; i++) {
                    int i2 = diagonal.x + i;
                    int i3 = diagonal.y + i;
                    int i4 = this.mCallback.areContentsTheSame(i2, i3) ? 1 : 2;
                    this.mOldItemStatuses[i2] = (i3 << 4) | i4;
                    this.mNewItemStatuses[i3] = i4 | (i2 << 4);
                }
            }
            if (this.mDetectMoves) {
                findMoveMatches();
            }
        }

        private void findMoveMatches() {
            int iEndX = 0;
            Iterator<Diagonal> it = this.mDiagonals.iterator();
            while (true) {
                if (!it.hasNext()) {
                    return;
                }
                Diagonal next = it.next();
                for (int i = iEndX; i < next.x; i++) {
                    if (this.mOldItemStatuses[i] == 0) {
                        findMatchingAddition(i);
                    }
                }
                iEndX = next.endX();
            }
        }

        @Nullable
        private static PostponedUpdate getPostponedUpdate(Collection<PostponedUpdate> collection, int i, boolean z) {
            PostponedUpdate postponedUpdate = null;
            Iterator<PostponedUpdate> it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                PostponedUpdate next = it.next();
                if (next.posInOwnerList == i && next.removal == z) {
                    it.remove();
                    postponedUpdate = next;
                    break;
                }
            }
            while (it.hasNext()) {
                PostponedUpdate next2 = it.next();
                if (z) {
                    next2.currentPos--;
                } else {
                    next2.currentPos++;
                }
            }
            return postponedUpdate;
        }

        public int convertNewPositionToOld(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int i) {
            if (i < 0 || i >= this.mNewListSize) {
                throw new IndexOutOfBoundsException(NPStringFog.decode(new byte[]{45, 86, 7, 85, 26, 69, 11, 77, 23, 16, 13, 3, 68, 90, 12, 69, 12, 1, 23, 24, 78, 16, 18, 4, 23, 75, 6, 84, 66, 21, 11, 75, 10, 68, 11, 10, 10, 24, 94, 16}, "d8c0be", -2.4297463E7d) + i + NPStringFog.decode(new byte[]{74, 70, 94, 80, 21, 70, 10, 15, 67, 65, 66, 21, 15, 28, 85, 21, 95, 70}, "ff05bf", 14454) + this.mNewListSize);
            }
            int i2 = this.mNewItemStatuses[i];
            if ((i2 & 15) == 0) {
                return -1;
            }
            return i2 >> 4;
        }

        public int convertOldPositionToNew(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) int i) {
            if (i < 0 || i >= this.mOldListSize) {
                throw new IndexOutOfBoundsException(NPStringFog.decode(new byte[]{125, 88, 0, 1, 26, 66, 91, 67, 16, 68, 13, 4, 20, 84, 11, 17, 12, 6, 71, 22, 73, 68, 18, 3, 71, 69, 1, 0, 66, 18, 91, 69, 13, 16, 11, 13, 90, 22, 89, 68}, "46ddbb", 7.97483812E8d) + i + NPStringFog.decode(new byte[]{79, 22, 10, 94, 82, 23, 15, 95, 22, 70, 22, 68, 10, 76, 0, 18, 11, 23}, "c6e267", -1411904321L) + this.mOldListSize);
            }
            int i2 = this.mOldItemStatuses[i];
            if ((i2 & 15) == 0) {
                return -1;
            }
            return i2 >> 4;
        }

        public void dispatchUpdatesTo(@NonNull ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback = listUpdateCallback instanceof BatchingListUpdateCallback ? (BatchingListUpdateCallback) listUpdateCallback : new BatchingListUpdateCallback(listUpdateCallback);
            int i = this.mOldListSize;
            ArrayDeque arrayDeque = new ArrayDeque();
            int i2 = this.mOldListSize;
            int i3 = this.mNewListSize;
            int size = this.mDiagonals.size() - 1;
            while (size >= 0) {
                Diagonal diagonal = this.mDiagonals.get(size);
                int iEndX = diagonal.endX();
                int iEndY = diagonal.endY();
                int i4 = i2;
                int i5 = i;
                int i6 = i4;
                while (i6 > iEndX) {
                    i6--;
                    int i7 = this.mOldItemStatuses[i6];
                    if ((i7 & 12) != 0) {
                        int i8 = i7 >> 4;
                        PostponedUpdate postponedUpdate = getPostponedUpdate(arrayDeque, i8, false);
                        if (postponedUpdate != null) {
                            int i9 = i5 - postponedUpdate.currentPos;
                            batchingListUpdateCallback.onMoved(i6, i9 - 1);
                            if ((i7 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i9 - 1, 1, this.mCallback.getChangePayload(i6, i8));
                            }
                        } else {
                            arrayDeque.add(new PostponedUpdate(i6, (i5 - i6) - 1, true));
                        }
                    } else {
                        batchingListUpdateCallback.onRemoved(i6, 1);
                        i5--;
                    }
                }
                int i10 = i5;
                while (i3 > iEndY) {
                    i3--;
                    int i11 = this.mNewItemStatuses[i3];
                    if ((i11 & 12) != 0) {
                        int i12 = i11 >> 4;
                        if (getPostponedUpdate(arrayDeque, i12, true) == null) {
                            arrayDeque.add(new PostponedUpdate(i3, i10 - i6, false));
                        } else {
                            batchingListUpdateCallback.onMoved((i10 - r9.currentPos) - 1, i6);
                            if ((i11 & 4) != 0) {
                                batchingListUpdateCallback.onChanged(i6, 1, this.mCallback.getChangePayload(i12, i3));
                            }
                        }
                    } else {
                        batchingListUpdateCallback.onInserted(i6, 1);
                        i10++;
                    }
                }
                int i13 = diagonal.x;
                int i14 = diagonal.y;
                for (int i15 = 0; i15 < diagonal.size; i15++) {
                    if ((this.mOldItemStatuses[i13] & 15) == 2) {
                        batchingListUpdateCallback.onChanged(i13, 1, this.mCallback.getChangePayload(i13, i14));
                    }
                    i13++;
                    i14++;
                }
                i2 = diagonal.x;
                i3 = diagonal.y;
                size--;
                i = i10;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }

        public void dispatchUpdatesTo(@NonNull RecyclerView.Adapter adapter) {
            dispatchUpdatesTo(new AdapterListUpdateCallback(adapter));
        }
    }

    public static abstract class ItemCallback<T> {
        public abstract boolean areContentsTheSame(@NonNull T t, @NonNull T t2);

        public abstract boolean areItemsTheSame(@NonNull T t, @NonNull T t2);

        @Nullable
        public Object getChangePayload(@NonNull T t, @NonNull T t2) {
            return null;
        }
    }

    private static class PostponedUpdate {
        int currentPos;
        int posInOwnerList;
        boolean removal;

        PostponedUpdate(int i, int i2, boolean z) {
            this.posInOwnerList = i;
            this.currentPos = i2;
            this.removal = z;
        }
    }

    static class Range {
        int newListEnd;
        int newListStart;
        int oldListEnd;
        int oldListStart;

        public Range() {
        }

        public Range(int i, int i2, int i3, int i4) {
            this.oldListStart = i;
            this.oldListEnd = i2;
            this.newListStart = i3;
            this.newListEnd = i4;
        }

        int newSize() {
            return this.newListEnd - this.newListStart;
        }

        int oldSize() {
            return this.oldListEnd - this.oldListStart;
        }
    }

    static class Snake {
        public int endX;
        public int endY;
        public boolean reverse;
        public int startX;
        public int startY;

        Snake() {
        }

        int diagonalSize() {
            return Math.min(this.endX - this.startX, this.endY - this.startY);
        }

        boolean hasAdditionOrRemoval() {
            return this.endY - this.startY != this.endX - this.startX;
        }

        boolean isAddition() {
            return this.endY - this.startY > this.endX - this.startX;
        }

        @NonNull
        Diagonal toDiagonal() {
            return hasAdditionOrRemoval() ? this.reverse ? new Diagonal(this.startX, this.startY, diagonalSize()) : isAddition() ? new Diagonal(this.startX, this.startY + 1, diagonalSize()) : new Diagonal(this.startX + 1, this.startY, diagonalSize()) : new Diagonal(this.startX, this.startY, this.endX - this.startX);
        }
    }

    private DiffUtil() {
    }

    @Nullable
    private static Snake backward(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z = (range.oldSize() - range.newSize()) % 2 == 0;
        int iOldSize = range.oldSize();
        int iNewSize = range.newSize();
        for (int i7 = -i; i7 <= i; i7 += 2) {
            if (i7 == (-i) || (i7 != i && centeredArray2.get(i7 + 1) < centeredArray2.get(i7 - 1))) {
                i2 = centeredArray2.get(i7 + 1);
                i3 = i2;
            } else {
                i3 = centeredArray2.get(i7 - 1);
                i2 = i3 - 1;
            }
            int i8 = range.newListEnd - ((range.oldListEnd - i2) - i7);
            if (i == 0 || i2 != i3) {
                i4 = i2;
                i5 = i8;
            } else {
                i4 = i2;
                i5 = i8 + 1;
            }
            while (i4 > range.oldListStart && i8 > range.newListStart && callback.areItemsTheSame(i4 - 1, i8 - 1)) {
                i4--;
                i8--;
            }
            centeredArray2.set(i7, i4);
            if (z && (i6 = (iOldSize - iNewSize) - i7) >= (-i) && i6 <= i && centeredArray.get(i6) >= i4) {
                Snake snake = new Snake();
                snake.startX = i4;
                snake.startY = i8;
                snake.endX = i3;
                snake.endY = i5;
                snake.reverse = true;
                return snake;
            }
        }
        return null;
    }

    @NonNull
    public static DiffResult calculateDiff(@NonNull Callback callback) {
        return calculateDiff(callback, true);
    }

    @NonNull
    public static DiffResult calculateDiff(@NonNull Callback callback, boolean z) {
        int oldListSize = callback.getOldListSize();
        int newListSize = callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Range(0, oldListSize, 0, newListSize));
        int i = ((oldListSize + newListSize) + 1) / 2;
        CenteredArray centeredArray = new CenteredArray((i * 2) + 1);
        CenteredArray centeredArray2 = new CenteredArray((i * 2) + 1);
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range = (Range) arrayList2.remove(arrayList2.size() - 1);
            Snake snakeMidPoint = midPoint(range, callback, centeredArray, centeredArray2);
            if (snakeMidPoint != null) {
                if (snakeMidPoint.diagonalSize() > 0) {
                    arrayList.add(snakeMidPoint.toDiagonal());
                }
                Range range2 = arrayList3.isEmpty() ? new Range() : (Range) arrayList3.remove(arrayList3.size() - 1);
                range2.oldListStart = range.oldListStart;
                range2.newListStart = range.newListStart;
                range2.oldListEnd = snakeMidPoint.startX;
                range2.newListEnd = snakeMidPoint.startY;
                arrayList2.add(range2);
                range.oldListEnd = range.oldListEnd;
                range.newListEnd = range.newListEnd;
                range.oldListStart = snakeMidPoint.endX;
                range.newListStart = snakeMidPoint.endY;
                arrayList2.add(range);
            } else {
                arrayList3.add(range);
            }
        }
        Collections.sort(arrayList, DIAGONAL_COMPARATOR);
        return new DiffResult(callback, arrayList, centeredArray.backingData(), centeredArray2.backingData(), z);
    }

    @Nullable
    private static Snake forward(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z = Math.abs(range.oldSize() - range.newSize()) % 2 == 1;
        int iOldSize = range.oldSize();
        int iNewSize = range.newSize();
        for (int i7 = -i; i7 <= i; i7 += 2) {
            if (i7 == (-i) || (i7 != i && centeredArray.get(i7 + 1) > centeredArray.get(i7 - 1))) {
                i2 = centeredArray.get(i7 + 1);
                i3 = i2;
            } else {
                i3 = centeredArray.get(i7 - 1);
                i2 = i3 + 1;
            }
            int i8 = (range.newListStart + (i2 - range.oldListStart)) - i7;
            if (i == 0 || i2 != i3) {
                i4 = i2;
                i5 = i8;
            } else {
                i4 = i2;
                i5 = i8 - 1;
            }
            while (i4 < range.oldListEnd && i8 < range.newListEnd && callback.areItemsTheSame(i4, i8)) {
                i4++;
                i8++;
            }
            centeredArray.set(i7, i4);
            if (z && (i6 = (iOldSize - iNewSize) - i7) >= (-i) + 1 && i6 <= i - 1 && centeredArray2.get(i6) <= i4) {
                Snake snake = new Snake();
                snake.startX = i3;
                snake.startY = i5;
                snake.endX = i4;
                snake.endY = i8;
                snake.reverse = false;
                return snake;
            }
        }
        return null;
    }

    @Nullable
    private static Snake midPoint(Range range, Callback callback, CenteredArray centeredArray, CenteredArray centeredArray2) {
        if (range.oldSize() < 1 || range.newSize() < 1) {
            return null;
        }
        int iOldSize = ((range.oldSize() + range.newSize()) + 1) / 2;
        centeredArray.set(1, range.oldListStart);
        centeredArray2.set(1, range.oldListEnd);
        for (int i = 0; i < iOldSize; i++) {
            Snake snakeForward = forward(range, callback, centeredArray, centeredArray2, i);
            if (snakeForward != null) {
                return snakeForward;
            }
            Snake snakeBackward = backward(range, callback, centeredArray, centeredArray2, i);
            if (snakeBackward != null) {
                return snakeBackward;
            }
        }
        return null;
    }
}

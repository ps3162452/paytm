package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
@SuppressLint({"ViewConstructor"})
class GhostViewHolder extends FrameLayout {
    private boolean mAttached;

    @NonNull
    private ViewGroup mParent;

    GhostViewHolder(ViewGroup viewGroup) {
        super(viewGroup.getContext());
        setClipChildren(false);
        this.mParent = viewGroup;
        this.mParent.setTag(R.id.ghost_view_holder, this);
        ViewGroupUtils.getOverlay(this.mParent).add(this);
        this.mAttached = true;
    }

    static GhostViewHolder getHolder(@NonNull ViewGroup viewGroup) {
        return (GhostViewHolder) viewGroup.getTag(R.id.ghost_view_holder);
    }

    private int getInsertIndex(ArrayList<View> arrayList) {
        int i;
        int i2;
        ArrayList arrayList2 = new ArrayList();
        int i3 = 0;
        int childCount = getChildCount() - 1;
        while (i3 <= childCount) {
            int i4 = (i3 + childCount) / 2;
            getParents(((GhostViewPort) getChildAt(i4)).mView, arrayList2);
            if (isOnTop(arrayList, (ArrayList<View>) arrayList2)) {
                int i5 = childCount;
                i2 = i4 + 1;
                i = i5;
            } else {
                i = i4 - 1;
                i2 = i3;
            }
            arrayList2.clear();
            i3 = i2;
            childCount = i;
        }
        return i3;
    }

    private static void getParents(View view, ArrayList<View> arrayList) {
        Object parent = view.getParent();
        if (parent instanceof ViewGroup) {
            getParents((View) parent, arrayList);
        }
        arrayList.add(view);
    }

    private static boolean isOnTop(View view, View view2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int childCount = viewGroup.getChildCount();
        if (Build.VERSION.SDK_INT >= 21 && view.getZ() != view2.getZ()) {
            return view.getZ() > view2.getZ();
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(ViewGroupUtils.getChildDrawingOrder(viewGroup, i));
            if (childAt == view) {
                return false;
            }
            if (childAt == view2) {
                return true;
            }
        }
        return true;
    }

    private static boolean isOnTop(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        if (!arrayList.isEmpty() && !arrayList2.isEmpty()) {
            if (arrayList.get(0) != arrayList2.get(0)) {
                return true;
            }
            int iMin = Math.min(arrayList.size(), arrayList2.size());
            for (int i = 1; i < iMin; i++) {
                View view = arrayList.get(i);
                View view2 = arrayList2.get(i);
                if (view != view2) {
                    return isOnTop(view, view2);
                }
            }
            if (arrayList2.size() != iMin) {
                return false;
            }
        }
        return true;
    }

    void addGhostView(GhostViewPort ghostViewPort) {
        ArrayList<View> arrayList = new ArrayList<>();
        getParents(ghostViewPort.mView, arrayList);
        int insertIndex = getInsertIndex(arrayList);
        if (insertIndex < 0 || insertIndex >= getChildCount()) {
            addView(ghostViewPort);
        } else {
            addView(ghostViewPort, insertIndex);
        }
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (!this.mAttached) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{99, 95, 15, 70, 65, 118, 95, 88, 21, 65, 55, 88, 82, 64, 46, 90, 13, 85, 82, 69, 70, 92, 18, 17, 83, 82, 18, 84, 2, 89, 82, 83, 71}, "77f5a1", 1810961884L));
        }
        super.onViewAdded(view);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if ((getChildCount() == 1 && getChildAt(0) == view) || getChildCount() == 0) {
            this.mParent.setTag(R.id.ghost_view_holder, null);
            ViewGroupUtils.getOverlay(this.mParent).remove(this);
            this.mAttached = false;
        }
    }

    void popToOverlayTop() {
        if (!this.mAttached) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{54, 12, 89, 71, 20, 112, 10, 11, 67, 64, 98, 94, 7, 19, 120, 91, 88, 83, 7, 22, 16, 93, 71, 23, 6, 1, 68, 85, 87, 95, 7, 0, 17}, "bd0447", false, true));
        }
        ViewGroupUtils.getOverlay(this.mParent).remove(this);
        ViewGroupUtils.getOverlay(this.mParent).add(this);
    }
}

package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import n.NPStringFog;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class MenuPopup implements ShowableListMenu, MenuPresenter, AdapterView.OnItemClickListener {
    private Rect mEpicenterBounds;

    MenuPopup() {
    }

    protected static int measureIndividualMenuWidth(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i) {
        View view;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        View view2 = null;
        ViewGroup frameLayout = viewGroup;
        while (i2 < count) {
            int itemViewType = listAdapter.getItemViewType(i2);
            if (itemViewType != i3) {
                i3 = itemViewType;
                view = null;
            } else {
                view = view2;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view2 = listAdapter.getView(i2, view, frameLayout);
            view2.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view2.getMeasuredWidth();
            if (measuredWidth >= i) {
                return i;
            }
            if (measuredWidth <= i4) {
                measuredWidth = i4;
            }
            i2++;
            i4 = measuredWidth;
        }
        return i4;
    }

    protected static boolean shouldPreserveIconSpacing(MenuBuilder menuBuilder) {
        int size = menuBuilder.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = menuBuilder.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    protected static MenuAdapter toMenuAdapter(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (MenuAdapter) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (MenuAdapter) listAdapter;
    }

    public abstract void addMenu(MenuBuilder menuBuilder);

    protected boolean closeMenuOnSubMenuOpened() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public Rect getEpicenterBounds() {
        return this.mEpicenterBounds;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return 0;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{126, 3, 94, 70, 96, 95, 67, 19, 64, 64, 16, 93, 82, 8, 81, 84, 85, 16, 71, 14, 85, 90, 66, 16, 92, 17, 94, 19, 70, 89, 86, 17, 67}, "3f0300", 2.0496984E8f));
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        toMenuAdapter(listAdapter).mAdapterMenu.performItemAction((MenuItem) listAdapter.getItem(i), this, closeMenuOnSubMenuOpened() ? 0 : 4);
    }

    public abstract void setAnchorView(View view);

    public void setEpicenterBounds(Rect rect) {
        this.mEpicenterBounds = rect;
    }

    public abstract void setForceShowIcon(boolean z);

    public abstract void setGravity(int i);

    public abstract void setHorizontalOffset(int i);

    public abstract void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener);

    public abstract void setShowTitle(boolean z);

    public abstract void setVerticalOffset(int i);
}

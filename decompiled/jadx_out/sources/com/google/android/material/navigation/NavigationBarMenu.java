package com.google.android.material.navigation;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class NavigationBarMenu extends MenuBuilder {
    private final int maxItemCount;
    private final Class<?> viewClass;

    public NavigationBarMenu(Context context, Class<?> cls, int i) {
        super(context);
        this.viewClass = cls;
        this.maxItemCount = i;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder
    protected MenuItem addInternal(int i, int i2, int i3, CharSequence charSequence) {
        if (size() + 1 > this.maxItemCount) {
            String simpleName = this.viewClass.getSimpleName();
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 0, 30, 88, 84, 64, 91, 65, 8, 68, 84, 87, 83, 19, 70, 94, 95, 21, 95, 21, 3, 92, 74, 21, 69, 20, 22, 65, 86, 71, 66, 4, 2, 17, 91, 76, 22}, "6af195", 31635) + simpleName + NPStringFog.decode(new byte[]{24, 15, 17, 25}, "8fb9b9", -539345614L) + this.maxItemCount + NPStringFog.decode(new byte[]{29, 69, 117, 90, 85, 90, 71, 69, 90, 82, 86, 19, 81, 0, 25, 80, 80, 86, 80, 14, 92, 87, 24, 68, 90, 17, 81, 19}, "3e9383", true) + simpleName + NPStringFog.decode(new byte[]{23, 85, 6, 77, 40, 84, 76, 123, 23, 92, 8, 118, 91, 71, 13, 77, 77, 28}, "42c9e5", 1367433078L));
        }
        stopDispatchingItemsChanged();
        MenuItem menuItemAddInternal = super.addInternal(i, i2, i3, charSequence);
        if (menuItemAddInternal instanceof MenuItemImpl) {
            ((MenuItemImpl) menuItemAddInternal).setExclusiveCheckable(true);
        }
        startDispatchingItemsChanged();
        return menuItemAddInternal;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException(this.viewClass.getSimpleName() + NPStringFog.decode(new byte[]{66, 2, 14, 3, 66, 25, 12, 9, 21, 70, 66, 76, 18, 22, 14, 20, 69, 25, 17, 19, 3, 11, 84, 87, 23, 21}, "bfaf19", -1321255909L));
    }

    public int getMaxItemCount() {
        return this.maxItemCount;
    }
}

package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
public final class MenuItemImpl implements SupportMenuItem {
    private static final int CHECKABLE = 1;
    private static final int CHECKED = 2;
    private static final int ENABLED = 16;
    private static final int EXCLUSIVE = 4;
    private static final int HIDDEN = 8;
    private static final int IS_ACTION = 32;
    static final int NO_ICON = 0;
    private static final int SHOW_AS_ACTION_MASK = 3;
    private static final String TAG = NPStringFog.decode(new byte[]{122, 86, 89, 19, 112, 64, 82, 94, 126, 11, 73, 88}, "737f94", -1.3655566E9f);
    private ActionProvider mActionProvider;
    private View mActionView;
    private final int mCategoryOrder;
    private MenuItem.OnMenuItemClickListener mClickListener;
    private CharSequence mContentDescription;
    private final int mGroup;
    private Drawable mIconDrawable;
    private final int mId;
    private Intent mIntent;
    private Runnable mItemCallback;
    MenuBuilder mMenu;
    private ContextMenu.ContextMenuInfo mMenuInfo;
    private MenuItem.OnActionExpandListener mOnActionExpandListener;
    private final int mOrdering;
    private char mShortcutAlphabeticChar;
    private char mShortcutNumericChar;
    private int mShowAsAction;
    private SubMenuBuilder mSubMenu;
    private CharSequence mTitle;
    private CharSequence mTitleCondensed;
    private CharSequence mTooltipText;
    private int mShortcutNumericModifiers = 4096;
    private int mShortcutAlphabeticModifiers = 4096;
    private int mIconResId = 0;
    private ColorStateList mIconTintList = null;
    private PorterDuff.Mode mIconTintMode = null;
    private boolean mHasIconTint = false;
    private boolean mHasIconTintMode = false;
    private boolean mNeedToApplyIconTint = false;
    private int mFlags = 16;
    private boolean mIsActionViewExpanded = false;

    MenuItemImpl(MenuBuilder menuBuilder, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.mShowAsAction = 0;
        this.mMenu = menuBuilder;
        this.mId = i2;
        this.mGroup = i;
        this.mCategoryOrder = i3;
        this.mOrdering = i4;
        this.mTitle = charSequence;
        this.mShowAsAction = i5;
    }

    private static void appendModifier(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    private Drawable applyIconTintIfNecessary(Drawable drawable) {
        if (drawable != null && this.mNeedToApplyIconTint && (this.mHasIconTint || this.mHasIconTintMode)) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            if (this.mHasIconTint) {
                DrawableCompat.setTintList(drawable, this.mIconTintList);
            }
            if (this.mHasIconTintMode) {
                DrawableCompat.setTintMode(drawable, this.mIconTintMode);
            }
            this.mNeedToApplyIconTint = false;
        }
        return drawable;
    }

    public void actionFormatChanged() {
        this.mMenu.onItemActionRequestChanged(this);
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.mShowAsAction & 8) == 0) {
            return false;
        }
        if (this.mActionView == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.mOnActionExpandListener;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.mMenu.collapseItemActionView(this);
        }
        return false;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean expandActionView() {
        if (!hasCollapsibleActionView()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.mOnActionExpandListener;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.mMenu.expandItemActionView(this);
        }
        return false;
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{109, 12, 12, 17, 24, 93, 74, 68, 11, 13, 76, 20, 74, 17, 21, 18, 87, 70, 77, 1, 1, 78, 24, 65, 74, 1, 69, 47, 93, 90, 76, 45, 17, 7, 85, 119, 86, 9, 21, 3, 76, 26, 94, 1, 17, 35, 91, 64, 80, 11, 11, 50, 74, 91, 79, 13, 1, 7, 74, 28, 16}, "9deb84", false));
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public View getActionView() {
        View view = this.mActionView;
        if (view != null) {
            return view;
        }
        ActionProvider actionProvider = this.mActionProvider;
        if (actionProvider == null) {
            return null;
        }
        View viewOnCreateActionView = actionProvider.onCreateActionView(this);
        this.mActionView = viewOnCreateActionView;
        return viewOnCreateActionView;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.mShortcutAlphabeticModifiers;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.mShortcutAlphabeticChar;
    }

    Runnable getCallback() {
        return this.mItemCallback;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.mContentDescription;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.mGroup;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.mIconDrawable;
        if (drawable != null) {
            return applyIconTintIfNecessary(drawable);
        }
        if (this.mIconResId == 0) {
            return null;
        }
        Drawable drawable2 = AppCompatResources.getDrawable(this.mMenu.getContext(), this.mIconResId);
        this.mIconResId = 0;
        this.mIconDrawable = drawable2;
        return applyIconTintIfNecessary(drawable2);
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.mIconTintList;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.mIconTintMode;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.mIntent;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.mId;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.mMenuInfo;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getNumericModifiers() {
        return this.mShortcutNumericModifiers;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.mShortcutNumericChar;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.mCategoryOrder;
    }

    public int getOrdering() {
        return this.mOrdering;
    }

    char getShortcut() {
        return this.mMenu.isQwertyMode() ? this.mShortcutAlphabeticChar : this.mShortcutNumericChar;
    }

    String getShortcutLabel() {
        char shortcut = getShortcut();
        if (shortcut == 0) {
            return "";
        }
        Resources resources = this.mMenu.getContext().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.mMenu.getContext()).hasPermanentMenuKey()) {
            sb.append(resources.getString(R.string.abc_prepend_shortcut_label));
        }
        int i = this.mMenu.isQwertyMode() ? this.mShortcutAlphabeticModifiers : this.mShortcutNumericModifiers;
        appendModifier(sb, i, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label));
        appendModifier(sb, i, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label));
        appendModifier(sb, i, 2, resources.getString(R.string.abc_menu_alt_shortcut_label));
        appendModifier(sb, i, 1, resources.getString(R.string.abc_menu_shift_shortcut_label));
        appendModifier(sb, i, 4, resources.getString(R.string.abc_menu_sym_shortcut_label));
        appendModifier(sb, i, 8, resources.getString(R.string.abc_menu_function_shortcut_label));
        switch (shortcut) {
            case '\b':
                sb.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
                break;
            case '\n':
                sb.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
                break;
            case ' ':
                sb.append(resources.getString(R.string.abc_menu_space_shortcut_label));
                break;
            default:
                sb.append(shortcut);
                break;
        }
        return sb.toString();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.mSubMenu;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public ActionProvider getSupportActionProvider() {
        return this.mActionProvider;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.mTitle;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.mTitleCondensed;
        if (charSequence == null) {
            charSequence = this.mTitle;
        }
        return (Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof String)) ? charSequence : charSequence.toString();
    }

    CharSequence getTitleForItemView(MenuView.ItemView itemView) {
        return (itemView == null || !itemView.prefersCondensedTitle()) ? getTitle() : getTitleCondensed();
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.mTooltipText;
    }

    public boolean hasCollapsibleActionView() {
        ActionProvider actionProvider;
        if ((this.mShowAsAction & 8) == 0) {
            return false;
        }
        if (this.mActionView == null && (actionProvider = this.mActionProvider) != null) {
            this.mActionView = actionProvider.onCreateActionView(this);
        }
        return this.mActionView != null;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.mSubMenu != null;
    }

    public boolean invoke() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.mClickListener;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        MenuBuilder menuBuilder = this.mMenu;
        if (menuBuilder.dispatchMenuItemSelected(menuBuilder, this)) {
            return true;
        }
        Runnable runnable = this.mItemCallback;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.mIntent != null) {
            try {
                this.mMenu.getContext().startActivity(this.mIntent);
                return true;
            } catch (ActivityNotFoundException e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{114, 84, 12, 17, 76, 20, 87, 92, 12, 82, 24, 85, 82, 65, 11, 64, 81, 64, 72, 21, 22, 89, 24, 92, 80, 91, 6, 90, 93, 20, 88, 91, 22, 83, 86, 64, 10, 21, 11, 81, 86, 91, 67, 92, 12, 81}, "15b684", -958761023L), e);
            }
        }
        ActionProvider actionProvider = this.mActionProvider;
        return actionProvider != null && actionProvider.onPerformDefaultAction();
    }

    public boolean isActionButton() {
        return (this.mFlags & 32) == 32;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.mIsActionViewExpanded;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.mFlags & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.mFlags & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.mFlags & 16) != 0;
    }

    public boolean isExclusiveCheckable() {
        return (this.mFlags & 4) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        ActionProvider actionProvider = this.mActionProvider;
        return (actionProvider == null || !actionProvider.overridesItemVisibility()) ? (this.mFlags & 8) == 0 : (this.mFlags & 8) == 0 && this.mActionProvider.isVisible();
    }

    public boolean requestsActionButton() {
        return (this.mShowAsAction & 1) == 1;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public boolean requiresActionButton() {
        return (this.mShowAsAction & 2) == 2;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public boolean requiresOverflow() {
        return (requiresActionButton() || requestsActionButton()) ? false : true;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{49, 80, 90, 68, 18, 91, 22, 24, 93, 88, 70, 18, 22, 77, 67, 71, 93, 64, 17, 93, 87, 27, 18, 71, 22, 93, 19, 122, 87, 92, 16, 113, 71, 82, 95, 113, 10, 85, 67, 86, 70, 28, 22, 93, 71, 118, 81, 70, 12, 87, 93, 103, 64, 93, 19, 81, 87, 82, 64, 26, 76}, "e83722", -4.6641373E8f));
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setActionView(int i) {
        Context context = this.mMenu.getContext();
        setActionView(LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false));
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setActionView(View view) {
        int i;
        this.mActionView = view;
        this.mActionProvider = null;
        if (view != null && view.getId() == -1 && (i = this.mId) > 0) {
            view.setId(i);
        }
        this.mMenu.onItemActionRequestChanged(this);
        return this;
    }

    public void setActionViewExpanded(boolean z) {
        this.mIsActionViewExpanded = z;
        this.mMenu.onItemsChanged(false);
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        if (this.mShortcutAlphabeticChar != c) {
            this.mShortcutAlphabeticChar = Character.toLowerCase(c);
            this.mMenu.onItemsChanged(false);
        }
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.mShortcutAlphabeticChar != c || this.mShortcutAlphabeticModifiers != i) {
            this.mShortcutAlphabeticChar = Character.toLowerCase(c);
            this.mShortcutAlphabeticModifiers = KeyEvent.normalizeMetaState(i);
            this.mMenu.onItemsChanged(false);
        }
        return this;
    }

    public MenuItem setCallback(Runnable runnable) {
        this.mItemCallback = runnable;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.mFlags;
        int i2 = (this.mFlags & (-2)) | (z ? 1 : 0);
        this.mFlags = i2;
        if (i != i2) {
            this.mMenu.onItemsChanged(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.mFlags & 4) != 0) {
            this.mMenu.setExclusiveItemChecked(this);
        } else {
            setCheckedInt(z);
        }
        return this;
    }

    void setCheckedInt(boolean z) {
        int i = this.mFlags;
        int i2 = (z ? 2 : 0) | (this.mFlags & (-3));
        this.mFlags = i2;
        if (i != i2) {
            this.mMenu.onItemsChanged(false);
        }
    }

    @Override // android.view.MenuItem
    public SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.mContentDescription = charSequence;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.mFlags |= 16;
        } else {
            this.mFlags &= -17;
        }
        this.mMenu.onItemsChanged(false);
        return this;
    }

    public void setExclusiveCheckable(boolean z) {
        this.mFlags = (z ? 4 : 0) | (this.mFlags & (-5));
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.mIconDrawable = null;
        this.mIconResId = i;
        this.mNeedToApplyIconTint = true;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.mIconResId = 0;
        this.mIconDrawable = drawable;
        this.mNeedToApplyIconTint = true;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.mIconTintList = colorStateList;
        this.mHasIconTint = true;
        this.mNeedToApplyIconTint = true;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.mIconTintMode = mode;
        this.mHasIconTintMode = true;
        this.mNeedToApplyIconTint = true;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.mIntent = intent;
        return this;
    }

    public void setIsActionButton(boolean z) {
        if (z) {
            this.mFlags |= 32;
        } else {
            this.mFlags &= -33;
        }
    }

    void setMenuInfo(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.mMenuInfo = contextMenuInfo;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        if (this.mShortcutNumericChar != c) {
            this.mShortcutNumericChar = c;
            this.mMenu.onItemsChanged(false);
        }
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setNumericShortcut(char c, int i) {
        if (this.mShortcutNumericChar != c || this.mShortcutNumericModifiers != i) {
            this.mShortcutNumericChar = c;
            this.mShortcutNumericModifiers = KeyEvent.normalizeMetaState(i);
            this.mMenu.onItemsChanged(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.mOnActionExpandListener = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.mClickListener = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.mShortcutNumericChar = c;
        this.mShortcutAlphabeticChar = Character.toLowerCase(c2);
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.mShortcutNumericChar = c;
        this.mShortcutNumericModifiers = KeyEvent.normalizeMetaState(i);
        this.mShortcutAlphabeticChar = Character.toLowerCase(c2);
        this.mShortcutAlphabeticModifiers = KeyEvent.normalizeMetaState(i2);
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public void setShowAsAction(int i) {
        switch (i & 3) {
            case 0:
            case 1:
            case 2:
                this.mShowAsAction = i;
                this.mMenu.onItemActionRequestChanged(this);
                return;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{53, 125, 42, 54, 104, 34, 53, 106, 36, 34, 99, 42, 41, 123, 58, 32, 123, 52, 39, 108, 54, 77, 23, 48, 46, 122, 50, 62, 118, 48, 57, 116, 38, 53, 126, 44, 40, 106, 44, 39, 104, 49, 41, 122, 40, 77, 23, 2, 8, 81, 69, 50, 127, 44, 49, 106, 36, 50, 104, 34, 37, 97, 44, 46, 121, 60, 40, 112, 51, 36, 101, 67, 7, 71, 0, 65, 90, 22, 18, 64, 4, 13, 91, 26, 70, 80, 29, 2, 91, 22, 21, 92, 19, 4, 25}, "f5ea7c", -9.54765093E8d));
        }
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public SupportMenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    public void setSubMenu(SubMenuBuilder subMenuBuilder) {
        this.mSubMenu = subMenuBuilder;
        subMenuBuilder.setHeaderTitle(getTitle());
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public SupportMenuItem setSupportActionProvider(ActionProvider actionProvider) {
        ActionProvider actionProvider2 = this.mActionProvider;
        if (actionProvider2 != null) {
            actionProvider2.reset();
        }
        this.mActionView = null;
        this.mActionProvider = actionProvider;
        this.mMenu.onItemsChanged(true);
        ActionProvider actionProvider3 = this.mActionProvider;
        if (actionProvider3 != null) {
            actionProvider3.setVisibilityListener(new ActionProvider.VisibilityListener(this) { // from class: androidx.appcompat.view.menu.MenuItemImpl.1
                final MenuItemImpl this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.core.view.ActionProvider.VisibilityListener
                public void onActionProviderVisibilityChanged(boolean z) {
                    this.this$0.mMenu.onItemVisibleChanged(this.this$0);
                }
            });
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        return setTitle(this.mMenu.getContext().getString(i));
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        this.mMenu.onItemsChanged(false);
        SubMenuBuilder subMenuBuilder = this.mSubMenu;
        if (subMenuBuilder != null) {
            subMenuBuilder.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.mTitleCondensed = charSequence;
        if (charSequence == null) {
            CharSequence charSequence2 = this.mTitle;
        }
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.mTooltipText = charSequence;
        this.mMenu.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (setVisibleInt(z)) {
            this.mMenu.onItemVisibleChanged(this);
        }
        return this;
    }

    boolean setVisibleInt(boolean z) {
        int i = this.mFlags;
        int i2 = (z ? 0 : 8) | (this.mFlags & (-9));
        this.mFlags = i2;
        return i != i2;
    }

    public boolean shouldShowIcon() {
        return this.mMenu.getOptionalIconsVisible();
    }

    boolean shouldShowShortcut() {
        return this.mMenu.isShortcutsVisible() && getShortcut() != 0;
    }

    public boolean showsTextAsAction() {
        return (this.mShowAsAction & 4) == 4;
    }

    public String toString() {
        CharSequence charSequence = this.mTitle;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }
}

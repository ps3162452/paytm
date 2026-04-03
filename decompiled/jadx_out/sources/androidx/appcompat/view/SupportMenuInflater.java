package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import androidx.core.view.MenuItemCompat;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class SupportMenuInflater extends MenuInflater {
    static final Class<?>[] ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE;
    static final Class<?>[] ACTION_VIEW_CONSTRUCTOR_SIGNATURE;
    static final int NO_ID = 0;
    final Object[] mActionProviderConstructorArguments;
    final Object[] mActionViewConstructorArguments;
    Context mContext;
    private Object mRealOwner;
    static final String LOG_TAG = NPStringFog.decode(new byte[]{106, 65, 72, 21, 13, 74, 77, 121, 93, 11, 23, 113, 87, 82, 84, 4, 22, 93, 75}, "948eb8", true);
    private static final String XML_GROUP = NPStringFog.decode(new byte[]{85, 19, 91, 67, 70}, "2a466b", -18046);
    private static final String XML_ITEM = NPStringFog.decode(new byte[]{91, 16, 93, 84}, "2d8917", 7017197.0f);
    private static final String XML_MENU = NPStringFog.decode(new byte[]{93, 85, 92, 64}, "0025bd", -9.9598656E8f);

    private static class InflatedOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {
        private static final Class<?>[] PARAM_TYPES = {MenuItem.class};
        private Method mMethod;
        private Object mRealOwner;

        public InflatedOnMenuItemClickListener(Object obj, String str) {
            this.mRealOwner = obj;
            Class<?> cls = obj.getClass();
            try {
                this.mMethod = cls.getMethod(str, PARAM_TYPES);
            } catch (Exception e) {
                InflateException inflateException = new InflateException(NPStringFog.decode(new byte[]{123, 91, 64, 90, 87, 90, 31, 64, 21, 68, 86, 71, 87, 88, 67, 83, 19, 89, 93, 90, 64, 22, 90, 64, 93, 89, 21, 89, 93, 119, 84, 93, 86, 93, 19, 92, 89, 90, 81, 90, 86, 70, 24}, "845634", 3.2602182E8f) + str + NPStringFog.decode(new byte[]{18, 94, 87, 65, 80, 13, 83, 68, 74, 65}, "279a3a", 1.5827396E9f) + cls.getName());
                inflateException.initCause(e);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            try {
                if (this.mMethod.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) this.mMethod.invoke(this.mRealOwner, menuItem)).booleanValue();
                }
                this.mMethod.invoke(this.mRealOwner, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    private class MenuState {
        private static final int defaultGroupId = 0;
        private static final int defaultItemCategory = 0;
        private static final int defaultItemCheckable = 0;
        private static final boolean defaultItemChecked = false;
        private static final boolean defaultItemEnabled = true;
        private static final int defaultItemId = 0;
        private static final int defaultItemOrder = 0;
        private static final boolean defaultItemVisible = true;
        private int groupCategory;
        private int groupCheckable;
        private boolean groupEnabled;
        private int groupId;
        private int groupOrder;
        private boolean groupVisible;
        ActionProvider itemActionProvider;
        private String itemActionProviderClassName;
        private String itemActionViewClassName;
        private int itemActionViewLayout;
        private boolean itemAdded;
        private int itemAlphabeticModifiers;
        private char itemAlphabeticShortcut;
        private int itemCategoryOrder;
        private int itemCheckable;
        private boolean itemChecked;
        private CharSequence itemContentDescription;
        private boolean itemEnabled;
        private int itemIconResId;
        private ColorStateList itemIconTintList = null;
        private PorterDuff.Mode itemIconTintMode = null;
        private int itemId;
        private String itemListenerMethodName;
        private int itemNumericModifiers;
        private char itemNumericShortcut;
        private int itemShowAsAction;
        private CharSequence itemTitle;
        private CharSequence itemTitleCondensed;
        private CharSequence itemTooltipText;
        private boolean itemVisible;
        private Menu menu;
        final SupportMenuInflater this$0;

        public MenuState(SupportMenuInflater supportMenuInflater, Menu menu) {
            this.this$0 = supportMenuInflater;
            this.menu = menu;
            resetGroup();
        }

        private char getShortcut(String str) {
            if (str == null) {
                return (char) 0;
            }
            return str.charAt(0);
        }

        private <T> T newInstance(String str, Class<?>[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, this.this$0.mContext.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return (T) constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w(NPStringFog.decode(new byte[]{100, 68, 66, 21, 14, 75, 67, 124, 87, 11, 20, 112, 89, 87, 94, 4, 21, 92, 69}, "712ea9", -1.858837597E9d), NPStringFog.decode(new byte[]{32, 5, 89, 90, 10, 16, 67, 13, 89, 71, 17, 5, 13, 16, 94, 85, 17, 1, 67, 7, 91, 85, 22, 23, 89, 68}, "cd74ed", false, true) + str, e);
                return null;
            }
        }

        private void setItem(MenuItem menuItem) {
            boolean z = true;
            menuItem.setChecked(this.itemChecked).setVisible(this.itemVisible).setEnabled(this.itemEnabled).setCheckable(this.itemCheckable >= 1).setTitleCondensed(this.itemTitleCondensed).setIcon(this.itemIconResId);
            int i = this.itemShowAsAction;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.itemListenerMethodName != null) {
                if (this.this$0.mContext.isRestricted()) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{103, 95, 82, 24, 82, 93, 87, 69, 88, 81, 87, 9, 92, 89, 116, 84, 90, 80, 88, 23, 86, 76, 71, 65, 90, 85, 66, 76, 86, 19, 80, 86, 89, 86, 92, 71, 19, 85, 82, 24, 70, 64, 86, 83, 23, 79, 90, 71, 91, 94, 89, 24, 82, 19, 65, 82, 68, 76, 65, 90, 80, 67, 82, 92, 19, 80, 92, 89, 67, 93, 75, 71}, "377833", 2.140426876E9d));
                }
                menuItem.setOnMenuItemClickListener(new InflatedOnMenuItemClickListener(this.this$0.getRealOwner(), this.itemListenerMethodName));
            }
            if (this.itemCheckable >= 2) {
                if (menuItem instanceof MenuItemImpl) {
                    ((MenuItemImpl) menuItem).setExclusiveCheckable(true);
                } else if (menuItem instanceof MenuItemWrapperICS) {
                    ((MenuItemWrapperICS) menuItem).setExclusiveCheckable(true);
                }
            }
            String str = this.itemActionViewClassName;
            if (str != null) {
                menuItem.setActionView((View) newInstance(str, SupportMenuInflater.ACTION_VIEW_CONSTRUCTOR_SIGNATURE, this.this$0.mActionViewConstructorArguments));
            } else {
                z = false;
            }
            int i2 = this.itemActionViewLayout;
            if (i2 > 0) {
                if (z) {
                    Log.w(NPStringFog.decode(new byte[]{50, 70, 73, 70, 92, 20, 21, 126, 92, 88, 70, 47, 15, 85, 85, 87, 71, 3, 19}, "a3963f", -15804), NPStringFog.decode(new byte[]{125, 83, 88, 88, 71, 88, 90, 83, 22, 86, 65, 69, 70, 93, 84, 66, 65, 84, 20, 19, 95, 67, 80, 92, 117, 87, 66, 94, 90, 95, 98, 93, 83, 64, 121, 80, 77, 91, 67, 67, 18, 31, 20, 117, 85, 67, 92, 94, 90, 20, 64, 94, 80, 70, 20, 85, 90, 69, 80, 80, 80, 77, 22, 68, 69, 84, 87, 93, 80, 94, 80, 85, 26}, "446751", -102945869L));
                } else {
                    menuItem.setActionView(i2);
                }
            }
            ActionProvider actionProvider = this.itemActionProvider;
            if (actionProvider != null) {
                MenuItemCompat.setActionProvider(menuItem, actionProvider);
            }
            MenuItemCompat.setContentDescription(menuItem, this.itemContentDescription);
            MenuItemCompat.setTooltipText(menuItem, this.itemTooltipText);
            MenuItemCompat.setAlphabeticShortcut(menuItem, this.itemAlphabeticShortcut, this.itemAlphabeticModifiers);
            MenuItemCompat.setNumericShortcut(menuItem, this.itemNumericShortcut, this.itemNumericModifiers);
            PorterDuff.Mode mode = this.itemIconTintMode;
            if (mode != null) {
                MenuItemCompat.setIconTintMode(menuItem, mode);
            }
            ColorStateList colorStateList = this.itemIconTintList;
            if (colorStateList != null) {
                MenuItemCompat.setIconTintList(menuItem, colorStateList);
            }
        }

        public void addItem() {
            this.itemAdded = true;
            setItem(this.menu.add(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle));
        }

        public SubMenu addSubMenuItem() {
            this.itemAdded = true;
            SubMenu subMenuAddSubMenu = this.menu.addSubMenu(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle);
            setItem(subMenuAddSubMenu.getItem());
            return subMenuAddSubMenu;
        }

        public boolean hasAddedItem() {
            return this.itemAdded;
        }

        public void readGroup(AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = this.this$0.mContext.obtainStyledAttributes(attributeSet, R.styleable.MenuGroup);
            this.groupId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuGroup_android_id, 0);
            this.groupCategory = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_menuCategory, 0);
            this.groupOrder = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_orderInCategory, 0);
            this.groupCheckable = typedArrayObtainStyledAttributes.getInt(R.styleable.MenuGroup_android_checkableBehavior, 0);
            this.groupVisible = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_visible, true);
            this.groupEnabled = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_enabled, true);
            typedArrayObtainStyledAttributes.recycle();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void readItem(AttributeSet attributeSet) {
            TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(this.this$0.mContext, attributeSet, R.styleable.MenuItem);
            this.itemId = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_id, 0);
            this.itemCategoryOrder = ((-65536) & tintTypedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_android_menuCategory, this.groupCategory)) | (65535 & tintTypedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_android_orderInCategory, this.groupOrder));
            this.itemTitle = tintTypedArrayObtainStyledAttributes.getText(R.styleable.MenuItem_android_title);
            this.itemTitleCondensed = tintTypedArrayObtainStyledAttributes.getText(R.styleable.MenuItem_android_titleCondensed);
            this.itemIconResId = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_icon, 0);
            this.itemAlphabeticShortcut = getShortcut(tintTypedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_android_alphabeticShortcut));
            this.itemAlphabeticModifiers = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_alphabeticModifiers, 4096);
            this.itemNumericShortcut = getShortcut(tintTypedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_android_numericShortcut));
            this.itemNumericModifiers = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_numericModifiers, 4096);
            if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.MenuItem_android_checkable)) {
                this.itemCheckable = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_checkable, false) ? 1 : 0;
            } else {
                this.itemCheckable = this.groupCheckable;
            }
            this.itemChecked = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_checked, false);
            this.itemVisible = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_visible, this.groupVisible);
            this.itemEnabled = tintTypedArrayObtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_enabled, this.groupEnabled);
            this.itemShowAsAction = tintTypedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_showAsAction, -1);
            this.itemListenerMethodName = tintTypedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_android_onClick);
            this.itemActionViewLayout = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.MenuItem_actionLayout, 0);
            this.itemActionViewClassName = tintTypedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_actionViewClass);
            String string = tintTypedArrayObtainStyledAttributes.getString(R.styleable.MenuItem_actionProviderClass);
            this.itemActionProviderClassName = string;
            Object[] objArr = string != null;
            if (objArr == true && this.itemActionViewLayout == 0 && this.itemActionViewClassName == null) {
                this.itemActionProvider = (ActionProvider) newInstance(string, SupportMenuInflater.ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE, this.this$0.mActionProviderConstructorArguments);
            } else {
                if (objArr != false) {
                    Log.w(NPStringFog.decode(new byte[]{49, 65, 20, 64, 10, 19, 22, 121, 1, 94, 16, 40, 12, 82, 8, 81, 17, 4, 16}, "b4d0ea", true, true), NPStringFog.decode(new byte[]{113, 4, 13, 13, 16, 15, 86, 4, 67, 3, 22, 18, 74, 10, 1, 23, 22, 3, 24, 68, 2, 1, 22, 15, 87, 13, 51, 16, 13, 16, 81, 7, 6, 16, 33, 10, 89, 16, 16, 69, 76, 70, 121, 0, 23, 11, 13, 8, 24, 21, 10, 7, 21, 70, 89, 15, 17, 7, 3, 2, 65, 67, 16, 18, 7, 5, 81, 5, 10, 7, 6, 72}, "8ccbbf", false));
                }
                this.itemActionProvider = null;
            }
            this.itemContentDescription = tintTypedArrayObtainStyledAttributes.getText(R.styleable.MenuItem_contentDescription);
            this.itemTooltipText = tintTypedArrayObtainStyledAttributes.getText(R.styleable.MenuItem_tooltipText);
            if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.MenuItem_iconTintMode)) {
                this.itemIconTintMode = DrawableUtils.parseTintMode(tintTypedArrayObtainStyledAttributes.getInt(R.styleable.MenuItem_iconTintMode, -1), this.itemIconTintMode);
            } else {
                this.itemIconTintMode = null;
            }
            if (tintTypedArrayObtainStyledAttributes.hasValue(R.styleable.MenuItem_iconTint)) {
                this.itemIconTintList = tintTypedArrayObtainStyledAttributes.getColorStateList(R.styleable.MenuItem_iconTint);
            } else {
                this.itemIconTintList = null;
            }
            tintTypedArrayObtainStyledAttributes.recycle();
            this.itemAdded = false;
        }

        public void resetGroup() {
            this.groupId = 0;
            this.groupCategory = 0;
            this.groupOrder = 0;
            this.groupCheckable = 0;
            this.groupVisible = true;
            this.groupEnabled = true;
        }
    }

    static {
        Class<?>[] clsArr = {Context.class};
        ACTION_VIEW_CONSTRUCTOR_SIGNATURE = clsArr;
        ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE = clsArr;
    }

    public SupportMenuInflater(Context context) {
        super(context);
        this.mContext = context;
        Object[] objArr = {context};
        this.mActionViewConstructorArguments = objArr;
        this.mActionProviderConstructorArguments = objArr;
    }

    private Object findRealOwner(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? findRealOwner(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    private void parseMenu(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        MenuState menuState = new MenuState(this, menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            if (eventType != 2) {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            } else {
                String name = xmlPullParser.getName();
                if (!name.equals(XML_MENU)) {
                    throw new RuntimeException(NPStringFog.decode(new byte[]{114, 78, 69, 1, 87, 64, 94, 88, 82, 68, 89, 81, 89, 67, 25, 68, 83, 91, 67, 22}, "765d44", 2.080668095E9d) + name);
                }
                eventType = xmlPullParser.next();
            }
        }
        int next = eventType;
        String str = null;
        boolean z = false;
        boolean z2 = false;
        while (!z2) {
            switch (next) {
                case 1:
                    throw new RuntimeException(NPStringFog.decode(new byte[]{102, 93, 85, 28, 71, 3, 80, 71, 85, 0, 23, 3, 93, 87, 16, 11, 81, 70, 87, 92, 83, 17, 90, 3, 93, 71}, "330d7f", true));
                case 2:
                    if (!z) {
                        String name2 = xmlPullParser.getName();
                        if (name2.equals(XML_GROUP)) {
                            menuState.readGroup(attributeSet);
                        } else if (name2.equals(XML_ITEM)) {
                            menuState.readItem(attributeSet);
                        } else if (!name2.equals(XML_MENU)) {
                            z = true;
                            str = name2;
                        } else {
                            parseMenu(xmlPullParser, attributeSet, menuState.addSubMenuItem());
                        }
                    }
                    break;
                case 3:
                    String name3 = xmlPullParser.getName();
                    if (z && name3.equals(str)) {
                        z = false;
                        str = null;
                    } else if (name3.equals(XML_GROUP)) {
                        menuState.resetGroup();
                    } else if (!name3.equals(XML_ITEM)) {
                        if (name3.equals(XML_MENU)) {
                            z2 = true;
                        }
                    } else if (!menuState.hasAddedItem()) {
                        if (menuState.itemActionProvider != null && menuState.itemActionProvider.hasSubMenu()) {
                            menuState.addSubMenuItem();
                        } else {
                            menuState.addItem();
                        }
                    }
                    break;
            }
            next = xmlPullParser.next();
        }
    }

    Object getRealOwner() {
        if (this.mRealOwner == null) {
            this.mRealOwner = findRealOwner(this.mContext);
        }
        return this.mRealOwner;
    }

    @Override // android.view.MenuInflater
    public void inflate(int i, Menu menu) {
        XmlResourceParser layout = null;
        try {
            if (!(menu instanceof SupportMenu)) {
                super.inflate(i, menu);
                return;
            }
            try {
                layout = this.mContext.getResources().getLayout(i);
                parseMenu(layout, Xml.asAttributeSet(layout), menu);
            } catch (IOException e) {
                throw new InflateException(NPStringFog.decode(new byte[]{118, 75, 74, 88, 70, 21, 90, 87, 94, 91, 85, 65, 90, 87, 95, 23, 89, 80, 93, 76, 24, 111, 121, 121}, "398745", 2030196344L), e);
            } catch (XmlPullParserException e2) {
                throw new InflateException(NPStringFog.decode(new byte[]{117, 65, 17, 86, 66, 69, 89, 93, 5, 85, 81, 17, 89, 93, 4, 25, 93, 0, 94, 70, 67, 97, 125, 41}, "03c90e", -1.760415847E9d), e2);
            }
        } finally {
            if (layout != null) {
                layout.close();
            }
        }
    }
}

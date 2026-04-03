package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Filterable;
import android.widget.ListAdapter;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import com.google.android.material.R;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class MaterialAutoCompleteTextView extends AppCompatAutoCompleteTextView {
    private static final int MAX_ITEMS_MEASURED = 15;
    private final AccessibilityManager accessibilityManager;
    private final ListPopupWindow modalListPopup;
    private final int simpleItemLayout;
    private final Rect tempRect;

    public MaterialAutoCompleteTextView(Context context) {
        this(context, null);
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.autoCompleteTextViewStyle);
    }

    public MaterialAutoCompleteTextView(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, 0), attributeSet, i);
        this.tempRect = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.MaterialAutoCompleteTextView, i, R.style.Widget_AppCompat_AutoCompleteTextView, new int[0]);
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MaterialAutoCompleteTextView_android_inputType) && typedArrayObtainStyledAttributes.getInt(R.styleable.MaterialAutoCompleteTextView_android_inputType, 0) == 0) {
            setKeyListener(null);
        }
        this.simpleItemLayout = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialAutoCompleteTextView_simpleItemLayout, R.layout.mtrl_auto_complete_simple_item);
        this.accessibilityManager = (AccessibilityManager) context2.getSystemService(NPStringFog.decode(new byte[]{0, 86, 1, 84, 66, 71, 8, 87, 11, 93, 88, 64, 24}, "a5b114", -8.632963E8f));
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.modalListPopup = listPopupWindow;
        listPopupWindow.setModal(true);
        listPopupWindow.setAnchorView(this);
        listPopupWindow.setInputMethodMode(2);
        listPopupWindow.setAdapter(getAdapter());
        listPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener(this) { // from class: com.google.android.material.textfield.MaterialAutoCompleteTextView.1
            final MaterialAutoCompleteTextView this$0;

            {
                this.this$0 = this;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                View selectedView;
                int selectedItemPosition;
                long selectedItemId;
                MaterialAutoCompleteTextView materialAutoCompleteTextView = this.this$0;
                this.this$0.updateText(i2 < 0 ? materialAutoCompleteTextView.modalListPopup.getSelectedItem() : materialAutoCompleteTextView.getAdapter().getItem(i2));
                AdapterView.OnItemClickListener onItemClickListener = this.this$0.getOnItemClickListener();
                if (onItemClickListener != null) {
                    if (view == null || i2 < 0) {
                        selectedView = this.this$0.modalListPopup.getSelectedView();
                        selectedItemPosition = this.this$0.modalListPopup.getSelectedItemPosition();
                        selectedItemId = this.this$0.modalListPopup.getSelectedItemId();
                    } else {
                        selectedItemPosition = i2;
                        selectedItemId = j;
                        selectedView = view;
                    }
                    onItemClickListener.onItemClick(this.this$0.modalListPopup.getListView(), selectedView, selectedItemPosition, selectedItemId);
                }
                this.this$0.modalListPopup.dismiss();
            }
        });
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MaterialAutoCompleteTextView_simpleItems)) {
            setSimpleItems(typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialAutoCompleteTextView_simpleItems, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private TextInputLayout findTextInputLayoutAncestor() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    private int measureContentWidth() {
        int i;
        View view;
        ListAdapter adapter = getAdapter();
        TextInputLayout textInputLayoutFindTextInputLayoutAncestor = findTextInputLayoutAncestor();
        if (adapter == null || textInputLayoutFindTextInputLayoutAncestor == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMin = Math.min(adapter.getCount(), Math.max(0, this.modalListPopup.getSelectedItemPosition()) + 15);
        int iMax = Math.max(0, iMin - 15);
        View view2 = null;
        int iMax2 = 0;
        int i2 = 0;
        while (iMax < iMin) {
            int itemViewType = adapter.getItemViewType(iMax);
            if (itemViewType != i2) {
                view = null;
            } else {
                itemViewType = i2;
                view = view2;
            }
            view2 = adapter.getView(iMax, view, textInputLayoutFindTextInputLayoutAncestor);
            if (view2.getLayoutParams() == null) {
                view2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view2.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view2.getMeasuredWidth());
            iMax++;
            i2 = itemViewType;
        }
        Drawable background = this.modalListPopup.getBackground();
        if (background != null) {
            background.getPadding(this.tempRect);
            i = this.tempRect.left + this.tempRect.right + iMax2;
        } else {
            i = iMax2;
        }
        return i + textInputLayoutFindTextInputLayoutAncestor.getEndIconView().getMeasuredWidth();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <T extends ListAdapter & Filterable> void updateText(Object obj) {
        if (Build.VERSION.SDK_INT >= 17) {
            setText(convertSelectionToString(obj), false);
            return;
        }
        ListAdapter adapter = getAdapter();
        setAdapter(null);
        setText(convertSelectionToString(obj));
        setAdapter(adapter);
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout textInputLayoutFindTextInputLayoutAncestor = findTextInputLayoutAncestor();
        return (textInputLayoutFindTextInputLayoutAncestor == null || !textInputLayoutFindTextInputLayoutAncestor.isProvidingHint()) ? super.getHint() : textInputLayoutFindTextInputLayoutAncestor.getHint();
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutFindTextInputLayoutAncestor = findTextInputLayoutAncestor();
        if (textInputLayoutFindTextInputLayoutAncestor != null && textInputLayoutFindTextInputLayoutAncestor.isProvidingHint() && super.getHint() == null && ManufacturerUtils.isMeizuDevice()) {
            setHint("");
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), measureContentWidth()), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t) {
        super.setAdapter(t);
        this.modalListPopup.setAdapter(getAdapter());
    }

    public void setSimpleItems(int i) {
        setSimpleItems(getResources().getStringArray(i));
    }

    public void setSimpleItems(String[] strArr) {
        setAdapter(new ArrayAdapter(getContext(), this.simpleItemLayout, strArr));
    }

    @Override // android.widget.AutoCompleteTextView
    public void showDropDown() {
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.modalListPopup.show();
        }
    }
}

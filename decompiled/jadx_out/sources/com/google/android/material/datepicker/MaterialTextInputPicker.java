package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class MaterialTextInputPicker<S> extends PickerFragment<S> {
    private static final String CALENDAR_CONSTRAINTS_KEY = NPStringFog.decode(new byte[]{34, 36, 123, 35, 40, 112, 32, 55, 104, 37, 41, 122, 50, 49, 101, 39, 47, 122, 53, 54, 104, 45, 35, 109}, "ae7ff4", -1.2603748E9f);
    private static final String DATE_SELECTOR_KEY = NPStringFog.decode(new byte[]{114, 39, 54, 114, 104, 53, 115, 42, 39, 116, 99, 41, 100, 57, 41, 114, 110}, "6fb77f", 925076071L);
    private static final String THEME_RES_ID_KEY = NPStringFog.decode(new byte[]{53, 121, 113, 116, 115, 57, 51, 116, 103, 102, 127, 34, 62, 122, 113, 96}, "a1496f", 736139813L);
    private CalendarConstraints calendarConstraints;
    private DateSelector<S> dateSelector;
    private int themeResId;

    static <T> MaterialTextInputPicker<T> newInstance(DateSelector<T> dateSelector, int i, CalendarConstraints calendarConstraints) {
        MaterialTextInputPicker<T> materialTextInputPicker = new MaterialTextInputPicker<>();
        Bundle bundle = new Bundle();
        bundle.putInt(THEME_RES_ID_KEY, i);
        bundle.putParcelable(DATE_SELECTOR_KEY, dateSelector);
        bundle.putParcelable(CALENDAR_CONSTRAINTS_KEY, calendarConstraints);
        materialTextInputPicker.setArguments(bundle);
        return materialTextInputPicker;
    }

    @Override // com.google.android.material.datepicker.PickerFragment
    public DateSelector<S> getDateSelector() {
        DateSelector<S> dateSelector = this.dateSelector;
        if (dateSelector != null) {
            return dateSelector;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{87, 0, 66, 7, 96, 3, 95, 4, 85, 22, 92, 20, 19, 18, 94, 13, 70, 10, 87, 65, 88, 13, 71, 70, 81, 4, 22, 12, 70, 10, 95, 79, 22, 55, 64, 3, 19, 44, 87, 22, 86, 20, 90, 0, 90, 54, 86, 30, 71, 40, 88, 18, 70, 18, 99, 8, 85, 9, 86, 20, 16, 15, 83, 21, 122, 8, 64, 21, 87, 12, 80, 3, 27, 72, 22, 22, 92, 70, 80, 19, 83, 3, 71, 3, 19, 21, 94, 11, 64, 70, 85, 19, 87, 5, 94, 3, 93, 21, 22, 21, 90, 18, 91, 65, 87, 66, 119, 7, 71, 4, 101, 7, 95, 3, 80, 21, 89, 16, 31, 70, 82, 15, 82, 66, 80, 7, 95, 13, 22, 22, 91, 15, 64, 65, 91, 7, 71, 14, 92, 5, 22, 3, 85, 18, 86, 19, 22, 22, 91, 3, 19, 7, 68, 3, 84, 11, 86, 15, 66, 66, 91, 7, 64, 65, 84, 7, 86, 8, 19, 2, 68, 7, 82, 18, 86, 5, 24}, "3a6b3f", -7253));
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.themeResId = bundle.getInt(THEME_RES_ID_KEY);
        this.dateSelector = (DateSelector) bundle.getParcelable(DATE_SELECTOR_KEY);
        this.calendarConstraints = (CalendarConstraints) bundle.getParcelable(CALENDAR_CONSTRAINTS_KEY);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.dateSelector.onCreateTextInputView(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.themeResId)), viewGroup, bundle, this.calendarConstraints, new OnSelectionChangedListener<S>(this) { // from class: com.google.android.material.datepicker.MaterialTextInputPicker.1
            final MaterialTextInputPicker this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            public void onIncompleteSelectionChanged() {
                Iterator<OnSelectionChangedListener<S>> it = this.this$0.onSelectionChangedListeners.iterator();
                while (it.hasNext()) {
                    it.next().onIncompleteSelectionChanged();
                }
            }

            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            public void onSelectionChanged(S s) {
                Iterator<OnSelectionChangedListener<S>> it = this.this$0.onSelectionChangedListeners.iterator();
                while (it.hasNext()) {
                    it.next().onSelectionChanged(s);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(THEME_RES_ID_KEY, this.themeResId);
        bundle.putParcelable(DATE_SELECTOR_KEY, this.dateSelector);
        bundle.putParcelable(CALENDAR_CONSTRAINTS_KEY, this.calendarConstraints);
    }
}

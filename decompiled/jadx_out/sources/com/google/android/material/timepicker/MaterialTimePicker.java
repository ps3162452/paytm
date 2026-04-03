package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.timepicker.TimePickerView;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class MaterialTimePicker extends DialogFragment implements TimePickerView.OnDoubleTapListener {
    public static final int INPUT_MODE_CLOCK = 0;
    public static final int INPUT_MODE_KEYBOARD = 1;
    private TimePickerPresenter activePresenter;
    private Button cancelButton;
    private int clockIcon;
    private int keyboardIcon;
    private MaterialButton modeButton;
    private CharSequence negativeButtonText;
    private CharSequence positiveButtonText;
    private ViewStub textInputStub;
    private TimeModel time;
    private TimePickerClockPresenter timePickerClockPresenter;
    private TimePickerTextInputPresenter timePickerTextInputPresenter;
    private TimePickerView timePickerView;
    private CharSequence titleText;
    static final String INPUT_MODE_EXTRA = NPStringFog.decode(new byte[]{108, 113, 47, 35, 103, 105, 113, 123, 41, 35, 106, 102, 113, 118, 50, 51, 108, 102, 117, 119, 38, 35}, "88bf89", -269130745L);
    static final String NEGATIVE_BUTTON_TEXT_EXTRA = NPStringFog.decode(new byte[]{54, 120, 44, 119, 107, 104, 43, 114, 42, 119, 102, 103, 44, 116, 38, 115, 96, 113, 52, 116, 62, 112, 97, 108, 54, 126, 47, 109, 96, 125, 58, 101}, "b1a248", -3.70258201E8d);
    static final String NEGATIVE_BUTTON_TEXT_RES_EXTRA = NPStringFog.decode(new byte[]{99, 112, 41, 114, 57, 101, 126, 122, 47, 114, 52, 106, 121, 124, 35, 118, 50, 124, 97, 124, 59, 117, 51, 97, 99, 118, 42, 104, 50, 112, 111, 109, 59, 101, 35, 102}, "79d7f5", true, false);
    static final String OVERRIDE_THEME_RES_ID = NPStringFog.decode(new byte[]{50, 42, 122, 124, 60, 49, 47, 32, 124, 124, 49, 62, 41, 53, 114, 107, 49, 40, 34, 38, 104, 109, 43, 36, 43, 38, 104, 107, 38, 50, 57, 42, 115}, "fc79ca", true);
    static final String POSITIVE_BUTTON_TEXT_EXTRA = NPStringFog.decode(new byte[]{54, 125, 43, 117, 106, 50, 43, 119, 45, 117, 103, 61, 50, 123, 53, 121, 97, 43, 52, 113, 57, 114, 96, 54, 54, 123, 40, 111, 97, 39, 58, 96}, "b4f05b", false);
    static final String POSITIVE_BUTTON_TEXT_RES_EXTRA = NPStringFog.decode(new byte[]{99, 123, 116, 125, 104, 99, 126, 113, 114, 125, 101, 108, 103, 125, 106, 113, 99, 122, 97, 119, 102, 122, 98, 103, 99, 125, 119, 103, 99, 118, 111, 102, 102, 106, 114, 96}, "729873", -1.99061308E8d);
    static final String TIME_MODEL_EXTRA = NPStringFog.decode(new byte[]{48, 121, 116, 116, 111, 50, 45, 115, 114, 116, 98, 61, 48, 121, 116, 116, 111, 47, 43, 116, 124, 125}, "d0910b", -22637);
    static final String TITLE_RES_EXTRA = NPStringFog.decode(new byte[]{55, 113, 44, 119, 105, 50, 42, 123, 42, 119, 100, 61, 55, 113, 53, 126, 115, 61, 49, 125, 50}, "c8a26b", -2.082222E9f);
    static final String TITLE_TEXT_EXTRA = NPStringFog.decode(new byte[]{98, 123, 47, 38, 61, 105, 127, 113, 41, 38, 48, 102, 98, 123, 54, 47, 39, 102, 98, 119, 58, 55}, "62bcb9", 12186);
    private final Set<View.OnClickListener> positiveButtonListeners = new LinkedHashSet();
    private final Set<View.OnClickListener> negativeButtonListeners = new LinkedHashSet();
    private final Set<DialogInterface.OnCancelListener> cancelListeners = new LinkedHashSet();
    private final Set<DialogInterface.OnDismissListener> dismissListeners = new LinkedHashSet();
    private int titleResId = 0;
    private int positiveButtonTextResId = 0;
    private int negativeButtonTextResId = 0;
    private int inputMode = 0;
    private int overrideThemeResId = 0;

    public static final class Builder {
        private int inputMode;
        private CharSequence negativeButtonText;
        private CharSequence positiveButtonText;
        private CharSequence titleText;
        private TimeModel time = new TimeModel();
        private int titleTextResId = 0;
        private int positiveButtonTextResId = 0;
        private int negativeButtonTextResId = 0;
        private int overrideThemeResId = 0;

        public MaterialTimePicker build() {
            return MaterialTimePicker.newInstance(this);
        }

        public Builder setHour(int i) {
            this.time.setHourOfDay(i);
            return this;
        }

        public Builder setInputMode(int i) {
            this.inputMode = i;
            return this;
        }

        public Builder setMinute(int i) {
            this.time.setMinute(i);
            return this;
        }

        public Builder setNegativeButtonText(int i) {
            this.negativeButtonTextResId = i;
            return this;
        }

        public Builder setNegativeButtonText(CharSequence charSequence) {
            this.negativeButtonText = charSequence;
            return this;
        }

        public Builder setPositiveButtonText(int i) {
            this.positiveButtonTextResId = i;
            return this;
        }

        public Builder setPositiveButtonText(CharSequence charSequence) {
            this.positiveButtonText = charSequence;
            return this;
        }

        public Builder setTheme(int i) {
            this.overrideThemeResId = i;
            return this;
        }

        public Builder setTimeFormat(int i) {
            int i2 = this.time.hour;
            int i3 = this.time.minute;
            TimeModel timeModel = new TimeModel(i);
            this.time = timeModel;
            timeModel.setMinute(i3);
            this.time.setHourOfDay(i2);
            return this;
        }

        public Builder setTitleText(int i) {
            this.titleTextResId = i;
            return this;
        }

        public Builder setTitleText(CharSequence charSequence) {
            this.titleText = charSequence;
            return this;
        }
    }

    private Pair<Integer, Integer> dataForMode(int i) {
        switch (i) {
            case 0:
                return new Pair<>(Integer.valueOf(this.keyboardIcon), Integer.valueOf(R.string.material_timepicker_text_input_mode_description));
            case 1:
                return new Pair<>(Integer.valueOf(this.clockIcon), Integer.valueOf(R.string.material_timepicker_clock_mode_description));
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{92, 14, 65, 92, 87, 90, 92, 65, 7, 90, 70, 21, 95, 14, 5, 80, 14, 21}, "2aa545", true, true) + i);
        }
    }

    private int getThemeResId() {
        int i = this.overrideThemeResId;
        if (i != 0) {
            return i;
        }
        TypedValue typedValueResolve = MaterialAttributes.resolve(requireContext(), R.attr.materialTimePickerTheme);
        if (typedValueResolve == null) {
            return 0;
        }
        return typedValueResolve.data;
    }

    private TimePickerPresenter initializeOrRetrieveActivePresenterForMode(int i, TimePickerView timePickerView, ViewStub viewStub) {
        if (i != 0) {
            if (this.timePickerTextInputPresenter == null) {
                this.timePickerTextInputPresenter = new TimePickerTextInputPresenter((LinearLayout) viewStub.inflate(), this.time);
            }
            this.timePickerTextInputPresenter.clearCheck();
            return this.timePickerTextInputPresenter;
        }
        TimePickerClockPresenter timePickerClockPresenter = this.timePickerClockPresenter;
        if (timePickerClockPresenter == null) {
            timePickerClockPresenter = new TimePickerClockPresenter(timePickerView, this.time);
        }
        this.timePickerClockPresenter = timePickerClockPresenter;
        return timePickerClockPresenter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MaterialTimePicker newInstance(Builder builder) {
        MaterialTimePicker materialTimePicker = new MaterialTimePicker();
        Bundle bundle = new Bundle();
        bundle.putParcelable(TIME_MODEL_EXTRA, builder.time);
        bundle.putInt(INPUT_MODE_EXTRA, builder.inputMode);
        bundle.putInt(TITLE_RES_EXTRA, builder.titleTextResId);
        if (builder.titleText != null) {
            bundle.putCharSequence(TITLE_TEXT_EXTRA, builder.titleText);
        }
        bundle.putInt(POSITIVE_BUTTON_TEXT_RES_EXTRA, builder.positiveButtonTextResId);
        if (builder.positiveButtonText != null) {
            bundle.putCharSequence(POSITIVE_BUTTON_TEXT_EXTRA, builder.positiveButtonText);
        }
        bundle.putInt(NEGATIVE_BUTTON_TEXT_RES_EXTRA, builder.negativeButtonTextResId);
        if (builder.negativeButtonText != null) {
            bundle.putCharSequence(NEGATIVE_BUTTON_TEXT_EXTRA, builder.negativeButtonText);
        }
        bundle.putInt(OVERRIDE_THEME_RES_ID, builder.overrideThemeResId);
        materialTimePicker.setArguments(bundle);
        return materialTimePicker;
    }

    private void restoreState(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        TimeModel timeModel = (TimeModel) bundle.getParcelable(TIME_MODEL_EXTRA);
        this.time = timeModel;
        if (timeModel == null) {
            this.time = new TimeModel();
        }
        this.inputMode = bundle.getInt(INPUT_MODE_EXTRA, 0);
        this.titleResId = bundle.getInt(TITLE_RES_EXTRA, 0);
        this.titleText = bundle.getCharSequence(TITLE_TEXT_EXTRA);
        this.positiveButtonTextResId = bundle.getInt(POSITIVE_BUTTON_TEXT_RES_EXTRA, 0);
        this.positiveButtonText = bundle.getCharSequence(POSITIVE_BUTTON_TEXT_EXTRA);
        this.negativeButtonTextResId = bundle.getInt(NEGATIVE_BUTTON_TEXT_RES_EXTRA, 0);
        this.negativeButtonText = bundle.getCharSequence(NEGATIVE_BUTTON_TEXT_EXTRA);
        this.overrideThemeResId = bundle.getInt(OVERRIDE_THEME_RES_ID, 0);
    }

    private void updateCancelButtonVisibility() {
        Button button = this.cancelButton;
        if (button != null) {
            button.setVisibility(isCancelable() ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInputMode(MaterialButton materialButton) {
        if (materialButton == null || this.timePickerView == null || this.textInputStub == null) {
            return;
        }
        TimePickerPresenter timePickerPresenter = this.activePresenter;
        if (timePickerPresenter != null) {
            timePickerPresenter.hide();
        }
        TimePickerPresenter timePickerPresenterInitializeOrRetrieveActivePresenterForMode = initializeOrRetrieveActivePresenterForMode(this.inputMode, this.timePickerView, this.textInputStub);
        this.activePresenter = timePickerPresenterInitializeOrRetrieveActivePresenterForMode;
        timePickerPresenterInitializeOrRetrieveActivePresenterForMode.show();
        this.activePresenter.invalidate();
        Pair<Integer, Integer> pairDataForMode = dataForMode(this.inputMode);
        materialButton.setIconResource(((Integer) pairDataForMode.first).intValue());
        materialButton.setContentDescription(getResources().getString(((Integer) pairDataForMode.second).intValue()));
        materialButton.sendAccessibilityEvent(4);
    }

    public boolean addOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        return this.cancelListeners.add(onCancelListener);
    }

    public boolean addOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        return this.dismissListeners.add(onDismissListener);
    }

    public boolean addOnNegativeButtonClickListener(View.OnClickListener onClickListener) {
        return this.negativeButtonListeners.add(onClickListener);
    }

    public boolean addOnPositiveButtonClickListener(View.OnClickListener onClickListener) {
        return this.positiveButtonListeners.add(onClickListener);
    }

    public void clearOnCancelListeners() {
        this.cancelListeners.clear();
    }

    public void clearOnDismissListeners() {
        this.dismissListeners.clear();
    }

    public void clearOnNegativeButtonClickListeners() {
        this.negativeButtonListeners.clear();
    }

    public void clearOnPositiveButtonClickListeners() {
        this.positiveButtonListeners.clear();
    }

    public int getHour() {
        return this.time.hour % 24;
    }

    public int getInputMode() {
        return this.inputMode;
    }

    public int getMinute() {
        return this.time.minute;
    }

    TimePickerClockPresenter getTimePickerClockPresenter() {
        return this.timePickerClockPresenter;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.cancelListeners.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        restoreState(bundle);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), getThemeResId());
        Context context = dialog.getContext();
        int iResolveOrThrow = MaterialAttributes.resolveOrThrow(context, R.attr.colorSurface, MaterialTimePicker.class.getCanonicalName());
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, R.attr.materialTimePickerStyle, R.style.Widget_MaterialComponents_TimePicker);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.MaterialTimePicker, R.attr.materialTimePickerStyle, R.style.Widget_MaterialComponents_TimePicker);
        this.clockIcon = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_clockIcon, 0);
        this.keyboardIcon = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_keyboardIcon, 0);
        typedArrayObtainStyledAttributes.recycle();
        materialShapeDrawable.initializeElevationOverlay(context);
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(iResolveOrThrow));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(materialShapeDrawable);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        materialShapeDrawable.setElevation(ViewCompat.getElevation(window.getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(R.id.material_timepicker_view);
        this.timePickerView = timePickerView;
        timePickerView.setOnDoubleTapListener(this);
        this.textInputStub = (ViewStub) viewGroup2.findViewById(R.id.material_textinput_timepicker);
        this.modeButton = (MaterialButton) viewGroup2.findViewById(R.id.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(R.id.header_title);
        int i = this.titleResId;
        if (i != 0) {
            textView.setText(i);
        } else if (!TextUtils.isEmpty(this.titleText)) {
            textView.setText(this.titleText);
        }
        updateInputMode(this.modeButton);
        Button button = (Button) viewGroup2.findViewById(R.id.material_timepicker_ok_button);
        button.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.material.timepicker.MaterialTimePicker.1
            final MaterialTimePicker this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Iterator it = this.this$0.positiveButtonListeners.iterator();
                while (it.hasNext()) {
                    ((View.OnClickListener) it.next()).onClick(view);
                }
                this.this$0.dismiss();
            }
        });
        int i2 = this.positiveButtonTextResId;
        if (i2 != 0) {
            button.setText(i2);
        } else if (!TextUtils.isEmpty(this.positiveButtonText)) {
            button.setText(this.positiveButtonText);
        }
        Button button2 = (Button) viewGroup2.findViewById(R.id.material_timepicker_cancel_button);
        this.cancelButton = button2;
        button2.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.material.timepicker.MaterialTimePicker.2
            final MaterialTimePicker this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Iterator it = this.this$0.negativeButtonListeners.iterator();
                while (it.hasNext()) {
                    ((View.OnClickListener) it.next()).onClick(view);
                }
                this.this$0.dismiss();
            }
        });
        int i3 = this.negativeButtonTextResId;
        if (i3 != 0) {
            this.cancelButton.setText(i3);
        } else if (!TextUtils.isEmpty(this.negativeButtonText)) {
            this.cancelButton.setText(this.negativeButtonText);
        }
        updateCancelButtonVisibility();
        this.modeButton.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.material.timepicker.MaterialTimePicker.3
            final MaterialTimePicker this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MaterialTimePicker materialTimePicker = this.this$0;
                materialTimePicker.inputMode = materialTimePicker.inputMode == 0 ? 1 : 0;
                MaterialTimePicker materialTimePicker2 = this.this$0;
                materialTimePicker2.updateInputMode(materialTimePicker2.modeButton);
            }
        });
        return viewGroup2;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.activePresenter = null;
        this.timePickerClockPresenter = null;
        this.timePickerTextInputPresenter = null;
        TimePickerView timePickerView = this.timePickerView;
        if (timePickerView != null) {
            timePickerView.setOnDoubleTapListener(null);
            this.timePickerView = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.dismissListeners.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnDoubleTapListener
    public void onDoubleTap() {
        this.inputMode = 1;
        updateInputMode(this.modeButton);
        this.timePickerTextInputPresenter.resetChecked();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(TIME_MODEL_EXTRA, this.time);
        bundle.putInt(INPUT_MODE_EXTRA, this.inputMode);
        bundle.putInt(TITLE_RES_EXTRA, this.titleResId);
        bundle.putCharSequence(TITLE_TEXT_EXTRA, this.titleText);
        bundle.putInt(POSITIVE_BUTTON_TEXT_RES_EXTRA, this.positiveButtonTextResId);
        bundle.putCharSequence(POSITIVE_BUTTON_TEXT_EXTRA, this.positiveButtonText);
        bundle.putInt(NEGATIVE_BUTTON_TEXT_RES_EXTRA, this.negativeButtonTextResId);
        bundle.putCharSequence(NEGATIVE_BUTTON_TEXT_EXTRA, this.negativeButtonText);
        bundle.putInt(OVERRIDE_THEME_RES_ID, this.overrideThemeResId);
    }

    public boolean removeOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        return this.cancelListeners.remove(onCancelListener);
    }

    public boolean removeOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        return this.dismissListeners.remove(onDismissListener);
    }

    public boolean removeOnNegativeButtonClickListener(View.OnClickListener onClickListener) {
        return this.negativeButtonListeners.remove(onClickListener);
    }

    public boolean removeOnPositiveButtonClickListener(View.OnClickListener onClickListener) {
        return this.positiveButtonListeners.remove(onClickListener);
    }

    void setActivePresenter(TimePickerPresenter timePickerPresenter) {
        this.activePresenter = timePickerPresenter;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        updateCancelButtonVisibility();
    }

    public void setHour(int i) {
        this.time.setHour(i);
        TimePickerPresenter timePickerPresenter = this.activePresenter;
        if (timePickerPresenter != null) {
            timePickerPresenter.invalidate();
        }
    }

    public void setMinute(int i) {
        this.time.setMinute(i);
        TimePickerPresenter timePickerPresenter = this.activePresenter;
        if (timePickerPresenter != null) {
            timePickerPresenter.invalidate();
        }
    }
}

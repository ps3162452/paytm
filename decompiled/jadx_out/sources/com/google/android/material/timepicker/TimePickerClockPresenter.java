package com.google.android.material.timepicker;

import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.TimePickerView;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
class TimePickerClockPresenter implements ClockHandView.OnRotateListener, TimePickerView.OnSelectionChange, TimePickerView.OnPeriodChangeListener, ClockHandView.OnActionUpListener, TimePickerPresenter {
    private static final int DEGREES_PER_HOUR = 30;
    private static final int DEGREES_PER_MINUTE = 6;
    private boolean broadcasting = false;
    private float hourRotation;
    private float minuteRotation;
    private final TimeModel time;
    private final TimePickerView timePickerView;
    private static final String[] HOUR_CLOCK_VALUES = {NPStringFog.decode(new byte[]{82, 6}, "c4a99c", 1.668493E8f), NPStringFog.decode(new byte[]{7}, "62833a", 1.42302362E9d), NPStringFog.decode(new byte[]{2}, "0ae2d7", -1.644176759E9d), NPStringFog.decode(new byte[]{87}, "dceb36", true), NPStringFog.decode(new byte[]{1}, "5eeb27", true, true), NPStringFog.decode(new byte[]{12}, "95af17", -1.340646336E9d), NPStringFog.decode(new byte[]{83}, "e1225c", -5173), NPStringFog.decode(new byte[]{3}, "40ae26", 9.810688E8f), NPStringFog.decode(new byte[]{11}, "394397", 6.9853165E8f), NPStringFog.decode(new byte[]{10}, "398023", -374879701L), NPStringFog.decode(new byte[]{5, 81}, "4ab348", -14369), NPStringFog.decode(new byte[]{82, 9}, "c80e88", -9846)};
    private static final String[] HOUR_CLOCK_24_VALUES = {NPStringFog.decode(new byte[]{5, 4}, "5456e8", -1105726848L), NPStringFog.decode(new byte[]{1}, "3a35ab", 5.5497235E8f), NPStringFog.decode(new byte[]{2}, "6e2df9", false, true), NPStringFog.decode(new byte[]{83}, "e4610b", false), NPStringFog.decode(new byte[]{91}, "c32383", 1705601589L), NPStringFog.decode(new byte[]{0, 81}, "1a6835", 4.078639E8f), NPStringFog.decode(new byte[]{82, 5}, "c7d713", true, true), NPStringFog.decode(new byte[]{83, 5}, "b1789a", -1.9443941E9f), NPStringFog.decode(new byte[]{9, 15}, "897fb6", 1689158755L), NPStringFog.decode(new byte[]{83, 90}, "bbbc38", 13689), NPStringFog.decode(new byte[]{3, 9}, "19639d", -10392), NPStringFog.decode(new byte[]{4, 6}, "648401", 361211944L)};
    private static final String[] MINUTE_CLOCK_VALUES = {NPStringFog.decode(new byte[]{1, 8}, "1872ee", true, false), NPStringFog.decode(new byte[]{84}, "a92871", 1.5117338E9f), NPStringFog.decode(new byte[]{0, 4}, "140b3b", true, false), NPStringFog.decode(new byte[]{80, 87}, "ab6885", -1655139138L), NPStringFog.decode(new byte[]{83, 7}, "a793ac", 8046), NPStringFog.decode(new byte[]{83, 2}, "a73870", -1.685842937E9d), NPStringFog.decode(new byte[]{85, 86}, "ff9473", true), NPStringFog.decode(new byte[]{81, 0}, "b5c57c", true, true), NPStringFog.decode(new byte[]{6, 82}, "2bfd1e", false, false), NPStringFog.decode(new byte[]{82, 2}, "f7b40a", -7584), NPStringFog.decode(new byte[]{4, 8}, "18554e", false), NPStringFog.decode(new byte[]{0, 13}, "58e8bb", 1.887289782E9d)};

    public TimePickerClockPresenter(TimePickerView timePickerView, TimeModel timeModel) {
        this.timePickerView = timePickerView;
        this.time = timeModel;
        initialize();
    }

    private int getDegreesPerHour() {
        return this.time.format == 1 ? 15 : 30;
    }

    private String[] getHourClockValues() {
        return this.time.format == 1 ? HOUR_CLOCK_24_VALUES : HOUR_CLOCK_VALUES;
    }

    private void performHapticFeedback(int i, int i2) {
        if (this.time.minute == i2 && this.time.hour == i) {
            return;
        }
        this.timePickerView.performHapticFeedback(Build.VERSION.SDK_INT >= 21 ? 4 : 1);
    }

    private void updateTime() {
        this.timePickerView.updateTime(this.time.period, this.time.getHourForDisplay(), this.time.minute);
    }

    private void updateValues() {
        updateValues(HOUR_CLOCK_VALUES, NPStringFog.decode(new byte[]{21, 7}, "0cb597", false, true));
        updateValues(HOUR_CLOCK_24_VALUES, NPStringFog.decode(new byte[]{16, 92}, "581fb6", 2073));
        updateValues(MINUTE_CLOCK_VALUES, NPStringFog.decode(new byte[]{68, 1, 2, 84}, "a10078", false));
    }

    private void updateValues(String[] strArr, String str) {
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = TimeModel.formatText(this.timePickerView.getResources(), strArr[i], str);
        }
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void hide() {
        this.timePickerView.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void initialize() {
        if (this.time.format == 0) {
            this.timePickerView.showToggle();
        }
        this.timePickerView.addOnRotateListener(this);
        this.timePickerView.setOnSelectionChangeListener(this);
        this.timePickerView.setOnPeriodChangeListener(this);
        this.timePickerView.setOnActionUpListener(this);
        updateValues();
        invalidate();
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void invalidate() {
        this.hourRotation = this.time.getHourForDisplay() * getDegreesPerHour();
        this.minuteRotation = this.time.minute * 6;
        setSelection(this.time.selection, false);
        updateTime();
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnActionUpListener
    public void onActionUp(float f, boolean z) {
        this.broadcasting = true;
        int i = this.time.minute;
        int i2 = this.time.hour;
        if (this.time.selection == 10) {
            this.timePickerView.setHandRotation(this.hourRotation, false);
            AccessibilityManager accessibilityManager = (AccessibilityManager) ContextCompat.getSystemService(this.timePickerView.getContext(), AccessibilityManager.class);
            if (!(accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled())) {
                setSelection(12, true);
            }
        } else {
            int iRound = Math.round(f);
            if (!z) {
                this.time.setMinute(((iRound + 15) / 30) * 5);
                this.minuteRotation = this.time.minute * 6;
            }
            this.timePickerView.setHandRotation(this.minuteRotation, z);
        }
        this.broadcasting = false;
        updateTime();
        performHapticFeedback(i2, i);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnPeriodChangeListener
    public void onPeriodChange(int i) {
        this.time.setPeriod(i);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnRotateListener
    public void onRotate(float f, boolean z) {
        if (this.broadcasting) {
            return;
        }
        int i = this.time.hour;
        int i2 = this.time.minute;
        int iRound = Math.round(f);
        if (this.time.selection == 12) {
            this.time.setMinute((iRound + 3) / 6);
            this.minuteRotation = (float) Math.floor(this.time.minute * 6);
        } else {
            this.time.setHour((iRound + (getDegreesPerHour() / 2)) / getDegreesPerHour());
            this.hourRotation = this.time.getHourForDisplay() * getDegreesPerHour();
        }
        if (z) {
            return;
        }
        updateTime();
        performHapticFeedback(i, i2);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnSelectionChange
    public void onSelectionChanged(int i) {
        setSelection(i, true);
    }

    void setSelection(int i, boolean z) {
        boolean z2 = i == 12;
        this.timePickerView.setAnimateOnTouchUp(z2);
        this.time.selection = i;
        this.timePickerView.setValues(z2 ? MINUTE_CLOCK_VALUES : getHourClockValues(), z2 ? R.string.material_minute_suffix : R.string.material_hour_suffix);
        this.timePickerView.setHandRotation(z2 ? this.minuteRotation : this.hourRotation, z);
        this.timePickerView.setActiveSelection(i);
        this.timePickerView.setMinuteHourDelegate(new ClickActionDelegate(this, this.timePickerView.getContext(), R.string.material_hour_selection) { // from class: com.google.android.material.timepicker.TimePickerClockPresenter.1
            final TimePickerClockPresenter this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_hour_suffix, String.valueOf(this.this$0.time.getHourForDisplay())));
            }
        });
        this.timePickerView.setHourClickDelegate(new ClickActionDelegate(this, this.timePickerView.getContext(), R.string.material_minute_selection) { // from class: com.google.android.material.timepicker.TimePickerClockPresenter.2
            final TimePickerClockPresenter this$0;

            {
                this.this$0 = this;
            }

            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_minute_suffix, String.valueOf(this.this$0.time.minute)));
            }
        });
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void show() {
        this.timePickerView.setVisibility(0);
    }
}

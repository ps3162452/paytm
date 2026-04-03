package com.google.android.material.datepicker;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.google.android.material.R;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;

/* JADX INFO: loaded from: classes37.dex */
abstract class DateFormatTextWatcher extends TextWatcherAdapter {
    private static final int VALIDATION_DELAY = 1000;
    private final CalendarConstraints constraints;
    private final DateFormat dateFormat;
    private final String outOfRange;
    private final Runnable setErrorCallback;
    private Runnable setRangeErrorCallback;
    private final TextInputLayout textInputLayout;

    DateFormatTextWatcher(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.dateFormat = dateFormat;
        this.textInputLayout = textInputLayout;
        this.constraints = calendarConstraints;
        this.outOfRange = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
        this.setErrorCallback = new Runnable(this, str) { // from class: com.google.android.material.datepicker.DateFormatTextWatcher.1
            final DateFormatTextWatcher this$0;
            final String val$formatHint;

            {
                this.this$0 = this;
                this.val$formatHint = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                TextInputLayout textInputLayout2 = this.this$0.textInputLayout;
                DateFormat dateFormat2 = this.this$0.dateFormat;
                Context context = textInputLayout2.getContext();
                textInputLayout2.setError(context.getString(R.string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_use), this.val$formatHint) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_example), dateFormat2.format(new Date(UtcDates.getTodayCalendar().getTimeInMillis()))));
                this.this$0.onInvalidDate();
            }
        };
    }

    private Runnable createRangeErrorCallback(long j) {
        return new Runnable(this, j) { // from class: com.google.android.material.datepicker.DateFormatTextWatcher.2
            final DateFormatTextWatcher this$0;
            final long val$milliseconds;

            {
                this.this$0 = this;
                this.val$milliseconds = j;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.textInputLayout.setError(String.format(this.this$0.outOfRange, DateStrings.getDateString(this.val$milliseconds)));
                this.this$0.onInvalidDate();
            }
        };
    }

    void onInvalidDate() {
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.textInputLayout.removeCallbacks(this.setErrorCallback);
        this.textInputLayout.removeCallbacks(this.setRangeErrorCallback);
        this.textInputLayout.setError(null);
        onValidDate(null);
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        try {
            Date date = this.dateFormat.parse(charSequence.toString());
            this.textInputLayout.setError(null);
            long time = date.getTime();
            if (this.constraints.getDateValidator().isValid(time) && this.constraints.isWithinBounds(time)) {
                onValidDate(Long.valueOf(date.getTime()));
            } else {
                Runnable runnableCreateRangeErrorCallback = createRangeErrorCallback(time);
                this.setRangeErrorCallback = runnableCreateRangeErrorCallback;
                runValidation(this.textInputLayout, runnableCreateRangeErrorCallback);
            }
        } catch (ParseException e) {
            runValidation(this.textInputLayout, this.setErrorCallback);
        }
    }

    abstract void onValidDate(Long l);

    public void runValidation(View view, Runnable runnable) {
        view.postDelayed(runnable, 1000L);
    }
}

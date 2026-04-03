package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.datepicker.MaterialCalendar;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
class YearGridAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final MaterialCalendar<?> materialCalendar;

    public static class ViewHolder extends RecyclerView.ViewHolder {
        final TextView textView;

        ViewHolder(TextView textView) {
            super(textView);
            this.textView = textView;
        }
    }

    YearGridAdapter(MaterialCalendar<?> materialCalendar) {
        this.materialCalendar = materialCalendar;
    }

    private View.OnClickListener createYearClickListener(int i) {
        return new View.OnClickListener(this, i) { // from class: com.google.android.material.datepicker.YearGridAdapter.1
            final YearGridAdapter this$0;
            final int val$year;

            {
                this.this$0 = this;
                this.val$year = i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.this$0.materialCalendar.setCurrentMonth(this.this$0.materialCalendar.getCalendarConstraints().clamp(Month.create(this.val$year, this.this$0.materialCalendar.getCurrentMonth().month)));
                this.this$0.materialCalendar.setSelector(MaterialCalendar.CalendarSelector.DAY);
            }
        };
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.materialCalendar.getCalendarConstraints().getYearSpan();
    }

    int getPositionForYear(int i) {
        return i - this.materialCalendar.getCalendarConstraints().getStart().year;
    }

    int getYearForPosition(int i) {
        return this.materialCalendar.getCalendarConstraints().getStart().year + i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        int yearForPosition = getYearForPosition(i);
        String string = viewHolder.textView.getContext().getString(R.string.mtrl_picker_navigate_to_year_description);
        viewHolder.textView.setText(String.format(Locale.getDefault(), NPStringFog.decode(new byte[]{22, 6}, "3b66af", false), Integer.valueOf(yearForPosition)));
        viewHolder.textView.setContentDescription(String.format(string, Integer.valueOf(yearForPosition)));
        CalendarStyle calendarStyle = this.materialCalendar.getCalendarStyle();
        Calendar todayCalendar = UtcDates.getTodayCalendar();
        CalendarItemStyle calendarItemStyle = todayCalendar.get(1) == yearForPosition ? calendarStyle.todayYear : calendarStyle.year;
        Iterator<Long> it = this.materialCalendar.getDateSelector().getSelectedDays().iterator();
        while (true) {
            CalendarItemStyle calendarItemStyle2 = calendarItemStyle;
            if (!it.hasNext()) {
                calendarItemStyle2.styleItem(viewHolder.textView);
                viewHolder.textView.setOnClickListener(createYearClickListener(yearForPosition));
                return;
            } else {
                todayCalendar.setTimeInMillis(it.next().longValue());
                calendarItemStyle = todayCalendar.get(1) == yearForPosition ? calendarStyle.selectedYear : calendarItemStyle2;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }
}

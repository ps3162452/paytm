package com.google.android.gms.common.sqlite;

import android.database.AbstractWindowedCursor;
import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class CursorWrapper extends android.database.CursorWrapper implements CrossProcessCursor {
    private AbstractWindowedCursor zza;

    public CursorWrapper(Cursor cursor) {
        Cursor cursor2;
        super(cursor);
        int i = 0;
        while (true) {
            int i2 = i;
            cursor2 = cursor;
            if (i2 >= 10 || !(cursor2 instanceof android.database.CursorWrapper)) {
                break;
            }
            cursor = ((android.database.CursorWrapper) cursor2).getWrappedCursor();
            i = i2 + 1;
        }
        if (!(cursor2 instanceof AbstractWindowedCursor)) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{102, 93, 8, 13, 95, 66, 93, 19, 23, 26, 64, 80, 9, 19}, "33cc05", 1.993105016E9d).concat(String.valueOf(cursor2.getClass().getName())));
        }
        this.zza = (AbstractWindowedCursor) cursor2;
    }

    @Override // android.database.CrossProcessCursor
    public void fillWindow(int i, CursorWindow cursorWindow) {
        this.zza.fillWindow(i, cursorWindow);
    }

    @Override // android.database.CrossProcessCursor
    @ResultIgnorabilityUnspecified
    public CursorWindow getWindow() {
        return this.zza.getWindow();
    }

    @Override // android.database.CursorWrapper
    public final /* synthetic */ Cursor getWrappedCursor() {
        return this.zza;
    }

    @Override // android.database.CrossProcessCursor
    @ResultIgnorabilityUnspecified
    public final boolean onMove(int i, int i2) {
        return this.zza.onMove(i, i2);
    }

    public void setWindow(CursorWindow cursorWindow) {
        this.zza.setWindow(cursorWindow);
    }
}

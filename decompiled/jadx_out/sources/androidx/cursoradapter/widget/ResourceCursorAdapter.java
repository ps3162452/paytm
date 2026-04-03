package androidx.cursoradapter.widget;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import n.NPStringFog;

/* JADX INFO: loaded from: classes24.dex */
public abstract class ResourceCursorAdapter extends CursorAdapter {
    private int mDropDownLayout;
    private LayoutInflater mInflater;
    private int mLayout;

    @Deprecated
    public ResourceCursorAdapter(Context context, int i, Cursor cursor) {
        super(context, cursor);
        this.mDropDownLayout = i;
        this.mLayout = i;
        this.mInflater = (LayoutInflater) context.getSystemService(NPStringFog.decode(new byte[]{95, 83, 64, 86, 66, 70, 108, 91, 87, 95, 91, 83, 71, 87, 75}, "329972", -3.1815898E7f));
    }

    public ResourceCursorAdapter(Context context, int i, Cursor cursor, int i2) {
        super(context, cursor, i2);
        this.mDropDownLayout = i;
        this.mLayout = i;
        this.mInflater = (LayoutInflater) context.getSystemService(NPStringFog.decode(new byte[]{84, 83, 72, 13, 68, 17, 103, 91, 95, 4, 93, 4, 76, 87, 67}, "821b1e", 8835));
    }

    @Deprecated
    public ResourceCursorAdapter(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.mDropDownLayout = i;
        this.mLayout = i;
        this.mInflater = (LayoutInflater) context.getSystemService(NPStringFog.decode(new byte[]{93, 88, 28, 9, 19, 70, 110, 80, 11, 0, 10, 83, 69, 92, 23}, "19eff2", 1003864054L));
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.mInflater.inflate(this.mDropDownLayout, viewGroup, false);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.mInflater.inflate(this.mLayout, viewGroup, false);
    }

    public void setDropDownViewResource(int i) {
        this.mDropDownLayout = i;
    }

    public void setViewResource(int i) {
        this.mLayout = i;
    }
}

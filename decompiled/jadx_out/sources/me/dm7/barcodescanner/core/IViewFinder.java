package me.dm7.barcodescanner.core;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes65.dex */
public interface IViewFinder {
    Rect getFramingRect();

    int getHeight();

    int getWidth();

    void setupViewFinder();
}

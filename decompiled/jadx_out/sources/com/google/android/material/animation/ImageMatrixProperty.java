package com.google.android.material.animation;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public class ImageMatrixProperty extends Property<ImageView, Matrix> {
    private final Matrix matrix;

    public ImageMatrixProperty() {
        super(Matrix.class, NPStringFog.decode(new byte[]{15, 8, 86, 1, 84, 46, 7, 17, 69, 15, 73, 51, 20, 10, 71, 3, 67, 23, 31}, "fe7f1c", false, false));
        this.matrix = new Matrix();
    }

    @Override // android.util.Property
    public Matrix get(ImageView imageView) {
        this.matrix.set(imageView.getImageMatrix());
        return this.matrix;
    }

    @Override // android.util.Property
    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}

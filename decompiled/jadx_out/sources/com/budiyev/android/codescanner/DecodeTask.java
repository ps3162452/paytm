package com.budiyev.android.codescanner;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.PlanarYUVLuminanceSource;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;

/* JADX INFO: loaded from: classes67.dex */
final class DecodeTask {
    private final byte[] mImage;
    private final Point mImageSize;
    private final int mOrientation;
    private final Point mPreviewSize;
    private final boolean mReverseHorizontal;
    private final Rect mViewFrameRect;
    private final Point mViewSize;

    public DecodeTask(@NonNull byte[] bArr, @NonNull Point point, @NonNull Point point2, @NonNull Point point3, @NonNull Rect rect, int i, boolean z) {
        this.mImage = bArr;
        this.mImageSize = point;
        this.mPreviewSize = point2;
        this.mViewSize = point3;
        this.mViewFrameRect = rect;
        this.mOrientation = i;
        this.mReverseHorizontal = z;
    }

    @Nullable
    public Result decode(@NonNull MultiFormatReader multiFormatReader) throws ReaderException {
        int i;
        int x = this.mImageSize.getX();
        int y = this.mImageSize.getY();
        int i2 = this.mOrientation;
        byte[] bArrRotateYuv = Utils.rotateYuv(this.mImage, x, y, i2);
        if (i2 == 90 || i2 == 270) {
            i = y;
            y = x;
        } else {
            i = x;
        }
        Rect imageFrameRect = Utils.getImageFrameRect(i, y, this.mViewFrameRect, this.mPreviewSize, this.mViewSize);
        int width = imageFrameRect.getWidth();
        int height = imageFrameRect.getHeight();
        if (width < 1 || height < 1) {
            return null;
        }
        return Utils.decodeLuminanceSource(multiFormatReader, new PlanarYUVLuminanceSource(bArrRotateYuv, i, y, imageFrameRect.getLeft(), imageFrameRect.getTop(), width, height, this.mReverseHorizontal));
    }
}

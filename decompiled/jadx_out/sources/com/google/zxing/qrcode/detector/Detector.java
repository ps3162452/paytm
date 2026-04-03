package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.PerspectiveTransform;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.qrcode.decoder.Version;
import java.util.Map;

/* JADX INFO: loaded from: classes65.dex */
public class Detector {
    private final BitMatrix image;
    private ResultPointCallback resultPointCallback;

    public Detector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    private float calculateModuleSizeOneWay(ResultPoint resultPoint, ResultPoint resultPoint2) {
        float fSizeOfBlackWhiteBlackRunBothWays = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint.getX(), (int) resultPoint.getY(), (int) resultPoint2.getX(), (int) resultPoint2.getY());
        float fSizeOfBlackWhiteBlackRunBothWays2 = sizeOfBlackWhiteBlackRunBothWays((int) resultPoint2.getX(), (int) resultPoint2.getY(), (int) resultPoint.getX(), (int) resultPoint.getY());
        return Float.isNaN(fSizeOfBlackWhiteBlackRunBothWays) ? fSizeOfBlackWhiteBlackRunBothWays2 / 7.0f : Float.isNaN(fSizeOfBlackWhiteBlackRunBothWays2) ? fSizeOfBlackWhiteBlackRunBothWays / 7.0f : (fSizeOfBlackWhiteBlackRunBothWays + fSizeOfBlackWhiteBlackRunBothWays2) / 14.0f;
    }

    private static int computeDimension(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, float f) throws NotFoundException {
        int iRound = ((MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2) / f) + MathUtils.round(ResultPoint.distance(resultPoint, resultPoint3) / f)) / 2) + 7;
        switch (iRound & 3) {
            case 0:
                return iRound + 1;
            case 1:
            default:
                return iRound;
            case 2:
                return iRound - 1;
            case 3:
                throw NotFoundException.getNotFoundInstance();
        }
    }

    private static PerspectiveTransform createTransform(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i) {
        float x;
        float y;
        float f;
        float f2;
        float f3 = i - 3.5f;
        if (resultPoint4 != null) {
            x = resultPoint4.getX();
            y = resultPoint4.getY();
            f = f3 - 3.0f;
            f2 = f;
        } else {
            x = (resultPoint2.getX() - resultPoint.getX()) + resultPoint3.getX();
            y = (resultPoint2.getY() - resultPoint.getY()) + resultPoint3.getY();
            f = f3;
            f2 = f3;
        }
        return PerspectiveTransform.quadrilateralToQuadrilateral(3.5f, 3.5f, f3, 3.5f, f2, f, 3.5f, f3, resultPoint.getX(), resultPoint.getY(), resultPoint2.getX(), resultPoint2.getY(), x, y, resultPoint3.getX(), resultPoint3.getY());
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, PerspectiveTransform perspectiveTransform, int i) throws NotFoundException {
        return GridSampler.getInstance().sampleGrid(bitMatrix, i, i, perspectiveTransform);
    }

    private float sizeOfBlackWhiteBlackRun(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z = Math.abs(i4 - i2) > Math.abs(i3 - i);
        if (!z) {
            i4 = i3;
            i3 = i4;
            i = i2;
            i2 = i;
        }
        int iAbs = Math.abs(i4 - i2);
        int iAbs2 = Math.abs(i3 - i);
        int i9 = (-iAbs) / 2;
        int i10 = i2 < i4 ? 1 : -1;
        int i11 = i < i3 ? 1 : -1;
        int i12 = 0;
        int i13 = i9;
        int i14 = i2;
        int i15 = i;
        while (true) {
            if (i14 == i4 + i10) {
                i5 = i12;
                break;
            }
            if ((i12 == 1) != this.image.get(z ? i15 : i14, z ? i14 : i15)) {
                i6 = i12;
            } else {
                if (i12 == 2) {
                    return MathUtils.distance(i14, i15, i2, i);
                }
                i6 = i12 + 1;
            }
            int i16 = i13 + iAbs2;
            if (i16 <= 0) {
                i7 = i15;
                i8 = i16;
            } else {
                if (i15 == i3) {
                    i5 = i6;
                    break;
                }
                i7 = i15 + i11;
                i8 = i16 - iAbs;
            }
            i14 += i10;
            i13 = i8;
            i12 = i6;
            i15 = i7;
        }
        if (i5 == 2) {
            return MathUtils.distance(i4 + i10, i3, i2, i);
        }
        return Float.NaN;
    }

    private float sizeOfBlackWhiteBlackRunBothWays(int i, int i2, int i3, int i4) {
        int width;
        float width2;
        float height;
        int height2 = 0;
        float fSizeOfBlackWhiteBlackRun = sizeOfBlackWhiteBlackRun(i, i2, i3, i4);
        int i5 = i - (i3 - i);
        if (i5 < 0) {
            width2 = i / (i - i5);
            width = 0;
        } else if (i5 >= this.image.getWidth()) {
            width2 = ((this.image.getWidth() - 1) - i) / (i5 - i);
            width = this.image.getWidth() - 1;
        } else {
            width = i5;
            width2 = 1.0f;
        }
        int i6 = (int) (i2 - (width2 * (i4 - i2)));
        if (i6 < 0) {
            height = i2 / (i2 - i6);
        } else if (i6 >= this.image.getHeight()) {
            height = ((this.image.getHeight() - 1) - i2) / (i6 - i2);
            height2 = this.image.getHeight() - 1;
        } else {
            height2 = i6;
            height = 1.0f;
        }
        return (sizeOfBlackWhiteBlackRun(i, i2, (int) ((height * (width - i)) + i), height2) + fSizeOfBlackWhiteBlackRun) - 1.0f;
    }

    protected final float calculateModuleSize(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3) {
        return (calculateModuleSizeOneWay(resultPoint, resultPoint2) + calculateModuleSizeOneWay(resultPoint, resultPoint3)) / 2.0f;
    }

    public DetectorResult detect() throws NotFoundException, FormatException {
        return detect(null);
    }

    public final DetectorResult detect(Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        this.resultPointCallback = map == null ? null : (ResultPointCallback) map.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
        return processFinderPatternInfo(new FinderPatternFinder(this.image, this.resultPointCallback).find(map));
    }

    protected final AlignmentPattern findAlignmentInRegion(float f, int i, int i2, float f2) throws NotFoundException {
        int i3 = (int) (f2 * f);
        int iMax = Math.max(0, i - i3);
        int iMin = Math.min(this.image.getWidth() - 1, i + i3);
        if (iMin - iMax < f * 3.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iMax2 = Math.max(0, i2 - i3);
        int iMin2 = Math.min(this.image.getHeight() - 1, i3 + i2);
        if (iMin2 - iMax2 < f * 3.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        return new AlignmentPatternFinder(this.image, iMax, iMax2, iMin - iMax, iMin2 - iMax2, f, this.resultPointCallback).find();
    }

    protected final BitMatrix getImage() {
        return this.image;
    }

    protected final ResultPointCallback getResultPointCallback() {
        return this.resultPointCallback;
    }

    protected final DetectorResult processFinderPatternInfo(FinderPatternInfo finderPatternInfo) throws NotFoundException, FormatException {
        FinderPattern topLeft = finderPatternInfo.getTopLeft();
        FinderPattern topRight = finderPatternInfo.getTopRight();
        FinderPattern bottomLeft = finderPatternInfo.getBottomLeft();
        float fCalculateModuleSize = calculateModuleSize(topLeft, topRight, bottomLeft);
        if (fCalculateModuleSize < 1.0f) {
            throw NotFoundException.getNotFoundInstance();
        }
        int iComputeDimension = computeDimension(topLeft, topRight, bottomLeft, fCalculateModuleSize);
        Version provisionalVersionForDimension = Version.getProvisionalVersionForDimension(iComputeDimension);
        int dimensionForVersion = provisionalVersionForDimension.getDimensionForVersion();
        AlignmentPattern alignmentPatternFindAlignmentInRegion = null;
        if (provisionalVersionForDimension.getAlignmentPatternCenters().length > 0) {
            float x = topRight.getX();
            float x2 = topLeft.getX();
            float x3 = bottomLeft.getX();
            float y = topRight.getY();
            float y2 = topLeft.getY();
            float y3 = bottomLeft.getY();
            float f = 1.0f - (3.0f / (dimensionForVersion - 7));
            int x4 = (int) (((((x - x2) + x3) - topLeft.getX()) * f) + topLeft.getX());
            int y4 = (int) (topLeft.getY() + (f * (((y - y2) + y3) - topLeft.getY())));
            for (int i = 4; i <= 16; i <<= 1) {
                try {
                    alignmentPatternFindAlignmentInRegion = findAlignmentInRegion(fCalculateModuleSize, x4, y4, i);
                    break;
                } catch (NotFoundException e) {
                }
            }
        }
        return new DetectorResult(sampleGrid(this.image, createTransform(topLeft, topRight, bottomLeft, alignmentPatternFindAlignmentInRegion, iComputeDimension), iComputeDimension), alignmentPatternFindAlignmentInRegion == null ? new ResultPoint[]{bottomLeft, topLeft, topRight} : new ResultPoint[]{bottomLeft, topLeft, topRight, alignmentPatternFindAlignmentInRegion});
    }
}

package androidx.constraintlayout.widget;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class ConstraintProperties {
    public static final int BASELINE = 5;
    public static final int BOTTOM = 4;
    public static final int END = 7;
    public static final int LEFT = 1;
    public static final int MATCH_CONSTRAINT = 0;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    public static final int PARENT_ID = 0;
    public static final int RIGHT = 2;
    public static final int START = 6;
    public static final int TOP = 3;
    public static final int UNSET = -1;
    public static final int WRAP_CONTENT = -2;
    ConstraintLayout.LayoutParams mParams;
    View mView;

    public ConstraintProperties(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ConstraintLayout.LayoutParams)) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{119, 8, 8, 27, 21, 2, 80, 15, 8, 6, 71, 4, 86, 70, 11, 4, 21, 34, 87, 8, 23, 22, 71, 0, 81, 8, 16, 46, 84, 24, 87, 19, 16, 76, 121, 0, 65, 9, 17, 22, 101, 0, 74, 7, 9, 17, 21, 18, 77, 22, 20, 13, 71, 21, 93, 2}, "8fdb5a", 1.471097082E9d));
        }
        this.mParams = (ConstraintLayout.LayoutParams) layoutParams;
        this.mView = view;
    }

    private String sideToString(int i) {
        switch (i) {
            case 1:
                return NPStringFog.decode(new byte[]{84, 83, 84, 68}, "86206b", -2.915555E8f);
            case 2:
                return NPStringFog.decode(new byte[]{68, 10, 94, 80, 22}, "6c98ba", true, true);
            case 3:
                return NPStringFog.decode(new byte[]{69, 11, 19}, "1dccdb", true);
            case 4:
                return NPStringFog.decode(new byte[]{91, 94, 66, 65, 13, 8}, "9165be", true, false);
            case 5:
                return NPStringFog.decode(new byte[]{81, 81, 68, 82, 84, 94, 93, 85}, "307787", 1.80631425E9d);
            case 6:
                return NPStringFog.decode(new byte[]{75, 23, 89, 19, 64}, "8c8a4e", -1626842526L);
            case 7:
                return NPStringFog.decode(new byte[]{6, 92, 5}, "c2ad9f", 23119);
            default:
                return NPStringFog.decode(new byte[]{70, 90, 7, 92, 82, 95, 93, 81, 7}, "34c946", 827862018L);
        }
    }

    public ConstraintProperties addToHorizontalChain(int i, int i2) {
        connect(1, i, i == 0 ? 1 : 2, 0);
        connect(2, i2, i2 == 0 ? 2 : 1, 0);
        if (i != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i)).connect(2, this.mView.getId(), 1, 0);
        }
        if (i2 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i2)).connect(1, this.mView.getId(), 2, 0);
        }
        return this;
    }

    public ConstraintProperties addToHorizontalChainRTL(int i, int i2) {
        connect(6, i, i == 0 ? 6 : 7, 0);
        connect(7, i2, i2 == 0 ? 7 : 6, 0);
        if (i != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i)).connect(7, this.mView.getId(), 6, 0);
        }
        if (i2 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i2)).connect(6, this.mView.getId(), 7, 0);
        }
        return this;
    }

    public ConstraintProperties addToVerticalChain(int i, int i2) {
        connect(3, i, i == 0 ? 3 : 4, 0);
        connect(4, i2, i2 == 0 ? 4 : 3, 0);
        if (i != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i)).connect(4, this.mView.getId(), 3, 0);
        }
        if (i2 != 0) {
            new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i2)).connect(3, this.mView.getId(), 4, 0);
        }
        return this;
    }

    public ConstraintProperties alpha(float f) {
        this.mView.setAlpha(f);
        return this;
    }

    public void apply() {
    }

    public ConstraintProperties center(int i, int i2, int i3, int i4, int i5, int i6, float f) {
        if (i3 < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{9, 7, 69, 95, 15, 12, 68, 11, 66, 75, 18, 66, 6, 3, 23, 6, 70, 82}, "df78fb", -1.6415018E9f));
        }
        if (i6 < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{95, 84, 20, 4, 13, 11, 18, 88, 19, 16, 16, 69, 80, 80, 70, 93, 68, 85}, "25fcde", -1.3137248E9f));
        }
        if (f <= 0.0f || f > 1.0f) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{80, 8, 88, 17, 24, 15, 71, 18, 77, 66, 90, 7, 18, 3, 92, 22, 79, 7, 87, 15, 25, 82, 24, 3, 92, 5, 25, 83, 24, 11, 92, 2, 85, 23, 75, 11, 68, 4}, "2a9b8b", 1903953888L));
        }
        if (i2 == 1 || i2 == 2) {
            connect(1, i, i2, i3);
            connect(2, i4, i5, i6);
            this.mParams.horizontalBias = f;
        } else if (i2 == 6 || i2 == 7) {
            connect(6, i, i2, i3);
            connect(7, i4, i5, i6);
            this.mParams.horizontalBias = f;
        } else {
            connect(3, i, i2, i3);
            connect(4, i4, i5, i6);
            this.mParams.verticalBias = f;
        }
        return this;
    }

    public ConstraintProperties centerHorizontally(int i) {
        if (i == 0) {
            center(0, 1, 0, 0, 2, 0, 0.5f);
        } else {
            center(i, 2, 0, i, 1, 0, 0.5f);
        }
        return this;
    }

    public ConstraintProperties centerHorizontally(int i, int i2, int i3, int i4, int i5, int i6, float f) {
        connect(1, i, i2, i3);
        connect(2, i4, i5, i6);
        this.mParams.horizontalBias = f;
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int i) {
        if (i == 0) {
            center(0, 6, 0, 0, 7, 0, 0.5f);
        } else {
            center(i, 7, 0, i, 6, 0, 0.5f);
        }
        return this;
    }

    public ConstraintProperties centerHorizontallyRtl(int i, int i2, int i3, int i4, int i5, int i6, float f) {
        connect(6, i, i2, i3);
        connect(7, i4, i5, i6);
        this.mParams.horizontalBias = f;
        return this;
    }

    public ConstraintProperties centerVertically(int i) {
        if (i == 0) {
            center(0, 3, 0, 0, 4, 0, 0.5f);
        } else {
            center(i, 4, 0, i, 3, 0, 0.5f);
        }
        return this;
    }

    public ConstraintProperties centerVertically(int i, int i2, int i3, int i4, int i5, int i6, float f) {
        connect(3, i, i2, i3);
        connect(4, i4, i5, i6);
        this.mParams.verticalBias = f;
        return this;
    }

    public ConstraintProperties connect(int i, int i2, int i3, int i4) {
        switch (i) {
            case 1:
                if (i3 == 1) {
                    this.mParams.leftToLeft = i2;
                    this.mParams.leftToRight = -1;
                } else {
                    if (i3 != 2) {
                        String strSideToString = sideToString(i3);
                        StringBuilder sb = new StringBuilder(String.valueOf(strSideToString).length() + 18);
                        sb.append(NPStringFog.decode(new byte[]{45, 87, 3, 22, 23, 67, 14, 18}, "a2eb77", 21235));
                        sb.append(strSideToString);
                        sb.append(NPStringFog.decode(new byte[]{22, 67, 11, 82, 92, 87, 95, 88, 0, 82}, "66e691", -856172484L));
                        throw new IllegalArgumentException(sb.toString());
                    }
                    this.mParams.leftToRight = i2;
                    this.mParams.leftToLeft = -1;
                }
                this.mParams.leftMargin = i4;
                return this;
            case 2:
                if (i3 == 1) {
                    this.mParams.rightToLeft = i2;
                    this.mParams.rightToRight = -1;
                } else {
                    if (i3 != 2) {
                        String strSideToString2 = sideToString(i3);
                        StringBuilder sb2 = new StringBuilder(String.valueOf(strSideToString2).length() + 19);
                        sb2.append(NPStringFog.decode(new byte[]{20, 81, 6, 80, 76, 18, 18, 87, 65}, "f8a882", 7.0981047E7d));
                        sb2.append(strSideToString2);
                        sb2.append(NPStringFog.decode(new byte[]{20, 76, 88, 5, 1, 87, 93, 87, 83, 5}, "496ad1", 2008347604L));
                        throw new IllegalArgumentException(sb2.toString());
                    }
                    this.mParams.rightToRight = i2;
                    this.mParams.rightToLeft = -1;
                }
                this.mParams.rightMargin = i4;
                return this;
            case 3:
                if (i3 == 3) {
                    this.mParams.topToTop = i2;
                    this.mParams.topToBottom = -1;
                    this.mParams.baselineToBaseline = -1;
                    this.mParams.baselineToTop = -1;
                    this.mParams.baselineToBottom = -1;
                } else {
                    if (i3 != 4) {
                        String strSideToString3 = sideToString(i3);
                        StringBuilder sb3 = new StringBuilder(String.valueOf(strSideToString3).length() + 19);
                        sb3.append(NPStringFog.decode(new byte[]{74, 93, 94, 81, 23, 68, 76, 91, 25}, "8499cd", 21843));
                        sb3.append(strSideToString3);
                        sb3.append(NPStringFog.decode(new byte[]{70, 68, 11, 2, 85, 0, 15, 95, 0, 2}, "f1ef0f", 7.8028166E8f));
                        throw new IllegalArgumentException(sb3.toString());
                    }
                    this.mParams.topToBottom = i2;
                    this.mParams.topToTop = -1;
                    this.mParams.baselineToBaseline = -1;
                    this.mParams.baselineToTop = -1;
                    this.mParams.baselineToBottom = -1;
                }
                this.mParams.topMargin = i4;
                return this;
            case 4:
                if (i3 == 4) {
                    this.mParams.bottomToBottom = i2;
                    this.mParams.bottomToTop = -1;
                    this.mParams.baselineToBaseline = -1;
                    this.mParams.baselineToTop = -1;
                    this.mParams.baselineToBottom = -1;
                } else {
                    if (i3 != 3) {
                        String strSideToString4 = sideToString(i3);
                        StringBuilder sb4 = new StringBuilder(String.valueOf(strSideToString4).length() + 19);
                        sb4.append(NPStringFog.decode(new byte[]{74, 10, 82, 80, 67, 67, 76, 12, 21}, "8c587c", false, false));
                        sb4.append(strSideToString4);
                        sb4.append(NPStringFog.decode(new byte[]{23, 76, 91, 82, 87, 87, 94, 87, 80, 82}, "795621", true, true));
                        throw new IllegalArgumentException(sb4.toString());
                    }
                    this.mParams.bottomToTop = i2;
                    this.mParams.bottomToBottom = -1;
                    this.mParams.baselineToBaseline = -1;
                    this.mParams.baselineToTop = -1;
                    this.mParams.baselineToBottom = -1;
                }
                this.mParams.bottomMargin = i4;
                return this;
            case 5:
                if (i3 == 5) {
                    this.mParams.baselineToBaseline = i2;
                    this.mParams.bottomToBottom = -1;
                    this.mParams.bottomToTop = -1;
                    this.mParams.topToTop = -1;
                    this.mParams.topToBottom = -1;
                }
                if (i3 == 3) {
                    this.mParams.baselineToTop = i2;
                    this.mParams.bottomToBottom = -1;
                    this.mParams.bottomToTop = -1;
                    this.mParams.topToTop = -1;
                    this.mParams.topToBottom = -1;
                } else {
                    if (i3 != 4) {
                        String strSideToString5 = sideToString(i3);
                        StringBuilder sb5 = new StringBuilder(String.valueOf(strSideToString5).length() + 19);
                        sb5.append(NPStringFog.decode(new byte[]{16, 94, 87, 90, 22, 24, 22, 88, 16}, "b702b8", -2.054581081E9d));
                        sb5.append(strSideToString5);
                        sb5.append(NPStringFog.decode(new byte[]{23, 19, 13, 92, 83, 2, 94, 8, 6, 92}, "7fc86d", true, true));
                        throw new IllegalArgumentException(sb5.toString());
                    }
                    this.mParams.baselineToBottom = i2;
                    this.mParams.bottomToBottom = -1;
                    this.mParams.bottomToTop = -1;
                    this.mParams.topToTop = -1;
                    this.mParams.topToBottom = -1;
                }
                this.mParams.baselineMargin = i4;
                return this;
            case 6:
                if (i3 == 6) {
                    this.mParams.startToStart = i2;
                    this.mParams.startToEnd = -1;
                } else {
                    if (i3 != 7) {
                        String strSideToString6 = sideToString(i3);
                        StringBuilder sb6 = new StringBuilder(String.valueOf(strSideToString6).length() + 19);
                        sb6.append(NPStringFog.decode(new byte[]{75, 13, 2, 81, 67, 22, 77, 11, 69}, "9de976", -1000425696L));
                        sb6.append(strSideToString6);
                        sb6.append(NPStringFog.decode(new byte[]{24, 22, 89, 1, 3, 85, 81, 13, 82, 1}, "8c7ef3", 1.7661252E9f));
                        throw new IllegalArgumentException(sb6.toString());
                    }
                    this.mParams.startToEnd = i2;
                    this.mParams.startToStart = -1;
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    this.mParams.setMarginStart(i4);
                }
                return this;
            case 7:
                if (i3 == 7) {
                    this.mParams.endToEnd = i2;
                    this.mParams.endToStart = -1;
                } else {
                    if (i3 != 6) {
                        String strSideToString7 = sideToString(i3);
                        StringBuilder sb7 = new StringBuilder(String.valueOf(strSideToString7).length() + 19);
                        sb7.append(NPStringFog.decode(new byte[]{75, 81, 4, 11, 70, 66, 77, 87, 67}, "98cc2b", 1.6421382E9f));
                        sb7.append(strSideToString7);
                        sb7.append(NPStringFog.decode(new byte[]{20, 16, 11, 81, 6, 5, 93, 11, 0, 81}, "4ee5cc", false));
                        throw new IllegalArgumentException(sb7.toString());
                    }
                    this.mParams.endToStart = i2;
                    this.mParams.endToEnd = -1;
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    this.mParams.setMarginEnd(i4);
                }
                return this;
            default:
                String strSideToString8 = sideToString(i);
                String strSideToString9 = sideToString(i3);
                StringBuilder sb8 = new StringBuilder(String.valueOf(strSideToString8).length() + 12 + String.valueOf(strSideToString9).length());
                sb8.append(strSideToString8);
                sb8.append(NPStringFog.decode(new byte[]{69, 66, 91, 17}, "e64188", 4.868104E8f));
                sb8.append(strSideToString9);
                sb8.append(NPStringFog.decode(new byte[]{17, 17, 8, 15, 93, 14, 70, 10}, "1dfd3a", -1.0022682E9f));
                throw new IllegalArgumentException(sb8.toString());
        }
    }

    public ConstraintProperties constrainDefaultHeight(int i) {
        this.mParams.matchConstraintDefaultHeight = i;
        return this;
    }

    public ConstraintProperties constrainDefaultWidth(int i) {
        this.mParams.matchConstraintDefaultWidth = i;
        return this;
    }

    public ConstraintProperties constrainHeight(int i) {
        this.mParams.height = i;
        return this;
    }

    public ConstraintProperties constrainMaxHeight(int i) {
        this.mParams.matchConstraintMaxHeight = i;
        return this;
    }

    public ConstraintProperties constrainMaxWidth(int i) {
        this.mParams.matchConstraintMaxWidth = i;
        return this;
    }

    public ConstraintProperties constrainMinHeight(int i) {
        this.mParams.matchConstraintMinHeight = i;
        return this;
    }

    public ConstraintProperties constrainMinWidth(int i) {
        this.mParams.matchConstraintMinWidth = i;
        return this;
    }

    public ConstraintProperties constrainWidth(int i) {
        this.mParams.width = i;
        return this;
    }

    public ConstraintProperties dimensionRatio(String str) {
        this.mParams.dimensionRatio = str;
        return this;
    }

    public ConstraintProperties elevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.mView.setElevation(f);
        }
        return this;
    }

    public ConstraintProperties goneMargin(int i, int i2) {
        switch (i) {
            case 1:
                this.mParams.goneLeftMargin = i2;
                return this;
            case 2:
                this.mParams.goneRightMargin = i2;
                return this;
            case 3:
                this.mParams.goneTopMargin = i2;
                return this;
            case 4:
                this.mParams.goneBottomMargin = i2;
                return this;
            case 5:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{87, 7, 23, 3, 85, 10, 91, 3, 68, 2, 86, 6, 70, 70, 10, 9, 77, 67, 70, 19, 20, 22, 86, 17, 65, 70, 9, 7, 75, 4, 92, 8, 23}, "5fdf9c", -1.9338491E9f));
            case 6:
                this.mParams.goneStartMargin = i2;
                return this;
            case 7:
                this.mParams.goneEndMargin = i2;
                return this;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{17, 93, 89, 92, 93, 18, 10, 19, 81, 93, 92, 22, 16, 65, 83, 91, 92, 17}, "d3222e", false, true));
        }
    }

    public ConstraintProperties horizontalBias(float f) {
        this.mParams.horizontalBias = f;
        return this;
    }

    public ConstraintProperties horizontalChainStyle(int i) {
        this.mParams.horizontalChainStyle = i;
        return this;
    }

    public ConstraintProperties horizontalWeight(float f) {
        this.mParams.horizontalWeight = f;
        return this;
    }

    public ConstraintProperties margin(int i, int i2) {
        switch (i) {
            case 1:
                this.mParams.leftMargin = i2;
                return this;
            case 2:
                this.mParams.rightMargin = i2;
                return this;
            case 3:
                this.mParams.topMargin = i2;
                return this;
            case 4:
                this.mParams.bottomMargin = i2;
                return this;
            case 5:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{6, 0, 69, 81, 13, 12, 10, 4, 22, 80, 14, 0, 23, 65, 88, 91, 21, 69, 23, 20, 70, 68, 14, 23, 16, 65, 91, 85, 19, 2, 13, 15, 69}, "da64ae", 8.935951E8f));
            case 6:
                this.mParams.setMarginStart(i2);
                return this;
            case 7:
                this.mParams.setMarginEnd(i2);
                return this;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{67, 8, 14, 89, 87, 22, 88, 70, 6, 88, 86, 18, 66, 20, 4, 94, 86, 21}, "6fe78a", true, true));
        }
    }

    public ConstraintProperties removeConstraints(int i) {
        switch (i) {
            case 1:
                this.mParams.leftToRight = -1;
                this.mParams.leftToLeft = -1;
                this.mParams.leftMargin = -1;
                this.mParams.goneLeftMargin = Integer.MIN_VALUE;
                return this;
            case 2:
                this.mParams.rightToRight = -1;
                this.mParams.rightToLeft = -1;
                this.mParams.rightMargin = -1;
                this.mParams.goneRightMargin = Integer.MIN_VALUE;
                return this;
            case 3:
                this.mParams.topToBottom = -1;
                this.mParams.topToTop = -1;
                this.mParams.topMargin = -1;
                this.mParams.goneTopMargin = Integer.MIN_VALUE;
                return this;
            case 4:
                this.mParams.bottomToTop = -1;
                this.mParams.bottomToBottom = -1;
                this.mParams.bottomMargin = -1;
                this.mParams.goneBottomMargin = Integer.MIN_VALUE;
                return this;
            case 5:
                this.mParams.baselineToBaseline = -1;
                return this;
            case 6:
                this.mParams.startToEnd = -1;
                this.mParams.startToStart = -1;
                this.mParams.setMarginStart(-1);
                this.mParams.goneStartMargin = Integer.MIN_VALUE;
                return this;
            case 7:
                this.mParams.endToStart = -1;
                this.mParams.endToEnd = -1;
                this.mParams.setMarginEnd(-1);
                this.mParams.goneEndMargin = Integer.MIN_VALUE;
                return this;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{68, 13, 90, 91, 90, 69, 95, 67, 82, 90, 91, 65, 69, 17, 80, 92, 91, 70}, "1c1552", 29304));
        }
    }

    public ConstraintProperties removeFromHorizontalChain() {
        int i = this.mParams.leftToRight;
        int i2 = this.mParams.rightToLeft;
        ConstraintLayout.LayoutParams layoutParams = this.mParams;
        if (i == -1 && i2 == -1) {
            int i3 = layoutParams.startToEnd;
            int i4 = this.mParams.endToStart;
            if (i3 != -1 || i4 != -1) {
                ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i3));
                ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i4));
                ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
                if (i3 != -1 && i4 != -1) {
                    constraintProperties.connect(7, i4, 6, 0);
                    constraintProperties2.connect(6, i, 7, 0);
                } else if (i != -1 || i4 != -1) {
                    int i5 = layoutParams2.rightToRight;
                    ConstraintLayout.LayoutParams layoutParams3 = this.mParams;
                    if (i5 != -1) {
                        constraintProperties.connect(7, layoutParams3.rightToRight, 7, 0);
                    } else {
                        int i6 = layoutParams3.leftToLeft;
                        ConstraintLayout.LayoutParams layoutParams4 = this.mParams;
                        if (i6 != -1) {
                            constraintProperties2.connect(6, layoutParams4.leftToLeft, 6, 0);
                        }
                    }
                }
            }
            removeConstraints(6);
            removeConstraints(7);
        } else {
            ConstraintProperties constraintProperties3 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i));
            ConstraintProperties constraintProperties4 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i2));
            ConstraintLayout.LayoutParams layoutParams5 = this.mParams;
            if (i != -1 && i2 != -1) {
                constraintProperties3.connect(2, i2, 1, 0);
                constraintProperties4.connect(1, i, 2, 0);
            } else if (i != -1 || i2 != -1) {
                int i7 = layoutParams5.rightToRight;
                ConstraintLayout.LayoutParams layoutParams6 = this.mParams;
                if (i7 != -1) {
                    constraintProperties3.connect(2, layoutParams6.rightToRight, 2, 0);
                } else {
                    int i8 = layoutParams6.leftToLeft;
                    ConstraintLayout.LayoutParams layoutParams7 = this.mParams;
                    if (i8 != -1) {
                        constraintProperties4.connect(1, layoutParams7.leftToLeft, 1, 0);
                    }
                }
            }
            removeConstraints(1);
            removeConstraints(2);
        }
        return this;
    }

    public ConstraintProperties removeFromVerticalChain() {
        int i = this.mParams.topToBottom;
        int i2 = this.mParams.bottomToTop;
        if (i != -1 || i2 != -1) {
            ConstraintProperties constraintProperties = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i));
            ConstraintProperties constraintProperties2 = new ConstraintProperties(((ViewGroup) this.mView.getParent()).findViewById(i2));
            ConstraintLayout.LayoutParams layoutParams = this.mParams;
            if (i != -1 && i2 != -1) {
                constraintProperties.connect(4, i2, 3, 0);
                constraintProperties2.connect(3, i, 4, 0);
            } else if (i != -1 || i2 != -1) {
                int i3 = layoutParams.bottomToBottom;
                ConstraintLayout.LayoutParams layoutParams2 = this.mParams;
                if (i3 != -1) {
                    constraintProperties.connect(4, layoutParams2.bottomToBottom, 4, 0);
                } else {
                    int i4 = layoutParams2.topToTop;
                    ConstraintLayout.LayoutParams layoutParams3 = this.mParams;
                    if (i4 != -1) {
                        constraintProperties2.connect(3, layoutParams3.topToTop, 3, 0);
                    }
                }
            }
        }
        removeConstraints(3);
        removeConstraints(4);
        return this;
    }

    public ConstraintProperties rotation(float f) {
        this.mView.setRotation(f);
        return this;
    }

    public ConstraintProperties rotationX(float f) {
        this.mView.setRotationX(f);
        return this;
    }

    public ConstraintProperties rotationY(float f) {
        this.mView.setRotationY(f);
        return this;
    }

    public ConstraintProperties scaleX(float f) {
        this.mView.setScaleY(f);
        return this;
    }

    public ConstraintProperties scaleY(float f) {
        return this;
    }

    public ConstraintProperties transformPivot(float f, float f2) {
        this.mView.setPivotX(f);
        this.mView.setPivotY(f2);
        return this;
    }

    public ConstraintProperties transformPivotX(float f) {
        this.mView.setPivotX(f);
        return this;
    }

    public ConstraintProperties transformPivotY(float f) {
        this.mView.setPivotY(f);
        return this;
    }

    public ConstraintProperties translation(float f, float f2) {
        this.mView.setTranslationX(f);
        this.mView.setTranslationY(f2);
        return this;
    }

    public ConstraintProperties translationX(float f) {
        this.mView.setTranslationX(f);
        return this;
    }

    public ConstraintProperties translationY(float f) {
        this.mView.setTranslationY(f);
        return this;
    }

    public ConstraintProperties translationZ(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.mView.setTranslationZ(f);
        }
        return this;
    }

    public ConstraintProperties verticalBias(float f) {
        this.mParams.verticalBias = f;
        return this;
    }

    public ConstraintProperties verticalChainStyle(int i) {
        this.mParams.verticalChainStyle = i;
        return this;
    }

    public ConstraintProperties verticalWeight(float f) {
        this.mParams.verticalWeight = f;
        return this;
    }

    public ConstraintProperties visibility(int i) {
        this.mView.setVisibility(i);
        return this;
    }
}

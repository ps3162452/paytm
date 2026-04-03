package androidx.constraintlayout.core;

import androidx.constraintlayout.core.ArrayRow;
import java.util.Arrays;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class ArrayLinkedVariables implements ArrayRow.ArrayRowVariables {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    static final int NONE = -1;
    private static float epsilon = 0.001f;
    protected final Cache mCache;
    private final ArrayRow mRow;
    int currentSize = 0;
    private int ROW_SIZE = 8;
    private SolverVariable candidate = null;
    private int[] mArrayIndices = new int[8];
    private int[] mArrayNextIndices = new int[8];
    private float[] mArrayValues = new float[8];
    private int mHead = -1;
    private int mLast = -1;
    private boolean mDidFillOnce = false;

    ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void add(SolverVariable solverVariable, float f, boolean z) {
        float f2 = epsilon;
        if (f <= (-f2) || f >= f2) {
            if (this.mHead == -1) {
                this.mHead = 0;
                this.mArrayValues[0] = f;
                this.mArrayIndices[0] = solverVariable.id;
                this.mArrayNextIndices[this.mHead] = -1;
                solverVariable.usageInRowCount++;
                solverVariable.addToRow(this.mRow);
                this.currentSize++;
                if (this.mDidFillOnce) {
                    return;
                }
                int i = this.mLast + 1;
                this.mLast = i;
                if (i >= this.mArrayIndices.length) {
                    this.mDidFillOnce = true;
                    this.mLast = r1.length - 1;
                    return;
                }
                return;
            }
            int i2 = this.mHead;
            int i3 = 0;
            int i4 = -1;
            while (i2 != -1 && i3 < this.currentSize) {
                if (this.mArrayIndices[i2] == solverVariable.id) {
                    float[] fArr = this.mArrayValues;
                    float f3 = fArr[i2] + f;
                    float f4 = epsilon;
                    if (f3 > (-f4) && f3 < f4) {
                        f3 = 0.0f;
                    }
                    fArr[i2] = f3;
                    if (f3 == 0.0f) {
                        if (i2 == this.mHead) {
                            this.mHead = this.mArrayNextIndices[i2];
                        } else {
                            int[] iArr = this.mArrayNextIndices;
                            iArr[i4] = iArr[i2];
                        }
                        if (z) {
                            solverVariable.removeFromRow(this.mRow);
                        }
                        if (this.mDidFillOnce) {
                            this.mLast = i2;
                        }
                        solverVariable.usageInRowCount--;
                        this.currentSize--;
                        return;
                    }
                    return;
                }
                int i5 = this.mArrayIndices[i2] < solverVariable.id ? i2 : i4;
                i3++;
                i2 = this.mArrayNextIndices[i2];
                i4 = i5;
            }
            int i6 = this.mLast;
            int length = i6 + 1;
            if (this.mDidFillOnce) {
                int[] iArr2 = this.mArrayIndices;
                length = iArr2[i6] == -1 ? this.mLast : iArr2.length;
            }
            int[] iArr3 = this.mArrayIndices;
            if (length >= iArr3.length && this.currentSize < iArr3.length) {
                int i7 = 0;
                while (true) {
                    int[] iArr4 = this.mArrayIndices;
                    if (i7 >= iArr4.length) {
                        break;
                    }
                    if (iArr4[i7] == -1) {
                        length = i7;
                        break;
                    }
                    i7++;
                }
            }
            int[] iArr5 = this.mArrayIndices;
            if (length >= iArr5.length) {
                length = iArr5.length;
                int i8 = this.ROW_SIZE * 2;
                this.ROW_SIZE = i8;
                this.mDidFillOnce = false;
                this.mLast = length - 1;
                this.mArrayValues = Arrays.copyOf(this.mArrayValues, i8);
                this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
                this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
            }
            this.mArrayIndices[length] = solverVariable.id;
            this.mArrayValues[length] = f;
            if (i4 != -1) {
                int[] iArr6 = this.mArrayNextIndices;
                iArr6[length] = iArr6[i4];
                iArr6[i4] = length;
            } else {
                this.mArrayNextIndices[length] = this.mHead;
                this.mHead = length;
            }
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (!this.mDidFillOnce) {
                this.mLast++;
            }
            if (this.mLast >= this.mArrayIndices.length) {
                this.mDidFillOnce = true;
                this.mLast = r1.length - 1;
            }
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void clear() {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
            if (solverVariable != null) {
                solverVariable.removeFromRow(this.mRow);
            }
            i = this.mArrayNextIndices[i];
        }
        this.mHead = -1;
        this.mLast = -1;
        this.mDidFillOnce = false;
        this.currentSize = 0;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public boolean contains(SolverVariable solverVariable) {
        if (this.mHead == -1) {
            return false;
        }
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            if (this.mArrayIndices[i] == solverVariable.id) {
                return true;
            }
            i = this.mArrayNextIndices[i];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void display() {
        int i = this.currentSize;
        System.out.print(NPStringFog.decode(new byte[]{77, 17}, "617ecf", -2001631730L));
        for (int i2 = 0; i2 < i; i2++) {
            SolverVariable variable = getVariable(i2);
            if (variable != null) {
                System.out.print(variable + NPStringFog.decode(new byte[]{17, 88, 70}, "1ef4ed", 1985755801L) + getVariableValue(i2) + " ");
            }
        }
        System.out.println(NPStringFog.decode(new byte[]{20, 74}, "473e5c", -3.58349584E8d));
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void divideByAmount(float f) {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            float[] fArr = this.mArrayValues;
            fArr[i] = fArr[i] / f;
            i = this.mArrayNextIndices[i];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float get(SolverVariable solverVariable) {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            if (this.mArrayIndices[i] == solverVariable.id) {
                return this.mArrayValues[i];
            }
            i = this.mArrayNextIndices[i];
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int getCurrentSize() {
        return this.currentSize;
    }

    public int getHead() {
        return this.mHead;
    }

    public final int getId(int i) {
        return this.mArrayIndices[i];
    }

    public final int getNextIndice(int i) {
        return this.mArrayNextIndices[i];
    }

    SolverVariable getPivotCandidate() {
        SolverVariable solverVariable = this.candidate;
        if (solverVariable == null) {
            int i = this.mHead;
            solverVariable = null;
            for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
                if (this.mArrayValues[i] < 0.0f) {
                    SolverVariable solverVariable2 = this.mCache.mIndexedVariables[this.mArrayIndices[i]];
                    if (solverVariable == null || solverVariable.strength < solverVariable2.strength) {
                        solverVariable = solverVariable2;
                    }
                }
                i = this.mArrayNextIndices[i];
            }
        }
        return solverVariable;
    }

    public final float getValue(int i) {
        return this.mArrayValues[i];
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public SolverVariable getVariable(int i) {
        int i2 = this.mHead;
        for (int i3 = 0; i2 != -1 && i3 < this.currentSize; i3++) {
            if (i3 == i) {
                return this.mCache.mIndexedVariables[this.mArrayIndices[i2]];
            }
            i2 = this.mArrayNextIndices[i2];
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float getVariableValue(int i) {
        int i2 = this.mHead;
        for (int i3 = 0; i2 != -1 && i3 < this.currentSize; i3++) {
            if (i3 == i) {
                return this.mArrayValues[i2];
            }
            i2 = this.mArrayNextIndices[i2];
        }
        return 0.0f;
    }

    boolean hasAtLeastOnePositiveVariable() {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            if (this.mArrayValues[i] > 0.0f) {
                return true;
            }
            i = this.mArrayNextIndices[i];
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int indexOf(SolverVariable solverVariable) {
        if (this.mHead == -1) {
            return -1;
        }
        int i = this.mHead;
        int i2 = 0;
        while (i != -1 && i2 < this.currentSize) {
            if (this.mArrayIndices[i] == solverVariable.id) {
                return i;
            }
            i2++;
            i = this.mArrayNextIndices[i];
        }
        return -1;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public void invert() {
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            float[] fArr = this.mArrayValues;
            fArr[i] = fArr[i] * (-1.0f);
            i = this.mArrayNextIndices[i];
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final void put(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            remove(solverVariable, true);
            return;
        }
        if (this.mHead == -1) {
            this.mHead = 0;
            this.mArrayValues[0] = f;
            this.mArrayIndices[0] = solverVariable.id;
            this.mArrayNextIndices[this.mHead] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (this.mDidFillOnce) {
                return;
            }
            int i = this.mLast + 1;
            this.mLast = i;
            if (i >= this.mArrayIndices.length) {
                this.mDidFillOnce = true;
                this.mLast = r1.length - 1;
                return;
            }
            return;
        }
        int i2 = this.mHead;
        int i3 = 0;
        int i4 = -1;
        while (i2 != -1 && i3 < this.currentSize) {
            if (this.mArrayIndices[i2] == solverVariable.id) {
                this.mArrayValues[i2] = f;
                return;
            }
            if (this.mArrayIndices[i2] < solverVariable.id) {
                i4 = i2;
            }
            i3++;
            i2 = this.mArrayNextIndices[i2];
        }
        int i5 = this.mLast;
        int length = i5 + 1;
        if (this.mDidFillOnce) {
            int[] iArr = this.mArrayIndices;
            length = iArr[i5] == -1 ? this.mLast : iArr.length;
        }
        int[] iArr2 = this.mArrayIndices;
        if (length >= iArr2.length && this.currentSize < iArr2.length) {
            int i6 = 0;
            while (true) {
                int[] iArr3 = this.mArrayIndices;
                if (i6 >= iArr3.length) {
                    break;
                }
                if (iArr3[i6] == -1) {
                    length = i6;
                    break;
                }
                i6++;
            }
        }
        int[] iArr4 = this.mArrayIndices;
        if (length >= iArr4.length) {
            length = iArr4.length;
            int i7 = this.ROW_SIZE * 2;
            this.ROW_SIZE = i7;
            this.mDidFillOnce = false;
            this.mLast = length - 1;
            this.mArrayValues = Arrays.copyOf(this.mArrayValues, i7);
            this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
            this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
        }
        this.mArrayIndices[length] = solverVariable.id;
        this.mArrayValues[length] = f;
        if (i4 != -1) {
            int[] iArr5 = this.mArrayNextIndices;
            iArr5[length] = iArr5[i4];
            iArr5[i4] = length;
        } else {
            this.mArrayNextIndices[length] = this.mHead;
            this.mHead = length;
        }
        solverVariable.usageInRowCount++;
        solverVariable.addToRow(this.mRow);
        int i8 = this.currentSize + 1;
        this.currentSize = i8;
        if (!this.mDidFillOnce) {
            this.mLast++;
        }
        int[] iArr6 = this.mArrayIndices;
        if (i8 >= iArr6.length) {
            this.mDidFillOnce = true;
        }
        if (this.mLast >= iArr6.length) {
            this.mDidFillOnce = true;
            this.mLast = iArr6.length - 1;
        }
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public final float remove(SolverVariable solverVariable, boolean z) {
        if (this.candidate == solverVariable) {
            this.candidate = null;
        }
        if (this.mHead == -1) {
            return 0.0f;
        }
        int i = this.mHead;
        int i2 = 0;
        int i3 = -1;
        while (i != -1 && i2 < this.currentSize) {
            if (this.mArrayIndices[i] == solverVariable.id) {
                if (i == this.mHead) {
                    this.mHead = this.mArrayNextIndices[i];
                } else {
                    int[] iArr = this.mArrayNextIndices;
                    iArr[i3] = iArr[i];
                }
                if (z) {
                    solverVariable.removeFromRow(this.mRow);
                }
                solverVariable.usageInRowCount--;
                this.currentSize--;
                this.mArrayIndices[i] = -1;
                if (this.mDidFillOnce) {
                    this.mLast = i;
                }
                return this.mArrayValues[i];
            }
            i2++;
            int i4 = i;
            i = this.mArrayNextIndices[i];
            i3 = i4;
        }
        return 0.0f;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public int sizeInBytes() {
        return (this.mArrayIndices.length * 4 * 3) + 0 + 36;
    }

    public String toString() {
        String str = "";
        int i = this.mHead;
        for (int i2 = 0; i != -1 && i2 < this.currentSize; i2++) {
            str = ((str + NPStringFog.decode(new byte[]{18, 20, 11, 25}, "2959fe", 17768)) + this.mArrayValues[i] + NPStringFog.decode(new byte[]{20, 11, 21}, "415545", 9.149653E8f)) + this.mCache.mIndexedVariables[this.mArrayIndices[i]];
            i = this.mArrayNextIndices[i];
        }
        return str;
    }

    @Override // androidx.constraintlayout.core.ArrayRow.ArrayRowVariables
    public float use(ArrayRow arrayRow, boolean z) {
        float f = get(arrayRow.variable);
        remove(arrayRow.variable, z);
        ArrayRow.ArrayRowVariables arrayRowVariables = arrayRow.variables;
        int currentSize = arrayRowVariables.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable variable = arrayRowVariables.getVariable(i);
            add(variable, arrayRowVariables.get(variable) * f, z);
        }
        return f;
    }
}

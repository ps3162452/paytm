package androidx.constraintlayout.core;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class ArrayRow implements LinearSystem.Row {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    public ArrayRowVariables variables;
    SolverVariable variable = null;
    float constantValue = 0.0f;
    boolean used = false;
    ArrayList<SolverVariable> variablesToUpdate = new ArrayList<>();
    boolean isSimpleDefinition = false;

    public interface ArrayRowVariables {
        void add(SolverVariable solverVariable, float f, boolean z);

        void clear();

        boolean contains(SolverVariable solverVariable);

        void display();

        void divideByAmount(float f);

        float get(SolverVariable solverVariable);

        int getCurrentSize();

        SolverVariable getVariable(int i);

        float getVariableValue(int i);

        int indexOf(SolverVariable solverVariable);

        void invert();

        void put(SolverVariable solverVariable, float f);

        float remove(SolverVariable solverVariable, boolean z);

        int sizeInBytes();

        float use(ArrayRow arrayRow, boolean z);
    }

    public ArrayRow() {
    }

    public ArrayRow(Cache cache) {
        this.variables = new ArrayLinkedVariables(this, cache);
    }

    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.constraintlayout.core.SolverVariable pickPivotInVariables(boolean[] r10, androidx.constraintlayout.core.SolverVariable r11) {
        /*
            r9 = this;
            r5 = 0
            r1 = 0
            androidx.constraintlayout.core.ArrayRow$ArrayRowVariables r0 = r9.variables
            int r6 = r0.getCurrentSize()
            r0 = 0
            r4 = r0
            r2 = r5
            r0 = r1
        Lc:
            if (r4 >= r6) goto L3f
            androidx.constraintlayout.core.ArrayRow$ArrayRowVariables r1 = r9.variables
            float r3 = r1.getVariableValue(r4)
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 >= 0) goto L40
            androidx.constraintlayout.core.ArrayRow$ArrayRowVariables r1 = r9.variables
            androidx.constraintlayout.core.SolverVariable r1 = r1.getVariable(r4)
            if (r10 == 0) goto L26
            int r7 = r1.id
            boolean r7 = r10[r7]
            if (r7 != 0) goto L40
        L26:
            if (r1 == r11) goto L40
            androidx.constraintlayout.core.SolverVariable$Type r7 = r1.mType
            androidx.constraintlayout.core.SolverVariable$Type r8 = androidx.constraintlayout.core.SolverVariable.Type.SLACK
            if (r7 == r8) goto L34
            androidx.constraintlayout.core.SolverVariable$Type r7 = r1.mType
            androidx.constraintlayout.core.SolverVariable$Type r8 = androidx.constraintlayout.core.SolverVariable.Type.ERROR
            if (r7 != r8) goto L40
        L34:
            int r7 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r7 >= 0) goto L40
            r0 = r1
            r1 = r3
        L3a:
            int r2 = r4 + 1
            r4 = r2
            r2 = r1
            goto Lc
        L3f:
            return r0
        L40:
            r1 = r2
            goto L3a
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.ArrayRow.pickPivotInVariables(boolean[], androidx.constraintlayout.core.SolverVariable):androidx.constraintlayout.core.SolverVariable");
    }

    public ArrayRow addError(LinearSystem linearSystem, int i) {
        this.variables.put(linearSystem.createErrorVariable(i, NPStringFog.decode(new byte[]{80, 22}, "5ffa90", 1.2360013E9f)), 1.0f);
        this.variables.put(linearSystem.createErrorVariable(i, NPStringFog.decode(new byte[]{4, 14}, "ac258d", -1891453511L)), -1.0f);
        return this;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void addError(SolverVariable solverVariable) {
        float f = 1.0f;
        if (solverVariable.strength != 1) {
            if (solverVariable.strength == 2) {
                f = 1000.0f;
            } else if (solverVariable.strength == 3) {
                f = 1000000.0f;
            } else if (solverVariable.strength == 4) {
                f = 1.0E9f;
            } else if (solverVariable.strength == 5) {
                f = 1.0E12f;
            }
        }
        this.variables.put(solverVariable, f);
    }

    ArrayRow addSingleError(SolverVariable solverVariable, int i) {
        this.variables.put(solverVariable, i);
        return this;
    }

    boolean chooseSubject(LinearSystem linearSystem) {
        boolean z = false;
        SolverVariable solverVariableChooseSubjectInVariables = chooseSubjectInVariables(linearSystem);
        if (solverVariableChooseSubjectInVariables == null) {
            z = true;
        } else {
            pivot(solverVariableChooseSubjectInVariables);
        }
        if (this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    androidx.constraintlayout.core.SolverVariable chooseSubjectInVariables(androidx.constraintlayout.core.LinearSystem r14) {
        /*
            r13 = this;
            r4 = 0
            r7 = 0
            r3 = 0
            r2 = 0
            r6 = 0
            r1 = 0
            androidx.constraintlayout.core.ArrayRow$ArrayRowVariables r0 = r13.variables
            int r9 = r0.getCurrentSize()
            r0 = 0
            r8 = r0
            r0 = r1
            r1 = r2
        L10:
            if (r8 >= r9) goto L7e
            androidx.constraintlayout.core.ArrayRow$ArrayRowVariables r2 = r13.variables
            float r2 = r2.getVariableValue(r8)
            androidx.constraintlayout.core.ArrayRow$ArrayRowVariables r5 = r13.variables
            androidx.constraintlayout.core.SolverVariable r5 = r5.getVariable(r8)
            androidx.constraintlayout.core.SolverVariable$Type r10 = r5.mType
            androidx.constraintlayout.core.SolverVariable$Type r11 = androidx.constraintlayout.core.SolverVariable.Type.UNRESTRICTED
            if (r10 != r11) goto L4e
            if (r7 != 0) goto L35
            boolean r3 = r13.isNew(r5, r14)
            r12 = r4
            r4 = r3
            r3 = r12
        L2d:
            int r6 = r8 + 1
            r8 = r6
            r7 = r5
            r6 = r4
            r4 = r3
            r3 = r2
            goto L10
        L35:
            int r10 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r10 <= 0) goto L41
            boolean r3 = r13.isNew(r5, r14)
            r12 = r4
            r4 = r3
            r3 = r12
            goto L2d
        L41:
            if (r6 != 0) goto L83
            boolean r10 = r13.isNew(r5, r14)
            if (r10 == 0) goto L83
            r3 = 1
            r12 = r4
            r4 = r3
            r3 = r12
            goto L2d
        L4e:
            if (r7 != 0) goto L83
            r10 = 0
            int r10 = (r2 > r10 ? 1 : (r2 == r10 ? 0 : -1))
            if (r10 >= 0) goto L83
            if (r4 != 0) goto L61
            boolean r0 = r13.isNew(r5, r14)
            r1 = r2
            r4 = r6
            r2 = r3
            r3 = r5
            r5 = r7
            goto L2d
        L61:
            int r10 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r10 <= 0) goto L6f
            boolean r0 = r13.isNew(r5, r14)
            r1 = r2
            r4 = r6
            r2 = r3
            r3 = r5
            r5 = r7
            goto L2d
        L6f:
            if (r0 != 0) goto L83
            boolean r10 = r13.isNew(r5, r14)
            if (r10 == 0) goto L83
            r0 = 1
            r1 = r2
            r4 = r6
            r2 = r3
            r3 = r5
            r5 = r7
            goto L2d
        L7e:
            if (r7 == 0) goto L81
        L80:
            return r7
        L81:
            r7 = r4
            goto L80
        L83:
            r2 = r3
            r5 = r7
            r3 = r4
            r4 = r6
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.ArrayRow.chooseSubjectInVariables(androidx.constraintlayout.core.LinearSystem):androidx.constraintlayout.core.SolverVariable");
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void clear() {
        this.variables.clear();
        this.variable = null;
        this.constantValue = 0.0f;
    }

    ArrayRow createRowCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2) {
        if (solverVariable2 == solverVariable3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable2, -2.0f);
        } else if (f == 0.5f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.constantValue = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.constantValue = i;
        } else if (f >= 1.0f) {
            this.variables.put(solverVariable4, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
            this.constantValue = -i2;
        } else {
            this.variables.put(solverVariable, (1.0f - f) * 1.0f);
            this.variables.put(solverVariable2, (1.0f - f) * (-1.0f));
            this.variables.put(solverVariable3, (-1.0f) * f);
            this.variables.put(solverVariable4, f * 1.0f);
            if (i > 0 || i2 > 0) {
                this.constantValue = ((-i) * (1.0f - f)) + (i2 * f);
            }
        }
        return this;
    }

    ArrayRow createRowDefinition(SolverVariable solverVariable, int i) {
        this.variable = solverVariable;
        solverVariable.computedValue = i;
        this.constantValue = i;
        this.isSimpleDefinition = true;
        return this;
    }

    ArrayRow createRowDimensionPercent(SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, f);
        return this;
    }

    public ArrayRow createRowDimensionRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.put(solverVariable, -1.0f);
        this.variables.put(solverVariable2, 1.0f);
        this.variables.put(solverVariable3, f);
        this.variables.put(solverVariable4, -f);
        return this;
    }

    public ArrayRow createRowEqualDimension(float f, float f2, float f3, SolverVariable solverVariable, int i, SolverVariable solverVariable2, int i2, SolverVariable solverVariable3, int i3, SolverVariable solverVariable4, int i4) {
        if (f2 == 0.0f || f == f3) {
            this.constantValue = ((-i) - i2) + i3 + i4;
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.constantValue = ((-i) - i2) + (i3 * f4) + (i4 * f4);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f4);
            this.variables.put(solverVariable3, -f4);
        }
        return this;
    }

    public ArrayRow createRowEqualMatchDimensions(float f, float f2, float f3, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4) {
        this.constantValue = 0.0f;
        if (f2 == 0.0f || f == f3) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else if (f == 0.0f) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        } else if (f3 == 0.0f) {
            this.variables.put(solverVariable3, 1.0f);
            this.variables.put(solverVariable4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable4, f4);
            this.variables.put(solverVariable3, -f4);
        }
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, int i) {
        if (i < 0) {
            this.constantValue = i * (-1);
            this.variables.put(solverVariable, 1.0f);
        } else {
            this.constantValue = i;
            this.variables.put(solverVariable, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowEquals(SolverVariable solverVariable, SolverVariable solverVariable2, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.constantValue = i;
        }
        if (z) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
        } else {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
        }
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, int i, SolverVariable solverVariable2) {
        this.constantValue = i;
        this.variables.put(solverVariable, -1.0f);
        return this;
    }

    public ArrayRow createRowGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.constantValue = i;
        }
        if (z) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, -1.0f);
        } else {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, 1.0f);
        }
        return this;
    }

    public ArrayRow createRowLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.constantValue = i;
        }
        if (z) {
            this.variables.put(solverVariable, 1.0f);
            this.variables.put(solverVariable2, -1.0f);
            this.variables.put(solverVariable3, 1.0f);
        } else {
            this.variables.put(solverVariable, -1.0f);
            this.variables.put(solverVariable2, 1.0f);
            this.variables.put(solverVariable3, -1.0f);
        }
        return this;
    }

    public ArrayRow createRowWithAngle(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f) {
        this.variables.put(solverVariable3, 0.5f);
        this.variables.put(solverVariable4, 0.5f);
        this.variables.put(solverVariable, -0.5f);
        this.variables.put(solverVariable2, -0.5f);
        this.constantValue = -f;
        return this;
    }

    void ensurePositiveConstant() {
        float f = this.constantValue;
        if (f < 0.0f) {
            this.constantValue = f * (-1.0f);
            this.variables.invert();
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getKey() {
        return this.variable;
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr) {
        return pickPivotInVariables(zArr, null);
    }

    boolean hasKeyVariable() {
        SolverVariable solverVariable = this.variable;
        return solverVariable != null && (solverVariable.mType == SolverVariable.Type.UNRESTRICTED || this.constantValue >= 0.0f);
    }

    boolean hasVariable(SolverVariable solverVariable) {
        return this.variables.contains(solverVariable);
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void initFromRow(LinearSystem.Row row) {
        if (row instanceof ArrayRow) {
            ArrayRow arrayRow = (ArrayRow) row;
            this.variable = null;
            this.variables.clear();
            for (int i = 0; i < arrayRow.variables.getCurrentSize(); i++) {
                this.variables.add(arrayRow.variables.getVariable(i), arrayRow.variables.getVariableValue(i), true);
            }
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public boolean isEmpty() {
        return this.variable == null && this.constantValue == 0.0f && this.variables.getCurrentSize() == 0;
    }

    public SolverVariable pickPivot(SolverVariable solverVariable) {
        return pickPivotInVariables(null, solverVariable);
    }

    void pivot(SolverVariable solverVariable) {
        SolverVariable solverVariable2 = this.variable;
        if (solverVariable2 != null) {
            this.variables.put(solverVariable2, -1.0f);
            this.variable.definitionId = -1;
            this.variable = null;
        }
        float fRemove = this.variables.remove(solverVariable, true) * (-1.0f);
        this.variable = solverVariable;
        if (fRemove == 1.0f) {
            return;
        }
        this.constantValue /= fRemove;
        this.variables.divideByAmount(fRemove);
    }

    public void reset() {
        this.variable = null;
        this.variables.clear();
        this.constantValue = 0.0f;
        this.isSimpleDefinition = false;
    }

    int sizeInBytes() {
        return (this.variable != null ? 4 : 0) + 4 + 4 + this.variables.sizeInBytes();
    }

    String toReadableString() {
        String str;
        boolean z;
        float f;
        String str2 = (this.variable == null ? "" + NPStringFog.decode(new byte[]{4}, "443c35", 1954045869L) : "" + this.variable) + NPStringFog.decode(new byte[]{23, 8, 21}, "755062", 12499);
        if (this.constantValue != 0.0f) {
            str = str2 + this.constantValue;
            z = true;
        } else {
            str = str2;
            z = false;
        }
        int currentSize = this.variables.getCurrentSize();
        for (int i = 0; i < currentSize; i++) {
            SolverVariable variable = this.variables.getVariable(i);
            if (variable != null) {
                float variableValue = this.variables.getVariableValue(i);
                if (variableValue != 0.0f) {
                    String string = variable.toString();
                    if (z) {
                        if (variableValue > 0.0f) {
                            str = str + NPStringFog.decode(new byte[]{70, 28, 69}, "f7e749", -8.4471085E8f);
                            f = variableValue;
                        } else {
                            str = str + NPStringFog.decode(new byte[]{19, 29, 24}, "30889b", -9.50460361E8d);
                            f = variableValue * (-1.0f);
                        }
                    } else if (variableValue < 0.0f) {
                        str = str + NPStringFog.decode(new byte[]{21, 24}, "88d79f", -46974932L);
                        f = variableValue * (-1.0f);
                    } else {
                        f = variableValue;
                    }
                    str = f == 1.0f ? str + string : str + f + " " + string;
                    z = true;
                }
            }
        }
        if (z) {
            return str;
        }
        return str + NPStringFog.decode(new byte[]{8, 74, 8}, "8d8a9b", true, false);
    }

    public String toString() {
        return toReadableString();
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z) {
        if (solverVariable == null || !solverVariable.isFinalValue) {
            return;
        }
        float f = this.variables.get(solverVariable);
        this.constantValue = (f * solverVariable.computedValue) + this.constantValue;
        this.variables.remove(solverVariable, z);
        if (z) {
            solverVariable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z) {
        float fUse = this.variables.use(arrayRow, z);
        this.constantValue = (fUse * arrayRow.constantValue) + this.constantValue;
        if (z) {
            arrayRow.variable.removeFromRow(this);
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variable != null && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    public void updateFromSynonymVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z) {
        if (solverVariable == null || !solverVariable.isSynonym) {
            return;
        }
        float f = this.variables.get(solverVariable);
        this.constantValue += solverVariable.synonymDelta * f;
        this.variables.remove(solverVariable, z);
        if (z) {
            solverVariable.removeFromRow(this);
        }
        this.variables.add(linearSystem.mCache.mIndexedVariables[solverVariable.synonym], f, z);
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }

    @Override // androidx.constraintlayout.core.LinearSystem.Row
    public void updateFromSystem(LinearSystem linearSystem) {
        boolean z;
        if (linearSystem.mRows.length == 0) {
            return;
        }
        boolean z2 = false;
        while (!z2) {
            int currentSize = this.variables.getCurrentSize();
            for (int i = 0; i < currentSize; i++) {
                SolverVariable variable = this.variables.getVariable(i);
                if (variable.definitionId != -1 || variable.isFinalValue || variable.isSynonym) {
                    this.variablesToUpdate.add(variable);
                }
            }
            int size = this.variablesToUpdate.size();
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    SolverVariable solverVariable = this.variablesToUpdate.get(i2);
                    if (solverVariable.isFinalValue) {
                        updateFromFinalVariable(linearSystem, solverVariable, true);
                    } else if (solverVariable.isSynonym) {
                        updateFromSynonymVariable(linearSystem, solverVariable, true);
                    } else {
                        updateFromRow(linearSystem, linearSystem.mRows[solverVariable.definitionId], true);
                    }
                }
                this.variablesToUpdate.clear();
                z = z2;
            } else {
                z = true;
            }
            z2 = z;
        }
        if (LinearSystem.SIMPLIFY_SYNONYMS && this.variable != null && this.variables.getCurrentSize() == 0) {
            this.isSimpleDefinition = true;
            linearSystem.hasSimpleDefinition = true;
        }
    }
}

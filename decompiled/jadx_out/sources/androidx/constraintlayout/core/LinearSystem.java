package androidx.constraintlayout.core;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class LinearSystem {
    public static final boolean DEBUG = false;
    private static final boolean DEBUG_CONSTRAINTS = false;
    public static final boolean FULL_DEBUG = false;
    public static final boolean MEASURE = false;
    public static Metrics sMetrics;
    final Cache mCache;
    private Row mGoal;
    ArrayRow[] mRows;
    private Row mTempGoal;
    public static boolean USE_DEPENDENCY_ORDERING = false;
    public static boolean USE_BASIC_SYNONYMS = true;
    public static boolean SIMPLIFY_SYNONYMS = true;
    public static boolean USE_SYNONYMS = true;
    public static boolean SKIP_COLUMNS = true;
    public static boolean OPTIMIZED_ENGINE = false;
    private static int POOL_SIZE = 1000;
    public static long ARRAY_ROW_CREATION = 0;
    public static long OPTIMIZED_ARRAY_ROW_CREATION = 0;
    public boolean hasSimpleDefinition = false;
    int mVariablesID = 0;
    private HashMap<String, SolverVariable> mVariables = null;
    private int TABLE_SIZE = 32;
    private int mMaxColumns = 32;
    public boolean graphOptimizer = false;
    public boolean newgraphOptimizer = false;
    private boolean[] mAlreadyTestedCandidates = new boolean[32];
    int mNumColumns = 1;
    int mNumRows = 0;
    private int mMaxRows = 32;
    private SolverVariable[] mPoolVariables = new SolverVariable[POOL_SIZE];
    private int mPoolVariablesCount = 0;

    interface Row {
        void addError(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr);

        void initFromRow(Row row);

        boolean isEmpty();

        void updateFromFinalVariable(LinearSystem linearSystem, SolverVariable solverVariable, boolean z);

        void updateFromRow(LinearSystem linearSystem, ArrayRow arrayRow, boolean z);

        void updateFromSystem(LinearSystem linearSystem);
    }

    class ValuesRow extends ArrayRow {
        final LinearSystem this$0;

        public ValuesRow(LinearSystem linearSystem, Cache cache) {
            this.this$0 = linearSystem;
            this.variables = new SolverVariableValues(this, cache);
        }
    }

    public LinearSystem() {
        this.mRows = null;
        this.mRows = new ArrayRow[32];
        releaseRows();
        Cache cache = new Cache();
        this.mCache = cache;
        this.mGoal = new PriorityGoalRow(cache);
        if (OPTIMIZED_ENGINE) {
            this.mTempGoal = new ValuesRow(this, cache);
        } else {
            this.mTempGoal = new ArrayRow(cache);
        }
    }

    private SolverVariable acquireSolverVariable(SolverVariable.Type type, String str) {
        SolverVariable solverVariable;
        SolverVariable solverVariableAcquire = this.mCache.solverVariablePool.acquire();
        if (solverVariableAcquire == null) {
            SolverVariable solverVariable2 = new SolverVariable(type, str);
            solverVariable2.setType(type, str);
            solverVariable = solverVariable2;
        } else {
            solverVariableAcquire.reset();
            solverVariableAcquire.setType(type, str);
            solverVariable = solverVariableAcquire;
        }
        int i = this.mPoolVariablesCount;
        int i2 = POOL_SIZE;
        if (i >= i2) {
            int i3 = i2 * 2;
            POOL_SIZE = i3;
            this.mPoolVariables = (SolverVariable[]) Arrays.copyOf(this.mPoolVariables, i3);
        }
        SolverVariable[] solverVariableArr = this.mPoolVariables;
        int i4 = this.mPoolVariablesCount;
        this.mPoolVariablesCount = i4 + 1;
        solverVariableArr[i4] = solverVariable;
        return solverVariable;
    }

    private void addError(ArrayRow arrayRow) {
        arrayRow.addError(this, 0);
    }

    private final void addRow(ArrayRow arrayRow) {
        int i;
        int i2;
        if (SIMPLIFY_SYNONYMS && arrayRow.isSimpleDefinition) {
            arrayRow.variable.setFinalValue(this, arrayRow.constantValue);
        } else {
            this.mRows[this.mNumRows] = arrayRow;
            arrayRow.variable.definitionId = this.mNumRows;
            this.mNumRows++;
            arrayRow.variable.updateReferencesWithNewDefinition(this, arrayRow);
        }
        if (SIMPLIFY_SYNONYMS && this.hasSimpleDefinition) {
            int i3 = 0;
            while (i3 < this.mNumRows) {
                if (this.mRows[i3] == null) {
                    System.out.println(NPStringFog.decode(new byte[]{101, 103, 127}, "239e88", 14483));
                }
                ArrayRow[] arrayRowArr = this.mRows;
                if (arrayRowArr[i3] == null || !arrayRowArr[i3].isSimpleDefinition) {
                    i = i3;
                } else {
                    ArrayRow arrayRow2 = this.mRows[i3];
                    arrayRow2.variable.setFinalValue(this, arrayRow2.constantValue);
                    if (OPTIMIZED_ENGINE) {
                        this.mCache.optimizedArrayRowPool.release(arrayRow2);
                    } else {
                        this.mCache.arrayRowPool.release(arrayRow2);
                    }
                    this.mRows[i3] = null;
                    int i4 = i3 + 1;
                    int i5 = i3 + 1;
                    while (true) {
                        i2 = this.mNumRows;
                        if (i5 >= i2) {
                            break;
                        }
                        ArrayRow[] arrayRowArr2 = this.mRows;
                        arrayRowArr2[i5 - 1] = arrayRowArr2[i5];
                        if (arrayRowArr2[i5 - 1].variable.definitionId == i5) {
                            this.mRows[i5 - 1].variable.definitionId = i5 - 1;
                        }
                        int i6 = i5;
                        i5++;
                        i4 = i6;
                    }
                    if (i4 < i2) {
                        this.mRows[i4] = null;
                    }
                    this.mNumRows = i2 - 1;
                    i = i3 - 1;
                }
                i3 = i + 1;
            }
            this.hasSimpleDefinition = false;
        }
    }

    private void addSingleError(ArrayRow arrayRow, int i) {
        addSingleError(arrayRow, i, 0);
    }

    private void computeValues() {
        for (int i = 0; i < this.mNumRows; i++) {
            ArrayRow arrayRow = this.mRows[i];
            arrayRow.variable.computedValue = arrayRow.constantValue;
        }
    }

    public static ArrayRow createRowDimensionPercent(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, float f) {
        return linearSystem.createRow().createRowDimensionPercent(solverVariable, solverVariable2, f);
    }

    private SolverVariable createVariable(String str, SolverVariable.Type type) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.variables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(type, null);
        solverVariableAcquireSolverVariable.setName(str);
        int i = this.mVariablesID + 1;
        this.mVariablesID = i;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = i;
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        this.mVariables.put(str, solverVariableAcquireSolverVariable);
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    private void displayRows() {
        displaySolverVariables();
        String str = "";
        for (int i = 0; i < this.mNumRows; i++) {
            str = (str + this.mRows[i]) + "\n";
        }
        System.out.println(str + this.mGoal + "\n");
    }

    private void displaySolverVariables() {
        System.out.println(NPStringFog.decode(new byte[]{33, 15, 23, 67, 14, 89, 28, 70, 54, 92, 21, 75, 69, 78}, "efd3b8", -11110) + this.mNumRows + NPStringFog.decode(new byte[]{65}, "961770", 7.76806457E8d) + this.mNumColumns + NPStringFog.decode(new byte[]{74, 104}, "cbfe7e", 1.4253612E9f));
    }

    private int enforceBFS(Row row) throws Exception {
        boolean z;
        boolean z2;
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= this.mNumRows) {
                z = false;
                break;
            }
            if (this.mRows[i2].variable.mType != SolverVariable.Type.UNRESTRICTED && this.mRows[i2].constantValue < 0.0f) {
                z = true;
                break;
            }
            i2++;
        }
        if (!z) {
            return 0;
        }
        boolean z3 = false;
        int i3 = 0;
        while (!z3) {
            Metrics metrics = sMetrics;
            if (metrics != null) {
                metrics.bfs++;
            }
            int i4 = i3 + 1;
            float f = Float.MAX_VALUE;
            int i5 = 0;
            int i6 = -1;
            int i7 = -1;
            for (int i8 = 0; i8 < this.mNumRows; i8++) {
                ArrayRow arrayRow = this.mRows[i8];
                if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && !arrayRow.isSimpleDefinition && arrayRow.constantValue < 0.0f) {
                    if (SKIP_COLUMNS) {
                        int currentSize = arrayRow.variables.getCurrentSize();
                        float f2 = f;
                        int i9 = i6;
                        int i10 = i7;
                        int i11 = i5;
                        for (int i12 = 0; i12 < currentSize; i12++) {
                            SolverVariable variable = arrayRow.variables.getVariable(i12);
                            float f3 = arrayRow.variables.get(variable);
                            if (f3 > 0.0f) {
                                int i13 = 0;
                                while (i13 < 9) {
                                    float f4 = variable.strengthVector[i13] / f3;
                                    if ((f4 >= f2 || i13 != i11) && i13 <= i11) {
                                        f4 = f2;
                                    } else {
                                        i11 = i13;
                                        i10 = variable.id;
                                        i9 = i8;
                                    }
                                    i13++;
                                    f2 = f4;
                                }
                            }
                        }
                        i5 = i11;
                        f = f2;
                        i7 = i10;
                        i6 = i9;
                    } else {
                        for (int i14 = 1; i14 < this.mNumColumns; i14++) {
                            SolverVariable solverVariable = this.mCache.mIndexedVariables[i14];
                            float f5 = arrayRow.variables.get(solverVariable);
                            if (f5 > 0.0f) {
                                int i15 = i6;
                                int i16 = i7;
                                int i17 = i5;
                                float f6 = f;
                                int i18 = 0;
                                float f7 = f6;
                                while (i18 < 9) {
                                    float f8 = solverVariable.strengthVector[i18] / f5;
                                    if ((f8 >= f7 || i18 != i17) && i18 <= i17) {
                                        f8 = f7;
                                        i = i15;
                                    } else {
                                        i17 = i18;
                                        i16 = i14;
                                        i = i8;
                                    }
                                    i18++;
                                    i15 = i;
                                    f7 = f8;
                                }
                                i5 = i17;
                                f = f7;
                                i7 = i16;
                                i6 = i15;
                            }
                        }
                    }
                }
            }
            if (i6 != -1) {
                ArrayRow arrayRow2 = this.mRows[i6];
                arrayRow2.variable.definitionId = -1;
                Metrics metrics2 = sMetrics;
                if (metrics2 != null) {
                    metrics2.pivots++;
                }
                arrayRow2.pivot(this.mCache.mIndexedVariables[i7]);
                arrayRow2.variable.definitionId = i6;
                arrayRow2.variable.updateReferencesWithNewDefinition(this, arrayRow2);
                z2 = z3;
            } else {
                z2 = true;
            }
            if (i4 > this.mNumColumns / 2) {
                z2 = true;
            }
            z3 = z2;
            i3 = i4;
        }
        return i3;
    }

    private String getDisplaySize(int i) {
        int i2 = ((i * 4) / 1024) / 1024;
        if (i2 > 0) {
            return "" + i2 + NPStringFog.decode(new byte[]{23, 41, 4}, "7dfc76", -2.0944324E9f);
        }
        int i3 = (i * 4) / 1024;
        if (i3 > 0) {
            return "" + i3 + NPStringFog.decode(new byte[]{70, 42, 85}, "fa78f7", 26571);
        }
        return "" + (i * 4) + NPStringFog.decode(new byte[]{22, 7, 75, 71, 6, 66}, "6e23c1", 4.2139104E8f);
    }

    private String getDisplayStrength(int i) {
        return i == 1 ? NPStringFog.decode(new byte[]{126, 44, 54}, "2ca141", 1628518372L) : i == 2 ? NPStringFog.decode(new byte[]{121, 113, 124, 124, 96, 44}, "44855a", -1.239842566E9d) : i == 3 ? NPStringFog.decode(new byte[]{45, 45, 119, 127}, "ed0737", 723160890L) : i == 4 ? NPStringFog.decode(new byte[]{122, 43, 126, 121, 116, 53, 102}, "2b911f", -29844) : i == 5 ? NPStringFog.decode(new byte[]{36, 103, 100, 39, 41, 40, 53, 111}, "a61fea", true, true) : i == 8 ? NPStringFog.decode(new byte[]{39, 125, 111, 115, 113}, "a47650", 1.2347326E8f) : i == 6 ? NPStringFog.decode(new byte[]{118, 114, 103, 51, 123, 124, 102}, "435a29", false) : NPStringFog.decode(new byte[]{125, 121, 125, 117}, "3630cb", -8.282284E8f);
    }

    public static Metrics getMetrics() {
        return sMetrics;
    }

    private void increaseTableSize() {
        int i = this.TABLE_SIZE * 2;
        this.TABLE_SIZE = i;
        this.mRows = (ArrayRow[]) Arrays.copyOf(this.mRows, i);
        Cache cache = this.mCache;
        cache.mIndexedVariables = (SolverVariable[]) Arrays.copyOf(cache.mIndexedVariables, this.TABLE_SIZE);
        int i2 = this.TABLE_SIZE;
        this.mAlreadyTestedCandidates = new boolean[i2];
        this.mMaxColumns = i2;
        this.mMaxRows = i2;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.tableSizeIncrease++;
            Metrics metrics2 = sMetrics;
            metrics2.maxTableSize = Math.max(metrics2.maxTableSize, this.TABLE_SIZE);
            Metrics metrics3 = sMetrics;
            metrics3.lastTableSize = metrics3.maxTableSize;
        }
    }

    private final int optimize(Row row, boolean z) {
        boolean z2;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.optimize++;
        }
        boolean z3 = false;
        for (int i = 0; i < this.mNumColumns; i++) {
            this.mAlreadyTestedCandidates[i] = false;
        }
        int i2 = 0;
        while (!z3) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.iterations++;
            }
            int i3 = i2 + 1;
            if (i3 >= this.mNumColumns * 2) {
                return i3;
            }
            if (row.getKey() != null) {
                this.mAlreadyTestedCandidates[row.getKey().id] = true;
            }
            SolverVariable pivotCandidate = row.getPivotCandidate(this, this.mAlreadyTestedCandidates);
            if (pivotCandidate != null) {
                if (this.mAlreadyTestedCandidates[pivotCandidate.id]) {
                    return i3;
                }
                this.mAlreadyTestedCandidates[pivotCandidate.id] = true;
            }
            if (pivotCandidate != null) {
                float f = Float.MAX_VALUE;
                int i4 = -1;
                for (int i5 = 0; i5 < this.mNumRows; i5++) {
                    ArrayRow arrayRow = this.mRows[i5];
                    if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && !arrayRow.isSimpleDefinition && arrayRow.hasVariable(pivotCandidate)) {
                        float f2 = arrayRow.variables.get(pivotCandidate);
                        if (f2 < 0.0f) {
                            float f3 = (-arrayRow.constantValue) / f2;
                            if (f3 < f) {
                                f = f3;
                                i4 = i5;
                            }
                        }
                    }
                }
                if (i4 > -1) {
                    ArrayRow arrayRow2 = this.mRows[i4];
                    arrayRow2.variable.definitionId = -1;
                    Metrics metrics3 = sMetrics;
                    if (metrics3 != null) {
                        metrics3.pivots++;
                    }
                    arrayRow2.pivot(pivotCandidate);
                    arrayRow2.variable.definitionId = i4;
                    arrayRow2.variable.updateReferencesWithNewDefinition(this, arrayRow2);
                }
                z2 = z3;
            } else {
                z2 = true;
            }
            z3 = z2;
            i2 = i3;
        }
        return i2;
    }

    private void releaseRows() {
        int i = 0;
        if (OPTIMIZED_ENGINE) {
            while (i < this.mNumRows) {
                ArrayRow arrayRow = this.mRows[i];
                if (arrayRow != null) {
                    this.mCache.optimizedArrayRowPool.release(arrayRow);
                }
                this.mRows[i] = null;
                i++;
            }
            return;
        }
        while (i < this.mNumRows) {
            ArrayRow arrayRow2 = this.mRows[i];
            if (arrayRow2 != null) {
                this.mCache.arrayRowPool.release(arrayRow2);
            }
            this.mRows[i] = null;
            i++;
        }
    }

    public void addCenterPoint(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f, int i) {
        SolverVariable solverVariableCreateObjectVariable = createObjectVariable(constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT));
        SolverVariable solverVariableCreateObjectVariable2 = createObjectVariable(constraintWidget.getAnchor(ConstraintAnchor.Type.TOP));
        SolverVariable solverVariableCreateObjectVariable3 = createObjectVariable(constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT));
        SolverVariable solverVariableCreateObjectVariable4 = createObjectVariable(constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM));
        SolverVariable solverVariableCreateObjectVariable5 = createObjectVariable(constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT));
        SolverVariable solverVariableCreateObjectVariable6 = createObjectVariable(constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP));
        SolverVariable solverVariableCreateObjectVariable7 = createObjectVariable(constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT));
        SolverVariable solverVariableCreateObjectVariable8 = createObjectVariable(constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM));
        ArrayRow arrayRowCreateRow = createRow();
        double dSin = Math.sin(f);
        double d = i;
        Double.isNaN(d);
        arrayRowCreateRow.createRowWithAngle(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, solverVariableCreateObjectVariable8, (float) (dSin * d));
        addConstraint(arrayRowCreateRow);
        ArrayRow arrayRowCreateRow2 = createRow();
        double dCos = Math.cos(f);
        double d2 = i;
        Double.isNaN(d2);
        arrayRowCreateRow2.createRowWithAngle(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, solverVariableCreateObjectVariable7, (float) (dCos * d2));
        addConstraint(arrayRowCreateRow2);
    }

    public void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int i, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int i2, int i3) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowCentering(solverVariable, solverVariable2, i, f, solverVariable3, solverVariable4, i2);
        if (i3 != 8) {
            arrayRowCreateRow.addError(this, i3);
        }
        addConstraint(arrayRowCreateRow);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void addConstraint(androidx.constraintlayout.core.ArrayRow r9) {
        /*
            r8 = this;
            r0 = 1
            r1 = 0
            r6 = 1
            if (r9 != 0) goto L7
        L6:
            return
        L7:
            androidx.constraintlayout.core.Metrics r2 = androidx.constraintlayout.core.LinearSystem.sMetrics
            if (r2 == 0) goto L1b
            long r4 = r2.constraints
            long r4 = r4 + r6
            r2.constraints = r4
            boolean r2 = r9.isSimpleDefinition
            if (r2 == 0) goto L1b
            androidx.constraintlayout.core.Metrics r2 = androidx.constraintlayout.core.LinearSystem.sMetrics
            long r4 = r2.simpleconstraints
            long r4 = r4 + r6
            r2.simpleconstraints = r4
        L1b:
            int r2 = r8.mNumRows
            int r2 = r2 + 1
            int r3 = r8.mMaxRows
            if (r2 >= r3) goto L2b
            int r2 = r8.mNumColumns
            int r2 = r2 + 1
            int r3 = r8.mMaxColumns
            if (r2 < r3) goto L2e
        L2b:
            r8.increaseTableSize()
        L2e:
            boolean r2 = r9.isSimpleDefinition
            if (r2 != 0) goto Lab
            r9.updateFromSystem(r8)
            boolean r2 = r9.isEmpty()
            if (r2 != 0) goto L6
            r9.ensurePositiveConstant()
            boolean r2 = r9.chooseSubject(r8)
            if (r2 == 0) goto La9
            androidx.constraintlayout.core.SolverVariable r2 = r8.createExtraVariable()
            r9.variable = r2
            int r3 = r8.mNumRows
            r8.addRow(r9)
            int r4 = r8.mNumRows
            int r3 = r3 + 1
            if (r4 != r3) goto La9
            androidx.constraintlayout.core.LinearSystem$Row r1 = r8.mTempGoal
            r1.initFromRow(r9)
            androidx.constraintlayout.core.LinearSystem$Row r1 = r8.mTempGoal
            r8.optimize(r1, r0)
            int r1 = r2.definitionId
            r3 = -1
            if (r1 != r3) goto L94
            androidx.constraintlayout.core.SolverVariable r1 = r9.variable
            if (r1 != r2) goto L7a
            androidx.constraintlayout.core.SolverVariable r1 = r9.pickPivot(r2)
            if (r1 == 0) goto L7a
            androidx.constraintlayout.core.Metrics r2 = androidx.constraintlayout.core.LinearSystem.sMetrics
            if (r2 == 0) goto L77
            long r4 = r2.pivots
            long r4 = r4 + r6
            r2.pivots = r4
        L77:
            r9.pivot(r1)
        L7a:
            boolean r1 = r9.isSimpleDefinition
            if (r1 != 0) goto L83
            androidx.constraintlayout.core.SolverVariable r1 = r9.variable
            r1.updateReferencesWithNewDefinition(r8, r9)
        L83:
            boolean r1 = androidx.constraintlayout.core.LinearSystem.OPTIMIZED_ENGINE
            if (r1 == 0) goto La1
            androidx.constraintlayout.core.Cache r1 = r8.mCache
            androidx.constraintlayout.core.Pools$Pool<androidx.constraintlayout.core.ArrayRow> r1 = r1.optimizedArrayRowPool
            r1.release(r9)
        L8e:
            int r1 = r8.mNumRows
            int r1 = r1 + (-1)
            r8.mNumRows = r1
        L94:
            boolean r1 = r9.hasKeyVariable()
            if (r1 == 0) goto L6
        L9a:
            if (r0 != 0) goto L6
            r8.addRow(r9)
            goto L6
        La1:
            androidx.constraintlayout.core.Cache r1 = r8.mCache
            androidx.constraintlayout.core.Pools$Pool<androidx.constraintlayout.core.ArrayRow> r1 = r1.arrayRowPool
            r1.release(r9)
            goto L8e
        La9:
            r0 = r1
            goto L94
        Lab:
            r0 = r1
            goto L9a
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.LinearSystem.addConstraint(androidx.constraintlayout.core.ArrayRow):void");
    }

    public ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        if (USE_BASIC_SYNONYMS && i2 == 8 && solverVariable2.isFinalValue && solverVariable.definitionId == -1) {
            solverVariable.setFinalValue(this, solverVariable2.computedValue + i);
            return null;
        }
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowEquals(solverVariable, solverVariable2, i);
        if (i2 != 8) {
            arrayRowCreateRow.addError(this, i2);
        }
        addConstraint(arrayRowCreateRow);
        return arrayRowCreateRow;
    }

    public void addEquality(SolverVariable solverVariable, int i) {
        if (USE_BASIC_SYNONYMS && solverVariable.definitionId == -1) {
            solverVariable.setFinalValue(this, i);
            for (int i2 = 0; i2 < this.mVariablesID + 1; i2++) {
                SolverVariable solverVariable2 = this.mCache.mIndexedVariables[i2];
                if (solverVariable2 != null && solverVariable2.isSynonym && solverVariable2.synonym == solverVariable.id) {
                    solverVariable2.setFinalValue(this, i + solverVariable2.synonymDelta);
                }
            }
            return;
        }
        int i3 = solverVariable.definitionId;
        if (solverVariable.definitionId == -1) {
            ArrayRow arrayRowCreateRow = createRow();
            arrayRowCreateRow.createRowDefinition(solverVariable, i);
            addConstraint(arrayRowCreateRow);
            return;
        }
        ArrayRow arrayRow = this.mRows[i3];
        if (arrayRow.isSimpleDefinition) {
            arrayRow.constantValue = i;
            return;
        }
        if (arrayRow.variables.getCurrentSize() == 0) {
            arrayRow.isSimpleDefinition = true;
            arrayRow.constantValue = i;
        } else {
            ArrayRow arrayRowCreateRow2 = createRow();
            arrayRowCreateRow2.createRowEquals(solverVariable, i);
            addConstraint(arrayRowCreateRow2);
        }
    }

    public void addGreaterBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i);
        addConstraint(arrayRowCreateRow);
    }

    public void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i);
        if (i2 != 8) {
            addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)), i2);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addLowerBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, int i, boolean z) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i);
        addConstraint(arrayRowCreateRow);
    }

    public void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int i, int i2) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, i);
        if (i2 != 8) {
            addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)), i2);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f, int i) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowDimensionRatio(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        if (i != 8) {
            arrayRowCreateRow.addError(this, i);
        }
        addConstraint(arrayRowCreateRow);
    }

    void addSingleError(ArrayRow arrayRow, int i, int i2) {
        arrayRow.addSingleError(createErrorVariable(i2, null), i);
    }

    public void addSynonym(SolverVariable solverVariable, SolverVariable solverVariable2, int i) {
        if (solverVariable.definitionId != -1 || i != 0) {
            addEquality(solverVariable, solverVariable2, i, 8);
            return;
        }
        if (solverVariable2.isSynonym) {
            i = (int) (i + solverVariable2.synonymDelta);
            solverVariable2 = this.mCache.mIndexedVariables[solverVariable2.synonym];
        }
        if (!solverVariable.isSynonym) {
            solverVariable.setSynonym(this, solverVariable2, 0.0f);
        } else {
            SolverVariable solverVariable3 = this.mCache.mIndexedVariables[solverVariable.synonym];
        }
    }

    final void cleanupRows() {
        int i;
        int i2 = 0;
        while (i2 < this.mNumRows) {
            ArrayRow arrayRow = this.mRows[i2];
            if (arrayRow.variables.getCurrentSize() == 0) {
                arrayRow.isSimpleDefinition = true;
            }
            if (arrayRow.isSimpleDefinition) {
                arrayRow.variable.computedValue = arrayRow.constantValue;
                arrayRow.variable.removeFromRow(arrayRow);
                int i3 = i2;
                while (true) {
                    i = this.mNumRows;
                    if (i3 >= i - 1) {
                        break;
                    }
                    ArrayRow[] arrayRowArr = this.mRows;
                    arrayRowArr[i3] = arrayRowArr[i3 + 1];
                    i3++;
                }
                this.mRows[i - 1] = null;
                this.mNumRows = i - 1;
                i2--;
                if (OPTIMIZED_ENGINE) {
                    this.mCache.optimizedArrayRowPool.release(arrayRow);
                } else {
                    this.mCache.arrayRowPool.release(arrayRow);
                }
            }
            i2++;
        }
    }

    public SolverVariable createErrorVariable(int i, String str) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.errors++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.ERROR, str);
        int i2 = this.mVariablesID + 1;
        this.mVariablesID = i2;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = i2;
        solverVariableAcquireSolverVariable.strength = i;
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        this.mGoal.addError(solverVariableAcquireSolverVariable);
        return solverVariableAcquireSolverVariable;
    }

    public SolverVariable createExtraVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.extravariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
        int i = this.mVariablesID + 1;
        this.mVariablesID = i;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = i;
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    public SolverVariable createObjectVariable(Object obj) {
        SolverVariable solverVariable = null;
        if (obj != null) {
            if (this.mNumColumns + 1 >= this.mMaxColumns) {
                increaseTableSize();
            }
            if (obj instanceof ConstraintAnchor) {
                solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
                if (solverVariable == null) {
                    ((ConstraintAnchor) obj).resetSolverVariable(this.mCache);
                    solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
                }
                if (solverVariable.id == -1 || solverVariable.id > this.mVariablesID || this.mCache.mIndexedVariables[solverVariable.id] == null) {
                    if (solverVariable.id != -1) {
                        solverVariable.reset();
                    }
                    int i = this.mVariablesID + 1;
                    this.mVariablesID = i;
                    this.mNumColumns++;
                    solverVariable.id = i;
                    solverVariable.mType = SolverVariable.Type.UNRESTRICTED;
                    this.mCache.mIndexedVariables[this.mVariablesID] = solverVariable;
                }
            }
        }
        return solverVariable;
    }

    public ArrayRow createRow() {
        ArrayRow arrayRowAcquire;
        if (OPTIMIZED_ENGINE) {
            arrayRowAcquire = this.mCache.optimizedArrayRowPool.acquire();
            if (arrayRowAcquire == null) {
                arrayRowAcquire = new ValuesRow(this, this.mCache);
                OPTIMIZED_ARRAY_ROW_CREATION++;
            } else {
                arrayRowAcquire.reset();
            }
        } else {
            arrayRowAcquire = this.mCache.arrayRowPool.acquire();
            if (arrayRowAcquire == null) {
                arrayRowAcquire = new ArrayRow(this.mCache);
                ARRAY_ROW_CREATION++;
            } else {
                arrayRowAcquire.reset();
            }
        }
        SolverVariable.increaseErrorId();
        return arrayRowAcquire;
    }

    public SolverVariable createSlackVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.slackvariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
        int i = this.mVariablesID + 1;
        this.mVariablesID = i;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.id = i;
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    public void displayReadableRows() {
        displaySolverVariables();
        String str = NPStringFog.decode(new byte[]{23, 89, 23, 14, 70, 70, 86, 69, 17, 67}, "77bcf0", 2.0567048E9f) + this.mVariablesID + "\n";
        for (int i = 0; i < this.mVariablesID + 1; i++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[i];
            if (solverVariable != null && solverVariable.isFinalValue) {
                str = str + NPStringFog.decode(new byte[]{66, 28, 58}, "b8a836", 1767901229L) + i + NPStringFog.decode(new byte[]{59, 65, 88, 88, 21}, "faef59", -18946) + solverVariable + NPStringFog.decode(new byte[]{19, 5, 25}, "38968b", -1.4438004E9f) + solverVariable.computedValue + "\n";
            }
        }
        String str2 = str + "\n";
        for (int i2 = 0; i2 < this.mVariablesID + 1; i2++) {
            SolverVariable solverVariable2 = this.mCache.mIndexedVariables[i2];
            if (solverVariable2 != null && solverVariable2.isSynonym) {
                str2 = str2 + NPStringFog.decode(new byte[]{19, 31, 57}, "3abf34", false, true) + i2 + NPStringFog.decode(new byte[]{60, 16, 5, 12, 69}, "a082ec", -20496) + solverVariable2 + NPStringFog.decode(new byte[]{69, 11, 23}, "e6701e", 2.0570772E9f) + this.mCache.mIndexedVariables[solverVariable2.synonym] + NPStringFog.decode(new byte[]{66, 31, 66}, "b4bee1", 517074933L) + solverVariable2.synonymDelta + "\n";
            }
        }
        String str3 = str2 + NPStringFog.decode(new byte[]{110, 60, 22, 17, 16, 67}, "d6620c", false);
        for (int i3 = 0; i3 < this.mNumRows; i3++) {
            str3 = (str3 + this.mRows[i3].toReadableString()) + NPStringFog.decode(new byte[]{62, 20, 17, 65, 22}, "442a63", -854);
        }
        if (this.mGoal != null) {
            str3 = str3 + NPStringFog.decode(new byte[]{36, 13, 86, 13, 14, 25}, "cb7a49", 1.816397267E9d) + this.mGoal + "\n";
        }
        System.out.println(str3);
    }

    void displaySystemInformation() {
        int iSizeInBytes = 0;
        for (int i = 0; i < this.TABLE_SIZE; i++) {
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[i] != null) {
                iSizeInBytes += arrayRowArr[i].sizeInBytes();
            }
        }
        int iSizeInBytes2 = 0;
        for (int i2 = 0; i2 < this.mNumRows; i2++) {
            ArrayRow[] arrayRowArr2 = this.mRows;
            if (arrayRowArr2[i2] != null) {
                iSizeInBytes2 += arrayRowArr2[i2].sizeInBytes();
            }
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append(NPStringFog.decode(new byte[]{42, 8, 11, 82, 85, 65, 70, 50, 28, 68, 64, 86, 11, 65, 72, 9, 20, 103, 7, 3, 9, 82, 20, 64, 15, 27, 0, 13, 20}, "fae743", -3.0422803E8f));
        sb.append(this.TABLE_SIZE);
        sb.append(NPStringFog.decode(new byte[]{21, 28}, "54aa2b", -7.6075725E8f));
        int i3 = this.TABLE_SIZE;
        sb.append(getDisplaySize(i3 * i3));
        sb.append(NPStringFog.decode(new byte[]{26, 67, 79, 72, 24, 20, 92, 20, 66, 22, 81, 28, 86, 16, 88, 69}, "3cbe8f", 1.968329E9f));
        sb.append(getDisplaySize(iSizeInBytes));
        sb.append(NPStringFog.decode(new byte[]{74, 69, 3, 6, 21, 76, 7, 9, 66, 22, 8, 67, 3, 95, 66}, "febea9", -1498084642L));
        sb.append(getDisplaySize(iSizeInBytes2));
        sb.append(NPStringFog.decode(new byte[]{23, 16, 95, 21, 21, 8, 23}, "7b0bf2", 2.0323474E9f));
        sb.append(this.mNumRows);
        sb.append(NPStringFog.decode(new byte[]{74}, "eb3c2b", true, false));
        sb.append(this.mMaxRows);
        sb.append(NPStringFog.decode(new byte[]{16, 83, 93, 10, 75, 94, 16}, "002f8d", 1.6591192E9f));
        sb.append(this.mNumColumns);
        sb.append(NPStringFog.decode(new byte[]{30}, "191fb7", -1438930416L));
        sb.append(this.mMaxColumns);
        sb.append(" ");
        sb.append(0);
        sb.append(NPStringFog.decode(new byte[]{23, 12, 85, 7, 22, 67, 94, 6, 82, 68, 0, 86, 91, 15, 69, 72, 67}, "7c6dc3", false, true));
        sb.append(getDisplaySize(0));
        printStream.println(sb.toString());
    }

    public void displayVariablesReadableRows() {
        displaySolverVariables();
        String str = "";
        for (int i = 0; i < this.mNumRows; i++) {
            if (this.mRows[i].variable.mType == SolverVariable.Type.UNRESTRICTED) {
                str = (str + this.mRows[i].toReadableString()) + "\n";
            }
        }
        System.out.println(str + this.mGoal + "\n");
    }

    public void fillMetrics(Metrics metrics) {
        sMetrics = metrics;
    }

    public Cache getCache() {
        return this.mCache;
    }

    Row getGoal() {
        return this.mGoal;
    }

    public int getMemoryUsed() {
        int iSizeInBytes = 0;
        for (int i = 0; i < this.mNumRows; i++) {
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[i] != null) {
                iSizeInBytes += arrayRowArr[i].sizeInBytes();
            }
        }
        return iSizeInBytes;
    }

    public int getNumEquations() {
        return this.mNumRows;
    }

    public int getNumVariables() {
        return this.mVariablesID;
    }

    public int getObjectVariableValue(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
        if (solverVariable != null) {
            return (int) (solverVariable.computedValue + 0.5f);
        }
        return 0;
    }

    ArrayRow getRow(int i) {
        return this.mRows[i];
    }

    float getValueFor(String str) {
        SolverVariable variable = getVariable(str, SolverVariable.Type.UNRESTRICTED);
        if (variable == null) {
            return 0.0f;
        }
        return variable.computedValue;
    }

    SolverVariable getVariable(String str, SolverVariable.Type type) {
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        SolverVariable solverVariable = this.mVariables.get(str);
        return solverVariable == null ? createVariable(str, type) : solverVariable;
    }

    public void minimize() throws Exception {
        boolean z = false;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimize++;
        }
        if (this.mGoal.isEmpty()) {
            computeValues();
            return;
        }
        if (!this.graphOptimizer && !this.newgraphOptimizer) {
            minimizeGoal(this.mGoal);
            return;
        }
        Metrics metrics2 = sMetrics;
        if (metrics2 != null) {
            metrics2.graphOptimizer++;
        }
        int i = 0;
        while (true) {
            if (i >= this.mNumRows) {
                z = true;
                break;
            } else if (!this.mRows[i].isSimpleDefinition) {
                break;
            } else {
                i++;
            }
        }
        if (!z) {
            minimizeGoal(this.mGoal);
            return;
        }
        Metrics metrics3 = sMetrics;
        if (metrics3 != null) {
            metrics3.fullySolved++;
        }
        computeValues();
    }

    void minimizeGoal(Row row) throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimizeGoal++;
            Metrics metrics2 = sMetrics;
            metrics2.maxVariables = Math.max(metrics2.maxVariables, this.mNumColumns);
            Metrics metrics3 = sMetrics;
            metrics3.maxRows = Math.max(metrics3.maxRows, this.mNumRows);
        }
        enforceBFS(row);
        optimize(row, false);
        computeValues();
    }

    public void removeRow(ArrayRow arrayRow) {
        int i;
        if (!arrayRow.isSimpleDefinition || arrayRow.variable == null) {
            return;
        }
        if (arrayRow.variable.definitionId != -1) {
            int i2 = arrayRow.variable.definitionId;
            while (true) {
                i = this.mNumRows;
                if (i2 >= i - 1) {
                    break;
                }
                SolverVariable solverVariable = this.mRows[i2 + 1].variable;
                if (solverVariable.definitionId == i2 + 1) {
                    solverVariable.definitionId = i2;
                }
                ArrayRow[] arrayRowArr = this.mRows;
                arrayRowArr[i2] = arrayRowArr[i2 + 1];
                i2++;
            }
            this.mNumRows = i - 1;
        }
        if (!arrayRow.variable.isFinalValue) {
            arrayRow.variable.setFinalValue(this, arrayRow.constantValue);
        }
        if (OPTIMIZED_ENGINE) {
            this.mCache.optimizedArrayRowPool.release(arrayRow);
        } else {
            this.mCache.arrayRowPool.release(arrayRow);
        }
    }

    public void reset() {
        for (int i = 0; i < this.mCache.mIndexedVariables.length; i++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[i];
            if (solverVariable != null) {
                solverVariable.reset();
            }
        }
        this.mCache.solverVariablePool.releaseAll(this.mPoolVariables, this.mPoolVariablesCount);
        this.mPoolVariablesCount = 0;
        Arrays.fill(this.mCache.mIndexedVariables, (Object) null);
        HashMap<String, SolverVariable> map = this.mVariables;
        if (map != null) {
            map.clear();
        }
        this.mVariablesID = 0;
        this.mGoal.clear();
        this.mNumColumns = 1;
        for (int i2 = 0; i2 < this.mNumRows; i2++) {
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[i2] != null) {
                arrayRowArr[i2].used = false;
            }
        }
        releaseRows();
        this.mNumRows = 0;
        if (OPTIMIZED_ENGINE) {
            this.mTempGoal = new ValuesRow(this, this.mCache);
        } else {
            this.mTempGoal = new ArrayRow(this.mCache);
        }
    }
}

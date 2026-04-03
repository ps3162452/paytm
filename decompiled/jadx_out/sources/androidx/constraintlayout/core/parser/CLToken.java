package androidx.constraintlayout.core.parser;

import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class CLToken extends CLElement {
    int index;
    char[] tokenFalse;
    char[] tokenNull;
    char[] tokenTrue;
    Type type;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.parser.CLToken$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type = iArr;
            try {
                iArr[Type.TRUE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type[Type.FALSE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type[Type.NULL.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type[Type.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    enum Type {
        UNKNOWN,
        TRUE,
        FALSE,
        NULL
    }

    public CLToken(char[] cArr) {
        super(cArr);
        this.index = 0;
        this.type = Type.UNKNOWN;
        this.tokenTrue = NPStringFog.decode(new byte[]{18, 69, 77, 1}, "f78dba", -276207150L).toCharArray();
        this.tokenFalse = NPStringFog.decode(new byte[]{95, 5, 91, 75, 6}, "9d78c2", true).toCharArray();
        this.tokenNull = NPStringFog.decode(new byte[]{10, 76, 88, 14}, "d94bc8", true).toCharArray();
    }

    public static CLElement allocate(char[] cArr) {
        return new CLToken(cArr);
    }

    public boolean getBoolean() throws CLParsingException {
        if (this.type == Type.TRUE) {
            return true;
        }
        if (this.type == Type.FALSE) {
            return false;
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{21, 94, 89, 69, 20, 16, 14, 93, 85, 88, 20, 13, 18, 22, 94, 89, 64, 68, 0, 22, 82, 89, 91, 8, 4, 87, 94, 12, 20, 88}, "a6064d", -2.711794E8f) + content() + NPStringFog.decode(new byte[]{91}, "e61fd3", 1.0079104E9f), this);
    }

    public Type getType() {
        return this.type;
    }

    public boolean isNull() throws CLParsingException {
        if (this.type == Type.NULL) {
            return true;
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{69, 80, 12, 67, 67, 18, 94, 83, 0, 94, 67, 15, 66, 24, 11, 95, 23, 70, 80, 24, 11, 69, 15, 10, 11, 24, 89}, "18e0cf", -7.0091546E8f) + content() + NPStringFog.decode(new byte[]{7}, "90ed18", -3508), this);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    protected String toFormattedJSON(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        addIndent(sb, i);
        sb.append(content());
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    protected String toJSON() {
        if (!CLParser.DEBUG) {
            return content();
        }
        return NPStringFog.decode(new byte[]{10}, "673b2d", true) + content() + NPStringFog.decode(new byte[]{15}, "10f72b", -1204);
    }

    public boolean validate(char c, long j) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type[this.type.ordinal()]) {
            case 1:
                char[] cArr = this.tokenTrue;
                int i = this.index;
                z = cArr[i] == c;
                if (z && i + 1 == cArr.length) {
                    setEnd(j);
                }
                break;
            case 2:
                char[] cArr2 = this.tokenFalse;
                int i2 = this.index;
                z = cArr2[i2] == c;
                if (z && i2 + 1 == cArr2.length) {
                    setEnd(j);
                }
                break;
            case 3:
                char[] cArr3 = this.tokenNull;
                int i3 = this.index;
                z = cArr3[i3] == c;
                if (z && i3 + 1 == cArr3.length) {
                    setEnd(j);
                }
                break;
            case 4:
                char[] cArr4 = this.tokenTrue;
                int i4 = this.index;
                if (cArr4[i4] == c) {
                    this.type = Type.TRUE;
                    z = true;
                } else if (this.tokenFalse[i4] == c) {
                    this.type = Type.FALSE;
                    z = true;
                } else if (this.tokenNull[i4] == c) {
                    this.type = Type.NULL;
                    z = true;
                }
                break;
        }
        this.index++;
        return z;
    }
}

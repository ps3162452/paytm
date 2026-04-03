package androidx.constraintlayout.core.parser;

import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class CLArray extends CLContainer {
    public CLArray(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLArray(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    protected String toFormattedJSON(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        String json = toJSON();
        if (i2 > 0 || json.length() + i >= MAX_LINE) {
            sb.append(NPStringFog.decode(new byte[]{111, 104}, "4b224a", -1380349832L));
            boolean z = true;
            for (CLElement cLElement : this.mElements) {
                if (z) {
                    z = false;
                } else {
                    sb.append(NPStringFog.decode(new byte[]{25, 61}, "57e601", true, false));
                }
                addIndent(sb, BASE_INDENT + i);
                sb.append(cLElement.toFormattedJSON(BASE_INDENT + i, i2 - 1));
            }
            sb.append("\n");
            addIndent(sb, i);
            sb.append(NPStringFog.decode(new byte[]{106}, "73295a", false));
        } else {
            sb.append(json);
        }
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    protected String toJSON() {
        boolean z;
        StringBuilder sb = new StringBuilder(getDebugName() + NPStringFog.decode(new byte[]{110}, "5295a4", 1.1914602E9f));
        int i = 0;
        boolean z2 = true;
        while (i < this.mElements.size()) {
            if (z2) {
                z = false;
            } else {
                sb.append(NPStringFog.decode(new byte[]{26, 68}, "6ded82", 1.020757522E9d));
                z = z2;
            }
            sb.append(this.mElements.get(i).toJSON());
            i++;
            z2 = z;
        }
        return ((Object) sb) + NPStringFog.decode(new byte[]{57}, "d5f030", 32457);
    }
}

package androidx.constraintlayout.core.parser;

import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class CLString extends CLElement {
    public CLString(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLString(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    protected String toFormattedJSON(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        addIndent(sb, i);
        sb.append(NPStringFog.decode(new byte[]{70}, "a5d52e", false));
        sb.append(content());
        sb.append(NPStringFog.decode(new byte[]{30}, "917c9b", 21093));
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    protected String toJSON() {
        return NPStringFog.decode(new byte[]{70}, "ac5dd4", true) + content() + NPStringFog.decode(new byte[]{66}, "e15803", false);
    }
}

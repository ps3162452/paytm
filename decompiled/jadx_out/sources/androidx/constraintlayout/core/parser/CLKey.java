package androidx.constraintlayout.core.parser;

import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class CLKey extends CLContainer {
    private static ArrayList<String> sections;

    static {
        ArrayList<String> arrayList = new ArrayList<>();
        sections = arrayList;
        arrayList.add(NPStringFog.decode(new byte[]{123, 91, 10, 65, 65, 20, 89, 93, 10, 70, 102, 3, 76, 71}, "84d25f", 21229));
        sections.add(NPStringFog.decode(new byte[]{55, 7, 17, 95, 87, 81, 13, 3, 16}, "afc663", 24316));
        sections.add(NPStringFog.decode(new byte[]{126, 93, 11, 0, 70, 84, 77, 93}, "98ee45", 3.6174528E8f));
        sections.add(NPStringFog.decode(new byte[]{53, 16, 83, 94, 68, 11, 21, 11, 93, 94, 68}, "ab207b", false, false));
        sections.add(NPStringFog.decode(new byte[]{41, 87, 26, 36, 65, 86, 15, 87, 16}, "b2cb37", 3198));
        sections.add(NPStringFog.decode(new byte[]{46, 87, 28, 121, 70, 23, 23, 91, 7, 77, 70, 6, 22}, "e2e82c", false));
        sections.add(NPStringFog.decode(new byte[]{46, 87, 29, 101, 88, 67, 12, 70, 13, 90, 89, 67}, "e2d570", false, true));
        sections.add(NPStringFog.decode(new byte[]{120, 4, 73, 115, 75, 82, 95, 4, 67}, "3a0021", true, false));
    }

    public CLKey(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(String str, CLElement cLElement) {
        CLKey cLKey = new CLKey(str.toCharArray());
        cLKey.setStart(0L);
        cLKey.setEnd(str.length() - 1);
        cLKey.set(cLElement);
        return cLKey;
    }

    public static CLElement allocate(char[] cArr) {
        return new CLKey(cArr);
    }

    public String getName() {
        return content();
    }

    public CLElement getValue() {
        if (this.mElements.size() > 0) {
            return this.mElements.get(0);
        }
        return null;
    }

    public void set(CLElement cLElement) {
        if (this.mElements.size() > 0) {
            this.mElements.set(0, cLElement);
        } else {
            this.mElements.add(cLElement);
        }
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    protected String toFormattedJSON(int i, int i2) {
        StringBuilder sb = new StringBuilder(getDebugName());
        addIndent(sb, i);
        String strContent = content();
        if (this.mElements.size() <= 0) {
            return strContent + NPStringFog.decode(new byte[]{94, 22, 4, 8, 22}, "d68663", true, false);
        }
        sb.append(strContent);
        sb.append(NPStringFog.decode(new byte[]{13, 65}, "7af2a9", 1.5878921E9f));
        if (sections.contains(strContent)) {
            i2 = 3;
        }
        if (i2 > 0) {
            sb.append(this.mElements.get(0).toFormattedJSON(i, i2 - 1));
        } else {
            String json = this.mElements.get(0).toJSON();
            if (json.length() + i < MAX_LINE) {
                sb.append(json);
            } else {
                sb.append(this.mElements.get(0).toFormattedJSON(i, i2 - 1));
            }
        }
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    protected String toJSON() {
        if (this.mElements.size() <= 0) {
            return getDebugName() + content() + NPStringFog.decode(new byte[]{94, 24, 95, 91, 65}, "d8cead", -1.1294537E9f);
        }
        return getDebugName() + content() + NPStringFog.decode(new byte[]{8, 24}, "28bfa9", 133193883L) + this.mElements.get(0).toJSON();
    }
}

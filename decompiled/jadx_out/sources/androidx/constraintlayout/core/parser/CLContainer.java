package androidx.constraintlayout.core.parser;

import java.util.ArrayList;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class CLContainer extends CLElement {
    ArrayList<CLElement> mElements;

    public CLContainer(char[] cArr) {
        super(cArr);
        this.mElements = new ArrayList<>();
    }

    public static CLElement allocate(char[] cArr) {
        return new CLContainer(cArr);
    }

    public void add(CLElement cLElement) {
        this.mElements.add(cLElement);
        if (CLParser.DEBUG) {
            System.out.println(NPStringFog.decode(new byte[]{87, 85, 83, 4, 82, 21, 83, 93, 82, 12, 83, 91, 66, 17}, "617a65", 1.2147958E9f) + cLElement + NPStringFog.decode(new byte[]{25, 16, 95, 25}, "9d0946", -959240582L) + this);
        }
    }

    public CLElement get(int i) throws CLParsingException {
        if (i >= 0 && i < this.mElements.size()) {
            return this.mElements.get(i);
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{94, 91, 25, 0, 93, 92, 93, 81, 87, 17, 17, 88, 68, 20, 80, 11, 85, 92, 72, 20}, "049e19", false) + i, this);
    }

    public CLElement get(String str) throws CLParsingException {
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLKey cLKey = (CLKey) it.next();
            if (cLKey.content().equals(str)) {
                return cLKey.getValue();
            }
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{87, 14, 23, 80, 95, 4, 84, 4, 89, 65, 19, 7, 86, 19, 23, 94, 86, 24, 25, 93}, "9a753a", 23910) + str + NPStringFog.decode(new byte[]{9}, "7fb330", 1.4267028E9f), this);
    }

    public CLArray getArray(int i) throws CLParsingException {
        CLElement cLElement = get(i);
        if (cLElement instanceof CLArray) {
            return (CLArray) cLElement;
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{8, 89, 22, 88, 22, 68, 7, 79, 22, 88, 16, 22, 15, 88, 82, 92, 28, 22}, "f669d6", 3527) + i, this);
    }

    public CLArray getArray(String str) throws CLParsingException {
        CLElement cLElement = get(str);
        if (cLElement instanceof CLArray) {
            return (CLArray) cLElement;
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{90, 87, 66, 82, 67, 19, 85, 65, 66, 85, 94, 20, 90, 92, 66, 85, 94, 19, 20, 83, 7, 74, 17, 93}, "48b31a", 1.937808489E9d) + str + NPStringFog.decode(new byte[]{8, 21, 20, 5, 94, 68, 88, 93, 20, 56}, "694c11", 7.6062035E8f) + cLElement.getStrClass() + NPStringFog.decode(new byte[]{101, 25, 9, 25}, "8939ff", -13528) + cLElement, this);
    }

    public CLArray getArrayOrNull(String str) {
        CLElement orNull = getOrNull(str);
        if (orNull instanceof CLArray) {
            return (CLArray) orNull;
        }
        return null;
    }

    public boolean getBoolean(int i) throws CLParsingException {
        CLElement cLElement = get(i);
        if (cLElement instanceof CLToken) {
            return ((CLToken) cLElement).getBoolean();
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{8, 9, 19, 4, 94, 14, 10, 3, 82, 8, 17, 0, 18, 70, 90, 8, 85, 4, 30, 70}, "ff3f1a", true) + i, this);
    }

    public boolean getBoolean(String str) throws CLParsingException {
        CLElement cLElement = get(str);
        if (cLElement instanceof CLToken) {
            return ((CLToken) cLElement).getBoolean();
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{86, 92, 25, 85, 9, 12, 84, 86, 88, 89, 70, 5, 87, 70, 87, 83, 70, 5, 87, 65, 25, 92, 3, 26, 24, 15}, "8397fc", 624633112L) + str + NPStringFog.decode(new byte[]{13, 28, 22, 4, 12, 68, 93, 84, 22, 57}, "306bc1", 1.86061895E9d) + cLElement.getStrClass() + NPStringFog.decode(new byte[]{101, 23, 95, 70}, "87efd0", false, false) + cLElement, this);
    }

    public float getFloat(int i) throws CLParsingException {
        CLElement cLElement = get(i);
        if (cLElement != null) {
            return cLElement.getFloat();
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{88, 11, 66, 95, 92, 87, 87, 16, 66, 88, 68, 24, 95, 10, 6, 92, 72, 24}, "6db908", false) + i, this);
    }

    public float getFloat(String str) throws CLParsingException {
        CLElement cLElement = get(str);
        if (cLElement != null) {
            return cLElement.getFloat();
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{93, 10, 69, 2, 90, 91, 82, 17, 69, 2, 89, 65, 93, 1, 69, 2, 89, 70, 19, 14, 0, 29, 22, 8}, "3eed64", -5.38495706E8d) + str + NPStringFog.decode(new byte[]{12, 21, 18, 94, 9, 69, 92, 93, 18, 99}, "2928f0", true, true) + cLElement.getStrClass() + NPStringFog.decode(new byte[]{60, 67, 9, 68}, "ac3d79", -1.4146001E9f) + cLElement, this);
    }

    public float getFloatOrNaN(String str) {
        CLElement orNull = getOrNull(str);
        if (orNull instanceof CLNumber) {
            return orNull.getFloat();
        }
        return Float.NaN;
    }

    public int getInt(int i) throws CLParsingException {
        CLElement cLElement = get(i);
        if (cLElement != null) {
            return cLElement.getInt();
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{10, 90, 65, 12, 92, 76, 68, 84, 21, 69, 91, 86, 0, 80, 25, 69}, "d5ae28", true, true) + i, this);
    }

    public int getInt(String str) throws CLParsingException {
        CLElement cLElement = get(str);
        if (cLElement != null) {
            return cLElement.getInt();
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{91, 90, 66, 90, 86, 66, 21, 83, 13, 70, 86, 82, 21, 83, 13, 65, 24, 93, 80, 76, 66, 15}, "55b386", true) + str + NPStringFog.decode(new byte[]{14, 78, 16, 95, 95, 67, 94, 6, 16, 98}, "0b0906", 1.8745893E9f) + cLElement.getStrClass() + NPStringFog.decode(new byte[]{100, 24, 89, 65}, "98caae", false) + cLElement, this);
    }

    public CLObject getObject(int i) throws CLParsingException {
        CLElement cLElement = get(i);
        if (cLElement instanceof CLObject) {
            return (CLObject) cLElement;
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{11, 11, 65, 12, 85, 83, 0, 7, 21, 67, 86, 77, 69, 13, 15, 7, 82, 65, 69}, "edac79", 19715) + i, this);
    }

    public CLObject getObject(String str) throws CLParsingException {
        CLElement cLElement = get(str);
        if (cLElement instanceof CLObject) {
            return (CLObject) cLElement;
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{95, 93, 69, 93, 6, 94, 84, 81, 17, 18, 2, 91, 68, 92, 1, 18, 2, 91, 67, 18, 14, 87, 29, 20, 13}, "12e2d4", -1684445553L) + str + NPStringFog.decode(new byte[]{91, 29, 16, 82, 13, 66, 11, 85, 16, 111}, "e104b7", -12020) + cLElement.getStrClass() + NPStringFog.decode(new byte[]{100, 24, 8, 18}, "9822fe", false, false) + cLElement, this);
    }

    public CLObject getObjectOrNull(String str) {
        CLElement orNull = getOrNull(str);
        if (orNull instanceof CLObject) {
            return (CLObject) orNull;
        }
        return null;
    }

    public CLElement getOrNull(int i) {
        if (i < 0 || i >= this.mElements.size()) {
            return null;
        }
        return this.mElements.get(i);
    }

    public CLElement getOrNull(String str) {
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLKey cLKey = (CLKey) it.next();
            if (cLKey.content().equals(str)) {
                return cLKey.getValue();
            }
        }
        return null;
    }

    public String getString(int i) throws CLParsingException {
        CLElement cLElement = get(i);
        if (cLElement instanceof CLString) {
            return cLElement.content();
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{88, 10, 69, 17, 69, 16, 95, 11, 2, 66, 80, 22, 22, 12, 11, 6, 84, 26, 22}, "6eeb1b", false, false) + i, this);
    }

    public String getString(String str) throws CLParsingException {
        CLElement cLElement = get(str);
        if (cLElement instanceof CLString) {
            return cLElement.content();
        }
        throw new CLParsingException(NPStringFog.decode(new byte[]{88, 11, 17, 69, 64, 70, 95, 10, 86, 22, 82, 91, 67, 10, 85, 22, 82, 91, 68, 68, 90, 83, 77, 20, 10}, "6d1644", -1.3438231E9f) + str + NPStringFog.decode(new byte[]{13, 73, 24, 4, 89, 68, 93, 1, 24, 57}, "3e8b61", -1.944558178E9d) + (cLElement != null ? cLElement.getStrClass() : null) + NPStringFog.decode(new byte[]{107, 68, 88, 20}, "6db473", true, false) + cLElement, this);
    }

    public String getStringOrNull(int i) {
        CLElement orNull = getOrNull(i);
        if (orNull instanceof CLString) {
            return orNull.content();
        }
        return null;
    }

    public String getStringOrNull(String str) {
        CLElement orNull = getOrNull(str);
        if (orNull instanceof CLString) {
            return orNull.content();
        }
        return null;
    }

    public boolean has(String str) {
        for (CLElement cLElement : this.mElements) {
            if ((cLElement instanceof CLKey) && ((CLKey) cLElement).content().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public ArrayList<String> names() {
        ArrayList<String> arrayList = new ArrayList<>();
        for (CLElement cLElement : this.mElements) {
            if (cLElement instanceof CLKey) {
                arrayList.add(((CLKey) cLElement).content());
            }
        }
        return arrayList;
    }

    public void put(String str, CLElement cLElement) {
        Iterator<CLElement> it = this.mElements.iterator();
        while (it.hasNext()) {
            CLKey cLKey = (CLKey) it.next();
            if (cLKey.content().equals(str)) {
                cLKey.set(cLElement);
                return;
            }
        }
        this.mElements.add((CLKey) CLKey.allocate(str, cLElement));
    }

    public void putNumber(String str, float f) {
        put(str, new CLNumber(f));
    }

    public void remove(String str) {
        ArrayList arrayList = new ArrayList();
        for (CLElement cLElement : this.mElements) {
            if (((CLKey) cLElement).content().equals(str)) {
                arrayList.add(cLElement);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.mElements.remove((CLElement) it.next());
        }
    }

    public int size() {
        return this.mElements.size();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (CLElement cLElement : this.mElements) {
            if (sb.length() > 0) {
                sb.append(NPStringFog.decode(new byte[]{89, 25}, "b94d0b", -10488));
            }
            sb.append(cLElement);
        }
        return super.toString() + NPStringFog.decode(new byte[]{22, 88, 19, 95}, "6e3c55", -29406) + ((Object) sb) + NPStringFog.decode(new byte[]{19, 91}, "3e0f70", -2.83362783E8d);
    }
}

package androidx.constraintlayout.core.parser;

import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class CLObject extends CLContainer implements Iterable<CLKey> {

    private class CLObjectIterator implements Iterator {
        int index = 0;
        CLObject myObject;
        final CLObject this$0;

        public CLObjectIterator(CLObject cLObject, CLObject cLObject2) {
            this.this$0 = cLObject;
            this.myObject = cLObject2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.index < this.myObject.size();
        }

        @Override // java.util.Iterator
        public Object next() {
            CLKey cLKey = (CLKey) this.myObject.mElements.get(this.index);
            this.index++;
            return cLKey;
        }
    }

    public CLObject(char[] cArr) {
        super(cArr);
    }

    public static CLObject allocate(char[] cArr) {
        return new CLObject(cArr);
    }

    @Override // java.lang.Iterable
    public Iterator<CLKey> iterator() {
        return new CLObjectIterator(this, this);
    }

    public String toFormattedJSON() {
        return toFormattedJSON(0, 0);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i, int i2) {
        StringBuilder sb = new StringBuilder(getDebugName());
        sb.append(NPStringFog.decode(new byte[]{67, 108}, "8f4b08", -4.28722715E8d));
        boolean z = true;
        for (CLElement cLElement : this.mElements) {
            if (z) {
                z = false;
            } else {
                sb.append(NPStringFog.decode(new byte[]{30, 60}, "26b500", true, true));
            }
            sb.append(cLElement.toFormattedJSON(BASE_INDENT + i, i2 - 1));
        }
        sb.append("\n");
        addIndent(sb, i);
        sb.append(NPStringFog.decode(new byte[]{69}, "832fb3", 8926));
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        StringBuilder sb = new StringBuilder(getDebugName() + NPStringFog.decode(new byte[]{75, 19}, "03df2f", false, false));
        boolean z = true;
        for (CLElement cLElement : this.mElements) {
            if (z) {
                z = false;
            } else {
                sb.append(NPStringFog.decode(new byte[]{30, 24}, "28035e", -578998270L));
            }
            sb.append(cLElement.toJSON());
        }
        sb.append(NPStringFog.decode(new byte[]{16, 72}, "05eb7f", 3.58996913E8d));
        return sb.toString();
    }
}

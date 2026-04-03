package androidx.constraintlayout.core.parser;

import androidx.core.location.LocationRequestCompat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class CLElement {
    private int line;
    protected CLContainer mContainer;
    private final char[] mContent;
    protected static int MAX_LINE = 80;
    protected static int BASE_INDENT = 2;
    protected long start = -1;
    protected long end = LocationRequestCompat.PASSIVE_INTERVAL;

    public CLElement(char[] cArr) {
        this.mContent = cArr;
    }

    protected void addIndent(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(' ');
        }
    }

    public String content() {
        String str = new String(this.mContent);
        long j = this.end;
        if (j != LocationRequestCompat.PASSIVE_INTERVAL) {
            long j2 = this.start;
            if (j >= j2) {
                return str.substring((int) j2, ((int) j) + 1);
            }
        }
        long j3 = this.start;
        return str.substring((int) j3, ((int) j3) + 1);
    }

    public CLElement getContainer() {
        return this.mContainer;
    }

    protected String getDebugName() {
        if (!CLParser.DEBUG) {
            return "";
        }
        return getStrClass() + NPStringFog.decode(new byte[]{24, 79, 10, 25}, "8b49c5", -31957);
    }

    public long getEnd() {
        return this.end;
    }

    public float getFloat() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).getFloat();
        }
        return Float.NaN;
    }

    public int getInt() {
        if (this instanceof CLNumber) {
            return ((CLNumber) this).getInt();
        }
        return 0;
    }

    public int getLine() {
        return this.line;
    }

    public long getStart() {
        return this.start;
    }

    protected String getStrClass() {
        String string = getClass().toString();
        return string.substring(string.lastIndexOf(46) + 1);
    }

    public boolean isDone() {
        return this.end != LocationRequestCompat.PASSIVE_INTERVAL;
    }

    public boolean isStarted() {
        return this.start > -1;
    }

    public boolean notStarted() {
        return this.start == -1;
    }

    public void setContainer(CLContainer cLContainer) {
        this.mContainer = cLContainer;
    }

    public void setEnd(long j) {
        if (this.end != LocationRequestCompat.PASSIVE_INTERVAL) {
            return;
        }
        this.end = j;
        if (CLParser.DEBUG) {
            System.out.println(NPStringFog.decode(new byte[]{84, 94, 95, 75, 11, 88, 80, 18}, "7208b6", true) + hashCode() + NPStringFog.decode(new byte[]{22, 28, 9, 24}, "6178c1", -5.64840628E8d) + this);
        }
        CLContainer cLContainer = this.mContainer;
        if (cLContainer != null) {
            cLContainer.add(this);
        }
    }

    public void setLine(int i) {
        this.line = i;
    }

    public void setStart(long j) {
        this.start = j;
    }

    protected String toFormattedJSON(int i, int i2) {
        return "";
    }

    protected String toJSON() {
        return "";
    }

    public String toString() {
        long j = this.start;
        long j2 = this.end;
        if (j > j2 || j2 == LocationRequestCompat.PASSIVE_INTERVAL) {
            return getClass() + NPStringFog.decode(new byte[]{17, 77, 124, 47, 111, 113, 125, 44, 113, 77, 25}, "1e5a90", 1.8732049E9f) + this.start + NPStringFog.decode(new byte[]{76}, "a39664", true, true) + this.end + NPStringFog.decode(new byte[]{72}, "a40b6f", true);
        }
        return getStrClass() + NPStringFog.decode(new byte[]{23, 24}, "70f7da", 1479556075L) + this.start + NPStringFog.decode(new byte[]{67, 14, 22}, "c46a27", 1693518858L) + this.end + NPStringFog.decode(new byte[]{30, 22, 11, 4}, "767866", true) + new String(this.mContent).substring((int) this.start, ((int) this.end) + 1) + NPStringFog.decode(new byte[]{6, 10}, "84df9f", 1.712276E9f);
    }
}

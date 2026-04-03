package androidx.constraintlayout.core.parser;

import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class CLParsingException extends Exception {
    private final String mElementClass;
    private final int mLineNumber;
    private final String mReason;

    public CLParsingException(String str, CLElement cLElement) {
        this.mReason = str;
        if (cLElement != null) {
            this.mElementClass = cLElement.getStrClass();
            this.mLineNumber = cLElement.getLine();
        } else {
            this.mElementClass = NPStringFog.decode(new byte[]{65, 8, 14, 13, 89, 71, 90}, "4fec60", false);
            this.mLineNumber = 0;
        }
    }

    public String reason() {
        return this.mReason + NPStringFog.decode(new byte[]{22, 74}, "6bd404", -1.6831007E9f) + this.mElementClass + NPStringFog.decode(new byte[]{66, 7, 69, 23, 10, 94, 12, 3, 17}, "bf17f7", 1801838475L) + this.mLineNumber + NPStringFog.decode(new byte[]{74}, "c24896", true);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return NPStringFog.decode(new byte[]{115, 127, 54, 83, 67, 17, 89, 93, 1, 119, 73, 1, 85, 67, 18, 91, 94, 12, 16, 27}, "03f21b", false, false) + hashCode() + NPStringFog.decode(new byte[]{79, 18, 14, 25}, "f24929", false, true) + reason();
    }
}

package androidx.constraintlayout.core.parser;

import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class CLParser {
    static boolean DEBUG = false;
    private boolean hasComment = false;
    private int lineNumber;
    private String mContent;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.parser.CLParser$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE;

        static {
            int[] iArr = new int[TYPE.values().length];
            $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE = iArr;
            try {
                iArr[TYPE.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.KEY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.TOKEN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    enum TYPE {
        UNKNOWN,
        OBJECT,
        ARRAY,
        NUMBER,
        STRING,
        KEY,
        TOKEN
    }

    public CLParser(String str) {
        this.mContent = str;
    }

    private CLElement createElement(CLElement cLElement, int i, TYPE type, boolean z, char[] cArr) {
        CLElement cLElementAllocate;
        if (DEBUG) {
            System.out.println(NPStringFog.decode(new byte[]{123, 107, 112, 112, 99, 33, 24}, "89517d", 3.85833134E8d) + type + NPStringFog.decode(new byte[]{67, 86, 71, 18}, "c73248", false) + cArr[i]);
        }
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[type.ordinal()]) {
            case 1:
                cLElementAllocate = CLObject.allocate(cArr);
                i++;
                break;
            case 2:
                cLElementAllocate = CLArray.allocate(cArr);
                i++;
                break;
            case 3:
                cLElementAllocate = CLString.allocate(cArr);
                break;
            case 4:
                cLElementAllocate = CLNumber.allocate(cArr);
                break;
            case 5:
                cLElementAllocate = CLKey.allocate(cArr);
                break;
            case 6:
                cLElementAllocate = CLToken.allocate(cArr);
                break;
            default:
                cLElementAllocate = null;
                break;
        }
        if (cLElementAllocate == null) {
            return null;
        }
        cLElementAllocate.setLine(this.lineNumber);
        if (z) {
            cLElementAllocate.setStart(i);
        }
        if (cLElement instanceof CLContainer) {
            cLElementAllocate.setContainer((CLContainer) cLElement);
        }
        return cLElementAllocate;
    }

    private CLElement getNextJsonElement(int i, char c, CLElement cLElement, char[] cArr) throws CLParsingException {
        switch (c) {
            case '\t':
            case '\n':
            case '\r':
            case ' ':
            case ',':
            case ':':
                return cLElement;
            case '\"':
            case '\'':
                return cLElement instanceof CLObject ? createElement(cLElement, i, TYPE.KEY, true, cArr) : createElement(cLElement, i, TYPE.STRING, true, cArr);
            case '+':
            case '-':
            case '.':
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
                return createElement(cLElement, i, TYPE.NUMBER, true, cArr);
            case '/':
                if (i + 1 >= cArr.length || cArr[i + 1] != '/') {
                    return cLElement;
                }
                this.hasComment = true;
                return cLElement;
            case '[':
                return createElement(cLElement, i, TYPE.ARRAY, true, cArr);
            case ']':
            case '}':
                cLElement.setEnd(i - 1);
                CLElement container = cLElement.getContainer();
                container.setEnd(i);
                return container;
            case '{':
                return createElement(cLElement, i, TYPE.OBJECT, true, cArr);
            default:
                if (!(cLElement instanceof CLContainer) || (cLElement instanceof CLObject)) {
                    return createElement(cLElement, i, TYPE.KEY, true, cArr);
                }
                CLElement cLElementCreateElement = createElement(cLElement, i, TYPE.TOKEN, true, cArr);
                CLToken cLToken = (CLToken) cLElementCreateElement;
                if (cLToken.validate(c, i)) {
                    return cLElementCreateElement;
                }
                throw new CLParsingException(NPStringFog.decode(new byte[]{92, 87, 2, 92, 71, 69, 80, 90, 21, 19, 65, 88, 94, 92, 15, 19, 9}, "59a357", -28611) + c + NPStringFog.decode(new byte[]{6, 17, 3, 16, 69, 92, 81, 95, 7, 68}, "81bde0", false, false) + this.lineNumber, cLToken);
        }
    }

    public static CLObject parse(String str) throws CLParsingException {
        return new CLParser(str).parse();
    }

    public CLObject parse() throws CLParsingException {
        char c;
        char[] charArray = this.mContent.toCharArray();
        int length = charArray.length;
        this.lineNumber = 1;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            char c2 = charArray[i];
            if (c2 == '{') {
                break;
            }
            if (c2 == '\n') {
                this.lineNumber++;
            }
            i++;
        }
        if (i == -1) {
            throw new CLParsingException(NPStringFog.decode(new byte[]{81, 13, 65, 82, 93, 10, 92, 67, 93, 64, 94, 13, 24, 0, 88, 93, 69, 6, 86, 23}, "8c731c", false), null);
        }
        CLObject cLObjectAllocate = CLObject.allocate(charArray);
        cLObjectAllocate.setLine(this.lineNumber);
        cLObjectAllocate.setStart(i);
        CLElement container = cLObjectAllocate;
        for (int i2 = i + 1; i2 < length; i2++) {
            char c3 = charArray[i2];
            if (c3 == '\n') {
                this.lineNumber++;
            }
            if (this.hasComment) {
                if (c3 == '\n') {
                    this.hasComment = false;
                } else {
                    continue;
                }
            }
            if (container == null) {
                break;
            }
            if (container.isDone()) {
                container = getNextJsonElement(i2, c3, container, charArray);
            } else if (container instanceof CLObject) {
                if (c3 == '}') {
                    container.setEnd(i2 - 1);
                } else {
                    container = getNextJsonElement(i2, c3, container, charArray);
                }
            } else if (container instanceof CLArray) {
                if (c3 == ']') {
                    container.setEnd(i2 - 1);
                } else {
                    container = getNextJsonElement(i2, c3, container, charArray);
                }
            } else if (!(container instanceof CLString)) {
                if (container instanceof CLToken) {
                    CLToken cLToken = (CLToken) container;
                    if (!cLToken.validate(c3, i2)) {
                        throw new CLParsingException(NPStringFog.decode(new byte[]{73, 7, 67, 17, 90, 13, 94, 70, 88, 12, 80, 12, 75, 20, 84, 1, 71, 67, 77, 9, 90, 7, 93, 67}, "9f1b3c", -27556) + cLToken.content() + NPStringFog.decode(new byte[]{19, 80, 70, 22, 84, 13, 93, 84, 18}, "31268d", 2.2152056E8f) + this.lineNumber, cLToken);
                    }
                }
                if (((container instanceof CLKey) || (container instanceof CLString)) && (((c = charArray[(int) container.start]) == '\'' || c == '\"') && c == c3)) {
                    container.setStart(container.start + 1);
                    container.setEnd(i2 - 1);
                }
                if (!container.isDone() && (c3 == '}' || c3 == ']' || c3 == ',' || c3 == ' ' || c3 == '\t' || c3 == '\r' || c3 == '\n' || c3 == ':')) {
                    container.setEnd(i2 - 1);
                    if (c3 == '}' || c3 == ']') {
                        container = container.getContainer();
                        container.setEnd(i2 - 1);
                        if (container instanceof CLKey) {
                            container = container.getContainer();
                            container.setEnd(i2 - 1);
                        }
                    }
                }
            } else if (charArray[(int) container.start] == c3) {
                container.setStart(container.start + 1);
                container.setEnd(i2 - 1);
            }
            if (container.isDone() && (!(container instanceof CLKey) || ((CLKey) container).mElements.size() > 0)) {
                container = container.getContainer();
            }
        }
        while (container != null && !container.isDone()) {
            if (container instanceof CLString) {
                container.setStart(((int) container.start) + 1);
            }
            container.setEnd(length - 1);
            container = container.getContainer();
        }
        if (DEBUG) {
            System.out.println(NPStringFog.decode(new byte[]{98, 91, 10, 68, 15, 66}, "04e05b", -7.439895E8f) + cLObjectAllocate.toJSON());
        }
        return cLObjectAllocate;
    }
}

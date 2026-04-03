package com.google.gson;

import n.NPStringFog;

/* JADX INFO: loaded from: classes69.dex */
public class FormattingStyle {
    public static final FormattingStyle COMPACT = new FormattingStyle("", "", false);
    public static final FormattingStyle PRETTY = new FormattingStyle("\n", "  ", true);
    private final String indent;
    private final String newline;
    private final boolean spaceAfterSeparators;

    private FormattingStyle(String str, String str2, boolean z) {
        FormattingStyle$$ExternalSyntheticBackport0.m(str, NPStringFog.decode(new byte[]{90, 86, 68, 14, 90, 86, 81, 19, 14, 95, 19, 86, 65, 95, 95}, "433b38", false));
        FormattingStyle$$ExternalSyntheticBackport0.m(str2, NPStringFog.decode(new byte[]{88, 15, 92, 85, 92, 65, 17, 92, 5, 16, 92, 64, 93, 13}, "1a8025", true, true));
        if (!str.matches(NPStringFog.decode(new byte[]{109, 60, 51, 63, 72}, "619bb2", false, false))) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{124, 10, 9, 26, 19, 86, 92, 9, 7, 10, 93, 84, 71, 13, 10, 13, 64, 21, 92, 2, 69, 63, 93, 21, 82, 10, 1, 67, 111, 71, 19, 5, 23, 6, 19, 84, 95, 8, 10, 20, 86, 81, 19, 13, 11, 67, 93, 80, 68, 8, 12, 13, 86, 27}, "3dec35", true, true));
        }
        if (!str2.matches(NPStringFog.decode(new byte[]{61, 67, 109, 109, 24}, "fcd022", -27870))) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{118, 89, 88, 26, 24, 83, 86, 90, 86, 10, 86, 81, 77, 94, 91, 13, 75, 16, 86, 81, 20, 16, 72, 81, 90, 82, 71, 67, 89, 94, 93, 23, 64, 2, 90, 67, 25, 86, 70, 6, 24, 81, 85, 91, 91, 20, 93, 84, 25, 94, 90, 67, 81, 94, 93, 82, 90, 23, 22}, "974c80", -1.739912572E9d));
        }
        this.newline = str;
        this.indent = str2;
        this.spaceAfterSeparators = z;
    }

    public String getIndent() {
        return this.indent;
    }

    public String getNewline() {
        return this.newline;
    }

    public boolean usesSpaceAfterSeparators() {
        return this.spaceAfterSeparators;
    }

    public FormattingStyle withIndent(String str) {
        return new FormattingStyle(this.newline, str, this.spaceAfterSeparators);
    }

    public FormattingStyle withNewline(String str) {
        return new FormattingStyle(str, this.indent, this.spaceAfterSeparators);
    }

    public FormattingStyle withSpaceAfterSeparators(boolean z) {
        return new FormattingStyle(this.newline, this.indent, z);
    }
}

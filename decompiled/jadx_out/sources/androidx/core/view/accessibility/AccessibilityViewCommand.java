package androidx.core.view.accessibility;

import android.os.Bundle;
import android.view.View;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public interface AccessibilityViewCommand {

    public static abstract class CommandArguments {
        Bundle mBundle;

        public void setBundle(Bundle bundle) {
            this.mBundle = bundle;
        }
    }

    public static final class MoveAtGranularityArguments extends CommandArguments {
        public boolean getExtendSelection() {
            return this.mBundle.getBoolean(NPStringFog.decode(new byte[]{118, 123, 53, 42, 126, 124, 104, 121, 51, 36, 100, 127, 114, 118, 53, 60, 116, 106, 99, 125, 47, 39, 110, 97, 114, 116, 36, 32, 101, 123, 120, 118, 62, 33, 126, 125, 123, 125, 32, 45}, "78ac12", 1.693778437E9d));
        }

        public int getGranularity() {
            return this.mBundle.getInt(NPStringFog.decode(new byte[]{121, 123, 48, 47, 122, 45, 103, 121, 54, 33, 96, 46, 125, 118, 48, 57, 120, 44, 110, 125, 41, 35, 123, 55, 103, 127, 54, 39, 123, 54, 116, 121, 54, 47, 97, 58, 103, 113, 42, 50}, "88df5c", 1883060843L));
        }
    }

    public static final class MoveHtmlArguments extends CommandArguments {
        public String getHTMLElement() {
            return this.mBundle.getString(NPStringFog.decode(new byte[]{117, 117, 103, 43, 119, 47, 107, 119, 97, 37, 109, 44, 113, 120, 103, 61, 112, 53, 121, 122, 108, 39, 116, 36, 121, 115, 125, 54, 103, 50, 96, 100, 122, 44, 127}, "463b8a", -1.5234464E9f));
        }
    }

    public static final class MoveWindowArguments extends CommandArguments {
        public int getX() {
            return this.mBundle.getInt(NPStringFog.decode(new byte[]{37, 122, 100, 42, 127, 120, 59, 120, 98, 36, 101, 123, 33, 119, 100, 60, 125, 121, 50, 124, 111, 52, 121, 120, 32, 118, 103, 60, 104}, "d90c06", false, true));
        }

        public int getY() {
            return this.mBundle.getInt(NPStringFog.decode(new byte[]{113, 39, 50, 124, 43, 127, 111, 37, 52, 114, 49, 124, 117, 42, 50, 106, 41, 126, 102, 33, 57, 98, 45, 127, 116, 43, 49, 106, 61}, "0df5d1", -4.03553324E8d));
        }
    }

    public static final class ScrollToPositionArguments extends CommandArguments {
        public int getColumn() {
            return this.mBundle.getInt(NPStringFog.decode(new byte[]{7, 94, 81, 23, 93, 94, 2, 30, 67, 12, 87, 64, 72, 81, 86, 6, 87, 68, 21, 89, 87, 12, 94, 94, 18, 73, 27, 4, 81, 67, 15, 95, 91, 75, 115, 101, 33, 101, 120, 32, 124, 99, 57, 115, 122, 41, 103, 122, 40, 111, 124, 43, 102}, "f05e27", false));
        }

        public int getRow() {
            return this.mBundle.getInt(NPStringFog.decode(new byte[]{88, 94, 85, 74, 10, 10, 93, 30, 71, 81, 0, 20, 23, 81, 82, 91, 0, 16, 74, 89, 83, 81, 9, 10, 77, 73, 31, 89, 6, 23, 80, 95, 95, 22, 36, 49, 126, 101, 124, 125, 43, 55, 102, 98, 126, 111, 58, 42, 119, 100}, "9018ec", true, true));
        }
    }

    public static final class SetProgressArguments extends CommandArguments {
        public float getProgress() {
            return this.mBundle.getFloat(NPStringFog.decode(new byte[]{85, 87, 6, 17, 13, 80, 80, 23, 20, 10, 7, 78, 26, 88, 1, 0, 7, 74, 71, 80, 0, 10, 14, 80, 64, 64, 76, 2, 1, 77, 93, 86, 12, 77, 35, 107, 115, 108, 47, 38, 44, 109, 107, 105, 48, 44, 37, 107, 113, 106, 49, 60, 52, 120, 120, 108, 39}, "49bcb9", 1952425375L));
        }
    }

    public static final class SetSelectionArguments extends CommandArguments {
        public int getEnd() {
            return this.mBundle.getInt(NPStringFog.decode(new byte[]{120, 34, 100, 123, 42, 125, 102, 32, 98, 117, 48, 126, 124, 47, 100, 109, 54, 118, 117, 36, 115, 102, 44, 124, 119, 62, 117, 124, 33, 108, 112, 47, 100}, "9a02e3", 9.7472434E8d));
        }

        public int getStart() {
            return this.mBundle.getInt(NPStringFog.decode(new byte[]{34, 39, 102, 123, 121, 42, 60, 37, 96, 117, 99, 41, 38, 42, 102, 109, 101, 33, 47, 33, 113, 102, 127, 43, 45, 59, 97, 102, 119, 54, 55, 59, 123, 124, 98}, "cd226d", 1.1601838E9f));
        }
    }

    public static final class SetTextArguments extends CommandArguments {
        public CharSequence getText() {
            return this.mBundle.getCharSequence(NPStringFog.decode(new byte[]{120, 34, 50, 44, 126, 119, 102, 32, 52, 34, 100, 116, 124, 47, 50, 58, 98, 124, 109, 62, 50, 32, 105, 109, 102, 34, 46, 36, 99, 106, 124, 48, 51, 32, 127, 122, 124}, "9afe19", -32117));
        }
    }

    boolean perform(View view, CommandArguments commandArguments);
}

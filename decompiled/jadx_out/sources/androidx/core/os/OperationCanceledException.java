package androidx.core.os;

import androidx.core.util.ObjectsCompat;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class OperationCanceledException extends RuntimeException {
    public OperationCanceledException() {
        this(null);
    }

    public OperationCanceledException(String str) {
        super(ObjectsCompat.toString(str, NPStringFog.decode(new byte[]{54, 81, 93, 19, 10, 65, 7, 75, 89, 71, 12, 94, 12, 25, 80, 82, 22, 17, 0, 92, 93, 93, 69, 82, 3, 87, 91, 86, 9, 84, 6, 23}, "b983e1", 6140)));
    }
}

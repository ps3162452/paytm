package androidx.transition;

import android.view.View;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
public class TransitionValues {
    public View view;
    public final Map<String, Object> values = new HashMap();
    final ArrayList<Transition> mTargetedTransitions = new ArrayList<>();

    @Deprecated
    public TransitionValues() {
    }

    public TransitionValues(@NonNull View view) {
        this.view = view;
    }

    public boolean equals(Object obj) {
        return (obj instanceof TransitionValues) && this.view == ((TransitionValues) obj).view && this.values.equals(((TransitionValues) obj).values);
    }

    public int hashCode() {
        return (this.view.hashCode() * 31) + this.values.hashCode();
    }

    public String toString() {
        String str = ((NPStringFog.decode(new byte[]{48, 16, 89, 13, 70, 13, 16, 11, 87, 13, 99, 5, 8, 23, 93, 16, 117}, "db8c5d", 1555661781L) + Integer.toHexString(hashCode()) + NPStringFog.decode(new byte[]{2, 57}, "83565d", false, true)) + NPStringFog.decode(new byte[]{25, 21, 70, 23, 64, 93, 92, 66, 70, 10, 22}, "95f764", true) + this.view + "\n") + NPStringFog.decode(new byte[]{19, 22, 70, 16, 79, 2, 95, 67, 3, 67, 3}, "36f09c", false, true);
        Iterator<String> it = this.values.keySet().iterator();
        while (true) {
            String str2 = str;
            if (!it.hasNext()) {
                return str2;
            }
            String next = it.next();
            str = str2 + "    " + next + NPStringFog.decode(new byte[]{13, 19}, "73ac0a", -2.083661931E9d) + this.values.get(next) + "\n";
        }
    }
}

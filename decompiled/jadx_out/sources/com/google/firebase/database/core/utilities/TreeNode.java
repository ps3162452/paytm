package com.google.firebase.database.core.utilities;

import com.google.firebase.database.snapshot.ChildKey;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class TreeNode<T> {
    public Map<ChildKey, TreeNode<T>> children = new HashMap();
    public T value;

    String toString(String str) {
        String str2 = str + NPStringFog.decode(new byte[]{13, 70, 81, 88, 22, 93, 15, 10, 16}, "1004c8", 1.809817E9f) + this.value + "\n";
        if (this.children.isEmpty()) {
            return str2 + str + NPStringFog.decode(new byte[]{90, 1, 11, 18, 68, 79, 88}, "fdfb06", true);
        }
        Iterator<Map.Entry<ChildKey, TreeNode<T>>> it = this.children.entrySet().iterator();
        while (true) {
            String str3 = str2;
            if (!it.hasNext()) {
                return str3;
            }
            Map.Entry<ChildKey, TreeNode<T>> next = it.next();
            str2 = str3 + str + next.getKey() + NPStringFog.decode(new byte[]{9, 105}, "3c40b8", false, true) + next.getValue().toString(str + "\t") + "\n";
        }
    }
}

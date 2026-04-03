package com.google.firebase.database.core;

import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.snapshot.ChildKey;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class ValidationPath {
    public static final int MAX_PATH_DEPTH = 32;
    public static final int MAX_PATH_LENGTH_BYTES = 768;
    private int byteLength;
    private final List<String> parts = new ArrayList();

    private ValidationPath(Path path) throws DatabaseException {
        this.byteLength = 0;
        Iterator<ChildKey> it = path.iterator();
        while (it.hasNext()) {
            this.parts.add(it.next().asString());
        }
        this.byteLength = Math.max(1, this.parts.size());
        for (int i = 0; i < this.parts.size(); i++) {
            this.byteLength = utf8Bytes(this.parts.get(i)) + this.byteLength;
        }
        checkValid();
    }

    private void checkValid() throws DatabaseException {
        if (this.byteLength > 768) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{112, 88, 69, 85, 66, 10, 85, 74, 17, 85, 66, 9, 81, 64, 17, 68, 3, 22, 92, 25, 93, 91, 12, 5, 81, 75, 17, 64, 10, 3, 90, 25, 6, 2, 90, 66, 86, 64, 69, 81, 17, 66, 28}, "4914bb", -1.1655044E9f) + this.byteLength + NPStringFog.decode(new byte[]{77, 27}, "d56735", true));
        }
        if (this.parts.size() > 32) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{104, 83, 71, 14, 25, 17, 72, 87, 80, 15, 95, 11, 93, 86, 19, 3, 65, 1, 93, 87, 87, 21, 25, 22, 80, 87, 19, 11, 88, 26, 81, 95, 70, 11, 25, 6, 93, 66, 71, 14, 25, 22, 80, 83, 71, 70, 90, 3, 86, 18, 81, 3, 25, 21, 74, 91, 71, 18, 92, 12, 24, 26, 0, 84, 16, 66, 87, 64, 19, 9, 91, 8, 93, 81, 71, 70, 90, 13, 86, 70, 82, 15, 87, 17, 24, 83, 19, 5, 64, 1, 84, 87, 19}, "823f9b", -8.28386164E8d) + toErrorString());
        }
    }

    private static String joinStringList(String str, List<String> list) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return sb.toString();
            }
            if (i2 > 0) {
                sb.append(str);
            }
            sb.append(list.get(i2));
            i = i2 + 1;
        }
    }

    private String pop() {
        String strRemove = this.parts.remove(r0.size() - 1);
        this.byteLength -= utf8Bytes(strRemove);
        if (this.parts.size() > 0) {
            this.byteLength--;
        }
        return strRemove;
    }

    private void push(String str) throws DatabaseException {
        if (this.parts.size() > 0) {
            this.byteLength++;
        }
        this.parts.add(str);
        this.byteLength += utf8Bytes(str);
        checkValid();
    }

    private String toErrorString() {
        return this.parts.size() == 0 ? "" : NPStringFog.decode(new byte[]{90, 13, 21, 65, 87, 21, 91, 67, 18}, "3c516a", 4.98208847E8d) + joinStringList(NPStringFog.decode(new byte[]{26}, "5ef746", false, true), this.parts) + NPStringFog.decode(new byte[]{17}, "646bae", true);
    }

    private static int utf8Bytes(CharSequence charSequence) {
        int i = 0;
        int length = charSequence.length();
        int i2 = 0;
        while (i < length) {
            char cCharAt = charSequence.charAt(i);
            if (cCharAt <= 127) {
                i2++;
            } else if (cCharAt <= 2047) {
                i2 += 2;
            } else if (Character.isHighSurrogate(cCharAt)) {
                i2 += 4;
                i++;
            } else {
                i2 += 3;
            }
            i++;
        }
        return i2;
    }

    public static void validateWithObject(Path path, Object obj) throws DatabaseException {
        new ValidationPath(path).withObject(obj);
    }

    private void withObject(Object obj) throws DatabaseException {
        if (obj instanceof Map) {
            Map map = (Map) obj;
            for (String str : map.keySet()) {
                if (!str.startsWith(NPStringFog.decode(new byte[]{77}, "c49b6d", -1.7736166E9f))) {
                    push(str);
                    withObject(map.get(str));
                    pop();
                }
            }
            return;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            for (int i = 0; i < list.size(); i++) {
                push(Integer.toString(i));
                withObject(list.get(i));
                pop();
            }
        }
    }
}

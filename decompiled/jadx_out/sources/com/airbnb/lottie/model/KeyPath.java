package com.airbnb.lottie.model;

import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class KeyPath {
    public static final KeyPath COMPOSITION = new KeyPath(NPStringFog.decode(new byte[]{122, 122, 121, 103, 42, 48, 112, 97, 125, 120, 43}, "9547ec", false, true));
    private final List<String> keys;

    @Nullable
    private KeyPathElement resolvedElement;

    private KeyPath(KeyPath keyPath) {
        this.keys = new ArrayList(keyPath.keys);
        this.resolvedElement = keyPath.resolvedElement;
    }

    public KeyPath(String... strArr) {
        this.keys = Arrays.asList(strArr);
    }

    private boolean endsWithGlobstar() {
        return this.keys.get(this.keys.size() - 1).equals(NPStringFog.decode(new byte[]{27, 75}, "1ab316", true, true));
    }

    private boolean isContainer(String str) {
        return NPStringFog.decode(new byte[]{59, 62, 84, 11, 13, 77, 5, 8, 89, 1, 17}, "da7dc9", false, false).equals(str);
    }

    @CheckResult
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public KeyPath addKey(String str) {
        KeyPath keyPath = new KeyPath(this);
        keyPath.keys.add(str);
        return keyPath;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean fullyResolvesTo(String str, int i) {
        if (i >= this.keys.size()) {
            return false;
        }
        boolean z = i == this.keys.size() + (-1);
        String str2 = this.keys.get(i);
        if (str2.equals(NPStringFog.decode(new byte[]{26, 79}, "0e5eab", -17312))) {
            if (!z && this.keys.get(i + 1).equals(str)) {
                if (i == this.keys.size() - 2 || (i == this.keys.size() - 3 && endsWithGlobstar())) {
                    return true;
                }
            } else {
                if (z) {
                    return true;
                }
                if (i + 1 >= this.keys.size() - 1) {
                    return this.keys.get(i + 1).equals(str);
                }
            }
        } else {
            boolean z2 = str2.equals(str) || str2.equals(NPStringFog.decode(new byte[]{18}, "8c7d5b", -17941));
            if ((z || (i == this.keys.size() - 2 && endsWithGlobstar())) && z2) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public KeyPathElement getResolvedElement() {
        return this.resolvedElement;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int incrementDepthBy(String str, int i) {
        if (isContainer(str)) {
            return 0;
        }
        if (!this.keys.get(i).equals(NPStringFog.decode(new byte[]{31, 76}, "5fa64b", 3.88557472E8d))) {
            return 1;
        }
        if (i != this.keys.size() - 1 && this.keys.get(i + 1).equals(str)) {
            return 2;
        }
        return 0;
    }

    public String keysToString() {
        return this.keys.toString();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean matches(String str, int i) {
        if (isContainer(str)) {
            return true;
        }
        if (i >= this.keys.size()) {
            return false;
        }
        return this.keys.get(i).equals(str) || this.keys.get(i).equals(NPStringFog.decode(new byte[]{72, 78}, "bd9735", -3694)) || this.keys.get(i).equals(NPStringFog.decode(new byte[]{27}, "1ebccf", -3.7275366E8f));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean propagateToChildren(String str, int i) {
        if (NPStringFog.decode(new byte[]{104, 102, 0, 91, 91, 65, 86, 80, 13, 81, 71}, "79c455", true).equals(str)) {
            return true;
        }
        return i < this.keys.size() + (-1) || this.keys.get(i).equals(NPStringFog.decode(new byte[]{26, 73}, "0c26ad", false));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public KeyPath resolve(KeyPathElement keyPathElement) {
        KeyPath keyPath = new KeyPath(this);
        keyPath.resolvedElement = keyPathElement;
        return keyPath;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{40, 1, 65, 50, 85, 69, 11, 31, 83, 7, 77, 66, 94}, "cd8b41", false) + this.keys + NPStringFog.decode(new byte[]{21, 68, 0, 74, 94, 91, 79, 83, 1, 4}, "96e917", -124024484L) + (this.resolvedElement != null) + '}';
    }
}

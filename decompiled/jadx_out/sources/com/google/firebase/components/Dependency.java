package com.google.firebase.components;

import n.NPStringFog;

/* JADX INFO: loaded from: classes54.dex */
public final class Dependency {
    private final Class<?> anInterface;
    private final int injection;
    private final int type;

    private Dependency(Class<?> cls, int i, int i2) {
        this.anInterface = (Class) Preconditions.checkNotNull(cls, NPStringFog.decode(new byte[]{42, 69, 95, 95, 24, 0, 1, 64, 86, 93, 92, 1, 10, 83, 74, 19, 89, 10, 45, 94, 71, 86, 74, 2, 5, 83, 86, 29}, "d0338d", -2.0278363E9f));
        this.type = i;
        this.injection = i2;
    }

    public static Dependency optional(Class<?> cls) {
        return new Dependency(cls, 0, 0);
    }

    public static Dependency optionalProvider(Class<?> cls) {
        return new Dependency(cls, 0, 1);
    }

    public static Dependency required(Class<?> cls) {
        return new Dependency(cls, 1, 0);
    }

    public static Dependency requiredProvider(Class<?> cls) {
        return new Dependency(cls, 1, 1);
    }

    public static Dependency setOf(Class<?> cls) {
        return new Dependency(cls, 2, 0);
    }

    public static Dependency setOfProvider(Class<?> cls) {
        return new Dependency(cls, 2, 1);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Dependency)) {
            return false;
        }
        Dependency dependency = (Dependency) obj;
        return this.anInterface == dependency.anInterface && this.type == dependency.type && this.injection == dependency.injection;
    }

    public Class<?> getInterface() {
        return this.anInterface;
    }

    public int hashCode() {
        return ((((this.anInterface.hashCode() ^ 1000003) * 1000003) ^ this.type) * 1000003) ^ this.injection;
    }

    public boolean isDirectInjection() {
        return this.injection == 0;
    }

    public boolean isRequired() {
        return this.type == 1;
    }

    public boolean isSet() {
        return this.type == 2;
    }

    public String toString() {
        StringBuilder sbAppend = new StringBuilder(NPStringFog.decode(new byte[]{33, 82, 73, 7, 89, 83, 0, 89, 90, 27, 76, 86, 11, 126, 87, 22, 82, 69, 3, 86, 90, 7, 10}, "e79b77", -22918)).append(this.anInterface).append(NPStringFog.decode(new byte[]{24, 21, 64, 27, 72, 81, 9}, "454b84", 3.61855387E8d));
        int i = this.type;
        return sbAppend.append(i == 1 ? NPStringFog.decode(new byte[]{74, 3, 20, 66, 15, 64, 93, 2}, "8fe7f2", false, false) : i == 0 ? NPStringFog.decode(new byte[]{13, 21, 71, 13, 95, 11, 3, 9}, "be3d0e", false) : NPStringFog.decode(new byte[]{64, 1, 23}, "3dc105", false)).append(NPStringFog.decode(new byte[]{77, 70, 81, 89, 17, 87, 2, 18, 8}, "af50c2", -1145591532L)).append(this.injection == 0).append(NPStringFog.decode(new byte[]{24}, "e082c8", true)).toString();
    }
}

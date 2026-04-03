package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes54.dex */
public class DependencyCycleException extends DependencyException {
    private final List<Component<?>> componentsInCycle;

    public DependencyCycleException(List<Component<?>> list) {
        super(NPStringFog.decode(new byte[]{32, 84, 69, 82, 92, 2, 1, 95, 86, 78, 18, 5, 29, 82, 89, 82, 18, 2, 1, 69, 80, 84, 70, 3, 0, 11, 21}, "d1572f", -13614) + Arrays.toString(list.toArray()));
        this.componentsInCycle = list;
    }

    public List<Component<?>> getComponentsInCycle() {
        return this.componentsInCycle;
    }
}

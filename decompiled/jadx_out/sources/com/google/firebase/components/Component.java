package com.google.firebase.components;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes54.dex */
public final class Component<T> {
    private final Set<Dependency> dependencies;
    private final ComponentFactory<T> factory;
    private final int instantiation;
    private final Set<Class<? super T>> providedInterfaces;
    private final Set<Class<?>> publishedEvents;
    private final int type;

    public static class Builder<T> {
        private final Set<Dependency> dependencies;
        private ComponentFactory<T> factory;
        private int instantiation;
        private final Set<Class<? super T>> providedInterfaces;
        private Set<Class<?>> publishedEvents;
        private int type;

        @SafeVarargs
        private Builder(Class<T> cls, Class<? super T>... clsArr) {
            HashSet hashSet = new HashSet();
            this.providedInterfaces = hashSet;
            this.dependencies = new HashSet();
            this.instantiation = 0;
            this.type = 0;
            this.publishedEvents = new HashSet();
            Preconditions.checkNotNull(cls, NPStringFog.decode(new byte[]{122, 64, 94, 91, 65, 10, 90, 65, 87, 69, 7, 2, 87, 80}, "4527ac", false, false));
            hashSet.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                Preconditions.checkNotNull(cls2, NPStringFog.decode(new byte[]{126, 68, 8, 95, 24, 91, 94, 69, 1, 65, 94, 83, 83, 84}, "01d382", -1.9032012E9f));
            }
            Collections.addAll(this.providedInterfaces, clsArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Builder<T> intoSet() {
            this.type = 1;
            return this;
        }

        private Builder<T> setInstantiation(int i) {
            Preconditions.checkState(this.instantiation == 0, NPStringFog.decode(new byte[]{42, 15, 71, 17, 5, 93, 23, 8, 85, 17, 13, 92, 13, 65, 64, 28, 20, 86, 67, 9, 85, 22, 68, 82, 15, 19, 81, 4, 0, 74, 67, 3, 81, 0, 10, 19, 16, 4, 64, 75}, "ca4ed3", -2028660167L));
            this.instantiation = i;
            return this;
        }

        private void validateInterface(Class<?> cls) {
            Preconditions.checkArgument(!this.providedInterfaces.contains(cls), NPStringFog.decode(new byte[]{37, 12, 85, 22, 13, 93, 3, 13, 76, 21, 66, 82, 20, 6, 24, 8, 13, 71, 70, 2, 84, 10, 13, 68, 3, 7, 24, 18, 13, 19, 2, 6, 72, 3, 12, 87, 70, 12, 86, 70, 11, 93, 18, 6, 74, 0, 3, 80, 3, 16, 24, 18, 10, 86, 31, 67, 76, 14, 7, 94, 21, 6, 84, 16, 7, 64, 70, 19, 74, 9, 20, 90, 2, 6, 22}, "fc8fb3", false));
        }

        public Builder<T> add(Dependency dependency) {
            Preconditions.checkNotNull(dependency, NPStringFog.decode(new byte[]{45, 64, 85, 92, 67, 83, 6, 69, 92, 94, 7, 82, 13, 86, 64}, "c590c7", -8170));
            validateInterface(dependency.getInterface());
            this.dependencies.add(dependency);
            return this;
        }

        public Builder<T> alwaysEager() {
            return setInstantiation(1);
        }

        public Component<T> build() {
            Preconditions.checkState(this.factory != null, NPStringFog.decode(new byte[]{116, 80, 68, 67, 91, 12, 94, 25, 69, 85, 67, 23, 80, 75, 82, 84, 18, 18, 75, 86, 71, 85, 64, 22, 64, 3, 23, 86, 83, 1, 77, 86, 69, 73, 28}, "99702b", -234242464L));
            return new Component<>(new HashSet(this.providedInterfaces), new HashSet(this.dependencies), this.instantiation, this.type, this.factory, this.publishedEvents);
        }

        public Builder<T> eagerInDefaultApp() {
            return setInstantiation(2);
        }

        public Builder<T> factory(ComponentFactory<T> componentFactory) {
            this.factory = (ComponentFactory) Preconditions.checkNotNull(componentFactory, NPStringFog.decode(new byte[]{127, 64, 15, 15, 21, 81, 80, 86, 23, 12, 71, 78}, "15cc57", -2139360736L));
            return this;
        }

        public Builder<T> publishes(Class<?> cls) {
            this.publishedEvents.add(cls);
            return this;
        }
    }

    private Component(Set<Class<? super T>> set, Set<Dependency> set2, int i, int i2, ComponentFactory<T> componentFactory, Set<Class<?>> set3) {
        this.providedInterfaces = Collections.unmodifiableSet(set);
        this.dependencies = Collections.unmodifiableSet(set2);
        this.instantiation = i;
        this.type = i2;
        this.factory = componentFactory;
        this.publishedEvents = Collections.unmodifiableSet(set3);
    }

    public static <T> Builder<T> builder(Class<T> cls) {
        return new Builder<>(cls, new Class[0]);
    }

    @SafeVarargs
    public static <T> Builder<T> builder(Class<T> cls, Class<? super T>... clsArr) {
        return new Builder<>(cls, clsArr);
    }

    public static <T> Component<T> intoSet(T t, Class<T> cls) {
        return intoSetBuilder(cls).factory(Component$$Lambda$3.lambdaFactory$(t)).build();
    }

    public static <T> Builder<T> intoSetBuilder(Class<T> cls) {
        return builder(cls).intoSet();
    }

    static /* synthetic */ Object lambda$intoSet$2(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    static /* synthetic */ Object lambda$of$0(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    static /* synthetic */ Object lambda$of$1(Object obj, ComponentContainer componentContainer) {
        return obj;
    }

    @Deprecated
    public static <T> Component<T> of(Class<T> cls, T t) {
        return builder(cls).factory(Component$$Lambda$1.lambdaFactory$(t)).build();
    }

    @SafeVarargs
    public static <T> Component<T> of(T t, Class<T> cls, Class<? super T>... clsArr) {
        return builder(cls, clsArr).factory(Component$$Lambda$2.lambdaFactory$(t)).build();
    }

    public Set<Dependency> getDependencies() {
        return this.dependencies;
    }

    public ComponentFactory<T> getFactory() {
        return this.factory;
    }

    public Set<Class<? super T>> getProvidedInterfaces() {
        return this.providedInterfaces;
    }

    public Set<Class<?>> getPublishedEvents() {
        return this.publishedEvents;
    }

    public boolean isAlwaysEager() {
        return this.instantiation == 1;
    }

    public boolean isEagerInDefaultApp() {
        return this.instantiation == 2;
    }

    public boolean isLazy() {
        return this.instantiation == 0;
    }

    public boolean isValue() {
        return this.type == 0;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{33, 13, 88, 18, 91, 94, 7, 12, 65, 94}, "bb5b40", -635638293L) + Arrays.toString(this.providedInterfaces.toArray()) + NPStringFog.decode(new byte[]{14, 67}, "08875d", -1.680839E9f) + this.instantiation + NPStringFog.decode(new byte[]{31, 17, 21, 24, 66, 6, 14}, "31aa2c", -341515525L) + this.type + NPStringFog.decode(new byte[]{77, 66, 84, 6, 71, 74, 92}, "ab0c79", -4.6706685E8f) + Arrays.toString(this.dependencies.toArray()) + NPStringFog.decode(new byte[]{68}, "93d107", -4388);
    }
}

package com.google.firebase.components;

import com.google.firebase.events.Event;
import com.google.firebase.events.Publisher;
import com.google.firebase.inject.Provider;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes54.dex */
final class RestrictedComponentContainer extends AbstractComponentContainer {
    private final Set<Class<?>> allowedDirectInterfaces;
    private final Set<Class<?>> allowedProviderInterfaces;
    private final Set<Class<?>> allowedPublishedEvents;
    private final Set<Class<?>> allowedSetDirectInterfaces;
    private final Set<Class<?>> allowedSetProviderInterfaces;
    private final ComponentContainer delegateContainer;

    private static class RestrictedPublisher implements Publisher {
        private final Set<Class<?>> allowedPublishedEvents;
        private final Publisher delegate;

        public RestrictedPublisher(Set<Class<?>> set, Publisher publisher) {
            this.allowedPublishedEvents = set;
            this.delegate = publisher;
        }

        @Override // com.google.firebase.events.Publisher
        public void publish(Event<?> event) {
            if (!this.allowedPublishedEvents.contains(event.getType())) {
                throw new IllegalArgumentException(String.format(NPStringFog.decode(new byte[]{112, 71, 65, 85, 12, 68, 69, 90, 91, 87, 65, 64, 94, 19, 69, 69, 3, 88, 88, 64, 93, 16, 0, 90, 17, 70, 91, 84, 4, 87, 93, 82, 71, 85, 5, 20, 84, 69, 80, 94, 21, 20, 20, 64, 27}, "1350a4", 15997), event));
            }
            this.delegate.publish(event);
        }
    }

    RestrictedComponentContainer(Component<?> component, ComponentContainer componentContainer) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        for (Dependency dependency : component.getDependencies()) {
            if (dependency.isDirectInjection()) {
                if (dependency.isSet()) {
                    hashSet3.add(dependency.getInterface());
                } else {
                    hashSet.add(dependency.getInterface());
                }
            } else if (dependency.isSet()) {
                hashSet4.add(dependency.getInterface());
            } else {
                hashSet2.add(dependency.getInterface());
            }
        }
        if (!component.getPublishedEvents().isEmpty()) {
            hashSet.add(Publisher.class);
        }
        this.allowedDirectInterfaces = Collections.unmodifiableSet(hashSet);
        this.allowedProviderInterfaces = Collections.unmodifiableSet(hashSet2);
        this.allowedSetDirectInterfaces = Collections.unmodifiableSet(hashSet3);
        this.allowedSetProviderInterfaces = Collections.unmodifiableSet(hashSet4);
        this.allowedPublishedEvents = component.getPublishedEvents();
        this.delegateContainer = componentContainer;
    }

    @Override // com.google.firebase.components.AbstractComponentContainer, com.google.firebase.components.ComponentContainer
    public <T> T get(Class<T> cls) {
        if (!this.allowedDirectInterfaces.contains(cls)) {
            throw new IllegalArgumentException(String.format(NPStringFog.decode(new byte[]{118, 65, 22, 82, 9, 70, 67, 92, 12, 80, 68, 66, 88, 21, 16, 82, 21, 67, 82, 70, 22, 23, 5, 88, 23, 64, 12, 83, 1, 85, 91, 84, 16, 82, 0, 22, 83, 80, 18, 82, 10, 82, 82, 91, 1, 78, 68, 19, 68, 27}, "75b7d6", true), cls));
        }
        T t = (T) this.delegateContainer.get(cls);
        return !cls.equals(Publisher.class) ? t : (T) new RestrictedPublisher(this.allowedPublishedEvents, (Publisher) t);
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Provider<T> getProvider(Class<T> cls) {
        if (this.allowedProviderInterfaces.contains(cls)) {
            return this.delegateContainer.getProvider(cls);
        }
        throw new IllegalArgumentException(String.format(NPStringFog.decode(new byte[]{35, 68, 65, 84, 84, 66, 22, 89, 91, 86, 25, 70, 13, 16, 71, 84, 72, 71, 7, 67, 65, 17, 88, 92, 66, 69, 91, 85, 92, 81, 14, 81, 71, 84, 93, 18, 6, 85, 69, 84, 87, 86, 7, 94, 86, 72, 25, 98, 16, 95, 67, 88, 93, 87, 16, 12, 16, 66, 7, 28}, "b05192", false, false), cls));
    }

    @Override // com.google.firebase.components.AbstractComponentContainer, com.google.firebase.components.ComponentContainer
    public <T> Set<T> setOf(Class<T> cls) {
        if (this.allowedSetDirectInterfaces.contains(cls)) {
            return this.delegateContainer.setOf(cls);
        }
        throw new IllegalArgumentException(String.format(NPStringFog.decode(new byte[]{115, 70, 22, 83, 85, 64, 70, 91, 12, 81, 24, 68, 93, 18, 16, 83, 73, 69, 87, 65, 22, 22, 89, 94, 18, 71, 12, 82, 93, 83, 94, 83, 16, 83, 92, 16, 86, 87, 18, 83, 86, 84, 87, 92, 1, 79, 24, 99, 87, 70, 94, 19, 75, 14, 28}, "22b680", -2057043621L), cls));
    }

    @Override // com.google.firebase.components.ComponentContainer
    public <T> Provider<Set<T>> setOfProvider(Class<T> cls) {
        if (this.allowedSetProviderInterfaces.contains(cls)) {
            return this.delegateContainer.setOfProvider(cls);
        }
        throw new IllegalArgumentException(String.format(NPStringFog.decode(new byte[]{121, 16, 66, 85, 11, 68, 76, 13, 88, 87, 70, 64, 87, 68, 68, 85, 23, 65, 93, 23, 66, 16, 7, 90, 24, 17, 88, 84, 3, 87, 84, 5, 68, 85, 2, 20, 92, 1, 70, 85, 8, 80, 93, 10, 85, 73, 70, 100, 74, 11, 64, 89, 2, 81, 74, 88, 101, 85, 18, 8, 29, 23, 8, 14, 72}, "8d60f4", 7941), cls));
    }
}

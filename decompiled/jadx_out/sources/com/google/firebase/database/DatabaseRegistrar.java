package com.google.firebase.database;

import com.google.firebase.FirebaseApp;
import com.google.firebase.auth.internal.InternalAuthProvider;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.Arrays;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class DatabaseRegistrar implements ComponentRegistrar {
    static /* synthetic */ FirebaseDatabaseComponent lambda$getComponents$0(ComponentContainer componentContainer) {
        return new FirebaseDatabaseComponent((FirebaseApp) componentContainer.get(FirebaseApp.class), (InternalAuthProvider) componentContainer.get(InternalAuthProvider.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        return Arrays.asList(Component.builder(FirebaseDatabaseComponent.class).add(Dependency.required(FirebaseApp.class)).add(Dependency.optional(InternalAuthProvider.class)).factory(DatabaseRegistrar$$Lambda$1.instance).build(), LibraryVersionComponent.create(NPStringFog.decode(new byte[]{86, 12, 64, 83, 73, 68, 68, 1, 80}, "0e26d6", -2.027068426E9d), NPStringFog.decode(new byte[]{4, 9, 28, 5, 24, 85}, "50266d", 5819)));
    }
}

package androidx.core.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
public class MenuHostHelper {
    private final Runnable mOnInvalidateMenuCallback;
    private final CopyOnWriteArrayList<MenuProvider> mMenuProviders = new CopyOnWriteArrayList<>();
    private final Map<MenuProvider, LifecycleContainer> mProviderToLifecycleContainers = new HashMap();

    private static class LifecycleContainer {
        final Lifecycle mLifecycle;
        private LifecycleEventObserver mObserver;

        LifecycleContainer(Lifecycle lifecycle, LifecycleEventObserver lifecycleEventObserver) {
            this.mLifecycle = lifecycle;
            this.mObserver = lifecycleEventObserver;
            lifecycle.addObserver(lifecycleEventObserver);
        }

        void clearObservers() {
            this.mLifecycle.removeObserver(this.mObserver);
            this.mObserver = null;
        }
    }

    public MenuHostHelper(Runnable runnable) {
        this.mOnInvalidateMenuCallback = runnable;
    }

    public void addMenuProvider(MenuProvider menuProvider) {
        this.mMenuProviders.add(menuProvider);
        this.mOnInvalidateMenuCallback.run();
    }

    public void addMenuProvider(final MenuProvider menuProvider, LifecycleOwner lifecycleOwner) {
        addMenuProvider(menuProvider);
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        LifecycleContainer lifecycleContainerRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (lifecycleContainerRemove != null) {
            lifecycleContainerRemove.clearObservers();
        }
        this.mProviderToLifecycleContainers.put(menuProvider, new LifecycleContainer(lifecycle, new LifecycleEventObserver(this, menuProvider) { // from class: androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda0
            public final MenuHostHelper f$0;
            public final MenuProvider f$1;

            {
                this.f$0 = this;
                this.f$1 = menuProvider;
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                this.f$0.lambda$addMenuProvider$0$MenuHostHelper(this.f$1, lifecycleOwner2, event);
            }
        }));
    }

    public void addMenuProvider(final MenuProvider menuProvider, LifecycleOwner lifecycleOwner, final Lifecycle.State state) {
        Lifecycle lifecycle = lifecycleOwner.getLifecycle();
        LifecycleContainer lifecycleContainerRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (lifecycleContainerRemove != null) {
            lifecycleContainerRemove.clearObservers();
        }
        this.mProviderToLifecycleContainers.put(menuProvider, new LifecycleContainer(lifecycle, new LifecycleEventObserver(this, state, menuProvider) { // from class: androidx.core.view.MenuHostHelper$$ExternalSyntheticLambda1
            public final MenuHostHelper f$0;
            public final Lifecycle.State f$1;
            public final MenuProvider f$2;

            {
                this.f$0 = this;
                this.f$1 = state;
                this.f$2 = menuProvider;
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                this.f$0.lambda$addMenuProvider$1$MenuHostHelper(this.f$1, this.f$2, lifecycleOwner2, event);
            }
        }));
    }

    public /* synthetic */ void lambda$addMenuProvider$0$MenuHostHelper(MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            removeMenuProvider(menuProvider);
        }
    }

    public /* synthetic */ void lambda$addMenuProvider$1$MenuHostHelper(Lifecycle.State state, MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        if (event == Lifecycle.Event.upTo(state)) {
            addMenuProvider(menuProvider);
            return;
        }
        if (event == Lifecycle.Event.ON_DESTROY) {
            removeMenuProvider(menuProvider);
        } else if (event == Lifecycle.Event.downFrom(state)) {
            this.mMenuProviders.remove(menuProvider);
            this.mOnInvalidateMenuCallback.run();
        }
    }

    public void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            it.next().onCreateMenu(menu, menuInflater);
        }
    }

    public boolean onMenuItemSelected(MenuItem menuItem) {
        Iterator<MenuProvider> it = this.mMenuProviders.iterator();
        while (it.hasNext()) {
            if (it.next().onMenuItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public void removeMenuProvider(MenuProvider menuProvider) {
        this.mMenuProviders.remove(menuProvider);
        LifecycleContainer lifecycleContainerRemove = this.mProviderToLifecycleContainers.remove(menuProvider);
        if (lifecycleContainerRemove != null) {
            lifecycleContainerRemove.clearObservers();
        }
        this.mOnInvalidateMenuCallback.run();
    }
}

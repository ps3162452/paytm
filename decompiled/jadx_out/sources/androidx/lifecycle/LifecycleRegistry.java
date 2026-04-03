package androidx.lifecycle;

import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.arch.core.internal.FastSafeIterableMap;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.Lifecycle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import n.NPStringFog;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes10.dex */
public class LifecycleRegistry extends Lifecycle {
    private int mAddingObserverCounter;
    private final boolean mEnforceMainThread;
    private boolean mHandlingEvent;
    private final WeakReference<LifecycleOwner> mLifecycleOwner;
    private boolean mNewEventOccurred;
    private FastSafeIterableMap<LifecycleObserver, ObserverWithState> mObserverMap;
    private ArrayList<Lifecycle.State> mParentStates;
    private Lifecycle.State mState;

    static class ObserverWithState {
        LifecycleEventObserver mLifecycleObserver;
        Lifecycle.State mState;

        ObserverWithState(LifecycleObserver lifecycleObserver, Lifecycle.State state) {
            this.mLifecycleObserver = Lifecycling.lifecycleEventObserver(lifecycleObserver);
            this.mState = state;
        }

        void dispatchEvent(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
            Lifecycle.State targetState = event.getTargetState();
            this.mState = LifecycleRegistry.min(this.mState, targetState);
            this.mLifecycleObserver.onStateChanged(lifecycleOwner, event);
            this.mState = targetState;
        }
    }

    public LifecycleRegistry(LifecycleOwner lifecycleOwner) {
        this(lifecycleOwner, true);
    }

    private LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z) {
        this.mObserverMap = new FastSafeIterableMap<>();
        this.mAddingObserverCounter = 0;
        this.mHandlingEvent = false;
        this.mNewEventOccurred = false;
        this.mParentStates = new ArrayList<>();
        this.mLifecycleOwner = new WeakReference<>(lifecycleOwner);
        this.mState = Lifecycle.State.INITIALIZED;
        this.mEnforceMainThread = z;
    }

    private void backwardPass(LifecycleOwner lifecycleOwner) {
        Iterator<Map.Entry<LifecycleObserver, ObserverWithState>> itDescendingIterator = this.mObserverMap.descendingIterator();
        while (itDescendingIterator.hasNext() && !this.mNewEventOccurred) {
            Map.Entry<LifecycleObserver, ObserverWithState> next = itDescendingIterator.next();
            ObserverWithState value = next.getValue();
            while (value.mState.compareTo(this.mState) > 0 && !this.mNewEventOccurred && this.mObserverMap.contains(next.getKey())) {
                Lifecycle.Event eventDownFrom = Lifecycle.Event.downFrom(value.mState);
                if (eventDownFrom == null) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{12, 9, 68, 84, 19, 3, 12, 18, 68, 85, 10, 17, 12, 70, 2, 67, 10, 11, 66}, "bfd1ef", HttpStatus.SC_PRECONDITION_FAILED) + value.mState);
                }
                pushParentState(eventDownFrom.getTargetState());
                value.dispatchEvent(lifecycleOwner, eventDownFrom);
                popParentState();
            }
        }
    }

    private Lifecycle.State calculateTargetState(LifecycleObserver lifecycleObserver) {
        Lifecycle.State state;
        Map.Entry<LifecycleObserver, ObserverWithState> entryCeil = this.mObserverMap.ceil(lifecycleObserver);
        Lifecycle.State state2 = entryCeil != null ? entryCeil.getValue().mState : null;
        if (this.mParentStates.isEmpty()) {
            state = null;
        } else {
            state = this.mParentStates.get(r0.size() - 1);
        }
        return min(min(this.mState, state2), state);
    }

    public static LifecycleRegistry createUnsafe(LifecycleOwner lifecycleOwner) {
        return new LifecycleRegistry(lifecycleOwner, false);
    }

    private void enforceMainThreadIfNeeded(String str) {
        if (!this.mEnforceMainThread || ArchTaskExecutor.getInstance().isMainThread()) {
            return;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{117, 83, 21, 92, 91, 80, 24}, "86a444", -1.42536045E9d) + str + NPStringFog.decode(new byte[]{20, 92, 68, 17, 16, 65, 86, 84, 17, 1, 5, 13, 88, 84, 85, 66, 11, 15, 20, 69, 89, 7, 68, 12, 85, 88, 95, 66, 16, 9, 70, 84, 80, 6}, "411bda", 1.4623215E9f));
    }

    private void forwardPass(LifecycleOwner lifecycleOwner) {
        SafeIterableMap<LifecycleObserver, ObserverWithState>.IteratorWithAdditions iteratorWithAdditions = this.mObserverMap.iteratorWithAdditions();
        while (iteratorWithAdditions.hasNext() && !this.mNewEventOccurred) {
            Map.Entry next = iteratorWithAdditions.next();
            ObserverWithState observerWithState = (ObserverWithState) next.getValue();
            while (observerWithState.mState.compareTo(this.mState) < 0 && !this.mNewEventOccurred && this.mObserverMap.contains((LifecycleObserver) next.getKey())) {
                pushParentState(observerWithState.mState);
                Lifecycle.Event eventUpFrom = Lifecycle.Event.upFrom(observerWithState.mState);
                if (eventUpFrom == null) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{12, 11, 23, 6, 79, 4, 12, 16, 23, 22, 73, 65, 4, 22, 88, 14, 25}, "bd7c9a", -582468952L) + observerWithState.mState);
                }
                observerWithState.dispatchEvent(lifecycleOwner, eventUpFrom);
                popParentState();
            }
        }
    }

    private boolean isSynced() {
        if (this.mObserverMap.size() == 0) {
            return true;
        }
        Lifecycle.State state = this.mObserverMap.eldest().getValue().mState;
        Lifecycle.State state2 = this.mObserverMap.newest().getValue().mState;
        return state == state2 && this.mState == state2;
    }

    static Lifecycle.State min(Lifecycle.State state, Lifecycle.State state2) {
        return (state2 == null || state2.compareTo(state) >= 0) ? state : state2;
    }

    private void moveToState(Lifecycle.State state) {
        if (this.mState == state) {
            return;
        }
        this.mState = state;
        if (this.mHandlingEvent || this.mAddingObserverCounter != 0) {
            this.mNewEventOccurred = true;
            return;
        }
        this.mHandlingEvent = true;
        sync();
        this.mHandlingEvent = false;
    }

    private void popParentState() {
        this.mParentStates.remove(r0.size() - 1);
    }

    private void pushParentState(Lifecycle.State state) {
        this.mParentStates.add(state);
    }

    private void sync() {
        LifecycleOwner lifecycleOwner = this.mLifecycleOwner.get();
        if (lifecycleOwner == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{117, 10, 5, 1, 5, 76, 90, 15, 6, 43, 17, 91, 92, 17, 67, 11, 0, 21, 77, 11, 10, 23, 70, 121, 80, 5, 6, 7, 31, 86, 85, 6, 49, 1, 1, 92, 74, 23, 17, 29, 70, 92, 74, 67, 2, 8, 20, 80, 88, 7, 26, 3, 7, 71, 91, 2, 4, 1, 70, 86, 86, 15, 15, 1, 5, 65, 92, 7, 77, 68, 47, 65, 25, 10, 16, 68, 18, 90, 86, 67, 15, 5, 18, 80, 25, 23, 12, 68, 5, 93, 88, 13, 4, 1, 70, 89, 80, 5, 6, 7, 31, 86, 85, 6, 67, 23, 18, 84, 77, 6, 77}, "9ccdf5", false, false));
        }
        while (!isSynced()) {
            this.mNewEventOccurred = false;
            if (this.mState.compareTo(this.mObserverMap.eldest().getValue().mState) < 0) {
                backwardPass(lifecycleOwner);
            }
            Map.Entry<LifecycleObserver, ObserverWithState> entryNewest = this.mObserverMap.newest();
            if (!this.mNewEventOccurred && entryNewest != null && this.mState.compareTo(entryNewest.getValue().mState) > 0) {
                forwardPass(lifecycleOwner);
            }
        }
        this.mNewEventOccurred = false;
    }

    @Override // androidx.lifecycle.Lifecycle
    public void addObserver(LifecycleObserver lifecycleObserver) {
        LifecycleOwner lifecycleOwner;
        enforceMainThreadIfNeeded(NPStringFog.decode(new byte[]{5, 6, 0, 125, 84, 21, 1, 16, 18, 87, 68}, "dbd26f", 9.35467517E8d));
        ObserverWithState observerWithState = new ObserverWithState(lifecycleObserver, this.mState == Lifecycle.State.DESTROYED ? Lifecycle.State.DESTROYED : Lifecycle.State.INITIALIZED);
        if (this.mObserverMap.putIfAbsent(lifecycleObserver, observerWithState) == null && (lifecycleOwner = this.mLifecycleOwner.get()) != null) {
            boolean z = this.mAddingObserverCounter != 0 || this.mHandlingEvent;
            Lifecycle.State stateCalculateTargetState = calculateTargetState(lifecycleObserver);
            this.mAddingObserverCounter++;
            while (observerWithState.mState.compareTo(stateCalculateTargetState) < 0 && this.mObserverMap.contains(lifecycleObserver)) {
                pushParentState(observerWithState.mState);
                Lifecycle.Event eventUpFrom = Lifecycle.Event.upFrom(observerWithState.mState);
                if (eventUpFrom == null) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{86, 88, 24, 84, 65, 0, 86, 67, 24, 68, 71, 69, 94, 69, 87, 92, 23}, "87817e", 1.5054176E8f) + observerWithState.mState);
                }
                observerWithState.dispatchEvent(lifecycleOwner, eventUpFrom);
                popParentState();
                stateCalculateTargetState = calculateTargetState(lifecycleObserver);
            }
            if (!z) {
                sync();
            }
            this.mAddingObserverCounter--;
        }
    }

    @Override // androidx.lifecycle.Lifecycle
    public Lifecycle.State getCurrentState() {
        return this.mState;
    }

    public int getObserverCount() {
        enforceMainThreadIfNeeded(NPStringFog.decode(new byte[]{2, 87, 22, 42, 84, 68, 0, 64, 20, 0, 68, 116, 10, 71, 12, 17}, "e2be67", true, false));
        return this.mObserverMap.size();
    }

    public void handleLifecycleEvent(Lifecycle.Event event) {
        enforceMainThreadIfNeeded(NPStringFog.decode(new byte[]{80, 83, 87, 93, 10, 81, 116, 91, 95, 92, 5, 77, 91, 94, 92, 124, 16, 81, 86, 70}, "8299f4", true, false));
        moveToState(event.getTargetState());
    }

    @Deprecated
    public void markState(Lifecycle.State state) {
        enforceMainThreadIfNeeded(NPStringFog.decode(new byte[]{93, 84, 64, 13, 53, 66, 81, 65, 87}, "052ff6", 1.25863123E8d));
        setCurrentState(state);
    }

    @Override // androidx.lifecycle.Lifecycle
    public void removeObserver(LifecycleObserver lifecycleObserver) {
        enforceMainThreadIfNeeded(NPStringFog.decode(new byte[]{17, 83, 9, 95, 71, 7, 44, 84, 23, 85, 67, 20, 6, 68}, "c6d01b", 1.735057747E9d));
        this.mObserverMap.remove(lifecycleObserver);
    }

    public void setCurrentState(Lifecycle.State state) {
        enforceMainThreadIfNeeded(NPStringFog.decode(new byte[]{69, 82, 68, 38, 19, 65, 68, 82, 94, 17, 53, 71, 87, 67, 85}, "670ef3", true));
        moveToState(state);
    }
}

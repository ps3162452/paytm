package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
abstract class SpecialEffectsController {
    private final ViewGroup mContainer;
    final ArrayList<Operation> mPendingOperations = new ArrayList<>();
    final ArrayList<Operation> mRunningOperations = new ArrayList<>();
    boolean mOperationDirectionIsPop = false;
    boolean mIsContainerPostponed = false;

    /* JADX INFO: renamed from: androidx.fragment.app.SpecialEffectsController$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {
        static final int[] $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact;
        static final int[] $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact = iArr;
            try {
                iArr[Operation.LifecycleImpact.ADDING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact[Operation.LifecycleImpact.REMOVING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact[Operation.LifecycleImpact.NONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[Operation.State.values().length];
            $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State = iArr2;
            try {
                iArr2[Operation.State.REMOVED.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[Operation.State.VISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[Operation.State.GONE.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[Operation.State.INVISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    private static class FragmentStateManagerOperation extends Operation {
        private final FragmentStateManager mFragmentStateManager;

        FragmentStateManagerOperation(Operation.State state, Operation.LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager, CancellationSignal cancellationSignal) {
            super(state, lifecycleImpact, fragmentStateManager.getFragment(), cancellationSignal);
            this.mFragmentStateManager = fragmentStateManager;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void complete() {
            super.complete();
            this.mFragmentStateManager.moveToExpectedState();
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        void onStart() {
            if (getLifecycleImpact() == Operation.LifecycleImpact.ADDING) {
                Fragment fragment = this.mFragmentStateManager.getFragment();
                View viewFindFocus = fragment.mView.findFocus();
                if (viewFindFocus != null) {
                    fragment.setFocusedView(viewFindFocus);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(NPStringFog.decode(new byte[]{127, 23, 86, 3, 11, 92, 87, 17, 122, 5, 8, 88, 94, 0, 69}, "9e7df9", -23966), NPStringFog.decode(new byte[]{64, 80, 20, 19, 82, 65, 70, 115, 10, 5, 66, 65, 8, 21, 54, 7, 65, 87, 86, 21, 3, 9, 84, 71, 65, 80, 1, 70, 65, 91, 87, 66, 69}, "25ef72", 11191) + viewFindFocus + NPStringFog.decode(new byte[]{66, 83, 10, 69, 24, 116, 16, 84, 2, 90, 93, 92, 22, 21}, "b5e782", false) + fragment);
                    }
                }
                View viewRequireView = getFragment().requireView();
                if (viewRequireView.getParent() == null) {
                    this.mFragmentStateManager.addViewToContainer();
                    viewRequireView.setAlpha(0.0f);
                }
                if (viewRequireView.getAlpha() == 0.0f && viewRequireView.getVisibility() == 0) {
                    viewRequireView.setVisibility(4);
                }
                viewRequireView.setAlpha(fragment.getPostOnViewCreatedAlpha());
            }
        }
    }

    static class Operation {
        private State mFinalState;
        private final Fragment mFragment;
        private LifecycleImpact mLifecycleImpact;
        private final List<Runnable> mCompletionListeners = new ArrayList();
        private final HashSet<CancellationSignal> mSpecialEffectsSignals = new HashSet<>();
        private boolean mIsCanceled = false;
        private boolean mIsComplete = false;

        enum LifecycleImpact {
            NONE,
            ADDING,
            REMOVING
        }

        enum State {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            static State from(int i) {
                switch (i) {
                    case 0:
                        return VISIBLE;
                    case 4:
                        return INVISIBLE;
                    case 8:
                        return GONE;
                    default:
                        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{97, 89, 90, 92, 14, 20, 90, 23, 71, 91, 18, 10, 86, 94, 93, 91, 21, 26, 20}, "4712ac", 5.54571068E8d) + i);
                }
            }

            static State from(View view) {
                return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? INVISIBLE : from(view.getVisibility());
            }

            void applyState(View view) {
                switch (AnonymousClass3.$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[ordinal()]) {
                    case 1:
                        ViewGroup viewGroup = (ViewGroup) view.getParent();
                        if (viewGroup != null) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(NPStringFog.decode(new byte[]{126, 19, 3, 2, 9, 0, 86, 21, 47, 4, 10, 4, 95, 4, 16}, "8abede", -1.936184476E9d), NPStringFog.decode(new byte[]{99, 69, 86, 87, 81, 89, 92, 112, 85, 82, 93, 91, 68, 70, 112, 91, 86, 76, 66, 90, 95, 88, 93, 74, 10, 21, 97, 81, 85, 87, 70, 92, 93, 83, 24, 78, 89, 80, 68, 20}, "053488", 1.52741576E9d) + view + NPStringFog.decode(new byte[]{25, 94, 74, 92, 11, 66, 90, 87, 86, 71, 7, 11, 87, 93, 74, 19}, "9883fb", -278729459L) + viewGroup);
                            }
                            viewGroup.removeView(view);
                        }
                        break;
                    case 2:
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(NPStringFog.decode(new byte[]{37, 22, 7, 82, 9, 0, 13, 16, 43, 84, 10, 4, 4, 1, 20}, "cdf5de", -4.76502277E8d), NPStringFog.decode(new byte[]{106, 69, 81, 1, 80, 87, 85, 112, 82, 4, 92, 85, 77, 70, 119, 13, 87, 66, 75, 90, 88, 14, 92, 68, 3, 21, 103, 7, 77, 66, 80, 91, 83, 66, 79, 95, 92, 66, 20}, "954b96", 6309) + view + NPStringFog.decode(new byte[]{67, 21, 92, 67, 103, 125, 48, 40, 113, 47, 116}, "ca3c14", -1.4935578E9f));
                        }
                        view.setVisibility(0);
                        break;
                    case 3:
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(NPStringFog.decode(new byte[]{34, 71, 80, 6, 84, 93, 10, 65, 124, 0, 87, 89, 3, 80, 67}, "d51a98", 1.731696E9f), NPStringFog.decode(new byte[]{107, 69, 1, 1, 92, 86, 84, 112, 2, 4, 80, 84, 76, 70, 39, 13, 91, 67, 74, 90, 8, 14, 80, 69, 2, 21, 55, 7, 65, 67, 81, 91, 3, 66, 67, 94, 93, 66, 68}, "85db57", -4.929723E8f) + view + NPStringFog.decode(new byte[]{67, 71, 88, 20, 114, 44, 45, 118}, "c3745c", false));
                        }
                        view.setVisibility(8);
                        break;
                    case 4:
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(NPStringFog.decode(new byte[]{34, 67, 81, 2, 88, 1, 10, 69, 125, 4, 91, 5, 3, 84, 66}, "d10e5d", -2124634799L), NPStringFog.decode(new byte[]{96, 64, 7, 83, 13, 82, 95, 117, 4, 86, 1, 80, 71, 67, 33, 95, 10, 71, 65, 95, 14, 92, 1, 65, 9, 16, 49, 85, 16, 71, 90, 94, 5, 16, 18, 90, 86, 71, 66}, "30b0d3", true) + view + NPStringFog.decode(new byte[]{66, 67, 95, 19, 112, 119, 52, 126, 99, 122, 123, 117, 39}, "b70399", 24773));
                        }
                        view.setVisibility(4);
                        break;
                }
            }
        }

        Operation(State state, LifecycleImpact lifecycleImpact, Fragment fragment, CancellationSignal cancellationSignal) {
            this.mFinalState = state;
            this.mLifecycleImpact = lifecycleImpact;
            this.mFragment = fragment;
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener(this) { // from class: androidx.fragment.app.SpecialEffectsController.Operation.1
                final Operation this$0;

                {
                    this.this$0 = this;
                }

                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                public void onCancel() {
                    this.this$0.cancel();
                }
            });
        }

        final void addCompletionListener(Runnable runnable) {
            this.mCompletionListeners.add(runnable);
        }

        final void cancel() {
            if (isCanceled()) {
                return;
            }
            this.mIsCanceled = true;
            if (this.mSpecialEffectsSignals.isEmpty()) {
                complete();
                return;
            }
            Iterator it = new ArrayList(this.mSpecialEffectsSignals).iterator();
            while (it.hasNext()) {
                ((CancellationSignal) it.next()).cancel();
            }
        }

        public void complete() {
            if (this.mIsComplete) {
                return;
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(NPStringFog.decode(new byte[]{115, 71, 89, 95, 92, 4, 91, 65, 117, 89, 95, 0, 82, 80, 74}, "55881a", false, false), NPStringFog.decode(new byte[]{98, 71, 92, 6, 15, 83, 93, 114, 95, 3, 3, 81, 69, 68, 122, 10, 8, 70, 67, 88, 85, 9, 3, 64, 11, 23}, "179ef2", false, true) + this + NPStringFog.decode(new byte[]{67, 80, 84, 70, 68, 81, 2, 84, 89, 80, 0, 18, 0, 87, 88, 69, 8, 87, 23, 93, 27}, "c855d2", false, false));
            }
            this.mIsComplete = true;
            Iterator<Runnable> it = this.mCompletionListeners.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
        }

        public final void completeSpecialEffect(CancellationSignal cancellationSignal) {
            if (this.mSpecialEffectsSignals.remove(cancellationSignal) && this.mSpecialEffectsSignals.isEmpty()) {
                complete();
            }
        }

        public State getFinalState() {
            return this.mFinalState;
        }

        public final Fragment getFragment() {
            return this.mFragment;
        }

        LifecycleImpact getLifecycleImpact() {
            return this.mLifecycleImpact;
        }

        final boolean isCanceled() {
            return this.mIsCanceled;
        }

        final boolean isComplete() {
            return this.mIsComplete;
        }

        public final void markStartedSpecialEffect(CancellationSignal cancellationSignal) {
            onStart();
            this.mSpecialEffectsSignals.add(cancellationSignal);
        }

        final void mergeWith(State state, LifecycleImpact lifecycleImpact) {
            switch (AnonymousClass3.$SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$LifecycleImpact[lifecycleImpact.ordinal()]) {
                case 1:
                    if (this.mFinalState == State.REMOVED) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(NPStringFog.decode(new byte[]{37, 22, 0, 95, 11, 93, 13, 16, 44, 89, 8, 89, 4, 1, 19}, "cda8f8", -1010227334L), NPStringFog.decode(new byte[]{102, 70, 80, 1, 11, 0, 89, 115, 83, 4, 7, 2, 65, 69, 118, 13, 12, 21, 71, 89, 89, 14, 7, 19, 15, 22, 115, 13, 16, 65, 83, 68, 84, 5, 15, 4, 91, 66, 21}, "565bba", false, false) + this.mFragment + NPStringFog.decode(new byte[]{70, 94, 117, 8, 12, 5, 10, 96, 71, 0, 22, 1, 70, 14, 19, 51, 39, 41, 41, 101, 118, 37, 66, 73, 88, 19, 101, 40, 49, 45, 36, 127, 118, 79, 66, 9, 42, 90, 85, 4, 1, 29, 5, 95, 86, 40, 15, 20, 7, 80, 71, 65, 95, 68}, "f33abd", 1.855234681E9d) + this.mLifecycleImpact + NPStringFog.decode(new byte[]{16, 21, 93, 21, 121, 116, 116, 40, 124, 114, 22}, "0a2580", false, true));
                        }
                        this.mFinalState = State.VISIBLE;
                        this.mLifecycleImpact = LifecycleImpact.ADDING;
                    }
                    break;
                case 2:
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(NPStringFog.decode(new byte[]{127, 68, 80, 6, 94, 0, 87, 66, 124, 0, 93, 4, 94, 83, 67}, "961a3e", -1720798035L), NPStringFog.decode(new byte[]{50, 19, 83, 5, 95, 89, 13, 38, 80, 0, 83, 91, 21, 16, 117, 9, 88, 76, 19, 12, 90, 10, 83, 74, 91, 67, 112, 9, 68, 24, 7, 17, 87, 1, 91, 93, 15, 23, 22}, "ac6f68", -1.753791253E9d) + this.mFragment + NPStringFog.decode(new byte[]{25, 15, 32, 81, 94, 3, 85, 49, 18, 89, 68, 7, 25, 95, 70}, "9bf80b", true) + this.mFinalState + NPStringFog.decode(new byte[]{22, 30, 15, 67, 99, 36, 123, 124, 103, 38, 117, 79, 22, 94, 125, 10, 87, 4, 85, 74, 82, 15, 84, 40, 91, 67, 80, 0, 69, 65, 22, 14, 17}, "631c1a", -1668308791L) + this.mLifecycleImpact + NPStringFog.decode(new byte[]{24, 67, 95, 16, 51, 117, 117, 120, 102, 121, 47, 119, 22}, "8700a0", true));
                    }
                    this.mFinalState = State.REMOVED;
                    this.mLifecycleImpact = LifecycleImpact.REMOVING;
                    break;
                case 3:
                    if (this.mFinalState != State.REMOVED) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(NPStringFog.decode(new byte[]{32, 65, 81, 1, 11, 84, 8, 71, 125, 7, 8, 80, 1, 86, 66}, "f30ff1", true, false), NPStringFog.decode(new byte[]{49, 65, 84, 83, 89, 80, 14, 116, 87, 86, 85, 82, 22, 66, 114, 95, 94, 69, 16, 94, 93, 92, 85, 67, 88, 17, 119, 95, 66, 17, 4, 67, 80, 87, 93, 84, 12, 69, 17}, "b11001", -1.21313971E8d) + this.mFragment + NPStringFog.decode(new byte[]{65, 11, 112, 90, 88, 88, 13, 53, 66, 82, 66, 92, 65, 91, 22}, "af6369", true) + this.mFinalState + NPStringFog.decode(new byte[]{68, 78, 15, 16}, "dc1036", -1.79131E9f) + state + NPStringFog.decode(new byte[]{29, 21}, "350574", false, true));
                        }
                        this.mFinalState = state;
                    }
                    break;
            }
        }

        void onStart() {
        }

        public String toString() {
            return NPStringFog.decode(new byte[]{122, 64, 1, 17, 89, 67, 92, 95, 10, 67}, "50dc87", -1925405574L) + NPStringFog.decode(new byte[]{25}, "b99de3", 1731050657L) + Integer.toHexString(System.identityHashCode(this)) + NPStringFog.decode(new byte[]{72, 65}, "5a5f68", false, false) + NPStringFog.decode(new byte[]{67}, "88ac7f", 2086640654L) + NPStringFog.decode(new byte[]{91, 118, 89, 13, 0, 8, 101, 68, 81, 23, 4, 68, 11, 16}, "600cad", -2.1085876E9f) + this.mFinalState + NPStringFog.decode(new byte[]{72, 65}, "5a7419", -303249683L) + NPStringFog.decode(new byte[]{31}, "d2d9ff", -2.07500746E8d) + NPStringFog.decode(new byte[]{94, 41, 93, 2, 3, 5, 74, 6, 88, 1, 47, 11, 67, 4, 87, 16, 70, 91, 19}, "3e4dff", 1.695515E9f) + this.mLifecycleImpact + NPStringFog.decode(new byte[]{73, 24}, "488d1a", 1915331768L) + NPStringFog.decode(new byte[]{26}, "a06b7f", -1588319804L) + NPStringFog.decode(new byte[]{90, 37, 67, 80, 5, 93, 82, 13, 69, 17, 95, 16}, "7c11b0", false, false) + this.mFragment + NPStringFog.decode(new byte[]{31}, "b6e3b5", -4.92471031E8d);
        }
    }

    SpecialEffectsController(ViewGroup viewGroup) {
        this.mContainer = viewGroup;
    }

    private void enqueue(Operation.State state, Operation.LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager) {
        synchronized (this.mPendingOperations) {
            CancellationSignal cancellationSignal = new CancellationSignal();
            Operation operationFindPendingOperation = findPendingOperation(fragmentStateManager.getFragment());
            if (operationFindPendingOperation != null) {
                operationFindPendingOperation.mergeWith(state, lifecycleImpact);
                return;
            }
            FragmentStateManagerOperation fragmentStateManagerOperation = new FragmentStateManagerOperation(state, lifecycleImpact, fragmentStateManager, cancellationSignal);
            this.mPendingOperations.add(fragmentStateManagerOperation);
            fragmentStateManagerOperation.addCompletionListener(new Runnable(this, fragmentStateManagerOperation) { // from class: androidx.fragment.app.SpecialEffectsController.1
                final SpecialEffectsController this$0;
                final FragmentStateManagerOperation val$operation;

                {
                    this.this$0 = this;
                    this.val$operation = fragmentStateManagerOperation;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (this.this$0.mPendingOperations.contains(this.val$operation)) {
                        this.val$operation.getFinalState().applyState(this.val$operation.getFragment().mView);
                    }
                }
            });
            fragmentStateManagerOperation.addCompletionListener(new Runnable(this, fragmentStateManagerOperation) { // from class: androidx.fragment.app.SpecialEffectsController.2
                final SpecialEffectsController this$0;
                final FragmentStateManagerOperation val$operation;

                {
                    this.this$0 = this;
                    this.val$operation = fragmentStateManagerOperation;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.this$0.mPendingOperations.remove(this.val$operation);
                    this.this$0.mRunningOperations.remove(this.val$operation);
                }
            });
        }
    }

    private Operation findPendingOperation(Fragment fragment) {
        for (Operation operation : this.mPendingOperations) {
            if (operation.getFragment().equals(fragment) && !operation.isCanceled()) {
                return operation;
            }
        }
        return null;
    }

    private Operation findRunningOperation(Fragment fragment) {
        for (Operation operation : this.mRunningOperations) {
            if (operation.getFragment().equals(fragment) && !operation.isCanceled()) {
                return operation;
            }
        }
        return null;
    }

    static SpecialEffectsController getOrCreateController(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return getOrCreateController(viewGroup, fragmentManager.getSpecialEffectsControllerFactory());
    }

    static SpecialEffectsController getOrCreateController(ViewGroup viewGroup, SpecialEffectsControllerFactory specialEffectsControllerFactory) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof SpecialEffectsController) {
            return (SpecialEffectsController) tag;
        }
        SpecialEffectsController specialEffectsControllerCreateController = specialEffectsControllerFactory.createController(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, specialEffectsControllerCreateController);
        return specialEffectsControllerCreateController;
    }

    private void updateFinalState() {
        for (Operation operation : this.mPendingOperations) {
            if (operation.getLifecycleImpact() == Operation.LifecycleImpact.ADDING) {
                operation.mergeWith(Operation.State.from(operation.getFragment().requireView().getVisibility()), Operation.LifecycleImpact.NONE);
            }
        }
    }

    void enqueueAdd(Operation.State state, FragmentStateManager fragmentStateManager) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(NPStringFog.decode(new byte[]{126, 70, 86, 2, 91, 83, 86, 64, 122, 4, 88, 87, 95, 81, 69}, "847e66", -1.15614534E9d), NPStringFog.decode(new byte[]{106, 19, 87, 85, 8, 80, 85, 38, 84, 80, 4, 82, 77, 16, 113, 89, 15, 69, 75, 12, 94, 90, 4, 67, 3, 67, 119, 88, 16, 68, 92, 22, 91, 88, 6, 17, 88, 7, 86, 22, 14, 65, 92, 17, 83, 66, 8, 94, 87, 67, 84, 89, 19, 17, 95, 17, 83, 81, 12, 84, 87, 23, 18}, "9c26a1", -16338) + fragmentStateManager.getFragment());
        }
        enqueue(state, Operation.LifecycleImpact.ADDING, fragmentStateManager);
    }

    void enqueueHide(FragmentStateManager fragmentStateManager) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(NPStringFog.decode(new byte[]{115, 70, 85, 6, 88, 86, 91, 64, 121, 0, 91, 82, 82, 81, 70}, "544a53", 24252), NPStringFog.decode(new byte[]{48, 72, 87, 84, 91, 80, 15, 125, 84, 81, 87, 82, 23, 75, 113, 88, 92, 69, 17, 87, 94, 91, 87, 67, 89, 24, 119, 89, 67, 68, 6, 77, 91, 89, 85, 17, 11, 81, 86, 82, 18, 94, 19, 93, 64, 86, 70, 88, 12, 86, 18, 81, 93, 67, 67, 94, 64, 86, 85, 92, 6, 86, 70, 23}, "c82721", true, true) + fragmentStateManager.getFragment());
        }
        enqueue(Operation.State.GONE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    void enqueueRemove(FragmentStateManager fragmentStateManager) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(NPStringFog.decode(new byte[]{119, 16, 0, 84, 85, 93, 95, 22, 44, 82, 86, 89, 86, 7, 19}, "1ba388", false, true), NPStringFog.decode(new byte[]{50, 71, 93, 90, 12, 80, 13, 114, 94, 95, 0, 82, 21, 68, 123, 86, 11, 69, 19, 88, 84, 85, 0, 67, 91, 23, 125, 87, 20, 68, 4, 66, 81, 87, 2, 17, 19, 82, 85, 86, 19, 84, 65, 88, 72, 92, 23, 80, 21, 94, 87, 87, 69, 87, 14, 69, 24, 95, 23, 80, 6, 90, 93, 87, 17, 17}, "a789e1", -13855) + fragmentStateManager.getFragment());
        }
        enqueue(Operation.State.REMOVED, Operation.LifecycleImpact.REMOVING, fragmentStateManager);
    }

    void enqueueShow(FragmentStateManager fragmentStateManager) {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(NPStringFog.decode(new byte[]{32, 16, 7, 2, 12, 85, 8, 22, 43, 4, 15, 81, 1, 7, 20}, "fbfea0", 2.073068E9f), NPStringFog.decode(new byte[]{48, 71, 86, 86, 91, 81, 15, 114, 85, 83, 87, 83, 23, 68, 112, 90, 92, 68, 17, 88, 95, 89, 87, 66, 89, 23, 118, 91, 67, 69, 6, 66, 90, 91, 85, 16, 16, 95, 92, 66, 18, 95, 19, 82, 65, 84, 70, 89, 12, 89, 19, 83, 93, 66, 67, 81, 65, 84, 85, 93, 6, 89, 71, 21}, "c73520", false) + fragmentStateManager.getFragment());
        }
        enqueue(Operation.State.VISIBLE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    abstract void executeOperations(List<Operation> list, boolean z);

    void executePendingOperations() {
        if (this.mIsContainerPostponed) {
            return;
        }
        if (!ViewCompat.isAttachedToWindow(this.mContainer)) {
            forceCompleteAllOperations();
            this.mOperationDirectionIsPop = false;
            return;
        }
        synchronized (this.mPendingOperations) {
            if (!this.mPendingOperations.isEmpty()) {
                ArrayList<Operation> arrayList = new ArrayList(this.mRunningOperations);
                this.mRunningOperations.clear();
                for (Operation operation : arrayList) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(NPStringFog.decode(new byte[]{114, 17, 5, 3, 93, 87, 90, 23, 41, 5, 94, 83, 83, 6, 22}, "4cdd02", 2.1252533E8f), NPStringFog.decode(new byte[]{54, 70, 87, 2, 95, 87, 9, 115, 84, 7, 83, 85, 17, 69, 113, 14, 88, 66, 23, 89, 94, 13, 83, 68, 95, 22, 113, 0, 88, 85, 0, 90, 94, 8, 88, 81, 69, 89, 66, 4, 68, 87, 17, 95, 93, 15, 22}, "e62a66", true, true) + operation);
                    }
                    operation.cancel();
                    if (!operation.isComplete()) {
                        this.mRunningOperations.add(operation);
                    }
                }
                updateFinalState();
                ArrayList arrayList2 = new ArrayList(this.mPendingOperations);
                this.mPendingOperations.clear();
                this.mRunningOperations.addAll(arrayList2);
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((Operation) it.next()).onStart();
                }
                executeOperations(arrayList2, this.mOperationDirectionIsPop);
                this.mOperationDirectionIsPop = false;
            }
        }
    }

    void forceCompleteAllOperations() {
        boolean zIsAttachedToWindow = ViewCompat.isAttachedToWindow(this.mContainer);
        synchronized (this.mPendingOperations) {
            updateFinalState();
            Iterator<Operation> it = this.mPendingOperations.iterator();
            while (it.hasNext()) {
                it.next().onStart();
            }
            for (Operation operation : new ArrayList(this.mRunningOperations)) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(NPStringFog.decode(new byte[]{99, 64, 92, 90, 13, 84, 92, 117, 95, 95, 1, 86, 68, 67, 122, 86, 10, 65, 66, 95, 85, 85, 1, 71, 10, 16}, "0099d5", 7.19928496E8d));
                    sb.append(zIsAttachedToWindow ? "" : NPStringFog.decode(new byte[]{122, 94, 92, 67, 5, 93, 87, 84, 64, 23}, "9127d4", -1544181898L) + this.mContainer + NPStringFog.decode(new byte[]{67, 90, 65, 22, 13, 88, 23, 19, 83, 66, 23, 86, 0, 91, 87, 82, 67, 67, 12, 19, 69, 95, 13, 83, 12, 68, 28, 22}, "c326c7", -13660));
                    sb.append(NPStringFog.decode(new byte[]{37, 81, 86, 84, 83, 95, 10, 89, 86, 80, 22, 65, 19, 94, 86, 94, 88, 84, 70, 95, 72, 82, 68, 82, 18, 89, 87, 89, 22}, "f08763", 560836437L));
                    sb.append(operation);
                    Log.v(NPStringFog.decode(new byte[]{119, 65, 4, 82, 95, 92, 95, 71, 40, 84, 92, 88, 86, 86, 23}, "13e529", -1714080325L), sb.toString());
                }
                operation.cancel();
            }
            for (Operation operation2 : new ArrayList(this.mPendingOperations)) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(NPStringFog.decode(new byte[]{48, 22, 4, 86, 89, 86, 15, 35, 7, 83, 85, 84, 23, 21, 34, 90, 94, 67, 17, 9, 13, 89, 85, 69, 89, 70}, "cfa507", -1846316726L));
                    sb2.append(zIsAttachedToWindow ? "" : NPStringFog.decode(new byte[]{39, 94, 87, 64, 5, 15, 10, 84, 75, 20}, "d194df", 775256536L) + this.mContainer + NPStringFog.decode(new byte[]{23, 91, 68, 25, 94, 86, 67, 18, 86, 77, 68, 88, 84, 90, 82, 93, 16, 77, 88, 18, 64, 80, 94, 93, 88, 69, 25, 25}, "727909", 1.461479965E9d));
                    sb2.append(NPStringFog.decode(new byte[]{117, 84, 90, 85, 92, 10, 90, 92, 90, 81, 25, 22, 83, 91, 80, 95, 87, 1, 22, 90, 68, 83, 75, 7, 66, 92, 91, 88, 25}, "65469f", -1539011108L));
                    sb2.append(operation2);
                    Log.v(NPStringFog.decode(new byte[]{35, 23, 7, 95, 90, 92, 11, 17, 43, 89, 89, 88, 2, 0, 20}, "eef879", -1.733329642E9d), sb2.toString());
                }
                operation2.cancel();
            }
        }
    }

    void forcePostponedExecutePendingOperations() {
        if (this.mIsContainerPostponed) {
            this.mIsContainerPostponed = false;
            executePendingOperations();
        }
    }

    Operation.LifecycleImpact getAwaitingCompletionLifecycleImpact(FragmentStateManager fragmentStateManager) {
        Operation operationFindPendingOperation = findPendingOperation(fragmentStateManager.getFragment());
        Operation.LifecycleImpact lifecycleImpact = operationFindPendingOperation != null ? operationFindPendingOperation.getLifecycleImpact() : null;
        Operation operationFindRunningOperation = findRunningOperation(fragmentStateManager.getFragment());
        return operationFindRunningOperation != null ? (lifecycleImpact == null || lifecycleImpact == Operation.LifecycleImpact.NONE) ? operationFindRunningOperation.getLifecycleImpact() : lifecycleImpact : lifecycleImpact;
    }

    public ViewGroup getContainer() {
        return this.mContainer;
    }

    void markPostponedState() {
        synchronized (this.mPendingOperations) {
            updateFinalState();
            this.mIsContainerPostponed = false;
            int size = this.mPendingOperations.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                Operation operation = this.mPendingOperations.get(size);
                Operation.State stateFrom = Operation.State.from(operation.getFragment().mView);
                if (operation.getFinalState() == Operation.State.VISIBLE && stateFrom != Operation.State.VISIBLE) {
                    this.mIsContainerPostponed = operation.getFragment().isPostponed();
                    break;
                }
                size--;
            }
        }
    }

    void updateOperationDirection(boolean z) {
        this.mOperationDirectionIsPop = z;
    }
}

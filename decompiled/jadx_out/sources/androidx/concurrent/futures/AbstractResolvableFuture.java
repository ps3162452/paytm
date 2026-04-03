package androidx.concurrent.futures;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import n.NPStringFog;

/* JADX INFO: loaded from: classes8.dex */
public abstract class AbstractResolvableFuture<V> implements ListenableFuture<V> {
    static final AtomicHelper ATOMIC_HELPER;
    private static final Object NULL;
    private static final long SPIN_THRESHOLD_NANOS = 1000;
    volatile Listener listeners;
    volatile Object value;
    volatile Waiter waiters;
    static final boolean GENERATE_CANCELLATION_CAUSES = Boolean.parseBoolean(System.getProperty(NPStringFog.decode(new byte[]{1, 77, 82, 70, 3, 27, 5, 87, 93, 83, 23, 71, 20, 93, 93, 68, 76, 82, 3, 86, 86, 66, 3, 65, 3, 103, 80, 81, 12, 86, 3, 84, 95, 81, 22, 92, 9, 86, 108, 83, 3, 64, 21, 93}, "f830b5", -6.26376118E8d), NPStringFog.decode(new byte[]{3, 4, 15, 66, 0}, "eec1e6", -11933)));
    private static final Logger log = Logger.getLogger(AbstractResolvableFuture.class.getName());

    private static abstract class AtomicHelper {
        private AtomicHelper() {
        }

        abstract boolean casListeners(AbstractResolvableFuture<?> abstractResolvableFuture, Listener listener, Listener listener2);

        abstract boolean casValue(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2);

        abstract boolean casWaiters(AbstractResolvableFuture<?> abstractResolvableFuture, Waiter waiter, Waiter waiter2);

        abstract void putNext(Waiter waiter, Waiter waiter2);

        abstract void putThread(Waiter waiter, Thread thread);
    }

    private static final class Cancellation {
        static final Cancellation CAUSELESS_CANCELLED;
        static final Cancellation CAUSELESS_INTERRUPTED;
        final Throwable cause;
        final boolean wasInterrupted;

        static {
            if (AbstractResolvableFuture.GENERATE_CANCELLATION_CAUSES) {
                CAUSELESS_CANCELLED = null;
                CAUSELESS_INTERRUPTED = null;
            } else {
                CAUSELESS_CANCELLED = new Cancellation(false, null);
                CAUSELESS_INTERRUPTED = new Cancellation(true, null);
            }
        }

        Cancellation(boolean z, Throwable th) {
            this.wasInterrupted = z;
            this.cause = th;
        }
    }

    private static final class Failure {
        static final Failure FALLBACK_INSTANCE = new Failure(new Throwable(NPStringFog.decode(new byte[]{36, 5, 95, 84, 16, 66, 7, 68, 89, 91, 6, 69, 16, 22, 83, 92, 69, 71, 10, 13, 90, 93, 69, 68, 16, 29, 95, 86, 2, 16, 22, 11, 22, 94, 12, 94, 11, 23, 94, 24, 4, 16, 4, 17, 66, 77, 23, 85, 76}, "bd68e0", -27415)) { // from class: androidx.concurrent.futures.AbstractResolvableFuture.Failure.1
            @Override // java.lang.Throwable
            public Throwable fillInStackTrace() {
                synchronized (this) {
                }
                return this;
            }
        });
        final Throwable exception;

        Failure(Throwable th) {
            this.exception = (Throwable) AbstractResolvableFuture.checkNotNull(th);
        }
    }

    private static final class Listener {
        static final Listener TOMBSTONE = new Listener(null, null);
        final Executor executor;
        Listener next;
        final Runnable task;

        Listener(Runnable runnable, Executor executor) {
            this.task = runnable;
            this.executor = executor;
        }
    }

    private static final class SafeAtomicHelper extends AtomicHelper {
        final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Listener> listenersUpdater;
        final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> valueUpdater;
        final AtomicReferenceFieldUpdater<Waiter, Waiter> waiterNextUpdater;
        final AtomicReferenceFieldUpdater<Waiter, Thread> waiterThreadUpdater;
        final AtomicReferenceFieldUpdater<AbstractResolvableFuture, Waiter> waitersUpdater;

        SafeAtomicHelper(AtomicReferenceFieldUpdater<Waiter, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<Waiter, Waiter> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Waiter> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Listener> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<AbstractResolvableFuture, Object> atomicReferenceFieldUpdater5) {
            super();
            this.waiterThreadUpdater = atomicReferenceFieldUpdater;
            this.waiterNextUpdater = atomicReferenceFieldUpdater2;
            this.waitersUpdater = atomicReferenceFieldUpdater3;
            this.listenersUpdater = atomicReferenceFieldUpdater4;
            this.valueUpdater = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean casListeners(AbstractResolvableFuture<?> abstractResolvableFuture, Listener listener, Listener listener2) {
            return this.listenersUpdater.compareAndSet(abstractResolvableFuture, listener, listener2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean casValue(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            return this.valueUpdater.compareAndSet(abstractResolvableFuture, obj, obj2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean casWaiters(AbstractResolvableFuture<?> abstractResolvableFuture, Waiter waiter, Waiter waiter2) {
            return this.waitersUpdater.compareAndSet(abstractResolvableFuture, waiter, waiter2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void putNext(Waiter waiter, Waiter waiter2) {
            this.waiterNextUpdater.lazySet(waiter, waiter2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void putThread(Waiter waiter, Thread thread) {
            this.waiterThreadUpdater.lazySet(waiter, thread);
        }
    }

    private static final class SetFuture<V> implements Runnable {
        final ListenableFuture<? extends V> future;
        final AbstractResolvableFuture<V> owner;

        SetFuture(AbstractResolvableFuture<V> abstractResolvableFuture, ListenableFuture<? extends V> listenableFuture) {
            this.owner = abstractResolvableFuture;
            this.future = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.owner.value != this) {
                return;
            }
            if (AbstractResolvableFuture.ATOMIC_HELPER.casValue(this.owner, this, AbstractResolvableFuture.getFutureValue(this.future))) {
                AbstractResolvableFuture.complete(this.owner);
            }
        }
    }

    private static final class SynchronizedHelper extends AtomicHelper {
        SynchronizedHelper() {
            super();
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean casListeners(AbstractResolvableFuture<?> abstractResolvableFuture, Listener listener, Listener listener2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.listeners != listener) {
                    return false;
                }
                abstractResolvableFuture.listeners = listener2;
                return true;
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean casValue(AbstractResolvableFuture<?> abstractResolvableFuture, Object obj, Object obj2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.value != obj) {
                    return false;
                }
                abstractResolvableFuture.value = obj2;
                return true;
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        boolean casWaiters(AbstractResolvableFuture<?> abstractResolvableFuture, Waiter waiter, Waiter waiter2) {
            synchronized (abstractResolvableFuture) {
                if (abstractResolvableFuture.waiters != waiter) {
                    return false;
                }
                abstractResolvableFuture.waiters = waiter2;
                return true;
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void putNext(Waiter waiter, Waiter waiter2) {
            waiter.next = waiter2;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.AtomicHelper
        void putThread(Waiter waiter, Thread thread) {
            waiter.thread = thread;
        }
    }

    private static final class Waiter {
        static final Waiter TOMBSTONE = new Waiter(false);
        volatile Waiter next;
        volatile Thread thread;

        Waiter() {
            AbstractResolvableFuture.ATOMIC_HELPER.putThread(this, Thread.currentThread());
        }

        Waiter(boolean z) {
        }

        void setNext(Waiter waiter) {
            AbstractResolvableFuture.ATOMIC_HELPER.putNext(this, waiter);
        }

        void unpark() {
            Thread thread = this.thread;
            if (thread != null) {
                this.thread = null;
                LockSupport.unpark(thread);
            }
        }
    }

    static {
        AtomicHelper synchronizedHelper;
        try {
            synchronizedHelper = new SafeAtomicHelper(AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Thread.class, NPStringFog.decode(new byte[]{22, 90, 75, 87, 3, 83}, "b292b7", false, true)), AtomicReferenceFieldUpdater.newUpdater(Waiter.class, Waiter.class, NPStringFog.decode(new byte[]{11, 1, 65, 17}, "ed9ea0", -1.6832093E9f)), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Waiter.class, NPStringFog.decode(new byte[]{18, 88, 12, 64, 81, 20, 22}, "e9e44f", false, true)), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Listener.class, NPStringFog.decode(new byte[]{93, 15, 68, 64, 83, 8, 84, 20, 68}, "1f746f", -6.2071036E7f)), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, NPStringFog.decode(new byte[]{23, 82, 14, 23, 93}, "a3bb8e", -1.7052444E9f)));
            th = null;
        } catch (Throwable th) {
            th = th;
            synchronizedHelper = new SynchronizedHelper();
        }
        ATOMIC_HELPER = synchronizedHelper;
        if (th != null) {
            log.log(Level.SEVERE, NPStringFog.decode(new byte[]{103, 86, 83, 93, 32, 64, 91, 90, 92, 91, 41, 81, 88, 71, 80, 74, 65, 93, 71, 23, 87, 74, 14, 95, 81, 89, 20}, "4758a4", false, true), th);
        }
        NULL = new Object();
    }

    protected AbstractResolvableFuture() {
    }

    private void addDoneString(StringBuilder sb) {
        try {
            Object uninterruptibly = getUninterruptibly(this);
            sb.append(NPStringFog.decode(new byte[]{102, 48, 115, 34, 118, 50, 102, 73, 16, 19, 86, 18, 64, 9, 68, 92, 104}, "5e0a3a", 1.330709203E9d));
            sb.append(userObjectToString(uninterruptibly));
            sb.append(NPStringFog.decode(new byte[]{57}, "d5d788", 12547));
        } catch (CancellationException e) {
            sb.append(NPStringFog.decode(new byte[]{119, 32, 125, 119, 117, 124, 120, 36, 119}, "4a3400", true, true));
        } catch (RuntimeException e2) {
            sb.append(NPStringFog.decode(new byte[]{48, 124, 47, 120, 119, 54, 43, 30, 68, 85, 89, 20, 22, 87, 89, 109}, "e2d68a", 1.136558477E9d));
            sb.append(e2.getClass());
            sb.append(NPStringFog.decode(new byte[]{23, 68, 11, 23, 93, 22, 89, 16, 5, 23, 93, 12, 23, 87, 6, 17, 26, 72, 106}, "70ce2a", -2.1373165E9f));
        } catch (ExecutionException e3) {
            sb.append(NPStringFog.decode(new byte[]{114, 34, 40, 124, 102, 99, 113, 79, 65, 83, 82, 68, 71, 6, 92, 107}, "4ca031", -7.07853789E8d));
            sb.append(e3.getCause());
            sb.append(NPStringFog.decode(new byte[]{105}, "4a4a27", true));
        }
    }

    private static CancellationException cancellationExceptionWithCause(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    private Listener clearListeners(Listener listener) {
        Listener listener2;
        do {
            listener2 = this.listeners;
        } while (!ATOMIC_HELPER.casListeners(this, listener2, Listener.TOMBSTONE));
        while (listener2 != null) {
            Listener listener3 = listener2.next;
            listener2.next = listener;
            listener = listener2;
            listener2 = listener3;
        }
        return listener;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    static void complete(AbstractResolvableFuture<?> abstractResolvableFuture) {
        Listener listener;
        Listener listener2 = null;
        while (true) {
            abstractResolvableFuture.releaseWaiters();
            abstractResolvableFuture.afterDone();
            Listener listenerClearListeners = abstractResolvableFuture.clearListeners(listener2);
            while (listenerClearListeners != null) {
                listener = listenerClearListeners.next;
                Runnable runnable = listenerClearListeners.task;
                if (runnable instanceof SetFuture) {
                    SetFuture setFuture = (SetFuture) runnable;
                    abstractResolvableFuture = setFuture.owner;
                    if (abstractResolvableFuture.value == setFuture) {
                        if (ATOMIC_HELPER.casValue(abstractResolvableFuture, setFuture, getFutureValue(setFuture.future))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    executeListener(runnable, listenerClearListeners.executor);
                }
                listenerClearListeners = listener;
            }
            return;
            listener2 = listener;
        }
    }

    private static void executeListener(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            log.log(Level.SEVERE, NPStringFog.decode(new byte[]{100, 76, 11, 64, 13, 89, 83, 124, 29, 87, 1, 68, 66, 80, 10, 90, 68, 67, 94, 80, 9, 81, 68, 81, 78, 92, 6, 65, 16, 93, 88, 94, 69, 70, 17, 90, 88, 88, 7, 88, 1, 20}, "69e4d4", true) + runnable + NPStringFog.decode(new byte[]{21, 64, 88, 71, 95, 16, 80, 79, 84, 80, 66, 68, 90, 69, 17}, "571370", true, false) + executor, (Throwable) e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private V getDoneValue(Object obj) throws ExecutionException {
        if (obj instanceof Cancellation) {
            throw cancellationExceptionWithCause(NPStringFog.decode(new byte[]{97, 3, 22, 92, 68, 22, 84, 17, 69, 84, 5, 15, 86, 7, 9, 91, 1, 5, 27}, "5be7da", -649550967L), ((Cancellation) obj).cause);
        }
        if (obj instanceof Failure) {
            throw new ExecutionException(((Failure) obj).exception);
        }
        if (obj == NULL) {
            return null;
        }
        return obj;
    }

    static Object getFutureValue(ListenableFuture<?> listenableFuture) {
        if (listenableFuture instanceof AbstractResolvableFuture) {
            Object obj = ((AbstractResolvableFuture) listenableFuture).value;
            if (!(obj instanceof Cancellation)) {
                return obj;
            }
            Cancellation cancellation = (Cancellation) obj;
            return cancellation.wasInterrupted ? cancellation.cause != null ? new Cancellation(false, cancellation.cause) : Cancellation.CAUSELESS_CANCELLED : obj;
        }
        boolean zIsCancelled = listenableFuture.isCancelled();
        if ((!GENERATE_CANCELLATION_CAUSES) && zIsCancelled) {
            return Cancellation.CAUSELESS_CANCELLED;
        }
        try {
            Object uninterruptibly = getUninterruptibly(listenableFuture);
            if (uninterruptibly == null) {
                uninterruptibly = NULL;
            }
            return uninterruptibly;
        } catch (CancellationException e) {
            if (zIsCancelled) {
                return new Cancellation(false, e);
            }
            return new Failure(new IllegalArgumentException(NPStringFog.decode(new byte[]{6, 7, 21, 73, 24, 21, 21, 10, 19, 4, 70, 21, 34, 3, 15, 2, 84, 89, 13, 3, 21, 8, 94, 91, 36, 26, 2, 4, 65, 65, 8, 13, 15, 77, 17, 81, 4, 17, 17, 8, 69, 80, 65, 16, 4, 17, 94, 71, 21, 11, 15, 6, 17, 92, 18, 33, 0, 15, 82, 80, 13, 14, 4, 5, 25, 28, 65, 95, 92, 65, 87, 84, 13, 17, 4, 91, 17}, "abaa15", 1.2378604E9f) + listenableFuture, e));
        } catch (ExecutionException e2) {
            return new Failure(e2.getCause());
        } catch (Throwable th) {
            return new Failure(th);
        }
    }

    static <V> V getUninterruptibly(Future<V> future) throws ExecutionException {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException e) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    private void releaseWaiters() {
        Waiter waiter;
        do {
            waiter = this.waiters;
        } while (!ATOMIC_HELPER.casWaiters(this, waiter, Waiter.TOMBSTONE));
        while (waiter != null) {
            waiter.unpark();
            waiter = waiter.next;
        }
    }

    private void removeWaiter(Waiter waiter) {
        waiter.thread = null;
        while (true) {
            Waiter waiter2 = this.waiters;
            if (waiter2 == Waiter.TOMBSTONE) {
                return;
            }
            Waiter waiter3 = null;
            while (waiter2 != null) {
                Waiter waiter4 = waiter2.next;
                if (waiter2.thread == null) {
                    if (waiter3 != null) {
                        waiter3.next = waiter4;
                        if (waiter3.thread == null) {
                            break;
                        }
                        waiter2 = waiter3;
                    } else {
                        if (!ATOMIC_HELPER.casWaiters(this, waiter2, waiter4)) {
                            break;
                        }
                        waiter2 = waiter3;
                    }
                }
                waiter3 = waiter2;
                waiter2 = waiter4;
            }
            return;
        }
    }

    private String userObjectToString(Object obj) {
        return obj == this ? NPStringFog.decode(new byte[]{71, 94, 81, 21, 65, 3, 70, 66, 77, 20, 4}, "368fae", -1.886441359E9d) : String.valueOf(obj);
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        checkNotNull(runnable);
        checkNotNull(executor);
        Listener listener = this.listeners;
        if (listener != Listener.TOMBSTONE) {
            Listener listener2 = new Listener(runnable, executor);
            do {
                listener2.next = listener;
                if (ATOMIC_HELPER.casListeners(this, listener, listener2)) {
                    return;
                } else {
                    listener = this.listeners;
                }
            } while (listener != Listener.TOMBSTONE);
        }
        executeListener(runnable, executor);
    }

    protected void afterDone() {
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        Object obj = this.value;
        if (!(obj == null) && !(obj instanceof SetFuture)) {
            return false;
        }
        Cancellation cancellation = GENERATE_CANCELLATION_CAUSES ? new Cancellation(z, new CancellationException(NPStringFog.decode(new byte[]{112, 64, 69, 20, 70, 4, 24, 86, 80, 15, 87, 4, 90, 29, 24, 65, 67, 0, 69, 21, 82, 0, 88, 13, 83, 81, 31}, "651a4a", 1.293376872E9d))) : z ? Cancellation.CAUSELESS_INTERRUPTED : Cancellation.CAUSELESS_CANCELLED;
        Object obj2 = obj;
        boolean z2 = false;
        while (true) {
            if (ATOMIC_HELPER.casValue(this, obj2, cancellation)) {
                if (z) {
                    this.interruptTask();
                }
                complete(this);
                if (!(obj2 instanceof SetFuture)) {
                    return true;
                }
                ListenableFuture<? extends V> listenableFuture = ((SetFuture) obj2).future;
                if (!(listenableFuture instanceof AbstractResolvableFuture)) {
                    listenableFuture.cancel(z);
                    return true;
                }
                AbstractResolvableFuture<V> abstractResolvableFuture = (AbstractResolvableFuture) listenableFuture;
                Object obj3 = abstractResolvableFuture.value;
                if (!(obj3 == null) && !(obj3 instanceof SetFuture)) {
                    return true;
                }
                this = abstractResolvableFuture;
                obj2 = obj3;
                z2 = true;
            } else {
                obj2 = this.value;
                if (!(obj2 instanceof SetFuture)) {
                    return z2;
                }
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.value;
        if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
            return getDoneValue(obj2);
        }
        Waiter waiter = this.waiters;
        if (waiter != Waiter.TOMBSTONE) {
            Waiter waiter2 = new Waiter();
            do {
                waiter2.setNext(waiter);
                if (ATOMIC_HELPER.casWaiters(this, waiter, waiter2)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            removeWaiter(waiter2);
                            throw new InterruptedException();
                        }
                        obj = this.value;
                    } while (!((obj != null) & (!(obj instanceof SetFuture))));
                    return getDoneValue(obj);
                }
                waiter = this.waiters;
            } while (waiter != Waiter.TOMBSTONE);
        }
        return getDoneValue(this.value);
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.value;
        if ((obj != null) && (!(obj instanceof SetFuture))) {
            return getDoneValue(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= SPIN_THRESHOLD_NANOS) {
            Waiter waiter = this.waiters;
            if (waiter != Waiter.TOMBSTONE) {
                Waiter waiter2 = new Waiter();
                do {
                    waiter2.setNext(waiter);
                    if (ATOMIC_HELPER.casWaiters(this, waiter, waiter2)) {
                        long jNanoTime2 = nanos;
                        do {
                            LockSupport.parkNanos(this, jNanoTime2);
                            if (Thread.interrupted()) {
                                removeWaiter(waiter2);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.value;
                            if ((obj2 != null) && (!(obj2 instanceof SetFuture))) {
                                return getDoneValue(obj2);
                            }
                            jNanoTime2 = jNanoTime - System.nanoTime();
                        } while (jNanoTime2 >= SPIN_THRESHOLD_NANOS);
                        removeWaiter(waiter2);
                        nanos = jNanoTime2;
                    } else {
                        waiter = this.waiters;
                    }
                } while (waiter != Waiter.TOMBSTONE);
            }
            return getDoneValue(this.value);
        }
        while (nanos > 0) {
            Object obj3 = this.value;
            if ((obj3 != null) && (!(obj3 instanceof SetFuture))) {
                return getDoneValue(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
        String str = NPStringFog.decode(new byte[]{102, 81, 80, 68, 6, 7, 17}, "1090cc", true) + j + " " + timeUnit.toString().toLowerCase(Locale.ROOT);
        if (SPIN_THRESHOLD_NANOS + nanos < 0) {
            String str2 = str + NPStringFog.decode(new byte[]{65, 77, 17, 15, 17, 75, 65}, "aeacd8", -1781819269L);
            long j2 = -nanos;
            long jConvert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == 0 || nanos2 > SPIN_THRESHOLD_NANOS;
            if (jConvert > 0) {
                String str3 = str2 + jConvert + " " + lowerCase;
                if (z) {
                    str3 = str3 + NPStringFog.decode(new byte[]{26}, "6ee3b3", -1.585321016E9d);
                }
                str2 = str3 + " ";
            }
            if (z) {
                str2 = str2 + nanos2 + NPStringFog.decode(new byte[]{69, 89, 89, 94, 86, 22, 0, 84, 87, 94, 93, 22, 69}, "e7809e", -18585);
            }
            str = str2 + NPStringFog.decode(new byte[]{80, 3, 92, 4, 28, 31}, "4f0ee6", -2.2851678E8f);
        }
        if (isDone()) {
            throw new TimeoutException(str + NPStringFog.decode(new byte[]{67, 81, 76, 69, 24, 3, 22, 71, 76, 67, 93, 69, 0, 92, 84, 65, 84, 0, 23, 86, 93, 17, 89, 22, 67, 71, 80, 92, 93, 10, 22, 71, 25, 84, 64, 21, 10, 65, 92, 85}, "c3918e", 1.964274122E9d));
        }
        throw new TimeoutException(str + NPStringFog.decode(new byte[]{69, 87, 95, 75, 67}, "e109c1", false) + string);
    }

    protected void interruptTask() {
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.value instanceof Cancellation;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (this.value != null) & (!(r1 instanceof SetFuture));
    }

    final void maybePropagateCancellationTo(Future<?> future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected String pendingToString() {
        Object obj = this.value;
        if (obj instanceof SetFuture) {
            return NPStringFog.decode(new byte[]{70, 82, 22, 118, 16, 70, 64, 69, 7, 13, 62}, "57b0e2", -2008776184L) + userObjectToString(((SetFuture) obj).future) + NPStringFog.decode(new byte[]{63}, "b1e8fb", -5559);
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return NPStringFog.decode(new byte[]{17, 81, 12, 7, 12, 12, 10, 90, 6, 70, 1, 7, 15, 85, 24, 91, 62}, "c4afeb", -1.9875453E9f) + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + NPStringFog.decode(new byte[]{22, 93, 18, 60}, "60aa25", -4956);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    protected boolean set(V v) {
        if (v == null) {
            v = (V) NULL;
        }
        if (!ATOMIC_HELPER.casValue(this, null, v)) {
            return false;
        }
        complete(this);
        return true;
    }

    protected boolean setException(Throwable th) {
        if (!ATOMIC_HELPER.casValue(this, null, new Failure((Throwable) checkNotNull(th)))) {
            return false;
        }
        complete(this);
        return true;
    }

    protected boolean setFuture(ListenableFuture<? extends V> listenableFuture) {
        Failure failure;
        checkNotNull(listenableFuture);
        Object obj = this.value;
        if (obj == null) {
            if (listenableFuture.isDone()) {
                if (!ATOMIC_HELPER.casValue(this, null, getFutureValue(listenableFuture))) {
                    return false;
                }
                complete(this);
                return true;
            }
            SetFuture setFuture = new SetFuture(this, listenableFuture);
            if (ATOMIC_HELPER.casValue(this, null, setFuture)) {
                try {
                    listenableFuture.addListener(setFuture, DirectExecutor.INSTANCE);
                } catch (Throwable th) {
                    try {
                        failure = new Failure(th);
                    } catch (Throwable th2) {
                        failure = Failure.FALLBACK_INSTANCE;
                    }
                    ATOMIC_HELPER.casValue(this, setFuture, failure);
                }
                return true;
            }
            obj = this.value;
        }
        if (obj instanceof Cancellation) {
            listenableFuture.cancel(((Cancellation) obj).wasInterrupted);
        }
        return false;
    }

    public String toString() {
        String strPendingToString;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        StringBuilder sbAppend = sb.append(NPStringFog.decode(new byte[]{105, 17, 65, 7, 69, 77, 65, 95}, "2b5f18", 5901));
        if (isCancelled()) {
            sbAppend.append(NPStringFog.decode(new byte[]{39, 35, 125, 122, 116, 47, 40, 39, 119}, "db391c", -857682130L));
        } else if (isDone()) {
            addDoneString(sbAppend);
        } else {
            try {
                strPendingToString = pendingToString();
            } catch (RuntimeException e) {
                strPendingToString = NPStringFog.decode(new byte[]{118, 79, 84, 87, 18, 68, 90, 88, 89, 18, 22, 88, 65, 88, 64, 92, 66, 86, 65, 88, 90, 18, 11, 93, 67, 91, 82, 95, 7, 94, 71, 86, 67, 91, 13, 94, 9, 23}, "3772b0", 771958616L) + e.getClass();
            }
            if (strPendingToString != null && !strPendingToString.isEmpty()) {
                sbAppend.append(NPStringFog.decode(new byte[]{102, 116, 119, 32, 122, 43, 113, 29, 25, 13, 93, 3, 89, 12, 98}, "619d3e", true, true));
                sbAppend.append(strPendingToString);
                sbAppend.append(NPStringFog.decode(new byte[]{110}, "346060", true));
            } else if (isDone()) {
                addDoneString(sbAppend);
            } else {
                sbAppend.append(NPStringFog.decode(new byte[]{105, 35, 127, 116, 120, 44, 126}, "9f101b", false));
            }
        }
        sbAppend.append(NPStringFog.decode(new byte[]{109}, "02f9ed", 2175));
        return sbAppend.toString();
    }

    protected final boolean wasInterrupted() {
        Object obj = this.value;
        return (obj instanceof Cancellation) && ((Cancellation) obj).wasInterrupted;
    }
}

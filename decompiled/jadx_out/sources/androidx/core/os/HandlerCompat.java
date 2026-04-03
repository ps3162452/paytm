package androidx.core.os;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class HandlerCompat {
    private static final String TAG = NPStringFog.decode(new byte[]{113, 4, 8, 0, 91, 86, 75, 38, 9, 9, 71, 82, 77}, "9efd73", -7.60731204E8d);

    private static class Api28Impl {
        private Api28Impl() {
        }

        public static Handler createAsync(Looper looper) {
            return Handler.createAsync(looper);
        }

        public static Handler createAsync(Looper looper, Handler.Callback callback) {
            return Handler.createAsync(looper, callback);
        }

        public static boolean postDelayed(Handler handler, Runnable runnable, Object obj, long j) {
            return handler.postDelayed(runnable, obj, j);
        }
    }

    private static class Api29Impl {
        private Api29Impl() {
        }

        public static boolean hasCallbacks(Handler handler, Runnable runnable) {
            return handler.hasCallbacks(runnable);
        }
    }

    private HandlerCompat() {
    }

    public static Handler createAsync(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.createAsync(looper);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, true);
            } catch (IllegalAccessException e) {
                e = e;
                Log.w(TAG, NPStringFog.decode(new byte[]{97, 10, 86, 0, 13, 7, 20, 16, 88, 66, 8, 12, 66, 11, 92, 7, 65, 42, 85, 10, 83, 14, 4, 16, 28, 40, 88, 13, 17, 7, 70, 72, 23, 33, 0, 14, 88, 6, 86, 1, 10, 78, 20, 6, 88, 13, 13, 7, 85, 10, 30, 66, 2, 13, 90, 23, 67, 16, 20, 1, 64, 11, 69}, "4d7bab", false, false), e);
                return new Handler(looper);
            } catch (InstantiationException e2) {
                e = e2;
                Log.w(TAG, NPStringFog.decode(new byte[]{97, 10, 86, 0, 13, 7, 20, 16, 88, 66, 8, 12, 66, 11, 92, 7, 65, 42, 85, 10, 83, 14, 4, 16, 28, 40, 88, 13, 17, 7, 70, 72, 23, 33, 0, 14, 88, 6, 86, 1, 10, 78, 20, 6, 88, 13, 13, 7, 85, 10, 30, 66, 2, 13, 90, 23, 67, 16, 20, 1, 64, 11, 69}, "4d7bab", false, false), e);
                return new Handler(looper);
            } catch (NoSuchMethodException e3) {
                e = e3;
                Log.w(TAG, NPStringFog.decode(new byte[]{97, 10, 86, 0, 13, 7, 20, 16, 88, 66, 8, 12, 66, 11, 92, 7, 65, 42, 85, 10, 83, 14, 4, 16, 28, 40, 88, 13, 17, 7, 70, 72, 23, 33, 0, 14, 88, 6, 86, 1, 10, 78, 20, 6, 88, 13, 13, 7, 85, 10, 30, 66, 2, 13, 90, 23, 67, 16, 20, 1, 64, 11, 69}, "4d7bab", false, false), e);
                return new Handler(looper);
            } catch (InvocationTargetException e4) {
                Throwable cause = e4.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException(cause);
            }
        }
        return new Handler(looper);
    }

    public static Handler createAsync(Looper looper, Handler.Callback callback) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.createAsync(looper, callback);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, callback, true);
            } catch (IllegalAccessException e) {
                e = e;
                Log.w(TAG, NPStringFog.decode(new byte[]{97, 89, 83, 81, 8, 0, 20, 67, 93, 19, 13, 11, 66, 88, 89, 86, 68, 45, 85, 89, 86, 95, 1, 23, 28, 123, 93, 92, 20, 0, 70, 27, 18, 112, 5, 9, 88, 85, 83, 80, 15, 73, 20, 85, 93, 92, 8, 0, 85, 89, 27, 19, 7, 10, 90, 68, 70, 65, 17, 6, 64, 88, 64}, "4723de", false), e);
                return new Handler(looper, callback);
            } catch (InstantiationException e2) {
                e = e2;
                Log.w(TAG, NPStringFog.decode(new byte[]{97, 89, 83, 81, 8, 0, 20, 67, 93, 19, 13, 11, 66, 88, 89, 86, 68, 45, 85, 89, 86, 95, 1, 23, 28, 123, 93, 92, 20, 0, 70, 27, 18, 112, 5, 9, 88, 85, 83, 80, 15, 73, 20, 85, 93, 92, 8, 0, 85, 89, 27, 19, 7, 10, 90, 68, 70, 65, 17, 6, 64, 88, 64}, "4723de", false), e);
                return new Handler(looper, callback);
            } catch (NoSuchMethodException e3) {
                e = e3;
                Log.w(TAG, NPStringFog.decode(new byte[]{97, 89, 83, 81, 8, 0, 20, 67, 93, 19, 13, 11, 66, 88, 89, 86, 68, 45, 85, 89, 86, 95, 1, 23, 28, 123, 93, 92, 20, 0, 70, 27, 18, 112, 5, 9, 88, 85, 83, 80, 15, 73, 20, 85, 93, 92, 8, 0, 85, 89, 27, 19, 7, 10, 90, 68, 70, 65, 17, 6, 64, 88, 64}, "4723de", false), e);
                return new Handler(looper, callback);
            } catch (InvocationTargetException e4) {
                Throwable cause = e4.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException(cause);
            }
        }
        return new Handler(looper, callback);
    }

    public static boolean hasCallbacks(Handler handler, Runnable runnable) {
        Throwable e = null;
        if (Build.VERSION.SDK_INT >= 29) {
            return Api29Impl.hasCallbacks(handler, runnable);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                return ((Boolean) Handler.class.getMethod(NPStringFog.decode(new byte[]{94, 81, 65, 37, 4, 88, 90, 82, 83, 5, 14, 71}, "602fe4", -1282318485L), Runnable.class).invoke(handler, runnable)).booleanValue();
            } catch (IllegalAccessException e2) {
                e = e2;
            } catch (NoSuchMethodException e3) {
                e = e3;
            } catch (NullPointerException e4) {
                e = e4;
            } catch (InvocationTargetException e5) {
                Throwable cause = e5.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException(cause);
            }
        }
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{116, 87, 91, 8, 81, 86, 18, 66, 93, 68, 87, 83, 94, 90, 18, 44, 85, 92, 86, 90, 87, 22, 26, 90, 83, 69, 113, 5, 88, 94, 80, 87, 81, 15, 71, 26, 27, 26, 18, 6, 65, 70, 18, 66, 90, 1, 70, 87, 18, 95, 65, 68, 90, 93, 18, 69, 83, 2, 81, 18, 84, 87, 91, 8, 65, 64, 87, 22, 95, 11, 80, 87, 18, 80, 93, 22, 20, 70, 90, 95, 65, 68, 89, 87, 70, 94, 93, 0, 26, 18, 96, 87, 91, 23, 93, 92, 85, 22, 87, 28, 87, 87, 66, 66, 91, 11, 90, 28}, "262d42", -1.95424067E9d), e);
    }

    public static boolean postDelayed(Handler handler, Runnable runnable, Object obj, long j) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Api28Impl.postDelayed(handler, runnable, obj, j);
        }
        Message messageObtain = Message.obtain(handler, runnable);
        messageObtain.obj = obj;
        return handler.sendMessageDelayed(messageObtain, j);
    }
}

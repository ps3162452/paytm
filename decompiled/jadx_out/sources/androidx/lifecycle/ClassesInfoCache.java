package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes13.dex */
@Deprecated
final class ClassesInfoCache {
    private static final int CALL_TYPE_NO_ARG = 0;
    private static final int CALL_TYPE_PROVIDER = 1;
    private static final int CALL_TYPE_PROVIDER_WITH_EVENT = 2;
    static ClassesInfoCache sInstance = new ClassesInfoCache();
    private final Map<Class<?>, CallbackInfo> mCallbackMap = new HashMap();
    private final Map<Class<?>, Boolean> mHasLifecycleMethods = new HashMap();

    @Deprecated
    static class CallbackInfo {
        final Map<Lifecycle.Event, List<MethodReference>> mEventToHandlers = new HashMap();
        final Map<MethodReference, Lifecycle.Event> mHandlerToEvent;

        CallbackInfo(Map<MethodReference, Lifecycle.Event> map) {
            this.mHandlerToEvent = map;
            for (Map.Entry<MethodReference, Lifecycle.Event> entry : map.entrySet()) {
                Lifecycle.Event value = entry.getValue();
                List<MethodReference> arrayList = this.mEventToHandlers.get(value);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.mEventToHandlers.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        private static void invokeMethodsForEvent(List<MethodReference> list, LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).invokeCallback(lifecycleOwner, event, obj);
                }
            }
        }

        void invokeCallbacks(LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            invokeMethodsForEvent(this.mEventToHandlers.get(event), lifecycleOwner, event, obj);
            invokeMethodsForEvent(this.mEventToHandlers.get(Lifecycle.Event.ON_ANY), lifecycleOwner, event, obj);
        }
    }

    @Deprecated
    static final class MethodReference {
        final int mCallType;
        final Method mMethod;

        MethodReference(int i, Method method) {
            this.mCallType = i;
            this.mMethod = method;
            method.setAccessible(true);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MethodReference)) {
                return false;
            }
            MethodReference methodReference = (MethodReference) obj;
            return this.mCallType == methodReference.mCallType && this.mMethod.getName().equals(methodReference.mMethod.getName());
        }

        public int hashCode() {
            return (this.mCallType * 31) + this.mMethod.getName().hashCode();
        }

        void invokeCallback(LifecycleOwner lifecycleOwner, Lifecycle.Event event, Object obj) {
            try {
                switch (this.mCallType) {
                    case 0:
                        this.mMethod.invoke(obj, new Object[0]);
                        return;
                    case 1:
                        this.mMethod.invoke(obj, lifecycleOwner);
                        return;
                    case 2:
                        this.mMethod.invoke(obj, lifecycleOwner, event);
                        return;
                    default:
                        return;
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{127, 85, 88, 95, 93, 83, 25, 64, 94, 19, 91, 86, 85, 88, 17, 92, 90, 68, 92, 70, 71, 86, 74, 23, 84, 81, 69, 91, 87, 83}, "941387", 23060), e2.getCause());
            }
        }
    }

    ClassesInfoCache() {
    }

    private CallbackInfo createInfo(Class<?> cls, Method[] methodArr) {
        int i;
        boolean z;
        CallbackInfo info;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (info = getInfo(superclass)) != null) {
            map.putAll(info.mHandlerToEvent);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<MethodReference, Lifecycle.Event> entry : getInfo(cls2).mHandlerToEvent.entrySet()) {
                verifyAndPutHandler(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = getDeclaredMethods(cls);
        }
        int length = methodArr.length;
        boolean z2 = false;
        int i2 = 0;
        while (i2 < length) {
            Method method = methodArr[i2];
            OnLifecycleEvent onLifecycleEvent = (OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class);
            if (onLifecycleEvent == null) {
                z = z2;
            } else {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(LifecycleOwner.class)) {
                        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{89, 87, 65, 84, 88, 81, 84, 25, 71, 84, 70, 89, 93, 92, 67, 80, 70, 24, 68, 64, 71, 80, 26, 24, 125, 76, 68, 65, 20, 90, 85, 25, 88, 91, 81, 24, 81, 87, 83, 21, 93, 86, 67, 77, 86, 91, 87, 93, 95, 95, 23, 121, 93, 94, 85, 90, 78, 86, 88, 93, 127, 78, 89, 80, 70}, "097548", 1.857617673E9d));
                    }
                    i = 1;
                }
                Lifecycle.Event eventValue = onLifecycleEvent.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(Lifecycle.Event.class)) {
                        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{15, 95, 20, 82, 93, 90, 2, 17, 18, 82, 67, 82, 11, 84, 22, 86, 67, 19, 18, 72, 18, 86, 31, 19, 21, 84, 1, 92, 95, 87, 70, 80, 16, 84, 17, 94, 19, 66, 22, 19, 83, 86, 70, 80, 12, 19, 84, 69, 3, 95, 22}, "f1b313", 787344906L));
                    }
                    if (eventValue != Lifecycle.Event.ON_ANY) {
                        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{100, 3, 84, 90, 86, 82, 23, 7, 69, 82, 24, 95, 68, 70, 68, 64, 72, 70, 88, 20, 67, 80, 92, 22, 88, 8, 91, 76, 24, 80, 88, 20, 23, 122, 118, 105, 118, 40, 110, 21, 78, 87, 91, 19, 82}, "7f7586", true));
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{90, 0, 15, 90, 14, 65, 25, 9, 0, 66, 4, 21, 84, 14, 19, 81, 65, 65, 81, 0, 15, 20, 83, 21, 73, 0, 19, 85, 12, 70}, "9aa4a5", true, false));
                }
                verifyAndPutHandler(map, new MethodReference(i, method), eventValue, cls);
                z = true;
            }
            i2++;
            z2 = z;
        }
        CallbackInfo callbackInfo = new CallbackInfo(map);
        this.mCallbackMap.put(cls, callbackInfo);
        this.mHasLifecycleMethods.put(cls, Boolean.valueOf(z2));
        return callbackInfo;
    }

    private Method[] getDeclaredMethods(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{101, 92, 84, 65, 11, 1, 66, 81, 67, 23, 1, 17, 17, 87, 93, 0, 23, 16, 17, 92, 80, 18, 68, 16, 94, 89, 84, 65, 9, 6, 69, 92, 94, 5, 23, 67, 69, 92, 80, 21, 68, 22, 66, 81, 17, 15, 1, 20, 84, 70, 17, 32, 52, 42, 66, 20, 70, 9, 13, 0, 89, 20, 80, 19, 1, 67, 95, 91, 69, 65, 5, 21, 80, 93, 93, 0, 6, 15, 84, 20, 88, 15, 68, 23, 89, 81, 17, 2, 17, 17, 67, 81, 95, 21, 68, 44, 98, 20, 71, 4, 22, 16, 88, 91, 95, 79, 68, 47, 88, 82, 84, 2, 29, 0, 93, 81, 66, 65, 7, 2, 95, 90, 94, 21, 68, 2, 82, 87, 84, 18, 23, 67, 84, 66, 84, 15, 68, 12, 69, 92, 84, 19, 68, 14, 84, 64, 89, 14, 0, 16, 17, 71, 94, 65, 29, 12, 68, 20, 66, 9, 11, 22, 93, 80, 17, 12, 5, 8, 84, 20, 66, 20, 22, 6, 17, 64, 89, 0, 16, 67, 72, 91, 68, 19, 68, 12, 83, 71, 84, 19, 18, 6, 67, 20, 82, 13, 5, 16, 66, 81, 66, 65, 11, 13, 93, 77, 17, 0, 7, 0, 84, 71, 66, 65, 2, 17, 80, 89, 84, 22, 11, 17, 90, 20, 82, 13, 5, 16, 66, 81, 66, 65, 16, 11, 80, 64, 17, 0, 22, 6, 17, 85, 71, 0, 13, 15, 80, 86, 93, 4, 68, 10, 95, 20, 72, 14, 17, 17, 17, 89, 88, 15, 68, 34, 97, 125, 17, 13, 1, 21, 84, 88, 17, 46, 54, 67, 68, 71, 84, 65, 8, 10, 87, 81, 82, 24, 7, 15, 84, 14, 82, 14, 9, 19, 88, 88, 84, 19, 68, 2, 95, 90, 94, 21, 5, 23, 88, 91, 95, 65, 20, 17, 94, 87, 84, 18, 23, 12, 67, 26}, "141adc", -3.4793372E7f), e);
        }
    }

    private void verifyAndPutHandler(Map<MethodReference, Lifecycle.Event> map, MethodReference methodReference, Lifecycle.Event event, Class<?> cls) {
        Lifecycle.Event event2 = map.get(methodReference);
        if (event2 != null && event != event2) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{127, 80, 70, 9, 90, 82, 18}, "252a56", -172562447L) + methodReference.mMethod.getName() + NPStringFog.decode(new byte[]{68, 91, 89, 24}, "d2782d", false, false) + cls.getName() + NPStringFog.decode(new byte[]{66, 86, 90, 22, 0, 85, 6, 78, 22, 0, 0, 87, 14, 86, 68, 1, 1, 20, 21, 94, 66, 12, 69, 80, 11, 81, 80, 1, 23, 81, 12, 67, 22, 36, 42, 90, 46, 94, 80, 1, 6, 77, 1, 91, 83, 33, 19, 81, 12, 67, 22, 18, 4, 88, 23, 82, 12, 68, 21, 70, 7, 65, 95, 11, 16, 71, 66, 65, 87, 8, 16, 81, 66}, "b76de4", false, true) + event2 + NPStringFog.decode(new byte[]{77, 18, 92, 6, 79, 67, 23, 83, 94, 22, 93, 67}, "a22c8c", -880348097L) + event);
        }
        if (event2 == null) {
            map.put(methodReference, event);
        }
    }

    CallbackInfo getInfo(Class<?> cls) {
        CallbackInfo callbackInfo = this.mCallbackMap.get(cls);
        return callbackInfo != null ? callbackInfo : createInfo(cls, null);
    }

    boolean hasLifecycleMethods(Class<?> cls) {
        Boolean bool = this.mHasLifecycleMethods.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] declaredMethods = getDeclaredMethods(cls);
        for (Method method : declaredMethods) {
            if (((OnLifecycleEvent) method.getAnnotation(OnLifecycleEvent.class)) != null) {
                createInfo(cls, declaredMethods);
                return true;
            }
        }
        this.mHasLifecycleMethods.put(cls, false);
        return false;
    }
}

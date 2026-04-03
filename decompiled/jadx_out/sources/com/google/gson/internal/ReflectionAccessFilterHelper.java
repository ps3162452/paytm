package com.google.gson.internal;

import com.google.gson.ReflectionAccessFilter;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes69.dex */
public class ReflectionAccessFilterHelper {

    private static abstract class AccessChecker {
        public static final AccessChecker INSTANCE;

        static {
            AccessChecker accessChecker;
            if (JavaVersion.isJava9OrLater()) {
                try {
                    accessChecker = new AccessChecker(AccessibleObject.class.getDeclaredMethod(NPStringFog.decode(new byte[]{6, 3, 88, 117, 0, 90, 0, 17, 69}, "eb64c9", true, false), Object.class)) { // from class: com.google.gson.internal.ReflectionAccessFilterHelper.AccessChecker.1
                        final Method val$canAccessMethod;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super();
                            this.val$canAccessMethod = method;
                        }

                        @Override // com.google.gson.internal.ReflectionAccessFilterHelper.AccessChecker
                        public boolean canAccess(AccessibleObject accessibleObject, Object obj) {
                            try {
                                return ((Boolean) this.val$canAccessMethod.invoke(accessibleObject, obj)).booleanValue();
                            } catch (Exception e) {
                                throw new RuntimeException(NPStringFog.decode(new byte[]{116, 2, 8, 92, 81, 5, 18, 10, 15, 70, 91, 10, 91, 13, 6, 16, 87, 0, 92, 34, 2, 83, 81, 18, 65}, "2ca04a", 2.03226281E8d), e);
                            }
                        }
                    };
                } catch (NoSuchMethodException e) {
                    accessChecker = null;
                }
            } else {
                accessChecker = null;
            }
            if (accessChecker == null) {
                accessChecker = new AccessChecker() { // from class: com.google.gson.internal.ReflectionAccessFilterHelper.AccessChecker.2
                    @Override // com.google.gson.internal.ReflectionAccessFilterHelper.AccessChecker
                    public boolean canAccess(AccessibleObject accessibleObject, Object obj) {
                        return true;
                    }
                };
            }
            INSTANCE = accessChecker;
        }

        private AccessChecker() {
        }

        public abstract boolean canAccess(AccessibleObject accessibleObject, Object obj);
    }

    private ReflectionAccessFilterHelper() {
    }

    public static boolean canAccess(AccessibleObject accessibleObject, Object obj) {
        return AccessChecker.INSTANCE.canAccess(accessibleObject, obj);
    }

    public static ReflectionAccessFilter.FilterResult getFilterResult(List<ReflectionAccessFilter> list, Class<?> cls) {
        Iterator<ReflectionAccessFilter> it = list.iterator();
        while (it.hasNext()) {
            ReflectionAccessFilter.FilterResult filterResultCheck = it.next().check(cls);
            if (filterResultCheck != ReflectionAccessFilter.FilterResult.INDECISIVE) {
                return filterResultCheck;
            }
        }
        return ReflectionAccessFilter.FilterResult.ALLOW;
    }

    public static boolean isAndroidType(Class<?> cls) {
        return isAndroidType(cls.getName());
    }

    private static boolean isAndroidType(String str) {
        return str.startsWith(NPStringFog.decode(new byte[]{0, 89, 84, 22, 13, 8, 5, 25}, "a70dba", true, false)) || str.startsWith(NPStringFog.decode(new byte[]{84, 13, 6, 68, 95, 12, 81, 27, 76}, "5cb60e", true, true)) || isJavaType(str);
    }

    public static boolean isAnyPlatformType(Class<?> cls) {
        String name = cls.getName();
        return isAndroidType(name) || name.startsWith(NPStringFog.decode(new byte[]{94, 91, 70, 89, 90, 94, 27}, "542530", true, true)) || name.startsWith(NPStringFog.decode(new byte[]{89, 93, 65, 84, 12, 90, 74, 28}, "2258e4", true, false)) || name.startsWith(NPStringFog.decode(new byte[]{23, 81, 7, 93, 5, 74}, "d2f1dd", true));
    }

    public static boolean isJavaType(Class<?> cls) {
        return isJavaType(cls.getName());
    }

    private static boolean isJavaType(String str) {
        return str.startsWith(NPStringFog.decode(new byte[]{91, 3, 66, 85, 23}, "1b4491", -14280)) || str.startsWith(NPStringFog.decode(new byte[]{92, 0, 66, 0, 79, 22}, "6a4a78", false, false));
    }
}

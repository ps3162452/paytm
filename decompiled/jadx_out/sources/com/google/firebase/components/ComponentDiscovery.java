package com.google.firebase.components;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes54.dex */
public final class ComponentDiscovery<T> {
    private static final String COMPONENT_KEY_PREFIX = NPStringFog.decode(new byte[]{7, 91, 93, 28, 85, 86, 11, 83, 92, 87, 28, 95, 13, 70, 85, 80, 83, 74, 1, 26, 83, 93, 95, 73, 11, 90, 85, 92, 70, 74, 94}, "d40229", 10662);
    private static final String COMPONENT_SENTINEL_VALUE = NPStringFog.decode(new byte[]{86, 87, 88, 79, 81, 91, 90, 95, 89, 4, 24, 82, 92, 74, 80, 3, 87, 71, 80, 22, 86, 14, 91, 68, 90, 86, 80, 15, 66, 71, 27, 123, 90, 12, 70, 91, 91, 93, 91, 21, 100, 81, 82, 81, 70, 21, 68, 85, 71}, "585a64", true);
    private static final String TAG = NPStringFog.decode(new byte[]{39, 12, 11, 70, 89, 15, 1, 13, 18, 114, 95, 18, 7, 12, 16, 83, 68, 24}, "dcf66a", -1.232530451E9d);
    private final T context;
    private final RegistrarNameRetriever<T> retriever;

    private static class MetadataRegistrarNameRetriever implements RegistrarNameRetriever<Context> {
        private final Class<? extends Service> discoveryService;

        private MetadataRegistrarNameRetriever(Class<? extends Service> cls) {
            this.discoveryService = cls;
        }

        private Bundle getMetadata(Context context) {
            Bundle bundle = null;
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w(NPStringFog.decode(new byte[]{33, 86, 14, 19, 91, 90, 7, 87, 23, 39, 93, 71, 1, 86, 21, 6, 70, 77}, "b9cc44", 1652634417L), NPStringFog.decode(new byte[]{37, 94, 95, 71, 93, 76, 18, 17, 89, 82, 75, 20, 8, 94, 17, 99, 89, 87, 13, 80, 86, 86, 117, 85, 8, 80, 86, 86, 74, 26}, "f11384", true));
                } else {
                    ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.discoveryService), 128);
                    if (serviceInfo == null) {
                        Log.w(NPStringFog.decode(new byte[]{112, 93, 94, 17, 92, 86, 86, 92, 71, 37, 90, 75, 80, 93, 69, 4, 65, 65}, "323a38", 194846615L), this.discoveryService + NPStringFog.decode(new byte[]{20, 10, 87, 22, 25, 15, 91, 66, 69, 0, 75, 23, 93, 1, 83, 69, 80, 15, 82, 13, 24}, "4b6e9a", 1.3434506E9f));
                    } else {
                        bundle = serviceInfo.metaData;
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                Log.w(NPStringFog.decode(new byte[]{119, 89, 95, 72, 91, 87, 81, 88, 70, 124, 93, 74, 87, 89, 68, 93, 70, 64}, "462849", -1067662669L), NPStringFog.decode(new byte[]{115, 69, 64, 10, 89, 85, 83, 65, 89, 9, 94, 22, 91, 91, 86, 9, 16, 88, 93, 65, 16, 0, 95, 67, 92, 81, 30}, "250f06", 17813));
            }
            return bundle;
        }

        @Override // com.google.firebase.components.ComponentDiscovery.RegistrarNameRetriever
        public List<String> retrieve(Context context) {
            Bundle metadata = getMetadata(context);
            if (metadata == null) {
                Log.w(NPStringFog.decode(new byte[]{119, 92, 85, 70, 93, 11, 81, 93, 76, 114, 91, 22, 87, 92, 78, 83, 64, 28}, "43862e", 1968139498L), NPStringFog.decode(new byte[]{123, 89, 77, 13, 82, 22, 86, 89, 76, 65, 68, 83, 76, 68, 81, 4, 64, 83, 24, 91, 93, 21, 87, 82, 89, 66, 89, 77, 22, 68, 93, 66, 77, 19, 88, 95, 86, 81, 24, 4, 91, 70, 76, 79, 24, 13, 95, 69, 76, 22, 87, 7, 22, 68, 93, 81, 81, 18, 66, 68, 89, 68, 75, 79}, "868a66", false, false));
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : metadata.keySet()) {
                if (NPStringFog.decode(new byte[]{84, 89, 12, 27, 2, 13, 88, 81, 13, 80, 75, 4, 94, 68, 4, 87, 4, 17, 82, 24, 2, 90, 8, 18, 88, 88, 4, 91, 17, 17, 25, 117, 14, 88, 21, 13, 89, 83, 15, 65, 55, 7, 80, 95, 18, 65, 23, 3, 69}, "76a5eb", -1.7920876E9f).equals(metadata.get(str)) && str.startsWith(NPStringFog.decode(new byte[]{7, 14, 15, 24, 86, 95, 11, 6, 14, 83, 31, 86, 13, 19, 7, 84, 80, 67, 1, 79, 1, 89, 92, 64, 11, 15, 7, 88, 69, 67, 94}, "dab610", false, false))) {
                    arrayList.add(str.substring(NPStringFog.decode(new byte[]{84, 92, 93, 27, 85, 89, 88, 84, 92, 80, 28, 80, 94, 65, 85, 87, 83, 69, 82, 29, 83, 90, 95, 70, 88, 93, 85, 91, 70, 69, 13}, "730526", false, true).length()));
                }
            }
            return arrayList;
        }
    }

    interface RegistrarNameRetriever<T> {
        List<String> retrieve(T t);
    }

    ComponentDiscovery(T t, RegistrarNameRetriever<T> registrarNameRetriever) {
        this.context = t;
        this.retriever = registrarNameRetriever;
    }

    public static ComponentDiscovery<Context> forContext(Context context, Class<? extends Service> cls) {
        return new ComponentDiscovery<>(context, new MetadataRegistrarNameRetriever(cls));
    }

    private static List<ComponentRegistrar> instantiate(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            try {
                Class<?> cls = Class.forName(str);
                if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                    arrayList.add((ComponentRegistrar) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                } else {
                    Log.w(TAG, String.format(NPStringFog.decode(new byte[]{33, 93, 83, 68, 16, 22, 71, 66, 18, 94, 16, 22, 12, 94, 70, 23, 2, 88, 66, 88, 92, 68, 23, 87, 12, 82, 87, 23, 12, 80, 66, 20, 65}, "b127c6", -13866), str, COMPONENT_SENTINEL_VALUE));
                }
            } catch (ClassNotFoundException e) {
                Log.w(TAG, String.format(NPStringFog.decode(new byte[]{119, 8, 85, 22, 17, 17, 17, 23, 20, 12, 17, 17, 90, 11, 64, 69, 3, 95, 20, 2, 91, 16, 12, 85, 26}, "4d4eb1", 1.4505755E9f), str), e);
            } catch (IllegalAccessException e2) {
                Log.w(TAG, String.format(NPStringFog.decode(new byte[]{39, 91, 68, 84, 85, 17, 10, 91, 69, 24, 88, 95, 23, 64, 80, 86, 69, 88, 5, 64, 84, 24, 20, 66, 74}, "d41811", -1844948039L), str), e2);
            } catch (InstantiationException e3) {
                Log.w(TAG, String.format(NPStringFog.decode(new byte[]{116, 90, 16, 91, 0, 16, 89, 90, 17, 23, 13, 94, 68, 65, 4, 89, 16, 89, 86, 65, 0, 23, 65, 67, 25}, "75e7d0", -25980), str), e3);
            } catch (NoSuchMethodException e4) {
                Log.w(TAG, String.format(NPStringFog.decode(new byte[]{123, 92, 66, 89, 81, 65, 86, 92, 67, 21, 92, 15, 75, 71, 86, 91, 65, 8, 89, 71, 82, 21, 16, 18}, "83755a", -1.7833425E9f), str), e4);
            } catch (InvocationTargetException e5) {
                Log.w(TAG, String.format(NPStringFog.decode(new byte[]{115, 95, 67, 9, 84, 68, 94, 95, 66, 69, 89, 10, 67, 68, 87, 11, 68, 13, 81, 68, 83, 69, 21, 23}, "006e0d", -20557), str), e5);
            }
        }
        return arrayList;
    }

    public List<ComponentRegistrar> discover() {
        return instantiate(this.retriever.retrieve(this.context));
    }
}

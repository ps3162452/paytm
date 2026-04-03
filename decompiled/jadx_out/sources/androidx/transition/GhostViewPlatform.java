package androidx.transition;

import android.graphics.Matrix;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes51.dex */
@RequiresApi(21)
class GhostViewPlatform implements GhostView {
    private static final String TAG = NPStringFog.decode(new byte[]{33, 9, 10, 23, 68, 100, 15, 4, 18, 37, 64, 91, 84, 80}, "faed02", -1877);
    private static Method sAddGhostMethod;
    private static boolean sAddGhostMethodFetched;
    private static Class<?> sGhostViewClass;
    private static boolean sGhostViewClassFetched;
    private static Method sRemoveGhostMethod;
    private static boolean sRemoveGhostMethodFetched;
    private final View mGhostView;

    private GhostViewPlatform(@NonNull View view) {
        this.mGhostView = view;
    }

    static GhostView addGhost(View view, ViewGroup viewGroup, Matrix matrix) {
        fetchAddGhostMethod();
        if (sAddGhostMethod != null) {
            try {
                return new GhostViewPlatform((View) sAddGhostMethod.invoke(null, view, viewGroup, matrix));
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
        return null;
    }

    private static void fetchAddGhostMethod() {
        if (sAddGhostMethodFetched) {
            return;
        }
        try {
            fetchGhostViewClass();
            sAddGhostMethod = sGhostViewClass.getDeclaredMethod(NPStringFog.decode(new byte[]{82, 83, 0, 118, 11, 88, 64, 67}, "37d1c7", true, true), View.class, ViewGroup.class, Matrix.class);
            sAddGhostMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(TAG, NPStringFog.decode(new byte[]{114, 88, 91, 9, 0, 5, 20, 77, 93, 69, 23, 4, 64, 75, 91, 0, 19, 4, 20, 88, 86, 1, 34, 9, 91, 74, 70, 69, 8, 4, 64, 81, 93, 1}, "492eea", 7.10191574E8d), e);
        }
        sAddGhostMethodFetched = true;
    }

    private static void fetchGhostViewClass() {
        if (sGhostViewClassFetched) {
            return;
        }
        try {
            sGhostViewClass = Class.forName(NPStringFog.decode(new byte[]{80, 88, 93, 67, 94, 13, 85, 24, 79, 88, 84, 19, 31, 113, 81, 94, 66, 16, 103, 95, 92, 70}, "16911d", true));
        } catch (ClassNotFoundException e) {
            Log.i(TAG, NPStringFog.decode(new byte[]{34, 7, 15, 10, 84, 7, 68, 18, 9, 70, 67, 6, 16, 20, 15, 3, 71, 6, 68, 33, 14, 9, 66, 23, 50, 15, 3, 17, 17, 0, 8, 7, 21, 21}, "dfff1c", true), e);
        }
        sGhostViewClassFetched = true;
    }

    private static void fetchRemoveGhostMethod() {
        if (sRemoveGhostMethodFetched) {
            return;
        }
        try {
            fetchGhostViewClass();
            sRemoveGhostMethod = sGhostViewClass.getDeclaredMethod(NPStringFog.decode(new byte[]{64, 3, 95, 11, 79, 3, 117, 14, 93, 23, 77}, "2f2d9f", 1716862441L), View.class);
            sRemoveGhostMethod.setAccessible(true);
        } catch (NoSuchMethodException e) {
            Log.i(TAG, NPStringFog.decode(new byte[]{117, 80, 80, 8, 1, 80, 19, 69, 86, 68, 22, 81, 71, 67, 80, 1, 18, 81, 19, 67, 92, 9, 11, 66, 86, 118, 81, 11, 23, 64, 19, 92, 92, 16, 12, 91, 87}, "319dd4", 1.4527245E9f), e);
        }
        sRemoveGhostMethodFetched = true;
    }

    static void removeGhost(View view) {
        fetchRemoveGhostMethod();
        if (sRemoveGhostMethod != null) {
            try {
                sRemoveGhostMethod.invoke(null, view);
            } catch (IllegalAccessException e) {
            } catch (InvocationTargetException e2) {
                throw new RuntimeException(e2.getCause());
            }
        }
    }

    @Override // androidx.transition.GhostView
    public void reserveEndViewTransition(ViewGroup viewGroup, View view) {
    }

    @Override // androidx.transition.GhostView
    public void setVisibility(int i) {
        this.mGhostView.setVisibility(i);
    }
}

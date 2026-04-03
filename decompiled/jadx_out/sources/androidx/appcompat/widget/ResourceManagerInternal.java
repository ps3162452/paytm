package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.appcompat.resources.Compatibility;
import androidx.appcompat.resources.R;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.collection.SparseArrayCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes20.dex */
public final class ResourceManagerInternal {
    private static final boolean DEBUG = false;
    private static ResourceManagerInternal INSTANCE;
    private SimpleArrayMap<String, InflateDelegate> mDelegates;
    private final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> mDrawableCaches = new WeakHashMap<>(0);
    private boolean mHasCheckedVectorDrawableSetup;
    private ResourceManagerHooks mHooks;
    private SparseArrayCompat<String> mKnownDrawableIdTags;
    private WeakHashMap<Context, SparseArrayCompat<ColorStateList>> mTintLists;
    private TypedValue mTypedValue;
    private static final String PLATFORM_VD_CLAZZ = NPStringFog.decode(new byte[]{82, 15, 93, 69, 89, 12, 87, 79, 94, 69, 87, 21, 91, 8, 90, 68, 24, 1, 65, 0, 78, 86, 84, 9, 86, 79, 111, 82, 85, 17, 92, 19, 125, 69, 87, 18, 82, 3, 85, 82}, "3a976e", 1995234329L);
    private static final String SKIP_DRAWABLE_TAG = NPStringFog.decode(new byte[]{2, 71, 69, 90, 89, 94, 19, 86, 65, 102, 69, 88, 10, 71, 106, 74, 93, 90, 19}, "c75963", false);
    private static final String TAG = NPStringFog.decode(new byte[]{102, 1, 21, 10, 19, 22, 87, 1, 43, 4, 8, 5, 83, 1, 20, 44, 8, 16, 81, 22, 8, 4, 10}, "4dfefd", -247596271L);
    private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    private static final ColorFilterLruCache COLOR_FILTER_CACHE = new ColorFilterLruCache(6);

    static class AsldcInflateDelegate implements InflateDelegate {
        AsldcInflateDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable createFromXmlInner(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return AnimatedStateListDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e(NPStringFog.decode(new byte[]{118, 23, 13, 86, 90, 123, 89, 2, 13, 83, 77, 87, 115, 1, 13, 87, 94, 83, 67, 1}, "7da292", -24135), NPStringFog.decode(new byte[]{38, 64, 87, 3, 19, 64, 10, 87, 90, 70, 20, 92, 10, 84, 81, 70, 10, 90, 5, 84, 85, 18, 10, 90, 4, 24, 8, 7, 13, 93, 14, 89, 64, 3, 7, 25, 16, 93, 88, 3, 0, 64, 12, 74, 10}, "c84fc4", 412429508L), e);
                return null;
            }
        }
    }

    private static class AvdcInflateDelegate implements InflateDelegate {
        AvdcInflateDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable createFromXmlInner(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e(NPStringFog.decode(new byte[]{34, 21, 83, 80, 112, 92, 5, 15, 86, 71, 92, 118, 6, 15, 82, 84, 88, 70, 6}, "cc7392", false), NPStringFog.decode(new byte[]{39, 30, 90, 81, 65, 23, 11, 9, 87, 20, 70, 11, 11, 10, 92, 20, 88, 13, 4, 10, 88, 64, 88, 13, 5, 70, 5, 85, 95, 10, 15, 7, 77, 81, 85, 78, 20, 3, 90, 64, 94, 17, 92}, "bf941c", 1.222806E9f), e);
                return null;
            }
        }
    }

    private static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
        public ColorFilterLruCache(int i) {
            super(i);
        }

        private static int generateCacheKey(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter get(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(generateCacheKey(i, mode)));
        }

        PorterDuffColorFilter put(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(generateCacheKey(i, mode)), porterDuffColorFilter);
        }
    }

    static class DrawableDelegate implements InflateDelegate {
        DrawableDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable createFromXmlInner(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute == null) {
                return null;
            }
            try {
                Drawable drawable = (Drawable) DrawableDelegate.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                if (Build.VERSION.SDK_INT >= 21) {
                    Compatibility.Api21Impl.inflate(drawable, context.getResources(), xmlPullParser, attributeSet, theme);
                } else {
                    drawable.inflate(context.getResources(), xmlPullParser, attributeSet);
                }
                return drawable;
            } catch (Exception e) {
                Log.e(NPStringFog.decode(new byte[]{34, 20, 7, 20, 87, 84, 10, 3, 34, 6, 90, 83, 1, 7, 18, 6}, "fffc66", -907230794L), NPStringFog.decode(new byte[]{36, 27, 82, 81, 72, 69, 8, 12, 95, 20, 79, 89, 8, 15, 84, 20, 81, 95, 7, 15, 80, 64, 81, 95, 6, 67, 13, 80, 74, 80, 22, 2, 83, 88, 93, 15}, "ac1481", 8630), e);
                return null;
            }
        }
    }

    private interface InflateDelegate {
        Drawable createFromXmlInner(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    public interface ResourceManagerHooks {
        Drawable createDrawableFor(ResourceManagerInternal resourceManagerInternal, Context context, int i);

        ColorStateList getTintListForDrawableRes(Context context, int i);

        PorterDuff.Mode getTintModeForDrawableRes(int i);

        boolean tintDrawable(Context context, int i, Drawable drawable);

        boolean tintDrawableUsingColorFilter(Context context, int i, Drawable drawable);
    }

    private static class VdcInflateDelegate implements InflateDelegate {
        VdcInflateDelegate() {
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.InflateDelegate
        public Drawable createFromXmlInner(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return VectorDrawableCompat.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e(NPStringFog.decode(new byte[]{110, 83, 83, 127, 88, 82, 84, 86, 68, 83, 114, 81, 84, 82, 87, 87, 66, 81}, "870664", true, false), NPStringFog.decode(new byte[]{119, 77, 91, 87, 17, 17, 91, 90, 86, 18, 22, 13, 91, 89, 93, 18, 8, 11, 84, 89, 89, 70, 8, 11, 85, 21, 4, 68, 4, 6, 70, 90, 74, 12}, "2582ae", false), e);
                return null;
            }
        }
    }

    private void addDelegate(String str, InflateDelegate inflateDelegate) {
        if (this.mDelegates == null) {
            this.mDelegates = new SimpleArrayMap<>();
        }
        this.mDelegates.put(str, inflateDelegate);
    }

    private boolean addDrawableToCache(Context context, long j, Drawable drawable) {
        synchronized (this) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState == null) {
                return false;
            }
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
            if (longSparseArray == null) {
                longSparseArray = new LongSparseArray<>();
                this.mDrawableCaches.put(context, longSparseArray);
            }
            longSparseArray.put(j, new WeakReference<>(constantState));
            return true;
        }
    }

    private void addTintListToCache(Context context, int i, ColorStateList colorStateList) {
        if (this.mTintLists == null) {
            this.mTintLists = new WeakHashMap<>();
        }
        SparseArrayCompat<ColorStateList> sparseArrayCompat = this.mTintLists.get(context);
        if (sparseArrayCompat == null) {
            sparseArrayCompat = new SparseArrayCompat<>();
            this.mTintLists.put(context, sparseArrayCompat);
        }
        sparseArrayCompat.append(i, colorStateList);
    }

    private void checkVectorDrawableSetup(Context context) {
        if (this.mHasCheckedVectorDrawableSetup) {
            return;
        }
        this.mHasCheckedVectorDrawableSetup = true;
        Drawable drawable = getDrawable(context, R.drawable.abc_vector_test);
        if (drawable == null || !isVectorDrawable(drawable)) {
            this.mHasCheckedVectorDrawableSetup = false;
            throw new IllegalStateException(NPStringFog.decode(new byte[]{109, 10, 94, 74, 65, 88, 73, 18, 23, 81, 0, 74, 25, 0, 82, 92, 15, 25, 91, 23, 94, 85, 21, 25, 78, 11, 67, 81, 65, 88, 87, 66, 94, 87, 2, 86, 75, 16, 82, 90, 21, 25, 90, 13, 89, 95, 8, 94, 76, 16, 86, 77, 8, 86, 87, 76, 23, 105, 13, 92, 88, 17, 82, 25, 2, 86, 87, 4, 94, 94, 20, 75, 92, 66, 78, 86, 20, 75, 25, 0, 66, 80, 13, 93, 25, 4, 88, 75, 65, 111, 92, 1, 67, 86, 19, 125, 75, 3, 64, 88, 3, 85, 92, 33, 88, 84, 17, 88, 77, 76}, "9b79a9", 1.170556024E9d));
        }
    }

    private static long createCacheKey(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    private Drawable createDrawableIfNeeded(Context context, int i) {
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        context.getResources().getValue(i, typedValue, true);
        long jCreateCacheKey = createCacheKey(typedValue);
        Drawable cachedDrawable = getCachedDrawable(context, jCreateCacheKey);
        if (cachedDrawable == null) {
            ResourceManagerHooks resourceManagerHooks = this.mHooks;
            cachedDrawable = resourceManagerHooks == null ? null : resourceManagerHooks.createDrawableFor(this, context, i);
            if (cachedDrawable != null) {
                cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
                addDrawableToCache(context, jCreateCacheKey, cachedDrawable);
            }
        }
        return cachedDrawable;
    }

    private static PorterDuffColorFilter createTintFilter(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static ResourceManagerInternal get() {
        ResourceManagerInternal resourceManagerInternal;
        synchronized (ResourceManagerInternal.class) {
            try {
                if (INSTANCE == null) {
                    ResourceManagerInternal resourceManagerInternal2 = new ResourceManagerInternal();
                    INSTANCE = resourceManagerInternal2;
                    installDefaultInflateDelegates(resourceManagerInternal2);
                }
                resourceManagerInternal = INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return resourceManagerInternal;
    }

    private Drawable getCachedDrawable(Context context, long j) {
        synchronized (this) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
            if (longSparseArray == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> weakReference = longSparseArray.get(j);
            if (weakReference != null) {
                Drawable.ConstantState constantState = weakReference.get();
                if (constantState != null) {
                    return constantState.newDrawable(context.getResources());
                }
                longSparseArray.remove(j);
            }
            return null;
        }
    }

    public static PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (ResourceManagerInternal.class) {
            try {
                ColorFilterLruCache colorFilterLruCache = COLOR_FILTER_CACHE;
                porterDuffColorFilter = colorFilterLruCache.get(i, mode);
                if (porterDuffColorFilter == null) {
                    porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                    colorFilterLruCache.put(i, mode, porterDuffColorFilter);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return porterDuffColorFilter;
    }

    private ColorStateList getTintListFromCache(Context context, int i) {
        SparseArrayCompat<ColorStateList> sparseArrayCompat;
        WeakHashMap<Context, SparseArrayCompat<ColorStateList>> weakHashMap = this.mTintLists;
        if (weakHashMap != null && (sparseArrayCompat = weakHashMap.get(context)) != null) {
            return sparseArrayCompat.get(i);
        }
        return null;
    }

    private static void installDefaultInflateDelegates(ResourceManagerInternal resourceManagerInternal) {
        if (Build.VERSION.SDK_INT < 24) {
            resourceManagerInternal.addDelegate(NPStringFog.decode(new byte[]{19, 92, 85, 70, 93, 65}, "e96223", -137617125L), new VdcInflateDelegate());
            resourceManagerInternal.addDelegate(NPStringFog.decode(new byte[]{85, 91, 88, 84, 89, 22, 81, 81, 28, 79, 93, 1, 64, 90, 67}, "45198b", false, true), new AvdcInflateDelegate());
            resourceManagerInternal.addDelegate(NPStringFog.decode(new byte[]{4, 12, 8, 9, 80, 21, 0, 6, 76, 23, 84, 13, 0, 1, 21, 11, 67}, "ebad1a", -2.0064296E9f), new AsldcInflateDelegate());
            resourceManagerInternal.addDelegate(NPStringFog.decode(new byte[]{1, 71, 86, 17, 3, 84, 9, 80}, "e57fb6", 17796), new DrawableDelegate());
        }
    }

    private static boolean isVectorDrawable(Drawable drawable) {
        return (drawable instanceof VectorDrawableCompat) || PLATFORM_VD_CLAZZ.equals(drawable.getClass().getName());
    }

    private Drawable loadDrawableFromDelegates(Context context, int i) {
        Drawable drawable;
        int next;
        SimpleArrayMap<String, InflateDelegate> simpleArrayMap = this.mDelegates;
        if (simpleArrayMap == null || simpleArrayMap.isEmpty()) {
            return null;
        }
        SparseArrayCompat<String> sparseArrayCompat = this.mKnownDrawableIdTags;
        if (sparseArrayCompat != null) {
            String str = sparseArrayCompat.get(i);
            if (SKIP_DRAWABLE_TAG.equals(str) || (str != null && this.mDelegates.get(str) == null)) {
                return null;
            }
        } else {
            this.mKnownDrawableIdTags = new SparseArrayCompat<>();
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        TypedValue typedValue = this.mTypedValue;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long jCreateCacheKey = createCacheKey(typedValue);
        Drawable cachedDrawable = getCachedDrawable(context, jCreateCacheKey);
        if (cachedDrawable != null) {
            return cachedDrawable;
        }
        if (typedValue.string == null || !typedValue.string.toString().endsWith(NPStringFog.decode(new byte[]{75, 25, 85, 91}, "ea8788", -1.7332652E9f))) {
            drawable = cachedDrawable;
        } else {
            try {
                XmlResourceParser xml = resources.getXml(i);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException(NPStringFog.decode(new byte[]{43, 14, 17, 69, 76, 3, 23, 21, 17, 66, 89, 5, 69, 7, 94, 67, 86, 6}, "ea168b", 873744083L));
                }
                String name = xml.getName();
                this.mKnownDrawableIdTags.append(i, name);
                InflateDelegate inflateDelegate = this.mDelegates.get(name);
                if (inflateDelegate != null) {
                    cachedDrawable = inflateDelegate.createFromXmlInner(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (cachedDrawable != null) {
                    cachedDrawable.setChangingConfigurations(typedValue.changingConfigurations);
                    addDrawableToCache(context, jCreateCacheKey, cachedDrawable);
                }
                drawable = cachedDrawable;
            } catch (Exception e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{114, 64, 6, 80, 21, 16, 94, 87, 11, 21, 18, 12, 94, 84, 0, 21, 12, 10, 81, 84, 4, 65, 12, 10, 80, 24, 1, 71, 4, 19, 86, 90, 9, 80}, "78e5ed", 8.34570212E8d), e);
                drawable = cachedDrawable;
            }
        }
        if (drawable != null) {
            return drawable;
        }
        this.mKnownDrawableIdTags.append(i, SKIP_DRAWABLE_TAG);
        return drawable;
    }

    private Drawable tintDrawable(Context context, int i, boolean z, Drawable drawable) {
        ColorStateList tintList = getTintList(context, i);
        if (tintList == null) {
            ResourceManagerHooks resourceManagerHooks = this.mHooks;
            if ((resourceManagerHooks == null || !resourceManagerHooks.tintDrawable(context, i, drawable)) && !tintDrawableUsingColorFilter(context, i, drawable) && z) {
                return null;
            }
            return drawable;
        }
        if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
            drawable = drawable.mutate();
        }
        Drawable drawableWrap = DrawableCompat.wrap(drawable);
        DrawableCompat.setTintList(drawableWrap, tintList);
        PorterDuff.Mode tintMode = getTintMode(i);
        if (tintMode == null) {
            return drawableWrap;
        }
        DrawableCompat.setTintMode(drawableWrap, tintMode);
        return drawableWrap;
    }

    static void tintDrawable(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        if (DrawableUtils.canSafelyMutateDrawable(drawable) && drawable.mutate() != drawable) {
            Log.d(TAG, NPStringFog.decode(new byte[]{123, 17, 22, 7, 22, 85, 82, 68, 6, 20, 3, 71, 87, 6, 14, 3, 66, 89, 69, 68, 12, 9, 22, 16, 66, 12, 7, 70, 17, 81, 91, 1, 66, 15, 12, 67, 66, 5, 12, 5, 7, 16, 87, 23, 66, 18, 10, 85, 22, 13, 12, 22, 23, 68, 24}, "6dbfb0", -189419659L));
            return;
        }
        if (tintInfo.mHasTintList || tintInfo.mHasTintMode) {
            drawable.setColorFilter(createTintFilter(tintInfo.mHasTintList ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : DEFAULT_MODE, iArr));
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    public Drawable getDrawable(Context context, int i) {
        Drawable drawable;
        synchronized (this) {
            drawable = getDrawable(context, i, false);
        }
        return drawable;
    }

    Drawable getDrawable(Context context, int i, boolean z) {
        Drawable drawableLoadDrawableFromDelegates;
        synchronized (this) {
            checkVectorDrawableSetup(context);
            drawableLoadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
            if (drawableLoadDrawableFromDelegates == null) {
                drawableLoadDrawableFromDelegates = createDrawableIfNeeded(context, i);
            }
            if (drawableLoadDrawableFromDelegates == null) {
                drawableLoadDrawableFromDelegates = ContextCompat.getDrawable(context, i);
            }
            if (drawableLoadDrawableFromDelegates != null) {
                drawableLoadDrawableFromDelegates = tintDrawable(context, i, z, drawableLoadDrawableFromDelegates);
            }
            if (drawableLoadDrawableFromDelegates != null) {
                DrawableUtils.fixDrawable(drawableLoadDrawableFromDelegates);
            }
        }
        return drawableLoadDrawableFromDelegates;
    }

    ColorStateList getTintList(Context context, int i) {
        ColorStateList tintListFromCache;
        synchronized (this) {
            tintListFromCache = getTintListFromCache(context, i);
            if (tintListFromCache == null) {
                ResourceManagerHooks resourceManagerHooks = this.mHooks;
                tintListFromCache = resourceManagerHooks == null ? null : resourceManagerHooks.getTintListForDrawableRes(context, i);
                if (tintListFromCache != null) {
                    addTintListToCache(context, i, tintListFromCache);
                }
            }
        }
        return tintListFromCache;
    }

    PorterDuff.Mode getTintMode(int i) {
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        if (resourceManagerHooks == null) {
            return null;
        }
        return resourceManagerHooks.getTintModeForDrawableRes(i);
    }

    public void onConfigurationChanged(Context context) {
        synchronized (this) {
            LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.mDrawableCaches.get(context);
            if (longSparseArray != null) {
                longSparseArray.clear();
            }
        }
    }

    Drawable onDrawableLoadedFromResources(Context context, VectorEnabledTintResources vectorEnabledTintResources, int i) {
        synchronized (this) {
            Drawable drawableLoadDrawableFromDelegates = loadDrawableFromDelegates(context, i);
            if (drawableLoadDrawableFromDelegates == null) {
                drawableLoadDrawableFromDelegates = vectorEnabledTintResources.getDrawableCanonical(i);
            }
            if (drawableLoadDrawableFromDelegates == null) {
                return null;
            }
            return tintDrawable(context, i, false, drawableLoadDrawableFromDelegates);
        }
    }

    public void setHooks(ResourceManagerHooks resourceManagerHooks) {
        synchronized (this) {
            this.mHooks = resourceManagerHooks;
        }
    }

    boolean tintDrawableUsingColorFilter(Context context, int i, Drawable drawable) {
        ResourceManagerHooks resourceManagerHooks = this.mHooks;
        return resourceManagerHooks != null && resourceManagerHooks.tintDrawableUsingColorFilter(context, i, drawable);
    }
}

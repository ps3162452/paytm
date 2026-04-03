package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.View;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatRatingBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.AppCompatToggleButton;
import androidx.appcompat.widget.TintContextWrapper;
import androidx.collection.SimpleArrayMap;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
public class AppCompatViewInflater {
    private final Object[] mConstructorArgs = new Object[2];
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{39, 19, 69, 39, 87, 95, 22, 2, 65, 50, 81, 87, 17, 42, 91, 2, 84, 83, 18, 6, 71}, "fc5d82", true, true);
    private static final Class<?>[] sConstructorSignature = {Context.class, AttributeSet.class};
    private static final int[] sOnClickAttrs = {R.attr.onClick};
    private static final int[] sAccessibilityHeading = {R.attr.accessibilityHeading};
    private static final int[] sAccessibilityPaneTitle = {R.attr.accessibilityPaneTitle};
    private static final int[] sScreenReaderFocusable = {R.attr.screenReaderFocusable};
    private static final String[] sClassPrefixList = {NPStringFog.decode(new byte[]{87, 89, 93, 70, 88, 91, 82, 25, 78, 93, 83, 85, 83, 67, 23}, "679472", 191079450L), NPStringFog.decode(new byte[]{7, 15, 1, 74, 9, 93, 2, 79, 19, 81, 3, 67, 72}, "fae8f4", -1.423294645E9d), NPStringFog.decode(new byte[]{2, 93, 2, 71, 94, 10, 7, 29, 17, 80, 83, 8, 10, 71, 72}, "c3f51c", -1.484839386E9d)};
    private static final SimpleArrayMap<String, Constructor<? extends View>> sConstructorMap = new SimpleArrayMap<>();

    private static class DeclaredOnClickListener implements View.OnClickListener {
        private final View mHostView;
        private final String mMethodName;
        private Context mResolvedContext;
        private Method mResolvedMethod;

        public DeclaredOnClickListener(View view, String str) {
            this.mHostView = view;
            this.mMethodName = str;
        }

        private void resolveMethod(Context context) {
            String str;
            Method method;
            Context baseContext = context;
            while (baseContext != null) {
                try {
                    if (!baseContext.isRestricted() && (method = baseContext.getClass().getMethod(this.mMethodName, View.class)) != null) {
                        this.mResolvedMethod = method;
                        this.mResolvedContext = baseContext;
                        return;
                    }
                } catch (NoSuchMethodException e) {
                }
                baseContext = baseContext instanceof ContextWrapper ? ((ContextWrapper) baseContext).getBaseContext() : null;
            }
            int id = this.mHostView.getId();
            if (id == -1) {
                str = "";
            } else {
                str = NPStringFog.decode(new byte[]{67, 21, 88, 76, 10, 24, 10, 6, 17, 31}, "cb18b8", -1.522543E8f) + this.mHostView.getContext().getResources().getResourceEntryName(id) + NPStringFog.decode(new byte[]{22}, "13bad8", false);
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{37, 11, 69, 94, 6, 17, 8, 11, 68, 18, 4, 88, 8, 0, 16, 95, 7, 69, 14, 11, 84, 18}, "fd02b1", true) + this.mMethodName + NPStringFog.decode(new byte[]{77, 102, 10, 93, 18, 25, 69, 89, 13, 24, 4, 16, 21, 81, 17, 93, 11, 68, 69, 95, 17, 24, 4, 94, 6, 85, 16, 76, 10, 66, 69, 115, 12, 86, 17, 85, 29, 68, 67, 94, 10, 66, 69, 81, 13, 92, 23, 95, 12, 84, 89, 87, 11, 115, 9, 89, 0, 83, 69, 81, 17, 68, 17, 81, 7, 69, 17, 85, 67, 92, 0, 86, 12, 94, 6, 92, 69, 95, 11, 16, 21, 81, 0, 71, 69}, "e0c8e0", 4062) + this.mHostView.getClass() + str);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.mResolvedMethod == null) {
                resolveMethod(this.mHostView.getContext());
            }
            try {
                this.mResolvedMethod.invoke(this.mResolvedContext, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 88, 19, 9, 2, 67, 95, 88, 18, 69, 3, 27, 84, 84, 19, 17, 3, 67, 95, 88, 8, 72, 22, 22, 83, 91, 15, 6, 70, 14, 84, 67, 14, 10, 2, 67, 87, 88, 20, 69, 7, 13, 85, 69, 9, 12, 2, 89, 94, 89, 37, 9, 15, 0, 90}, "17fefc", -1720320885L), e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 11, 19, 15, 2, 67, 86, 11, 18, 67, 3, 27, 93, 7, 19, 23, 3, 67, 85, 1, 18, 11, 9, 7, 24, 2, 9, 17, 70, 2, 86, 0, 20, 12, 15, 7, 2, 11, 8, 32, 10, 10, 91, 15}, "8dfcfc", 1.59938809E8d), e2);
            }
        }
    }

    private void backportAccessibilityAttributes(Context context, View view, AttributeSet attributeSet) {
        if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT > 28) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sAccessibilityHeading);
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            ViewCompat.setAccessibilityHeading(view, typedArrayObtainStyledAttributes.getBoolean(0, false));
        }
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, sAccessibilityPaneTitle);
        if (typedArrayObtainStyledAttributes2.hasValue(0)) {
            ViewCompat.setAccessibilityPaneTitle(view, typedArrayObtainStyledAttributes2.getString(0));
        }
        typedArrayObtainStyledAttributes2.recycle();
        TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, sScreenReaderFocusable);
        if (typedArrayObtainStyledAttributes3.hasValue(0)) {
            ViewCompat.setScreenReaderFocusable(view, typedArrayObtainStyledAttributes3.getBoolean(0, false));
        }
        typedArrayObtainStyledAttributes3.recycle();
    }

    private void checkOnClickListener(View view, AttributeSet attributeSet) {
        Context context = view.getContext();
        if (context instanceof ContextWrapper) {
            if (Build.VERSION.SDK_INT < 15 || ViewCompat.hasOnClickListeners(view)) {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sOnClickAttrs);
                String string = typedArrayObtainStyledAttributes.getString(0);
                if (string != null) {
                    view.setOnClickListener(new DeclaredOnClickListener(view, string));
                }
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    private View createViewByPrefix(Context context, String str, String str2) throws InflateException, ClassNotFoundException {
        String str3;
        SimpleArrayMap<String, Constructor<? extends View>> simpleArrayMap = sConstructorMap;
        Constructor<? extends View> constructor = simpleArrayMap.get(str);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception e) {
                    return null;
                }
            } else {
                str3 = str;
            }
            constructor = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(sConstructorSignature);
            simpleArrayMap.put(str, constructor);
        }
        constructor.setAccessible(true);
        return constructor.newInstance(this.mConstructorArgs);
    }

    private View createViewFromTag(Context context, String str, AttributeSet attributeSet) {
        if (str.equals(NPStringFog.decode(new byte[]{69, 93, 83, 66}, "3465d1", true, true))) {
            str = attributeSet.getAttributeValue(null, NPStringFog.decode(new byte[]{91, 91, 85, 75, 71}, "87484f", -23978));
        }
        try {
            Object[] objArr = this.mConstructorArgs;
            objArr[0] = context;
            objArr[1] = attributeSet;
            if (-1 != str.indexOf(46)) {
                return createViewByPrefix(context, str, null);
            }
            int i = 0;
            while (true) {
                String[] strArr = sClassPrefixList;
                if (i >= strArr.length) {
                    return null;
                }
                View viewCreateViewByPrefix = createViewByPrefix(context, str, strArr[i]);
                if (viewCreateViewByPrefix != null) {
                    return viewCreateViewByPrefix;
                }
                i++;
            }
        } catch (Exception e) {
            return null;
        } finally {
            Object[] objArr2 = this.mConstructorArgs;
            objArr2[0] = null;
            objArr2[1] = null;
        }
    }

    private static Context themifyContext(Context context, AttributeSet attributeSet, boolean z, boolean z2) {
        int i;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.View, 0, 0);
        int resourceId = z ? typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.View_android_theme, 0) : 0;
        if (z2 && resourceId == 0 && (resourceId = typedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.View_theme, 0)) != 0) {
            Log.i(LOG_TAG, NPStringFog.decode(new byte[]{82, 66, 17, 95, 65, 95, 86, 95, 4, 69, 92, 68, 19, 92, 14, 18, 21, 83, 86, 66, 19, 0, 86, 86, 71, 87, 5, 75, 21, 103, 95, 87, 0, 22, 80, 23, 94, 93, 23, 0, 21, 67, 92, 18, 20, 22, 92, 89, 84, 18, 0, 11, 81, 69, 92, 91, 5, 95, 65, 95, 86, 95, 4, 69, 92, 89, 64, 70, 4, 4, 81, 25}, "32ae57", 2139706329L));
            i = resourceId;
        } else {
            i = resourceId;
        }
        typedArrayObtainStyledAttributes.recycle();
        return i != 0 ? ((context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).getThemeResId() == i) ? context : new ContextThemeWrapper(context, i) : context;
    }

    private void verifyNotNull(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + NPStringFog.decode(new byte[]{16, 83, 68, 14, 92, 87, 16, 70, 88, 69, 80, 93, 86, 94, 86, 17, 92, 19, 70, 91, 82, 18, 25, 85, 95, 64, 23, 89}, "027e93", 1203093342L) + str + NPStringFog.decode(new byte[]{91, 72, 69, 4, 76, 17, 69, 22, 0, 18, 76, 23, 11, 1, 1, 70, 87, 16, 9, 8}, "edef9e", 1.419722755E9d));
    }

    protected AppCompatAutoCompleteTextView createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }

    protected AppCompatButton createButton(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    protected AppCompatCheckBox createCheckBox(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    protected AppCompatCheckedTextView createCheckedTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckedTextView(context, attributeSet);
    }

    protected AppCompatEditText createEditText(Context context, AttributeSet attributeSet) {
        return new AppCompatEditText(context, attributeSet);
    }

    protected AppCompatImageButton createImageButton(Context context, AttributeSet attributeSet) {
        return new AppCompatImageButton(context, attributeSet);
    }

    protected AppCompatImageView createImageView(Context context, AttributeSet attributeSet) {
        return new AppCompatImageView(context, attributeSet);
    }

    protected AppCompatMultiAutoCompleteTextView createMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatMultiAutoCompleteTextView(context, attributeSet);
    }

    protected AppCompatRadioButton createRadioButton(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    protected AppCompatRatingBar createRatingBar(Context context, AttributeSet attributeSet) {
        return new AppCompatRatingBar(context, attributeSet);
    }

    protected AppCompatSeekBar createSeekBar(Context context, AttributeSet attributeSet) {
        return new AppCompatSeekBar(context, attributeSet);
    }

    protected AppCompatSpinner createSpinner(Context context, AttributeSet attributeSet) {
        return new AppCompatSpinner(context, attributeSet);
    }

    protected AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    protected AppCompatToggleButton createToggleButton(Context context, AttributeSet attributeSet) {
        return new AppCompatToggleButton(context, attributeSet);
    }

    protected View createView(Context context, String str, AttributeSet attributeSet) {
        return null;
    }

    final View createView(View view, String str, Context context, AttributeSet attributeSet, boolean z, boolean z2, boolean z3, boolean z4) {
        View viewCreateTextView;
        Context context2 = (!z || view == null) ? context : view.getContext();
        if (z2 || z3) {
            context2 = themifyContext(context2, attributeSet, z2, z3);
        }
        if (z4) {
            context2 = TintContextWrapper.wrap(context2);
        }
        byte b = -1;
        switch (str.hashCode()) {
            case -1946472170:
                if (str.equals(NPStringFog.decode(new byte[]{49, 85, 23, 95, 91, 2, 33, 85, 17}, "c4c65e", true, true))) {
                    b = 11;
                }
                break;
            case -1455429095:
                if (str.equals(NPStringFog.decode(new byte[]{34, 10, 0, 91, 90, 93, 5, 54, 0, 64, 69, 110, 8, 7, 18}, "abe818", 1.2937818E9f))) {
                    b = 8;
                }
                break;
            case -1346021293:
                if (str.equals(NPStringFog.decode(new byte[]{125, 66, 92, 22, 94, 39, 69, 67, 95, 33, 88, 11, 64, 91, 85, 22, 82, 50, 85, 79, 68, 52, 94, 3, 71}, "070b7f", 6708))) {
                    b = 10;
                }
                break;
            case -938935918:
                if (str.equals(NPStringFog.decode(new byte[]{54, 0, 79, 65, 102, 88, 7, 18}, "be7501", 7.56047122E8d))) {
                    b = 0;
                }
                break;
            case -937446323:
                if (str.equals(NPStringFog.decode(new byte[]{122, 14, 89, 86, 80, 119, 70, 23, 76, 94, 91}, "3c8155", true))) {
                    b = 5;
                }
                break;
            case -658531749:
                if (str.equals(NPStringFog.decode(new byte[]{103, 87, 85, 95, 122, 88, 70}, "420489", -22248))) {
                    b = 12;
                }
                break;
            case -339785223:
                if (str.equals(NPStringFog.decode(new byte[]{53, 20, 12, 87, 94, 83, 20}, "fde906", false))) {
                    b = 4;
                }
                break;
            case 776382189:
                if (str.equals(NPStringFog.decode(new byte[]{101, 3, 1, 93, 11, 113, 66, 22, 17, 91, 10}, "7be4d3", true))) {
                    b = 7;
                }
                break;
            case 799298502:
                if (str.equals(NPStringFog.decode(new byte[]{108, 89, 95, 5, 88, 4, 122, 67, 76, 22, 91, 15}, "868b4a", 1.0692923E7d))) {
                    b = 13;
                }
                break;
            case 1125864064:
                if (str.equals(NPStringFog.decode(new byte[]{122, 89, 81, 84, 3, 100, 90, 81, 71}, "3403f2", -5529))) {
                    b = 1;
                }
                break;
            case 1413872058:
                if (str.equals(NPStringFog.decode(new byte[]{112, 64, 68, 88, 116, 90, 92, 69, 92, 82, 67, 80, 101, 80, 72, 67, 97, 92, 84, 66}, "150775", 480165522L))) {
                    b = 9;
                }
                break;
            case 1601505219:
                if (str.equals(NPStringFog.decode(new byte[]{113, 95, 85, 2, 10, 114, 93, 79}, "270aa0", false))) {
                    b = 6;
                }
                break;
            case 1666676343:
                if (str.equals(NPStringFog.decode(new byte[]{114, 84, 12, 76, 49, 84, 79, 68}, "70e8e1", -27455))) {
                    b = 3;
                }
                break;
            case 2001146706:
                if (str.equals(NPStringFog.decode(new byte[]{119, 17, 64, 23, 90, 8}, "5d4c5f", 3.97042264E8d))) {
                    b = 2;
                }
                break;
        }
        switch (b) {
            case 0:
                viewCreateTextView = createTextView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 1:
                viewCreateTextView = createImageView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 2:
                viewCreateTextView = createButton(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 3:
                viewCreateTextView = createEditText(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 4:
                viewCreateTextView = createSpinner(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 5:
                viewCreateTextView = createImageButton(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 6:
                viewCreateTextView = createCheckBox(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 7:
                viewCreateTextView = createRadioButton(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 8:
                viewCreateTextView = createCheckedTextView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 9:
                viewCreateTextView = createAutoCompleteTextView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 10:
                viewCreateTextView = createMultiAutoCompleteTextView(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 11:
                viewCreateTextView = createRatingBar(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 12:
                viewCreateTextView = createSeekBar(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            case 13:
                viewCreateTextView = createToggleButton(context2, attributeSet);
                verifyNotNull(viewCreateTextView, str);
                break;
            default:
                viewCreateTextView = createView(context2, str, attributeSet);
                break;
        }
        if (viewCreateTextView == null && context != context2) {
            viewCreateTextView = createViewFromTag(context2, str, attributeSet);
        }
        if (viewCreateTextView != null) {
            checkOnClickListener(viewCreateTextView, attributeSet);
            backportAccessibilityAttributes(context2, viewCreateTextView, attributeSet);
        }
        return viewCreateTextView;
    }
}

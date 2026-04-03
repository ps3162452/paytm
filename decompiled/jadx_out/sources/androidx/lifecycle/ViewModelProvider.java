package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes15.dex */
public class ViewModelProvider {
    private static final String DEFAULT_KEY = NPStringFog.decode(new byte[]{85, 10, 1, 74, 94, 88, 80, 28, 75, 84, 88, 87, 81, 7, 28, 91, 93, 84, 26, 50, 12, 93, 70, 124, 91, 0, 0, 84, 97, 67, 91, 18, 12, 92, 84, 67, 26, 32, 0, 94, 80, 68, 88, 16, 46, 93, 72}, "4de811", -4555);
    private final Factory mFactory;
    private final ViewModelStore mViewModelStore;

    public static class AndroidViewModelFactory extends NewInstanceFactory {
        private static AndroidViewModelFactory sInstance;
        private Application mApplication;

        public AndroidViewModelFactory(Application application) {
            this.mApplication = application;
        }

        public static AndroidViewModelFactory getInstance(Application application) {
            if (sInstance == null) {
                sInstance = new AndroidViewModelFactory(application);
            }
            return sInstance;
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public <T extends ViewModel> T create(Class<T> cls) {
            if (!AndroidViewModel.class.isAssignableFrom(cls)) {
                return (T) super.create(cls);
            }
            try {
                return cls.getConstructor(Application.class).newInstance(this.mApplication);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{118, 88, 10, 88, 12, 66, 21, 90, 22, 83, 2, 66, 80, 25, 5, 88, 67, 95, 91, 74, 16, 87, 13, 85, 80, 25, 11, 80, 67}, "59d6c6", -2.1279328E9f) + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{113, 4, 89, 10, 89, 76, 18, 6, 69, 1, 87, 76, 87, 69, 86, 10, 22, 81, 92, 22, 67, 5, 88, 91, 87, 69, 88, 2, 22}, "2e7d68", true, true) + cls, e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{123, 2, 89, 15, 86, 69, 24, 0, 69, 4, 88, 69, 93, 67, 86, 15, 25, 88, 86, 16, 67, 0, 87, 82, 93, 67, 88, 7, 25}, "8c7a91", false) + cls, e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{34, 2, 93, 89, 14, 70, 65, 0, 65, 82, 0, 70, 4, 67, 82, 89, 65, 91, 15, 16, 71, 86, 15, 81, 4, 67, 92, 81, 65}, "ac37a2", 6263) + cls, e4);
            }
        }
    }

    public interface Factory {
        <T extends ViewModel> T create(Class<T> cls);
    }

    static abstract class KeyedFactory extends OnRequeryFactory implements Factory {
        KeyedFactory() {
        }

        public <T extends ViewModel> T create(Class<T> cls) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{0, 75, 86, 88, 67, 7, 75, 106, 71, 75, 94, 12, 4, 21, 19, 122, 91, 3, 16, 74, 15, 6, 9, 75, 67, 84, 70, 74, 67, 66, 1, 92, 19, 90, 86, 14, 15, 92, 87, 25, 88, 12, 67, 80, 94, 73, 91, 7, 14, 92, 93, 77, 86, 11, 12, 87, 64, 25, 88, 4, 67, 114, 86, 64, 82, 6, 37, 88, 80, 77, 88, 16, 26}, "c9397b", false));
        }

        public abstract <T extends ViewModel> T create(String str, Class<T> cls);
    }

    public static class NewInstanceFactory implements Factory {
        private static NewInstanceFactory sInstance;

        static NewInstanceFactory getInstance() {
            if (sInstance == null) {
                sInstance = new NewInstanceFactory();
            }
            return sInstance;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public <T extends ViewModel> T create(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{38, 86, 89, 15, 14, 18, 69, 84, 69, 4, 0, 18, 0, 23, 86, 15, 65, 15, 11, 68, 67, 0, 15, 5, 0, 23, 88, 7, 65}, "e77aaf", 1.750246696E9d) + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{39, 2, 94, 13, 13, 23, 68, 0, 66, 6, 3, 23, 1, 67, 81, 13, 66, 10, 10, 16, 68, 2, 12, 0, 1, 67, 95, 5, 66}, "dc0cbc", -1.159849343E9d) + cls, e2);
            }
        }
    }

    static class OnRequeryFactory {
        OnRequeryFactory() {
        }

        void onRequery(ViewModel viewModel) {
        }
    }

    public ViewModelProvider(ViewModelStore viewModelStore, Factory factory) {
        this.mFactory = factory;
        this.mViewModelStore = viewModelStore;
    }

    public ViewModelProvider(ViewModelStoreOwner viewModelStoreOwner) {
        this(viewModelStoreOwner.getViewModelStore(), viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwner).getDefaultViewModelProviderFactory() : NewInstanceFactory.getInstance());
    }

    public ViewModelProvider(ViewModelStoreOwner viewModelStoreOwner, Factory factory) {
        this(viewModelStoreOwner.getViewModelStore(), factory);
    }

    public <T extends ViewModel> T get(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{124, 93, 87, 7, 8, 24, 81, 92, 80, 70, 5, 86, 95, 92, 77, 11, 11, 77, 67, 18, 87, 10, 5, 75, 67, 87, 71, 70, 7, 89, 94, 18, 90, 9, 16, 24, 82, 87, 20, 48, 13, 93, 71, 127, 91, 2, 1, 84, 67}, "024fd8", -2140542221L));
        }
        return (T) get(NPStringFog.decode(new byte[]{83, 93, 6, 70, 87, 88, 86, 75, 76, 88, 81, 87, 87, 80, 27, 87, 84, 84, 28, 101, 11, 81, 79, 124, 93, 87, 7, 88, 104, 67, 93, 69, 11, 80, 93, 67, 28, 119, 7, 82, 89, 68, 94, 71, 41, 81, 65, 11}, "23b481", -1662570106L) + canonicalName, cls);
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
    public <T extends ViewModel> T get(String str, Class<T> cls) {
        T t = (T) this.mViewModelStore.get(str);
        if (cls.isInstance(t)) {
            Object obj = this.mFactory;
            if (obj instanceof OnRequeryFactory) {
                ((OnRequeryFactory) obj).onRequery(t);
            }
            return t;
        }
        Factory factory = this.mFactory;
        T t2 = factory instanceof KeyedFactory ? (T) ((KeyedFactory) factory).create(str, cls) : (T) factory.create(cls);
        this.mViewModelStore.put(str, t2);
        return t2;
    }
}

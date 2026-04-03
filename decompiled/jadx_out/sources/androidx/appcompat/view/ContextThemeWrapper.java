package androidx.appcompat.view;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.appcompat.R;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
public class ContextThemeWrapper extends ContextWrapper {
    private LayoutInflater mInflater;
    private Configuration mOverrideConfiguration;
    private Resources mResources;
    private Resources.Theme mTheme;
    private int mThemeResource;

    public ContextThemeWrapper() {
        super(null);
    }

    public ContextThemeWrapper(Context context, int i) {
        super(context);
        this.mThemeResource = i;
    }

    public ContextThemeWrapper(Context context, Resources.Theme theme) {
        super(context);
        this.mTheme = theme;
    }

    private Resources getResourcesInternal() {
        if (this.mResources == null) {
            if (this.mOverrideConfiguration == null) {
                this.mResources = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.mResources = createConfigurationContext(this.mOverrideConfiguration).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration = new Configuration(resources.getConfiguration());
                configuration.updateFrom(this.mOverrideConfiguration);
                this.mResources = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration);
            }
        }
        return this.mResources;
    }

    private void initializeTheme() {
        boolean z = this.mTheme == null;
        if (z) {
            this.mTheme = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.mTheme.setTo(theme);
            }
        }
        onApplyThemeResource(this.mTheme, this.mThemeResource, z);
    }

    public void applyOverrideConfiguration(Configuration configuration) {
        if (this.mResources != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{95, 92, 21, 98, 93, 70, 87, 76, 19, 83, 93, 70, 16, 16, 65, 95, 74, 21, 95, 92, 21, 113, 75, 70, 93, 77, 18, 24, 17, 21, 80, 88, 18, 16, 89, 89, 74, 92, 0, 84, 65, 21, 90, 92, 4, 94, 24, 86, 89, 85, 13, 85, 92}, "89a085", false));
        }
        if (this.mOverrideConfiguration != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{126, 20, 83, 19, 17, 93, 85, 7, 22, 2, 12, 90, 87, 11, 81, 20, 17, 85, 69, 11, 89, 15, 67, 92, 80, 17, 22, 0, 15, 70, 84, 3, 82, 24, 67, 86, 84, 7, 88, 65, 16, 81, 69}, "1b6ac4", -2.2407954E7d));
        }
        this.mOverrideConfiguration = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return getResourcesInternal();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!NPStringFog.decode(new byte[]{88, 88, 28, 88, 22, 16, 107, 80, 11, 81, 15, 5, 64, 92, 23}, "49e7cd", true).equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.mInflater == null) {
            this.mInflater = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.mInflater;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.mTheme;
        if (theme != null) {
            return theme;
        }
        if (this.mThemeResource == 0) {
            this.mThemeResource = R.style.Theme_AppCompat_Light;
        }
        initializeTheme();
        return this.mTheme;
    }

    public int getThemeResId() {
        return this.mThemeResource;
    }

    protected void onApplyThemeResource(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.mThemeResource != i) {
            this.mThemeResource = i;
            initializeTheme();
        }
    }
}

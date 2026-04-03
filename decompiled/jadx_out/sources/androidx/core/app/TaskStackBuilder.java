package androidx.core.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class TaskStackBuilder implements Iterable<Intent> {
    private static final String TAG = NPStringFog.decode(new byte[]{55, 80, 18, 91, 49, 22, 2, 82, 10, 114, 23, 11, 15, 85, 4, 66}, "c1a0bb", -26467);
    private final ArrayList<Intent> mIntents = new ArrayList<>();
    private final Context mSourceContext;

    public interface SupportParentable {
        Intent getSupportParentActivityIntent();
    }

    private TaskStackBuilder(Context context) {
        this.mSourceContext = context;
    }

    public static TaskStackBuilder create(Context context) {
        return new TaskStackBuilder(context);
    }

    @Deprecated
    public static TaskStackBuilder from(Context context) {
        return create(context);
    }

    public TaskStackBuilder addNextIntent(Intent intent) {
        this.mIntents.add(intent);
        return this;
    }

    public TaskStackBuilder addNextIntentWithParentStack(Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            component = intent.resolveActivity(this.mSourceContext.getPackageManager());
        }
        if (component != null) {
            addParentStack(component);
        }
        addNextIntent(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TaskStackBuilder addParentStack(Activity activity) {
        Intent supportParentActivityIntent = activity instanceof SupportParentable ? ((SupportParentable) activity).getSupportParentActivityIntent() : null;
        Intent parentActivityIntent = supportParentActivityIntent == null ? NavUtils.getParentActivityIntent(activity) : supportParentActivityIntent;
        if (parentActivityIntent != null) {
            ComponentName component = parentActivityIntent.getComponent();
            if (component == null) {
                component = parentActivityIntent.resolveActivity(this.mSourceContext.getPackageManager());
            }
            addParentStack(component);
            addNextIntent(parentActivityIntent);
        }
        return this;
    }

    public TaskStackBuilder addParentStack(ComponentName componentName) {
        int size = this.mIntents.size();
        try {
            Intent parentActivityIntent = NavUtils.getParentActivityIntent(this.mSourceContext, componentName);
            while (parentActivityIntent != null) {
                this.mIntents.add(size, parentActivityIntent);
                parentActivityIntent = NavUtils.getParentActivityIntent(this.mSourceContext, parentActivityIntent.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(TAG, NPStringFog.decode(new byte[]{113, 7, 6, 21, 123, 88, 94, 22, 13, 91, 93, 89, 71, 40, 3, 88, 93, 23, 68, 14, 11, 89, 93, 23, 71, 20, 3, 67, 93, 69, 64, 15, 12, 82, 24, 86, 80, 18, 11, 67, 81, 67, 74, 70, 18, 84, 74, 82, 93, 18, 66, 88, 93, 67, 82, 2, 3, 65, 89}, "3fb587", 1.747549737E9d));
            throw new IllegalArgumentException(e);
        }
    }

    public TaskStackBuilder addParentStack(Class<?> cls) {
        return addParentStack(new ComponentName(this.mSourceContext, cls));
    }

    public Intent editIntentAt(int i) {
        return this.mIntents.get(i);
    }

    @Deprecated
    public Intent getIntent(int i) {
        return editIntentAt(i);
    }

    public int getIntentCount() {
        return this.mIntents.size();
    }

    public Intent[] getIntents() {
        Intent[] intentArr = new Intent[this.mIntents.size()];
        if (intentArr.length == 0) {
            return intentArr;
        }
        intentArr[0] = new Intent(this.mIntents.get(0)).addFlags(268484608);
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 >= intentArr.length) {
                return intentArr;
            }
            intentArr[i2] = new Intent(this.mIntents.get(i2));
            i = i2 + 1;
        }
    }

    public PendingIntent getPendingIntent(int i, int i2) {
        return getPendingIntent(i, i2, null);
    }

    public PendingIntent getPendingIntent(int i, int i2, Bundle bundle) {
        if (this.mIntents.isEmpty()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{126, 87, 23, 94, 90, 66, 85, 86, 67, 68, 20, 87, 84, 92, 82, 83, 20, 66, 95, 24, 99, 86, 71, 93, 99, 76, 86, 84, 95, 116, 69, 81, 91, 83, 81, 68, 11, 24, 84, 86, 90, 88, 95, 76, 23, 80, 81, 66, 96, 93, 89, 83, 93, 88, 87, 113, 89, 67, 81, 88, 68}, "087746", false));
        }
        ArrayList<Intent> arrayList = this.mIntents;
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        return Build.VERSION.SDK_INT >= 16 ? PendingIntent.getActivities(this.mSourceContext, i, intentArr, i2, bundle) : PendingIntent.getActivities(this.mSourceContext, i, intentArr, i2);
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.mIntents.iterator();
    }

    public void startActivities() {
        startActivities(null);
    }

    public void startActivities(Bundle bundle) {
        if (this.mIntents.isEmpty()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{124, 9, 19, 93, 12, 70, 87, 8, 71, 71, 66, 83, 86, 2, 86, 80, 66, 70, 93, 70, 103, 85, 17, 89, 97, 18, 82, 87, 9, 112, 71, 15, 95, 80, 7, 64, 9, 70, 80, 85, 12, 92, 93, 18, 19, 71, 22, 83, 64, 18, 114, 87, 22, 91, 68, 15, 71, 93, 7, 65}, "2f34b2", 3.51423237E8d));
        }
        ArrayList<Intent> arrayList = this.mIntents;
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (ContextCompat.startActivities(this.mSourceContext, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(268435456);
        this.mSourceContext.startActivity(intent);
    }
}

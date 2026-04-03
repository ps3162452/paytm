package okhttp3.internal.connection;

import java.util.LinkedHashSet;
import java.util.Set;
import okhttp3.Route;

/* JADX INFO: loaded from: classes62.dex */
public final class RouteDatabase {
    private final Set<Route> failedRoutes = new LinkedHashSet();

    public void connected(Route route) {
        synchronized (this) {
            this.failedRoutes.remove(route);
        }
    }

    public void failed(Route route) {
        synchronized (this) {
            this.failedRoutes.add(route);
        }
    }

    public boolean shouldPostpone(Route route) {
        boolean zContains;
        synchronized (this) {
            zContains = this.failedRoutes.contains(route);
        }
        return zContains;
    }
}

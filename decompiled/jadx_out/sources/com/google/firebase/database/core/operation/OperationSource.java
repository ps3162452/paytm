package com.google.firebase.database.core.operation;

import com.google.firebase.database.core.view.QueryParams;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class OperationSource {
    static final boolean $assertionsDisabled = false;
    private final QueryParams queryParams;
    private final Source source;
    private final boolean tagged;
    public static final OperationSource USER = new OperationSource(Source.User, null, false);
    public static final OperationSource SERVER = new OperationSource(Source.Server, null, false);

    private enum Source {
        User,
        Server
    }

    public OperationSource(Source source, QueryParams queryParams, boolean z) {
        this.source = source;
        this.queryParams = queryParams;
        this.tagged = z;
    }

    public static OperationSource forServerTaggedQuery(QueryParams queryParams) {
        return new OperationSource(Source.Server, queryParams, true);
    }

    public QueryParams getQueryParams() {
        return this.queryParams;
    }

    public boolean isFromServer() {
        return this.source == Source.Server;
    }

    public boolean isFromUser() {
        return this.source == Source.User;
    }

    public boolean isTagged() {
        return this.tagged;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{123, 72, 4, 75, 89, 69, 93, 87, 15, 106, 87, 68, 70, 91, 4, 66, 75, 94, 65, 74, 2, 92, 5}, "48a981", 7.9686584E7f) + this.source + NPStringFog.decode(new byte[]{24, 25, 72, 66, 84, 67, 77, 105, 88, 69, 80, 92, 71, 4}, "499711", 24750) + this.queryParams + NPStringFog.decode(new byte[]{78, 18, 16, 7, 4, 1, 7, 86, 89}, "b2dfcf", 81671819L) + this.tagged + '}';
    }
}

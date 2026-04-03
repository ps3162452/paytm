package com.google.firebase.database.core;

import com.google.firebase.database.snapshot.ChildKey;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class Constants {
    public static final String WIRE_PROTOCOL_VERSION = NPStringFog.decode(new byte[]{1}, "4754fb", -1.086735891E9d);
    public static final ChildKey DOT_INFO = ChildKey.fromString(NPStringFog.decode(new byte[]{27, 80, 86, 87, 93}, "598127", true, true));
    public static final ChildKey DOT_INFO_SERVERTIME_OFFSET = ChildKey.fromString(NPStringFog.decode(new byte[]{71, 93, 68, 68, 86, 23, 96, 81, 91, 87, 124, 3, 82, 75, 83, 70}, "48623e", 497166400L));
    public static final ChildKey DOT_INFO_AUTHENTICATED = ChildKey.fromString(NPStringFog.decode(new byte[]{80, 65, 17, 12, 6, 88, 69, 93, 6, 5, 23, 83, 85}, "14edc6", true, true));
    public static final ChildKey DOT_INFO_CONNECTED = ChildKey.fromString(NPStringFog.decode(new byte[]{1, 11, 13, 92, 1, 1, 22, 1, 7}, "bdc2db", 6.238497E8f));
}

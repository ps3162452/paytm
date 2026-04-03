package androidx.core.content.pm;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public class ShortcutXmlParser {
    private static volatile ArrayList<String> sShortcutIds;
    private static final String ATTR_SHORTCUT_ID = NPStringFog.decode(new byte[]{18, 93, 91, 66, 21, 82, 20, 65, 125, 84}, "a540a1", true, false);
    private static final String META_DATA_APP_SHORTCUTS = NPStringFog.decode(new byte[]{4, 8, 93, 19, 12, 11, 1, 72, 88, 17, 19, 76, 22, 14, 86, 19, 23, 1, 16, 18, 74}, "ef9acb", true);
    private static final String TAG = NPStringFog.decode(new byte[]{98, 92, 95, 19, 22, 7, 68, 64, 104, 12, 14, 52, 80, 70, 67, 4, 16}, "140abd", true, false);
    private static final String TAG_SHORTCUT = NPStringFog.decode(new byte[]{23, 81, 11, 74, 66, 87, 17, 77}, "d9d864", -1.0606191E9f);
    private static final Object GET_INSTANCE_LOCK = new Object();

    private ShortcutXmlParser() {
    }

    private static String getAttributeValue(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(NPStringFog.decode(new byte[]{11, 22, 66, 21, 89, 31, 76, 17, 85, 13, 6, 93, 2, 17, 24, 4, 13, 84, 17, 13, 95, 1, 77, 83, 12, 15, 25, 4, 19, 91, 76, 16, 83, 22, 76, 81, 13, 6, 68, 10, 10, 84}, "cb6ec0", -793342477L), str);
        return attributeValue == null ? xmlPullParser.getAttributeValue(null, str) : attributeValue;
    }

    public static List<String> getShortcutIds(Context context) {
        if (sShortcutIds == null) {
            synchronized (GET_INSTANCE_LOCK) {
                if (sShortcutIds == null) {
                    sShortcutIds = new ArrayList<>();
                    sShortcutIds.addAll(parseShortcutIds(context));
                }
            }
        }
        return sShortcutIds;
    }

    private static XmlResourceParser getXmlResourceParser(Context context, ActivityInfo activityInfo) {
        XmlResourceParser xmlResourceParserLoadXmlMetaData = activityInfo.loadXmlMetaData(context.getPackageManager(), META_DATA_APP_SHORTCUTS);
        if (xmlResourceParserLoadXmlMetaData != null) {
            return xmlResourceParserLoadXmlMetaData;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{118, 3, 13, 88, 82, 80, 16, 22, 11, 20, 88, 68, 85, 12, 68, 85, 89, 80, 66, 13, 13, 80, 25, 85, 64, 18, 74, 71, 95, 91, 66, 22, 7, 65, 67, 71, 16, 15, 1, 64, 86, 25, 84, 3, 16, 85, 23, 70, 85, 17, 11, 65, 69, 87, 85, 66, 11, 82, 23}, "0bd474", false) + activityInfo.name);
    }

    public static List<String> parseShortcutIds(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String attributeValue;
        ArrayList arrayList = new ArrayList(1);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= 0)) {
                break;
            }
            int depth = xmlPullParser.getDepth();
            String name = xmlPullParser.getName();
            if (next == 2 && depth == 2 && TAG_SHORTCUT.equals(name) && (attributeValue = getAttributeValue(xmlPullParser, ATTR_SHORTCUT_ID)) != null) {
                arrayList.add(attributeValue);
            }
        }
        return arrayList;
    }

    private static Set<String> parseShortcutIds(Context context) {
        HashSet hashSet = new HashSet();
        Intent intent = new Intent(NPStringFog.decode(new byte[]{86, 15, 0, 16, 13, 15, 83, 79, 13, 12, 22, 3, 89, 21, 74, 3, 1, 18, 94, 14, 10, 76, 47, 39, 126, 47}, "7adbbf", false, false));
        intent.addCategory(NPStringFog.decode(new byte[]{80, 89, 87, 75, 87, 89, 85, 25, 90, 87, 76, 85, 95, 67, 29, 90, 89, 68, 84, 80, 92, 75, 65, 30, 125, 118, 102, 119, 123, 120, 116, 101}, "173980", 1.45806149E8d));
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 128);
        if (listQueryIntentActivities == null || listQueryIntentActivities.size() == 0) {
            return hashSet;
        }
        try {
            Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
            while (it.hasNext()) {
                ActivityInfo activityInfo = it.next().activityInfo;
                Bundle bundle = activityInfo.metaData;
                if (bundle != null && bundle.containsKey(META_DATA_APP_SHORTCUTS)) {
                    XmlResourceParser xmlResourceParser = getXmlResourceParser(context, activityInfo);
                    try {
                        hashSet.addAll(parseShortcutIds(xmlResourceParser));
                        if (xmlResourceParser != null) {
                            xmlResourceParser.close();
                        }
                    } catch (Throwable th) {
                        if (xmlResourceParser != null) {
                            try {
                                xmlResourceParser.close();
                            } catch (Throwable th2) {
                            }
                        }
                        throw th;
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, NPStringFog.decode(new byte[]{119, 85, 95, 92, 82, 7, 17, 64, 89, 16, 71, 2, 67, 71, 83, 16, 67, 11, 84, 20, 110, 93, 91, 67, 67, 81, 69, 95, 66, 17, 82, 81, 12, 16}, "14607c", -21192), e);
        }
        return hashSet;
    }
}

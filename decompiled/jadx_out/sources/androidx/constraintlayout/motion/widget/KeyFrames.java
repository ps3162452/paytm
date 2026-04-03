package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes39.dex */
public class KeyFrames {
    private static final String CUSTOM_ATTRIBUTE = NPStringFog.decode(new byte[]{117, 66, 74, 65, 86, 92, 119, 67, 77, 71, 80, 83, 67, 67, 92}, "679591", false, true);
    private static final String CUSTOM_METHOD = NPStringFog.decode(new byte[]{113, 22, 18, 22, 89, 11, 127, 6, 21, 10, 89, 2}, "2cab6f", false);
    private static final String TAG = NPStringFog.decode(new byte[]{46, 84, 29, 36, 68, 80, 8, 84, 23}, "e1db61", false, false);
    public static final int UNSET = -1;
    static HashMap<String, Constructor<? extends Key>> sKeyMakers;
    private HashMap<Integer, ArrayList<Key>> mFramesMap = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends Key>> map = new HashMap<>();
        sKeyMakers = map;
        try {
            map.put(NPStringFog.decode(new byte[]{115, 92, 74, 121, 65, 70, 74, 80, 81, 77, 65, 87}, "893852", -779023291L), KeyAttributes.class.getConstructor(new Class[0]));
            sKeyMakers.put(NPStringFog.decode(new byte[]{46, 80, 78, 97, 93, 64, 12, 65, 94, 94, 92}, "e57123", 1208354020L), KeyPosition.class.getConstructor(new Class[0]));
            sKeyMakers.put(NPStringFog.decode(new byte[]{127, 92, 75, 32, 78, 84, 88, 92}, "492c77", 718466344L), KeyCycle.class.getConstructor(new Class[0]));
            sKeyMakers.put(NPStringFog.decode(new byte[]{126, 85, 73, 54, 12, 93, 80, 115, 73, 1, 9, 85}, "500be0", 9.52592312E8d), KeyTimeCycle.class.getConstructor(new Class[0]));
            sKeyMakers.put(NPStringFog.decode(new byte[]{46, 0, 29, 97, 64, 11, 2, 2, 1, 71}, "eed52b", -7.88828932E8d), KeyTrigger.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
            Log.e(NPStringFog.decode(new byte[]{47, 93, 77, 115, 67, 84, 9, 93, 71}, "d84515", -6.44140411E8d), NPStringFog.decode(new byte[]{20, 8, 4, 6, 94, 87, 65, 18, 10, 68, 94, 93, 0, 2}, "afed22", -1.478002655E9d), e);
        }
    }

    public KeyFrames() {
    }

    public KeyFrames(Context context, XmlPullParser xmlPullParser) {
        Key key = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                switch (eventType) {
                    case 2:
                        String name = xmlPullParser.getName();
                        if (sKeyMakers.containsKey(name)) {
                            try {
                                Constructor<? extends Key> constructor = sKeyMakers.get(name);
                                if (constructor == null) {
                                    StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 23);
                                    sb.append(NPStringFog.decode(new byte[]{126, 4, 31, 84, 5, 10, 80, 19, 70, 95, 11, 19, 21}, "5af9da", -745706384L));
                                    sb.append(name);
                                    sb.append(NPStringFog.decode(new byte[]{66, 95, 91, 66, 67, 7, 13, 68, 90, 82}, "b146ca", false, true));
                                    throw new NullPointerException(sb.toString());
                                }
                                Key keyNewInstance = constructor.newInstance(new Object[0]);
                                try {
                                    keyNewInstance.load(context, Xml.asAttributeSet(xmlPullParser));
                                    addKey(keyNewInstance);
                                    key = keyNewInstance;
                                } catch (Exception e) {
                                    key = keyNewInstance;
                                    e = e;
                                    Log.e(NPStringFog.decode(new byte[]{123, 1, 64, 35, 75, 86, 93, 1, 74}, "0d9e97", 2.1881442E8f), NPStringFog.decode(new byte[]{69, 88, 84, 90, 89, 3, 16, 66, 90, 24, 86, 20, 85, 87, 65, 93, 21}, "06585f", -2.10667522E9d), e);
                                }
                            } catch (Exception e2) {
                                e = e2;
                            }
                            Log.e(NPStringFog.decode(new byte[]{123, 1, 64, 35, 75, 86, 93, 1, 74}, "0d9e97", 2.1881442E8f), NPStringFog.decode(new byte[]{69, 88, 84, 90, 89, 3, 16, 66, 90, 24, 86, 20, 85, 87, 65, 93, 21}, "06585f", -2.10667522E9d), e);
                        } else if (!name.equalsIgnoreCase(NPStringFog.decode(new byte[]{113, 20, 23, 22, 86, 95, 115, 21, 16, 16, 80, 80, 71, 21, 1}, "2adb92", -4.44270809E8d))) {
                            if (name.equalsIgnoreCase(NPStringFog.decode(new byte[]{114, 69, 66, 70, 86, 9, 124, 85, 69, 90, 86, 0}, "10129d", 1.346890317E9d)) && key != null && key.mCustomConstraints != null) {
                                ConstraintAttribute.parse(context, xmlPullParser, key.mCustomConstraints);
                            }
                        } else if (key != null && key.mCustomConstraints != null) {
                            ConstraintAttribute.parse(context, xmlPullParser, key.mCustomConstraints);
                        }
                        break;
                    case 3:
                        if (NPStringFog.decode(new byte[]{41, 84, 78, 113, 70, 80, 15, 84, 100, 82, 64}, "b17741", 6.13218468E8d).equals(xmlPullParser.getName())) {
                            return;
                        }
                        break;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e3) {
            e3.printStackTrace();
        } catch (XmlPullParserException e4) {
            e4.printStackTrace();
        }
    }

    static String name(int i, Context context) {
        return context.getResources().getResourceEntryName(i);
    }

    public void addAllFrames(MotionController motionController) {
        ArrayList<Key> arrayList = this.mFramesMap.get(-1);
        if (arrayList != null) {
            motionController.addKeys(arrayList);
        }
    }

    public void addFrames(MotionController motionController) {
        ArrayList<Key> arrayList = this.mFramesMap.get(Integer.valueOf(motionController.mId));
        if (arrayList != null) {
            motionController.addKeys(arrayList);
        }
        ArrayList<Key> arrayList2 = this.mFramesMap.get(-1);
        if (arrayList2 != null) {
            for (Key key : arrayList2) {
                if (key.matches(((ConstraintLayout.LayoutParams) motionController.mView.getLayoutParams()).constraintTag)) {
                    motionController.addKey(key);
                }
            }
        }
    }

    public void addKey(Key key) {
        if (!this.mFramesMap.containsKey(Integer.valueOf(key.mTargetId))) {
            this.mFramesMap.put(Integer.valueOf(key.mTargetId), new ArrayList<>());
        }
        ArrayList<Key> arrayList = this.mFramesMap.get(Integer.valueOf(key.mTargetId));
        if (arrayList != null) {
            arrayList.add(key);
        }
    }

    public ArrayList<Key> getKeyFramesForView(int i) {
        return this.mFramesMap.get(Integer.valueOf(i));
    }

    public Set<Integer> getKeys() {
        return this.mFramesMap.keySet();
    }
}

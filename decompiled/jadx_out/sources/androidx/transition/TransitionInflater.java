package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.core.content.res.TypedArrayUtils;
import java.io.IOException;
import java.lang.reflect.Constructor;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes51.dex */
public class TransitionInflater {
    private final Context mContext;
    private static final Class<?>[] CONSTRUCTOR_SIGNATURE = {Context.class, AttributeSet.class};
    private static final ArrayMap<String, Constructor<?>> CONSTRUCTORS = new ArrayMap<>();

    private TransitionInflater(@NonNull Context context) {
        this.mContext = context;
    }

    private Object createCustom(AttributeSet attributeSet, Class<?> cls, String str) {
        Object objNewInstance;
        Class<? extends U> clsAsSubclass;
        String attributeValue = attributeSet.getAttributeValue(null, NPStringFog.decode(new byte[]{87, 94, 86, 67, 67}, "427004", false));
        if (attributeValue == null) {
            throw new InflateException(str + NPStringFog.decode(new byte[]{65, 64, 87, 84, 21, 11, 20, 71, 66, 19, 93, 7, 23, 81, 22, 82, 21, 65, 2, 88, 87, 64, 70, 65, 65, 85, 66, 71, 71, 15, 3, 65, 66, 86}, "a4635f", -4.77901012E8d));
        }
        try {
            synchronized (CONSTRUCTORS) {
                Constructor<?> constructor = CONSTRUCTORS.get(attributeValue);
                if (constructor == null && (clsAsSubclass = Class.forName(attributeValue, false, this.mContext.getClassLoader()).asSubclass(cls)) != 0) {
                    constructor = clsAsSubclass.getConstructor(CONSTRUCTOR_SIGNATURE);
                    constructor.setAccessible(true);
                    CONSTRUCTORS.put(attributeValue, constructor);
                }
                objNewInstance = constructor.newInstance(this.mContext, attributeSet);
            }
            return objNewInstance;
        } catch (Exception e) {
            throw new InflateException(NPStringFog.decode(new byte[]{116, 93, 64, 14, 6, 68, 89, 93, 65, 66, 11, 10, 68, 70, 84, 12, 22, 13, 86, 70, 80, 66}, "725bbd", 1.373450201E9d) + cls + NPStringFog.decode(new byte[]{21, 84, 8, 7, 67, 23, 21}, "57df0d", false, true) + attributeValue, e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x02b9, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.transition.Transition createTransitionFromXml(org.xmlpull.v1.XmlPullParser r9, android.util.AttributeSet r10, androidx.transition.Transition r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 986
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionInflater.createTransitionFromXml(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, androidx.transition.Transition):androidx.transition.Transition");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x007f, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.transition.TransitionManager createTransitionManagerFromXml(org.xmlpull.v1.XmlPullParser r10, android.util.AttributeSet r11, android.view.ViewGroup r12) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r9 = this;
            r8 = 1
            int r1 = r10.getDepth()
            r0 = 0
        L6:
            int r2 = r10.next()
            r3 = 3
            if (r2 != r3) goto L13
            int r3 = r10.getDepth()
            if (r3 <= r1) goto L7f
        L13:
            if (r2 == r8) goto L7f
            r3 = 2
            if (r2 != r3) goto L6
            java.lang.String r2 = r10.getName()
            r3 = 17
            byte[] r3 = new byte[r3]
            r3 = {x0080: FILL_ARRAY_DATA , data: [23, 70, 81, 88, 23, 11, 23, 93, 95, 88, 41, 3, 13, 85, 87, 83, 22} // fill-array
            java.lang.String r4 = "c406db"
            r6 = -4480869480620097536(0xc1d0c0f2b2c00000, double:-1.124321995E9)
            java.lang.String r3 = n.NPStringFog.decode(r3, r4, r6)
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L3a
            androidx.transition.TransitionManager r0 = new androidx.transition.TransitionManager
            r0.<init>()
            goto L6
        L3a:
            r3 = 10
            byte[] r3 = new byte[r3]
            r3 = {x008e: FILL_ARRAY_DATA , data: [18, 64, 3, 89, 67, 81, 18, 91, 13, 89} // fill-array
            java.lang.String r4 = "f2b708"
            r5 = 0
            java.lang.String r3 = n.NPStringFog.decode(r3, r4, r5, r8)
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L54
            if (r0 == 0) goto L54
            r9.loadTransition(r11, r10, r12, r0)
            goto L6
        L54:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r2 = 20
            byte[] r2 = new byte[r2]
            r2 = {x0098: FILL_ARRAY_DATA , data: [55, 94, 94, 92, 95, 18, 12, 16, 70, 81, 85, 11, 7, 16, 91, 83, 93, 0, 88, 16} // fill-array
            java.lang.String r3 = "b0520e"
            r4 = 424331355(0x194ac85b, double:2.09647545E-315)
            java.lang.String r2 = n.NPStringFog.decode(r2, r3, r4)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = r10.getName()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L7f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionInflater.createTransitionManagerFromXml(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.ViewGroup):androidx.transition.TransitionManager");
    }

    @NonNull
    public static TransitionInflater from(@NonNull Context context) {
        return new TransitionInflater(context);
    }

    @SuppressLint({"RestrictedApi"})
    private void getTargetIds(XmlPullParser xmlPullParser, AttributeSet attributeSet, Transition transition) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                if (!xmlPullParser.getName().equals(NPStringFog.decode(new byte[]{17, 0, 19, 3, 93, 67}, "eaad87", -5.24510053E8d))) {
                    throw new RuntimeException(NPStringFog.decode(new byte[]{51, 93, 13, 91, 93, 67, 8, 19, 21, 86, 87, 90, 3, 19, 8, 84, 95, 81, 92, 19}, "f3f524", true) + xmlPullParser.getName());
                }
                TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, Styleable.TRANSITION_TARGET);
                int namedResourceId = TypedArrayUtils.getNamedResourceId(typedArrayObtainStyledAttributes, xmlPullParser, NPStringFog.decode(new byte[]{71, 5, 16, 82, 1, 77, 122, 0}, "3db5d9", 1.085611791E9d), 1, 0);
                if (namedResourceId != 0) {
                    transition.addTarget(namedResourceId);
                } else {
                    int namedResourceId2 = TypedArrayUtils.getNamedResourceId(typedArrayObtainStyledAttributes, xmlPullParser, NPStringFog.decode(new byte[]{80, 30, 0, 94, 67, 5, 80, 47, 7}, "5fc26a", false, true), 2, 0);
                    if (namedResourceId2 != 0) {
                        transition.excludeTarget(namedResourceId2, true);
                    } else {
                        String namedString = TypedArrayUtils.getNamedString(typedArrayObtainStyledAttributes, xmlPullParser, NPStringFog.decode(new byte[]{68, 5, 66, 87, 4, 17, 126, 5, 93, 85}, "0d00ae", 518530343L), 4);
                        if (namedString != null) {
                            transition.addTarget(namedString);
                        } else {
                            String namedString2 = TypedArrayUtils.getNamedString(typedArrayObtainStyledAttributes, xmlPullParser, NPStringFog.decode(new byte[]{82, 75, 7, 89, 77, 93, 82, 125, 5, 88, 93}, "73d589", -9.13141185E8d), 5);
                            if (namedString2 != null) {
                                transition.excludeTarget(namedString2, true);
                            } else {
                                String namedString3 = TypedArrayUtils.getNamedString(typedArrayObtainStyledAttributes, xmlPullParser, NPStringFog.decode(new byte[]{1, 28, 80, 14, 67, 5, 1, 39, 95, 3, 69, 18}, "dd3b6a", false, false), 3);
                                if (namedString3 != null) {
                                    try {
                                        transition.excludeTarget(Class.forName(namedString3), true);
                                    } catch (ClassNotFoundException e) {
                                        typedArrayObtainStyledAttributes.recycle();
                                        throw new RuntimeException(NPStringFog.decode(new byte[]{33, 89, 19, 10, 93, 23, 12, 89, 18, 70, 90, 69, 7, 87, 18, 3, 25}, "b6ff97", -4.7418246E8f) + namedString3, e);
                                    }
                                } else {
                                    String namedString4 = TypedArrayUtils.getNamedString(typedArrayObtainStyledAttributes, xmlPullParser, NPStringFog.decode(new byte[]{76, 87, 16, 83, 6, 65, 123, 90, 3, 71, 16}, "86b4c5", 14130), 0);
                                    if (namedString4 != null) {
                                        transition.addTarget(Class.forName(namedString4));
                                    }
                                }
                            }
                        }
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            }
        }
    }

    @SuppressLint({"RestrictedApi"})
    private void loadTransition(AttributeSet attributeSet, XmlPullParser xmlPullParser, ViewGroup viewGroup, TransitionManager transitionManager) throws Resources.NotFoundException {
        Transition transitionInflateTransition;
        TypedArray typedArrayObtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, Styleable.TRANSITION_MANAGER);
        int namedResourceId = TypedArrayUtils.getNamedResourceId(typedArrayObtainStyledAttributes, xmlPullParser, NPStringFog.decode(new byte[]{23, 65, 87, 91, 65, 11, 23, 90, 89, 91}, "c3652b", false, false), 2, -1);
        int namedResourceId2 = TypedArrayUtils.getNamedResourceId(typedArrayObtainStyledAttributes, xmlPullParser, NPStringFog.decode(new byte[]{95, 68, 12, 94, 50, 81, 92, 88, 6}, "96c3a2", -20566), 0, -1);
        Scene sceneForLayout = namedResourceId2 < 0 ? null : Scene.getSceneForLayout(viewGroup, namedResourceId2, this.mContext);
        int namedResourceId3 = TypedArrayUtils.getNamedResourceId(typedArrayObtainStyledAttributes, xmlPullParser, NPStringFog.decode(new byte[]{17, 86, 100, 82, 1, 91, 0}, "e971d5", false, false), 1, -1);
        Scene sceneForLayout2 = namedResourceId3 >= 0 ? Scene.getSceneForLayout(viewGroup, namedResourceId3, this.mContext) : null;
        if (namedResourceId >= 0 && (transitionInflateTransition = inflateTransition(namedResourceId)) != null) {
            if (sceneForLayout2 == null) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{123, 95, 65, 70, 9, 97, 86, 85, 15, 87, 70, 84, 90, 66, 65, 70, 20, 83, 91, 67, 8, 70, 15, 93, 91, 16, 40, 118, 70}, "50a2f2", false) + namedResourceId);
            }
            if (sceneForLayout == null) {
                transitionManager.setTransition(sceneForLayout2, transitionInflateTransition);
            } else {
                transitionManager.setTransition(sceneForLayout, sceneForLayout2, transitionInflateTransition);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public Transition inflateTransition(int i) {
        XmlResourceParser xml = this.mContext.getResources().getXml(i);
        try {
            try {
                return createTransitionFromXml(xml, Xml.asAttributeSet(xml), null);
            } catch (IOException e) {
                throw new InflateException(xml.getPositionDescription() + NPStringFog.decode(new byte[]{10, 24}, "08c7f2", -7.771211E8f) + e.getMessage(), e);
            } catch (XmlPullParserException e2) {
                throw new InflateException(e2.getMessage(), e2);
            }
        } finally {
            xml.close();
        }
    }

    public TransitionManager inflateTransitionManager(int i, ViewGroup viewGroup) {
        XmlResourceParser xml = this.mContext.getResources().getXml(i);
        try {
            try {
                return createTransitionManagerFromXml(xml, Xml.asAttributeSet(xml), viewGroup);
            } catch (IOException e) {
                InflateException inflateException = new InflateException(xml.getPositionDescription() + NPStringFog.decode(new byte[]{89, 18}, "c2245b", -1.04429056E9f) + e.getMessage());
                inflateException.initCause(e);
                throw inflateException;
            } catch (XmlPullParserException e2) {
                InflateException inflateException2 = new InflateException(e2.getMessage());
                inflateException2.initCause(e2);
                throw inflateException2;
            }
        } finally {
            xml.close();
        }
    }
}

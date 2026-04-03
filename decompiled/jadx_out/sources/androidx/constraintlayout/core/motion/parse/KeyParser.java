package androidx.constraintlayout.core.motion.parse;

import androidx.constraintlayout.core.motion.utils.TypedBundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParser;
import androidx.constraintlayout.core.parser.CLParsingException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class KeyParser {

    /* JADX INFO: Access modifiers changed from: private */
    interface DataType {
        int get(int i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface Ids {
        int get(String str);
    }

    public static void main(String[] strArr) {
        parseAttributes(NPStringFog.decode(new byte[]{66, 3, 71, 84, 15, 82, 3, 87, 7, 25, 104, 67, 88, 23, 82, 80, 22, 13, 30, 18, 92, 81, 5, 82, 77, 84, 18, 25, 104, 82, 88, 22, 92, 91, 5, 13, 30, 0, 84, 70, 7, 126, 87, 66, 25, 63, 1, 66, 75, 19, 80, 115, 11, 67, 3, 66, 70, 69, 14, 94, 87, 0, 18, 25, 104, 71, 75, 10, 82, 71, 7, 68, 74, 95, 5, 27, 81, 27, 51, 4, 89, 69, 10, 86, 3, 85, 27, 7, 78, 61, 92, 9, 80, 67, 3, 67, 80, 10, 91, 15, 82, 25, 14, 73, 63, 71, 13, 67, 88, 17, 92, 90, 12, 109, 3, 87, 6, 25, 104, 69, 86, 17, 84, 65, 11, 88, 87, 61, 15, 7, 87, 25, 9, 73, 63, 71, 13, 67, 88, 17, 92, 90, 12, 110, 3, 87, 2, 27, 82, 27, 51, 21, 92, 67, 13, 67, 97, 95, 4, 0, 78, 61, 73, 12, 67, 90, 22, 110, 3, 84, 2, 25, 104, 71, 80, 19, 90, 65, 54, 86, 75, 2, 80, 65, 88, 16, 10, 87, 18, 25, 104, 71, 88, 17, 93, 103, 13, 67, 88, 17, 80, 15, 80, 4, 21, 111, 70, 86, 3, 91, 92, 61, 15, 5, 76, 2, 21, 111, 70, 86, 3, 91, 92, 60, 15, 5, 76, 0, 21, 111, 65, 71, 3, 89, 74, 9, 84, 65, 11, 88, 87, 61, 15, 0, 78, 61, 77, 23, 84, 91, 17, 91, 88, 17, 92, 90, 12, 110, 3, 82, 25, 63, 22, 69, 88, 11, 70, 89, 3, 67, 80, 10, 91, 111, 88, 6, 8, 73, 63, 72}, "9e55b7", -1.4373183E9f));
    }

    private static TypedBundle parse(String str, Ids ids, DataType dataType) {
        TypedBundle typedBundle = new TypedBundle();
        try {
            CLObject cLObject = CLParser.parse(str);
            int size = cLObject.size();
            for (int i = 0; i < size; i++) {
                CLKey cLKey = (CLKey) cLObject.get(i);
                String strContent = cLKey.content();
                CLElement value = cLKey.getValue();
                int i2 = ids.get(strContent);
                if (i2 != -1) {
                    switch (dataType.get(i2)) {
                        case 1:
                            typedBundle.add(i2, cLObject.getBoolean(i));
                            break;
                        case 2:
                            typedBundle.add(i2, value.getInt());
                            System.out.println(NPStringFog.decode(new byte[]{69, 80, 16, 64, 1, 25}, "51b3d9", true, true) + strContent + NPStringFog.decode(new byte[]{18, 124, 122, 102, 104, 117, 115, 102, 127, 18, 9, 24}, "254278", 175042887L) + value.getInt());
                            break;
                        case 4:
                            typedBundle.add(i2, value.getFloat());
                            System.out.println(NPStringFog.decode(new byte[]{22, 82, 64, 64, 84, 17}, "f32311", -1.2348223E9f) + strContent + NPStringFog.decode(new byte[]{66, 113, 120, 121, 36, 99, 61, 122, 117, 101, 46, 23, 92, 23}, "b746e7", 1.5137829E9f) + value.getFloat());
                            break;
                        case 8:
                            typedBundle.add(i2, value.content());
                            System.out.println(NPStringFog.decode(new byte[]{18, 81, 19, 18, 86, 68}, "b0aa3d", true, false) + strContent + NPStringFog.decode(new byte[]{17, 96, 96, 101, 126, 119, 118, 108, 121, 118, 100, 114, 17, 13, 20}, "134779", true, true) + value.content());
                            break;
                    }
                } else {
                    System.err.println(NPStringFog.decode(new byte[]{76, 95, 91, 12, 94, 71, 87, 17, 68, 27, 65, 85, 25}, "910b10", -2.0986843E8f) + strContent);
                }
            }
        } catch (CLParsingException e) {
            e.printStackTrace();
        }
        return typedBundle;
    }

    public static TypedBundle parseAttributes(String str) {
        return parse(str, new Ids() { // from class: androidx.constraintlayout.core.motion.parse.KeyParser$$ExternalSyntheticLambda1
            @Override // androidx.constraintlayout.core.motion.parse.KeyParser.Ids
            public final int get(String str2) {
                return TypedValues.Attributes.CC.getId(str2);
            }
        }, new DataType() { // from class: androidx.constraintlayout.core.motion.parse.KeyParser$$ExternalSyntheticLambda0
            @Override // androidx.constraintlayout.core.motion.parse.KeyParser.DataType
            public final int get(int i) {
                return TypedValues.Attributes.CC.getType(i);
            }
        });
    }
}

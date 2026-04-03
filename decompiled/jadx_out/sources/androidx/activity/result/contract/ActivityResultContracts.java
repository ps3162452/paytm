package androidx.activity.result.contract;

import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.collection.ArrayMap;
import androidx.core.content.ContextCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityResultContracts {

    public static class CaptureVideo extends ActivityResultContract<Uri, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Uri uri) {
            return new Intent(NPStringFog.decode(new byte[]{87, 91, 80, 67, 93, 91, 82, 27, 89, 84, 86, 91, 87, 27, 85, 82, 70, 91, 89, 91, 26, 103, 123, 118, 115, 122, 107, 114, 115, 98, 98, 96, 102, 116}, "654122", 21438)).putExtra(NPStringFog.decode(new byte[]{86, 68, 68, 20, 67, 17}, "910d6e", 7.11944711E8d), uri);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(Context context, Uri uri) {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Boolean parseResult(int i, Intent intent) {
            return Boolean.valueOf(i == -1);
        }
    }

    public static class CreateDocument extends ActivityResultContract<String, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String str) {
            return new Intent(NPStringFog.decode(new byte[]{4, 13, 80, 64, 12, 90, 1, 77, 93, 92, 23, 86, 11, 23, 26, 83, 0, 71, 12, 12, 90, 28, 32, 97, 32, 34, 96, 119, 60, 119, 42, 32, 97, 127, 38, 125, 49}, "ec42c3", -852)).setType(NPStringFog.decode(new byte[]{28, 25, 25}, "663895", -1.483111444E9d)).putExtra(NPStringFog.decode(new byte[]{0, 95, 0, 69, 11, 94, 5, 31, 13, 89, 16, 82, 15, 69, 74, 82, 28, 67, 19, 80, 74, 99, 45, 99, 45, 116}, "a1d7d7", false), str);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, String str) {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i, Intent intent) {
            if (intent == null || i != -1) {
                return null;
            }
            return intent.getData();
        }
    }

    public static class GetContent extends ActivityResultContract<String, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String str) {
            return new Intent(NPStringFog.decode(new byte[]{84, 93, 0, 17, 88, 13, 81, 29, 13, 13, 67, 1, 91, 71, 74, 2, 84, 16, 92, 92, 10, 77, 112, 33, 97, 108, 39, 44, 121, 48, 112, 125, 48}, "53dc7d", 1.6975084E9f)).addCategory(NPStringFog.decode(new byte[]{84, 95, 86, 64, 10, 95, 81, 31, 91, 92, 17, 83, 91, 69, 28, 81, 4, 66, 80, 86, 93, 64, 28, 24, 122, 97, 119, 124, 36, 116, 121, 116}, "5122e6", true, false)).setType(str);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, String str) {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i, Intent intent) {
            if (intent == null || i != -1) {
                return null;
            }
            return intent.getData();
        }
    }

    public static class GetMultipleContents extends ActivityResultContract<String, List<Uri>> {
        static List<Uri> getClipDataUris(Intent intent) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (intent.getData() != null) {
                linkedHashSet.add(intent.getData());
            }
            ClipData clipData = intent.getClipData();
            if (clipData == null && linkedHashSet.isEmpty()) {
                return Collections.emptyList();
            }
            if (clipData != null) {
                for (int i = 0; i < clipData.getItemCount(); i++) {
                    Uri uri = clipData.getItemAt(i).getUri();
                    if (uri != null) {
                        linkedHashSet.add(uri);
                    }
                }
            }
            return new ArrayList(linkedHashSet);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String str) {
            return new Intent(NPStringFog.decode(new byte[]{87, 12, 92, 65, 95, 95, 82, 76, 81, 93, 68, 83, 88, 22, 22, 82, 83, 66, 95, 13, 86, 29, 119, 115, 98, 61, 123, 124, 126, 98, 115, 44, 108}, "6b8306", false)).addCategory(NPStringFog.decode(new byte[]{89, 88, 82, 66, 88, 88, 92, 24, 95, 94, 67, 84, 86, 66, 24, 83, 86, 69, 93, 81, 89, 66, 78, 31, 119, 102, 115, 126, 118, 115, 116, 115}, "866071", 1956724508L)).setType(str).putExtra(NPStringFog.decode(new byte[]{0, 90, 2, 66, 87, 88, 5, 26, 15, 94, 76, 84, 15, 64, 72, 85, 64, 69, 19, 85, 72, 113, 116, 125, 46, 99, 57, 125, 109, 125, 53, 125, 54, 124, 125}, "a4f081", 1.01432536E8f), true);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(Context context, String str) {
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final List<Uri> parseResult(int i, Intent intent) {
            return (intent == null || i != -1) ? Collections.emptyList() : getClipDataUris(intent);
        }
    }

    public static class OpenDocument extends ActivityResultContract<String[], Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String[] strArr) {
            return new Intent(NPStringFog.decode(new byte[]{84, 90, 5, 20, 91, 13, 81, 26, 8, 8, 64, 1, 91, 64, 79, 7, 87, 16, 92, 91, 15, 72, 123, 52, 112, 122, 62, 34, 123, 39, 96, 121, 36, 40, 96}, "54af4d", false, true)).putExtra(NPStringFog.decode(new byte[]{82, 89, 85, 66, 13, 88, 87, 25, 88, 94, 22, 84, 93, 67, 31, 85, 26, 69, 65, 86, 31, 125, 43, 124, 118, 104, 101, 105, 50, 116, 96}, "3710b1", false), strArr).setType(NPStringFog.decode(new byte[]{27, 30, 28}, "116b37", -1.4292988E9f));
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, String[] strArr) {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i, Intent intent) {
            if (intent == null || i != -1) {
                return null;
            }
            return intent.getData();
        }
    }

    public static class OpenDocumentTree extends ActivityResultContract<Uri, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Uri uri) {
            Intent intent = new Intent(NPStringFog.decode(new byte[]{83, 12, 93, 19, 86, 94, 86, 76, 80, 15, 77, 82, 92, 22, 23, 0, 90, 67, 91, 13, 87, 79, 118, 103, 119, 44, 102, 37, 118, 116, 103, 47, 124, 47, 109, 104, 102, 48, 124, 36}, "2b9a97", 1492239488L));
            if (Build.VERSION.SDK_INT >= 26 && uri != null) {
                intent.putExtra(NPStringFog.decode(new byte[]{2, 8, 7, 64, 11, 88, 7, 72, 19, 64, 11, 71, 10, 2, 6, 64, 74, 84, 27, 18, 17, 83, 74, 120, 45, 47, 55, 123, 37, 125, 60, 51, 49, 123}, "cfc2d1", false, true), uri);
            }
            return intent;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Uri> getSynchronousResult(Context context, Uri uri) {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Uri parseResult(int i, Intent intent) {
            if (intent == null || i != -1) {
                return null;
            }
            return intent.getData();
        }
    }

    public static class OpenMultipleDocuments extends ActivityResultContract<String[], List<Uri>> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String[] strArr) {
            return new Intent(NPStringFog.decode(new byte[]{3, 13, 7, 16, 9, 92, 6, 77, 10, 12, 18, 80, 12, 23, 77, 3, 5, 65, 11, 12, 13, 76, 41, 101, 39, 45, 60, 38, 41, 118, 55, 46, 38, 44, 50}, "bccbf5", 19318)).putExtra(NPStringFog.decode(new byte[]{87, 95, 87, 67, 14, 92, 82, 31, 90, 95, 21, 80, 88, 69, 29, 84, 25, 65, 68, 80, 29, 124, 40, 120, 115, 110, 103, 104, 49, 112, 101}, "6131a5", -6515), strArr).putExtra(NPStringFog.decode(new byte[]{87, 92, 87, 69, 92, 91, 82, 28, 90, 89, 71, 87, 88, 70, 29, 82, 75, 70, 68, 83, 29, 118, 127, 126, 121, 101, 108, 122, 102, 126, 98, 123, 99, 123, 118}, "623732", 25307), true).setType(NPStringFog.decode(new byte[]{76, 24, 73}, "f7cee7", 31828));
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<List<Uri>> getSynchronousResult(Context context, String[] strArr) {
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final List<Uri> parseResult(int i, Intent intent) {
            return (i != -1 || intent == null) ? Collections.emptyList() : GetMultipleContents.getClipDataUris(intent);
        }
    }

    public static final class PickContact extends ActivityResultContract<Void, Uri> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Void r7) {
            return new Intent(NPStringFog.decode(new byte[]{89, 12, 6, 19, 93, 80, 92, 76, 11, 15, 70, 92, 86, 22, 76, 0, 81, 77, 81, 13, 12, 79, 98, 112, 123, 41}, "8bba29", -13704)).setType(NPStringFog.decode(new byte[]{23, 94, 6, 23, 85, 92, 5, 66, 13, 80, 80, 28, 2, 69, 16, 74, 91, 64, 79, 84, 11, 75, 27, 81, 14, 94, 22, 88, 87, 70}, "a0b942", false, true));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Uri parseResult(int i, Intent intent) {
            if (intent == null || i != -1) {
                return null;
            }
            return intent.getData();
        }
    }

    public static final class RequestMultiplePermissions extends ActivityResultContract<String[], Map<String, Boolean>> {
        public static final String ACTION_REQUEST_PERMISSIONS = NPStringFog.decode(new byte[]{84, 91, 80, 74, 95, 91, 81, 77, 26, 89, 83, 70, 92, 67, 93, 76, 73, 28, 71, 80, 71, 77, 92, 70, 27, 86, 91, 86, 68, 64, 84, 86, 64, 22, 81, 81, 65, 92, 91, 86, 30, 96, 112, 100, 97, 125, 99, 102, 106, 101, 113, 106, 125, 123, 102, 102, 125, 119, 126, 97}, "554802", -837941961L);
        public static final String EXTRA_PERMISSIONS = NPStringFog.decode(new byte[]{81, 11, 1, 71, 93, 80, 84, 29, 75, 84, 81, 77, 89, 19, 12, 65, 75, 23, 66, 0, 22, 64, 94, 77, 30, 6, 10, 91, 70, 75, 81, 6, 17, 27, 87, 65, 68, 23, 4, 27, 98, 124, 98, 40, 44, 102, 97, 112, 127, 43, 54}, "0ee529", -1.372313177E9d);
        public static final String EXTRA_PERMISSION_GRANT_RESULTS = NPStringFog.decode(new byte[]{83, 87, 93, 65, 14, 88, 86, 65, 23, 82, 2, 69, 91, 79, 80, 71, 24, 31, 64, 92, 74, 70, 13, 69, 28, 90, 86, 93, 21, 67, 83, 90, 77, 29, 4, 73, 70, 75, 88, 29, 49, 116, 96, 116, 112, 96, 50, 120, 125, 119, 102, 116, 51, 112, 124, 109, 102, 97, 36, 98, 103, 117, 109, 96}, "2993a1", -12118);

        static Intent createIntent(String[] strArr) {
            return new Intent(ACTION_REQUEST_PERMISSIONS).putExtra(EXTRA_PERMISSIONS, strArr);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String[] strArr) {
            return createIntent(strArr);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResultContract.SynchronousResult<Map<String, Boolean>> getSynchronousResult(Context context, String[] strArr) {
            if (strArr == null || strArr.length == 0) {
                return new ActivityResultContract.SynchronousResult<>(Collections.emptyMap());
            }
            ArrayMap arrayMap = new ArrayMap();
            int length = strArr.length;
            int i = 0;
            boolean z = true;
            while (i < length) {
                String str = strArr[i];
                boolean z2 = ContextCompat.checkSelfPermission(context, str) == 0;
                arrayMap.put(str, Boolean.valueOf(z2));
                i++;
                z = !z2 ? false : z;
            }
            if (z) {
                return new ActivityResultContract.SynchronousResult<>(arrayMap);
            }
            return null;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Map<String, Boolean> parseResult(int i, Intent intent) {
            if (i == -1 && intent != null) {
                String[] stringArrayExtra = intent.getStringArrayExtra(EXTRA_PERMISSIONS);
                int[] intArrayExtra = intent.getIntArrayExtra(EXTRA_PERMISSION_GRANT_RESULTS);
                if (intArrayExtra == null || stringArrayExtra == null) {
                    return Collections.emptyMap();
                }
                HashMap map = new HashMap();
                int length = stringArrayExtra.length;
                for (int i2 = 0; i2 < length; i2++) {
                    map.put(stringArrayExtra[i2], Boolean.valueOf(intArrayExtra[i2] == 0));
                }
                return map;
            }
            return Collections.emptyMap();
        }
    }

    public static final class RequestPermission extends ActivityResultContract<String, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, String str) {
            return RequestMultiplePermissions.createIntent(new String[]{str});
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(Context context, String str) {
            if (str == null) {
                return new ActivityResultContract.SynchronousResult<>(false);
            }
            if (ContextCompat.checkSelfPermission(context, str) == 0) {
                return new ActivityResultContract.SynchronousResult<>(true);
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Boolean parseResult(int i, Intent intent) {
            if (intent == null || i != -1) {
                return false;
            }
            int[] intArrayExtra = intent.getIntArrayExtra(NPStringFog.decode(new byte[]{86, 90, 5, 19, 95, 80, 83, 76, 79, 0, 83, 77, 94, 66, 8, 21, 73, 23, 69, 81, 18, 20, 92, 77, 25, 87, 14, 15, 68, 75, 86, 87, 21, 79, 85, 65, 67, 70, 0, 79, 96, 124, 101, 121, 40, 50, 99, 112, 120, 122, 62, 38, 98, 120, 121, 96, 62, 51, 117, 106, 98, 120, 53, 50}, "74aa09", 668067963L));
            if (intArrayExtra == null || intArrayExtra.length == 0) {
                return false;
            }
            return Boolean.valueOf(intArrayExtra[0] == 0);
        }
    }

    public static final class StartActivityForResult extends ActivityResultContract<Intent, ActivityResult> {
        public static final String EXTRA_ACTIVITY_OPTIONS_BUNDLE = NPStringFog.decode(new byte[]{80, 15, 85, 75, 94, 90, 85, 25, 31, 88, 82, 71, 88, 23, 88, 77, 72, 29, 67, 4, 66, 76, 93, 71, 31, 2, 94, 87, 69, 65, 80, 2, 69, 23, 84, 75, 69, 19, 80, 23, 112, 112, 101, 40, 103, 112, 101, 106, 110, 46, 97, 109, 120, 124, 127, 50, 110, 123, 100, 125, 117, 45, 116}, "1a1913", -7.8561395E8f);

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Intent intent) {
            return intent;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResult parseResult(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    public static final class StartIntentSenderForResult extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
        public static final String ACTION_INTENT_SENDER_REQUEST = NPStringFog.decode(new byte[]{81, 91, 84, 68, 94, 12, 84, 77, 30, 87, 82, 17, 89, 67, 89, 66, 72, 75, 66, 80, 67, 67, 93, 17, 30, 86, 95, 88, 69, 23, 81, 86, 68, 24, 80, 6, 68, 92, 95, 88, 31, 44, 126, 97, 117, 120, 101, 58, 99, 112, 126, 114, 116, 55, 111, 103, 117, 103, 100, 32, 99, 97}, "05061e", true);
        public static final String EXTRA_INTENT_SENDER_REQUEST = NPStringFog.decode(new byte[]{85, 8, 92, 20, 90, 90, 80, 30, 22, 7, 86, 71, 93, 16, 81, 18, 76, 29, 70, 3, 75, 19, 89, 71, 26, 5, 87, 8, 65, 65, 85, 5, 76, 72, 80, 75, 64, 20, 89, 72, 124, 125, 96, 35, 118, 50, 106, 96, 113, 40, 124, 35, 103, 108, 102, 35, 105, 51, 112, 96, 96}, "4f8f53", true);
        public static final String EXTRA_SEND_INTENT_EXCEPTION = NPStringFog.decode(new byte[]{84, 11, 93, 70, 93, 89, 81, 29, 23, 85, 81, 68, 92, 19, 80, 64, 75, 30, 71, 0, 74, 65, 94, 68, 27, 6, 86, 90, 70, 66, 84, 6, 77, 26, 87, 72, 65, 23, 88, 26, 97, 117, 123, 33, 102, 125, 124, 100, 112, 43, 109, 107, 119, 104, 118, 32, 105, 96, 123, 127, 123}, "5e9420", true, true);

        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, IntentSenderRequest intentSenderRequest) {
            return new Intent(ACTION_INTENT_SENDER_REQUEST).putExtra(EXTRA_INTENT_SENDER_REQUEST, intentSenderRequest);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public ActivityResult parseResult(int i, Intent intent) {
            return new ActivityResult(i, intent);
        }
    }

    public static class TakePicture extends ActivityResultContract<Uri, Boolean> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Uri uri) {
            return new Intent(NPStringFog.decode(new byte[]{5, 8, 82, 19, 10, 81, 0, 72, 91, 4, 1, 81, 5, 72, 87, 2, 17, 81, 11, 8, 24, 40, 40, 121, 35, 35, 105, 34, 36, 104, 48, 51, 100, 36}, "df6ae8", false)).putExtra(NPStringFog.decode(new byte[]{10, 66, 18, 67, 23, 16}, "e7f3bd", -1.42365715E8d), uri);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Boolean> getSynchronousResult(Context context, Uri uri) {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Boolean parseResult(int i, Intent intent) {
            return Boolean.valueOf(i == -1);
        }
    }

    public static class TakePicturePreview extends ActivityResultContract<Void, Bitmap> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Void r8) {
            return new Intent(NPStringFog.decode(new byte[]{0, 87, 87, 66, 95, 94, 5, 23, 94, 85, 84, 94, 0, 23, 82, 83, 68, 94, 14, 87, 29, 121, 125, 118, 38, 124, 108, 115, 113, 103, 53, 108, 97, 117}, "a93007", 4.87223238E8d));
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Bitmap> getSynchronousResult(Context context, Void r3) {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Bitmap parseResult(int i, Intent intent) {
            if (intent == null || i != -1) {
                return null;
            }
            return (Bitmap) intent.getParcelableExtra(NPStringFog.decode(new byte[]{1, 5, 23, 4}, "edceb3", -19236));
        }
    }

    @Deprecated
    public static class TakeVideo extends ActivityResultContract<Uri, Bitmap> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public Intent createIntent(Context context, Uri uri) {
            return new Intent(NPStringFog.decode(new byte[]{80, 94, 87, 20, 87, 92, 85, 30, 94, 3, 92, 92, 80, 30, 82, 5, 76, 92, 94, 94, 29, 48, 113, 113, 116, 127, 108, 37, 121, 101, 101, 101, 97, 35}, "103f85", -2.0017207E9f)).putExtra(NPStringFog.decode(new byte[]{11, 20, 16, 22, 69, 71}, "dadf03", -3.93800861E8d), uri);
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final ActivityResultContract.SynchronousResult<Bitmap> getSynchronousResult(Context context, Uri uri) {
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Bitmap parseResult(int i, Intent intent) {
            if (intent == null || i != -1) {
                return null;
            }
            return (Bitmap) intent.getParcelableExtra(NPStringFog.decode(new byte[]{82, 85, 64, 89}, "64483e", false, false));
        }
    }

    private ActivityResultContracts() {
    }
}

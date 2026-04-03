package androidx.appcompat.widget;

import android.R;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.cursoradapter.widget.ResourceCursorAdapter;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
class SuggestionsAdapter extends ResourceCursorAdapter implements View.OnClickListener {
    private static final boolean DBG = false;
    static final int INVALID_INDEX = -1;
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{50, 77, 2, 82, 1, 18, 21, 81, 10, 91, 23, 32, 5, 89, 21, 65, 1, 19}, "a8e5da", -1638211182L);
    private static final int QUERY_LIMIT = 50;
    static final int REFINE_ALL = 2;
    static final int REFINE_BY_ENTRY = 1;
    static final int REFINE_NONE = 0;
    private boolean mClosed;
    private final int mCommitIconResId;
    private int mFlagsCol;
    private int mIconName1Col;
    private int mIconName2Col;
    private final WeakHashMap<String, Drawable.ConstantState> mOutsideDrawablesCache;
    private final Context mProviderContext;
    private int mQueryRefinement;
    private final SearchView mSearchView;
    private final SearchableInfo mSearchable;
    private int mText1Col;
    private int mText2Col;
    private int mText2UrlCol;
    private ColorStateList mUrlColor;

    private static final class ChildViewCache {
        public final ImageView mIcon1;
        public final ImageView mIcon2;
        public final ImageView mIconRefine;
        public final TextView mText1;
        public final TextView mText2;

        public ChildViewCache(View view) {
            this.mText1 = (TextView) view.findViewById(R.id.text1);
            this.mText2 = (TextView) view.findViewById(R.id.text2);
            this.mIcon1 = (ImageView) view.findViewById(R.id.icon1);
            this.mIcon2 = (ImageView) view.findViewById(R.id.icon2);
            this.mIconRefine = (ImageView) view.findViewById(androidx.appcompat.R.id.edit_query);
        }
    }

    public SuggestionsAdapter(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), (Cursor) null, true);
        this.mClosed = false;
        this.mQueryRefinement = 1;
        this.mText1Col = -1;
        this.mText2Col = -1;
        this.mText2UrlCol = -1;
        this.mIconName1Col = -1;
        this.mIconName2Col = -1;
        this.mFlagsCol = -1;
        this.mSearchView = searchView;
        this.mSearchable = searchableInfo;
        this.mCommitIconResId = searchView.getSuggestionCommitIconResId();
        this.mProviderContext = context;
        this.mOutsideDrawablesCache = weakHashMap;
    }

    private Drawable checkIconCache(String str) {
        Drawable.ConstantState constantState = this.mOutsideDrawablesCache.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private CharSequence formatUrl(CharSequence charSequence) {
        if (this.mUrlColor == null) {
            TypedValue typedValue = new TypedValue();
            this.mProviderContext.getTheme().resolveAttribute(androidx.appcompat.R.attr.textColorSearchUrl, typedValue, true);
            this.mUrlColor = this.mProviderContext.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.mUrlColor, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    private Drawable getActivityIcon(ComponentName componentName) {
        PackageManager packageManager = this.mProviderContext.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            Log.w(LOG_TAG, NPStringFog.decode(new byte[]{44, 93, 21, 2, 91, 10, 1, 19, 10, 0, 88, 13, 69, 65, 6, 16, 88, 22, 23, 80, 6, 67}, "e3cc7c", false) + iconResource + NPStringFog.decode(new byte[]{17, 85, 13, 74, 70}, "13b8ff", true) + componentName.flattenToShortString());
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            Log.w(LOG_TAG, e.toString());
            return null;
        }
    }

    private Drawable getActivityIconWithCache(ComponentName componentName) {
        String strFlattenToShortString = componentName.flattenToShortString();
        if (!this.mOutsideDrawablesCache.containsKey(strFlattenToShortString)) {
            Drawable activityIcon = getActivityIcon(componentName);
            this.mOutsideDrawablesCache.put(strFlattenToShortString, activityIcon != null ? activityIcon.getConstantState() : null);
            return activityIcon;
        }
        Drawable.ConstantState constantState = this.mOutsideDrawablesCache.get(strFlattenToShortString);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable(this.mProviderContext.getResources());
    }

    public static String getColumnString(Cursor cursor, String str) {
        return getStringOrNull(cursor, cursor.getColumnIndex(str));
    }

    private Drawable getDefaultIcon1() {
        Drawable activityIconWithCache = getActivityIconWithCache(this.mSearchable.getSearchActivity());
        return activityIconWithCache != null ? activityIconWithCache : this.mProviderContext.getPackageManager().getDefaultActivityIcon();
    }

    private Drawable getDrawable(Uri uri) {
        try {
            if (NPStringFog.decode(new byte[]{84, 91, 1, 74, 94, 88, 81, 27, 23, 93, 66, 94, 64, 71, 6, 93}, "55e811", true).equals(uri.getScheme())) {
                try {
                    return getDrawableFromResourceUri(uri);
                } catch (Resources.NotFoundException e) {
                    throw new FileNotFoundException(NPStringFog.decode(new byte[]{51, 4, 22, 87, 68, 67, 2, 4, 69, 92, 94, 84, 18, 65, 11, 87, 69, 17, 4, 25, 12, 75, 69, 11, 65}, "aae811", 4.71513578E8d) + uri);
                }
            }
            InputStream inputStreamOpenInputStream = this.mProviderContext.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                throw new FileNotFoundException(NPStringFog.decode(new byte[]{117, 7, 8, 92, 81, 85, 19, 18, 14, 16, 91, 65, 86, 8, 65}, "3fa041", -1.985203925E9d) + uri);
            }
            try {
                Drawable drawableCreateFromStream = Drawable.createFromStream(inputStreamOpenInputStream, null);
                try {
                    inputStreamOpenInputStream.close();
                    return drawableCreateFromStream;
                } catch (IOException e2) {
                    Log.e(LOG_TAG, NPStringFog.decode(new byte[]{38, 64, 71, 13, 64, 65, 0, 94, 90, 17, 91, 15, 4, 18, 92, 1, 93, 15, 67, 65, 65, 16, 87, 0, 14, 18, 83, 13, 64, 65}, "c25b2a", true, true) + uri, e2);
                    return drawableCreateFromStream;
                }
            } finally {
            }
        } catch (FileNotFoundException e3) {
            Log.w(LOG_TAG, NPStringFog.decode(new byte[]{121, 7, 88, 15, 68, 90, 95, 16, 23, 7, 11, 65, 94, 0, 13, 65}, "0d7ad4", false, true) + uri + NPStringFog.decode(new byte[]{30, 22}, "2621d0", true, true) + e3.getMessage());
            return null;
        }
        Log.w(LOG_TAG, NPStringFog.decode(new byte[]{121, 7, 88, 15, 68, 90, 95, 16, 23, 7, 11, 65, 94, 0, 13, 65}, "0d7ad4", false, true) + uri + NPStringFog.decode(new byte[]{30, 22}, "2621d0", true, true) + e3.getMessage());
        return null;
    }

    private Drawable getDrawableFromResourceValue(String str) {
        if (str == null || str.isEmpty() || NPStringFog.decode(new byte[]{7}, "7feca8", true, false).equals(str)) {
            return null;
        }
        try {
            int i = Integer.parseInt(str);
            String str2 = NPStringFog.decode(new byte[]{80, 95, 92, 67, 13, 95, 85, 31, 74, 84, 17, 89, 68, 67, 91, 84, 88, 25, 30}, "1181b6", 4.5284464E8f) + this.mProviderContext.getPackageName() + NPStringFog.decode(new byte[]{27}, "446656", false) + i;
            Drawable drawableCheckIconCache = checkIconCache(str2);
            if (drawableCheckIconCache != null) {
                return drawableCheckIconCache;
            }
            Drawable drawable = ContextCompat.getDrawable(this.mProviderContext, i);
            storeInIconCache(str2, drawable);
            return drawable;
        } catch (Resources.NotFoundException e) {
            Log.w(LOG_TAG, NPStringFog.decode(new byte[]{45, 84, 92, 86, 21, 19, 1, 68, 92, 77, 71, 2, 1, 23, 93, 87, 65, 65, 2, 88, 70, 86, 81, 91, 68}, "d7385a", true, false) + str);
            return null;
        } catch (NumberFormatException e2) {
            Drawable drawableCheckIconCache2 = checkIconCache(str);
            if (drawableCheckIconCache2 != null) {
                return drawableCheckIconCache2;
            }
            Drawable drawable2 = getDrawable(Uri.parse(str));
            storeInIconCache(str, drawable2);
            return drawable2;
        }
    }

    private Drawable getIcon1(Cursor cursor) {
        int i = this.mIconName1Col;
        if (i == -1) {
            return null;
        }
        Drawable drawableFromResourceValue = getDrawableFromResourceValue(cursor.getString(i));
        return drawableFromResourceValue == null ? getDefaultIcon1() : drawableFromResourceValue;
    }

    private Drawable getIcon2(Cursor cursor) {
        int i = this.mIconName2Col;
        if (i == -1) {
            return null;
        }
        return getDrawableFromResourceValue(cursor.getString(i));
    }

    private static String getStringOrNull(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{19, 95, 93, 29, 68, 82, 5, 69, 93, 1, 20, 82, 20, 67, 87, 23, 20, 69, 3, 69, 74, 12, 81, 65, 15, 95, 95, 69, 66, 86, 10, 88, 92, 69, 87, 88, 10, 68, 85, 11, 20, 81, 20, 94, 85, 69, 87, 66, 20, 66, 87, 23, 24, 23, 2, 88, 92, 69, 64, 95, 3, 17, 74, 0, 89, 88, 18, 84, 24, 21, 70, 88, 5, 84, 75, 22, 20, 83, 15, 84, 7}, "f18e47", false), e);
            return null;
        }
    }

    private void setViewDrawable(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    private void setViewText(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    private void storeInIconCache(String str, Drawable drawable) {
        if (drawable != null) {
            this.mOutsideDrawablesCache.put(str, drawable.getConstantState());
        }
    }

    private void updateSpinnerState(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras != null) {
            extras.getBoolean(NPStringFog.decode(new byte[]{90, 12, 106, 68, 20, 87, 84, 16, 80, 71, 21}, "3b54f8", -2.0439374E9f));
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        ChildViewCache childViewCache = (ChildViewCache) view.getTag();
        int i = this.mFlagsCol;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (childViewCache.mText1 != null) {
            setViewText(childViewCache.mText1, getStringOrNull(cursor, this.mText1Col));
        }
        if (childViewCache.mText2 != null) {
            String stringOrNull = getStringOrNull(cursor, this.mText2UrlCol);
            CharSequence url = stringOrNull != null ? formatUrl(stringOrNull) : getStringOrNull(cursor, this.mText2Col);
            if (TextUtils.isEmpty(url)) {
                if (childViewCache.mText1 != null) {
                    childViewCache.mText1.setSingleLine(false);
                    childViewCache.mText1.setMaxLines(2);
                }
            } else if (childViewCache.mText1 != null) {
                childViewCache.mText1.setSingleLine(true);
                childViewCache.mText1.setMaxLines(1);
            }
            setViewText(childViewCache.mText2, url);
        }
        if (childViewCache.mIcon1 != null) {
            setViewDrawable(childViewCache.mIcon1, getIcon1(cursor), 4);
        }
        if (childViewCache.mIcon2 != null) {
            setViewDrawable(childViewCache.mIcon2, getIcon2(cursor), 8);
        }
        int i3 = this.mQueryRefinement;
        if (i3 != 2 && (i3 != 1 || (i2 & 1) == 0)) {
            childViewCache.mIconRefine.setVisibility(8);
            return;
        }
        childViewCache.mIconRefine.setVisibility(0);
        childViewCache.mIconRefine.setTag(childViewCache.mText1.getText());
        childViewCache.mIconRefine.setOnClickListener(this);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public void changeCursor(Cursor cursor) {
        if (this.mClosed) {
            Log.w(LOG_TAG, NPStringFog.decode(new byte[]{54, 19, 89, 93, 92, 22, 22, 14, 16, 91, 80, 87, 12, 6, 85, 24, 91, 67, 16, 18, 95, 74, 24, 87, 4, 21, 85, 74, 24, 87, 6, 0, 64, 76, 93, 68, 66, 22, 81, 75, 24, 85, 14, 14, 67, 93, 92, 24}, "ba0886", -9307));
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.changeCursor(cursor);
            if (cursor != null) {
                this.mText1Col = cursor.getColumnIndex(NPStringFog.decode(new byte[]{22, 66, 81, 94, 86, 66, 17, 104, 66, 92, 75, 69, 58, 6}, "e76931", false, true));
                this.mText2Col = cursor.getColumnIndex(NPStringFog.decode(new byte[]{17, 23, 82, 3, 7, 70, 22, 61, 65, 1, 26, 65, 61, 80}, "bb5db5", -1279989456L));
                this.mText2UrlCol = cursor.getColumnIndex(NPStringFog.decode(new byte[]{69, 71, 83, 80, 92, 22, 66, 109, 64, 82, 65, 17, 105, 0, 107, 66, 75, 9}, "62479e", 1.3083116E9f));
                this.mIconName1Col = cursor.getColumnIndex(NPStringFog.decode(new byte[]{70, 17, 84, 95, 86, 16, 65, 59, 90, 91, 92, 13, 106, 85}, "5d383c", false, true));
                this.mIconName2Col = cursor.getColumnIndex(NPStringFog.decode(new byte[]{22, 67, 85, 95, 93, 71, 17, 105, 91, 91, 87, 90, 58, 4}, "e62884", true));
                this.mFlagsCol = cursor.getColumnIndex(NPStringFog.decode(new byte[]{18, 77, 82, 94, 4, 18, 21, 103, 83, 85, 0, 6, 18}, "a859aa", 1200));
            }
        } catch (Exception e) {
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{7, 75, 65, 14, 70, 21, 1, 81, 82, 15, 83, 92, 12, 94, 19, 2, 65, 71, 17, 86, 65, 65, 85, 91, 6, 25, 80, 0, 87, 93, 11, 87, 84, 65, 87, 90, 14, 76, 94, 15, 71}, "b93a45", true, false), e);
        }
    }

    public void close() {
        changeCursor(null);
        this.mClosed = true;
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public CharSequence convertToString(Cursor cursor) {
        String columnString;
        String columnString2;
        if (cursor == null) {
            return null;
        }
        String columnString3 = getColumnString(cursor, NPStringFog.decode(new byte[]{71, 71, 80, 6, 80, 69, 64, 109, 94, 15, 65, 83, 90, 70, 104, 16, 64, 83, 70, 75}, "427a56", 26956));
        if (columnString3 != null) {
            return columnString3;
        }
        if (this.mSearchable.shouldRewriteQueryFromData() && (columnString2 = getColumnString(cursor, NPStringFog.decode(new byte[]{66, 69, 83, 1, 87, 21, 69, 111, 93, 8, 70, 3, 95, 68, 107, 2, 83, 18, 80}, "104f2f", true, false))) != null) {
            return columnString2;
        }
        if (!this.mSearchable.shouldRewriteQueryFromText() || (columnString = getColumnString(cursor, NPStringFog.decode(new byte[]{69, 66, 82, 95, 92, 70, 66, 104, 65, 93, 65, 65, 105, 6}, "675895", 8.78345107E8d))) == null) {
            return null;
        }
        return columnString;
    }

    Drawable getDrawableFromResourceUri(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException(NPStringFog.decode(new byte[]{118, 94, 24, 88, 23, 22, 80, 94, 74, 80, 22, 27, 2, 17}, "8189bb", -2.0988506E9f) + uri);
        }
        try {
            Resources resourcesForApplication = this.mProviderContext.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException(NPStringFog.decode(new byte[]{122, 90, 20, 22, 87, 66, 92, 15, 20}, "454f66", -1.2449371E9f) + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException e) {
                    throw new FileNotFoundException(NPStringFog.decode(new byte[]{103, 8, 11, 2, 84, 80, 20, 17, 4, 17, 80, 21, 71, 4, 2, 8, 93, 91, 64, 65, 12, 22, 24, 91, 91, 21, 69, 4, 24, 71, 81, 18, 10, 16, 74, 86, 81, 65, 44, 33, 2, 21}, "4aee85", -20137) + uri);
                }
            } else {
                if (size != 2) {
                    throw new FileNotFoundException(NPStringFog.decode(new byte[]{40, 10, 65, 4, 69, 21, 13, 4, 93, 65, 17, 22, 10, 69, 67, 0, 17, 9, 69, 22, 86, 6, 8, 4, 11, 17, 64, 91, 69}, "ee3aea", false) + uri);
                }
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            }
            if (identifier != 0) {
                return resourcesForApplication.getDrawable(identifier);
            }
            throw new FileNotFoundException(NPStringFog.decode(new byte[]{43, 14, 25, 67, 7, 71, 10, 20, 75, 82, 7, 20, 3, 14, 76, 95, 6, 20, 3, 14, 75, 11, 66}, "ea91b4", -7.71789663E8d) + uri);
        } catch (PackageManager.NameNotFoundException e2) {
            throw new FileNotFoundException(NPStringFog.decode(new byte[]{40, 87, 16, 66, 2, 82, 13, 89, 87, 87, 67, 87, 9, 77, 94, 86, 67, 87, 9, 74, 16, 83, 22, 69, 14, 87, 66, 91, 23, 72, 92, 24}, "f802c1", 1.374458332E9d) + uri);
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w(LOG_TAG, NPStringFog.decode(new byte[]{106, 4, 0, 74, 80, 80, 25, 18, 20, 95, 84, 93, 74, 21, 8, 87, 93, 75, 25, 2, 20, 74, 64, 87, 75, 65, 21, 80, 65, 93, 78, 65, 4, 64, 80, 93, 73, 21, 8, 87, 93, 22}, "9aa838", 1.0947703E9f), e);
            View viewNewDropDownView = newDropDownView(this.mProviderContext, getCursor(), viewGroup);
            if (viewNewDropDownView != null) {
                ((ChildViewCache) viewNewDropDownView.getTag()).mText1.setText(e.toString());
            }
            return viewNewDropDownView;
        }
    }

    public int getQueryRefinement() {
        return this.mQueryRefinement;
    }

    Cursor getSearchManagerSuggestions(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme(NPStringFog.decode(new byte[]{86, 12, 8, 66, 7, 92, 65}, "5cf6b2", 2170)).authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath(NPStringFog.decode(new byte[]{75, 83, 88, 23, 90, 93, 103, 69, 76, 2, 94, 80, 75, 66, 102, 20, 76, 80, 74, 79}, "869e95", true));
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
            strArr = null;
        }
        if (i > 0) {
            builderFragment.appendQueryParameter(NPStringFog.decode(new byte[]{85, 11, 9, 13, 66}, "9bdd6d", 1.597562021E9d), String.valueOf(i));
        }
        return this.mProviderContext.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr, null);
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w(LOG_TAG, NPStringFog.decode(new byte[]{102, 7, 7, 20, 7, 11, 21, 17, 19, 1, 3, 6, 70, 22, 15, 9, 10, 16, 21, 1, 19, 20, 23, 12, 71, 66, 18, 14, 22, 6, 66, 66, 3, 30, 7, 6, 69, 22, 15, 9, 10, 77}, "5bffdc", 1509708084L), e);
            View viewNewView = newView(this.mProviderContext, getCursor(), viewGroup);
            if (viewNewView != null) {
                ((ChildViewCache) viewNewView.getTag()).mText1.setText(e.toString());
            }
            return viewNewView;
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // androidx.cursoradapter.widget.ResourceCursorAdapter, androidx.cursoradapter.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        View viewNewView = super.newView(context, cursor, viewGroup);
        viewNewView.setTag(new ChildViewCache(viewNewView));
        ((ImageView) viewNewView.findViewById(androidx.appcompat.R.id.edit_query)).setImageResource(this.mCommitIconResId);
        return viewNewView;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        updateSpinnerState(getCursor());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        updateSpinnerState(getCursor());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.mSearchView.onQueryRefine((CharSequence) tag);
        }
    }

    @Override // androidx.cursoradapter.widget.CursorAdapter, androidx.cursoradapter.widget.CursorFilter.CursorFilterClient
    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        String string = charSequence == null ? "" : charSequence.toString();
        if (this.mSearchView.getVisibility() != 0 || this.mSearchView.getWindowVisibility() != 0) {
            return null;
        }
        try {
            Cursor searchManagerSuggestions = getSearchManagerSuggestions(this.mSearchable, string, 50);
            if (searchManagerSuggestions != null) {
                searchManagerSuggestions.getCount();
                return searchManagerSuggestions;
            }
        } catch (RuntimeException e) {
            Log.w(LOG_TAG, NPStringFog.decode(new byte[]{106, 85, 87, 70, 6, 12, 25, 67, 67, 83, 2, 1, 74, 68, 95, 91, 11, 23, 25, 65, 67, 81, 23, 29, 25, 68, 94, 70, 0, 19, 25, 81, 88, 20, 0, 28, 90, 85, 70, 64, 12, 11, 87, 30}, "9064ed", 1.6355085E8f), e);
        }
        return null;
    }

    public void setQueryRefinement(int i) {
        this.mQueryRefinement = i;
    }
}

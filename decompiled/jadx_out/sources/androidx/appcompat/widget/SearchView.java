package androidx.appcompat.widget;

import android.R;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.ViewCompat;
import androidx.cursoradapter.widget.CursorAdapter;
import androidx.customview.view.AbsSavedState;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
public class SearchView extends LinearLayoutCompat implements CollapsibleActionView {
    static final boolean DBG = false;
    private static final String IME_OPTION_NO_MICROPHONE = NPStringFog.decode(new byte[]{89, 95}, "721ddd", false);
    static final String LOG_TAG = NPStringFog.decode(new byte[]{101, 81, 7, 23, 87, 10, 96, 93, 3, 18}, "64fe4b", 7.66683982E8d);
    static final PreQAutoCompleteTextViewReflector PRE_API_29_HIDDEN_METHOD_INVOKER;
    private Bundle mAppSearchData;
    private boolean mClearingFocus;
    final ImageView mCloseButton;
    private final ImageView mCollapsedIcon;
    private int mCollapsedImeOptions;
    private final CharSequence mDefaultQueryHint;
    private final View mDropDownAnchor;
    private boolean mExpandedInActionView;
    final ImageView mGoButton;
    private boolean mIconified;
    private boolean mIconifiedByDefault;
    private int mMaxWidth;
    private CharSequence mOldQueryText;
    private final View.OnClickListener mOnClickListener;
    private OnCloseListener mOnCloseListener;
    private final TextView.OnEditorActionListener mOnEditorActionListener;
    private final AdapterView.OnItemClickListener mOnItemClickListener;
    private final AdapterView.OnItemSelectedListener mOnItemSelectedListener;
    private OnQueryTextListener mOnQueryChangeListener;
    View.OnFocusChangeListener mOnQueryTextFocusChangeListener;
    private View.OnClickListener mOnSearchClickListener;
    private OnSuggestionListener mOnSuggestionListener;
    private final WeakHashMap<String, Drawable.ConstantState> mOutsideDrawablesCache;
    private CharSequence mQueryHint;
    private boolean mQueryRefinement;
    private Runnable mReleaseCursorRunnable;
    final ImageView mSearchButton;
    private final View mSearchEditFrame;
    private final Drawable mSearchHintIcon;
    private final View mSearchPlate;
    final SearchAutoComplete mSearchSrcTextView;
    private Rect mSearchSrcTextViewBounds;
    private Rect mSearchSrtTextViewBoundsExpanded;
    SearchableInfo mSearchable;
    private final View mSubmitArea;
    private boolean mSubmitButtonEnabled;
    private final int mSuggestionCommitIconResId;
    private final int mSuggestionRowLayout;
    CursorAdapter mSuggestionsAdapter;
    private int[] mTemp;
    private int[] mTemp2;
    View.OnKeyListener mTextKeyListener;
    private TextWatcher mTextWatcher;
    private UpdatableTouchDelegate mTouchDelegate;
    private final Runnable mUpdateDrawableStateRunnable;
    private CharSequence mUserQuery;
    private final Intent mVoiceAppSearchIntent;
    final ImageView mVoiceButton;
    private boolean mVoiceButtonEnabled;
    private final Intent mVoiceWebSearchIntent;

    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<SearchView> {
        private int mIconifiedByDefaultId;
        private int mImeOptionsId;
        private int mMaxWidthId;
        private boolean mPropertiesMapped = false;
        private int mQueryHintId;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(PropertyMapper propertyMapper) {
            this.mImeOptionsId = propertyMapper.mapInt(NPStringFog.decode(new byte[]{81, 84, 1, 45, 71, 76, 81, 86, 10, 17}, "89db78", 24217), R.attr.imeOptions);
            this.mMaxWidthId = propertyMapper.mapInt(NPStringFog.decode(new byte[]{92, 5, 29, 100, 89, 81, 69, 12}, "1de305", true, true), R.attr.maxWidth);
            this.mIconifiedByDefaultId = propertyMapper.mapBoolean(NPStringFog.decode(new byte[]{94, 84, 94, 87, 91, 82, 94, 82, 85, 123, 75, 112, 82, 81, 80, 76, 94, 64}, "771924", -252517770L), androidx.appcompat.R.attr.iconifiedByDefault);
            this.mQueryHintId = propertyMapper.mapObject(NPStringFog.decode(new byte[]{23, 65, 92, 65, 74, 121, 15, 90, 77}, "f49331", -18392), androidx.appcompat.R.attr.queryHint);
            this.mPropertiesMapped = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(SearchView searchView, PropertyReader propertyReader) {
            if (!this.mPropertiesMapped) {
                throw new InspectionCompanion.UninitializedPropertyMapException();
            }
            propertyReader.readInt(this.mImeOptionsId, searchView.getImeOptions());
            propertyReader.readInt(this.mMaxWidthId, searchView.getMaxWidth());
            propertyReader.readBoolean(this.mIconifiedByDefaultId, searchView.isIconfiedByDefault());
            propertyReader.readObject(this.mQueryHintId, searchView.getQueryHint());
        }
    }

    public interface OnCloseListener {
        boolean onClose();
    }

    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    public interface OnSuggestionListener {
        boolean onSuggestionClick(int i);

        boolean onSuggestionSelect(int i);
    }

    private static class PreQAutoCompleteTextViewReflector {
        private Method mDoAfterTextChanged;
        private Method mDoBeforeTextChanged;
        private Method mEnsureImeVisible;

        PreQAutoCompleteTextViewReflector() {
            this.mDoBeforeTextChanged = null;
            this.mDoAfterTextChanged = null;
            this.mEnsureImeVisible = null;
            preApi29Check();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod(NPStringFog.decode(new byte[]{85, 86, 114, 7, 94, 95, 67, 92, 100, 7, 64, 68, 114, 81, 81, 12, 95, 85, 85}, "190b80", -3766), new Class[0]);
                this.mDoBeforeTextChanged = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod(NPStringFog.decode(new byte[]{86, 90, 36, 5, 71, 7, 64, 97, 0, 27, 71, 33, 90, 84, 11, 4, 86, 6}, "25ec3b", -6.21677796E8d), new Class[0]);
                this.mDoAfterTextChanged = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod(NPStringFog.decode(new byte[]{4, 89, 70, 70, 22, 85, 40, 90, 80, 101, 13, 67, 8, 85, 89, 86}, "a753d0", -4.03879021E8d), Boolean.TYPE);
                this.mEnsureImeVisible = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
        }

        private static void preApi29Check() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError(NPStringFog.decode(new byte[]{109, 10, 8, 21, 19, 3, 76, 12, 2, 18, 90, 10, 87, 66, 2, 7, 93, 69, 86, 12, 13, 31, 19, 7, 92, 66, 20, 21, 86, 1, 25, 4, 14, 20, 19, 36, 105, 43, 65, 42, 86, 19, 92, 14, 65, 90, 19, 87, 0, 76}, "9baf3e", 2.1379094E8f));
            }
        }

        void doAfterTextChanged(AutoCompleteTextView autoCompleteTextView) {
            preApi29Check();
            Method method = this.mDoAfterTextChanged;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        void doBeforeTextChanged(AutoCompleteTextView autoCompleteTextView) {
            preApi29Check();
            Method method = this.mDoBeforeTextChanged;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        void ensureImeVisible(AutoCompleteTextView autoCompleteTextView) {
            preApi29Check();
            Method method = this.mEnsureImeVisible;
            if (method != null) {
                try {
                    method.invoke(autoCompleteTextView, true);
                } catch (Exception e) {
                }
            }
        }
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.appcompat.widget.SearchView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean isIconified;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isIconified = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return NPStringFog.decode(new byte[]{55, 7, 81, 74, 84, 89, 50, 11, 85, 79, 25, 98, 5, 20, 85, 92, 100, 69, 5, 22, 85, 67}, "db0871", false) + Integer.toHexString(System.identityHashCode(this)) + NPStringFog.decode(new byte[]{66, 10, 18, 42, 1, 94, 12, 10, 7, 10, 7, 85, 95}, "bcacb1", -766031660L) + this.isIconified + NPStringFog.decode(new byte[]{76}, "1c8c7d", -4.7865603E8f);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Boolean.valueOf(this.isIconified));
        }
    }

    public static class SearchAutoComplete extends AppCompatAutoCompleteTextView {
        private boolean mHasPendingShowSoftInputRequest;
        final Runnable mRunShowSoftInputIfNecessary;
        private SearchView mSearchView;
        private int mThreshold;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, androidx.appcompat.R.attr.autoCompleteTextViewStyle);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.mRunShowSoftInputIfNecessary = new Runnable(this) { // from class: androidx.appcompat.widget.SearchView.SearchAutoComplete.1
                final SearchAutoComplete this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.this$0.showSoftInputIfNecessary();
                }
            };
            this.mThreshold = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i = configuration.screenWidthDp;
            int i2 = configuration.screenHeightDp;
            if (i < 960 || i2 < 720 || configuration.orientation != 2) {
                return (i >= 600 || (i >= 640 && i2 >= 480)) ? 192 : 160;
            }
            return 256;
        }

        @Override // android.widget.AutoCompleteTextView
        public boolean enoughToFilter() {
            return this.mThreshold <= 0 || super.enoughToFilter();
        }

        void ensureImeVisible() {
            if (Build.VERSION.SDK_INT < 29) {
                SearchView.PRE_API_29_HIDDEN_METHOD_INVOKER.ensureImeVisible(this);
                return;
            }
            setInputMethodMode(1);
            if (enoughToFilter()) {
                showDropDown();
            }
        }

        boolean isEmpty() {
            return TextUtils.getTrimmedLength(getText()) == 0;
        }

        @Override // androidx.appcompat.widget.AppCompatAutoCompleteTextView, android.widget.TextView, android.view.View
        public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.mHasPendingShowSoftInputRequest) {
                removeCallbacks(this.mRunShowSoftInputIfNecessary);
                post(this.mRunShowSoftInputIfNecessary);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        protected void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.mSearchView.onTextFocusChanged();
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState == null) {
                        return true;
                    }
                    keyDispatcherState.startTracking(keyEvent, this);
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.mSearchView.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.mSearchView.hasFocus() && getVisibility() == 0) {
                this.mHasPendingShowSoftInputRequest = true;
                if (SearchView.isLandscapeMode(getContext())) {
                    ensureImeVisible();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        protected void replaceText(CharSequence charSequence) {
        }

        void setImeVisibility(boolean z) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService(NPStringFog.decode(new byte[]{89, 88, 65, 16, 69, 60, 93, 83, 69, 13, 94, 7}, "061e1c", 1.4679163E9f));
            if (!z) {
                this.mHasPendingShowSoftInputRequest = false;
                removeCallbacks(this.mRunShowSoftInputIfNecessary);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.mHasPendingShowSoftInputRequest = true;
                    return;
                }
                this.mHasPendingShowSoftInputRequest = false;
                removeCallbacks(this.mRunShowSoftInputIfNecessary);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        void setSearchView(SearchView searchView) {
            this.mSearchView = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i) {
            super.setThreshold(i);
            this.mThreshold = i;
        }

        void showSoftInputIfNecessary() {
            if (this.mHasPendingShowSoftInputRequest) {
                ((InputMethodManager) getContext().getSystemService(NPStringFog.decode(new byte[]{8, 10, 20, 68, 70, 108, 12, 1, 16, 89, 93, 87}, "add123", -1041264327L))).showSoftInput(this, 0);
                this.mHasPendingShowSoftInputRequest = false;
            }
        }
    }

    private static class UpdatableTouchDelegate extends TouchDelegate {
        private final Rect mActualBounds;
        private boolean mDelegateTargeted;
        private final View mDelegateView;
        private final int mSlop;
        private final Rect mSlopBounds;
        private final Rect mTargetBounds;

        public UpdatableTouchDelegate(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.mSlop = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.mTargetBounds = new Rect();
            this.mSlopBounds = new Rect();
            this.mActualBounds = new Rect();
            setBounds(rect, rect2);
            this.mDelegateView = view;
        }

        @Override // android.view.TouchDelegate
        public boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z;
            boolean z2 = true;
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            switch (motionEvent.getAction()) {
                case 0:
                    if (!this.mTargetBounds.contains(x, y)) {
                        z = false;
                    } else {
                        this.mDelegateTargeted = true;
                        z = true;
                    }
                    break;
                case 1:
                case 2:
                    z = this.mDelegateTargeted;
                    if (z && !this.mSlopBounds.contains(x, y)) {
                        z2 = false;
                    }
                    break;
                case 3:
                    z = this.mDelegateTargeted;
                    this.mDelegateTargeted = false;
                    break;
                default:
                    z = false;
                    break;
            }
            if (!z) {
                return false;
            }
            if (!z2 || this.mActualBounds.contains(x, y)) {
                motionEvent.setLocation(x - this.mActualBounds.left, y - this.mActualBounds.top);
            } else {
                motionEvent.setLocation(this.mDelegateView.getWidth() / 2, this.mDelegateView.getHeight() / 2);
            }
            return this.mDelegateView.dispatchTouchEvent(motionEvent);
        }

        public void setBounds(Rect rect, Rect rect2) {
            this.mTargetBounds.set(rect);
            this.mSlopBounds.set(rect);
            Rect rect3 = this.mSlopBounds;
            int i = this.mSlop;
            rect3.inset(-i, -i);
            this.mActualBounds.set(rect2);
        }
    }

    static {
        PRE_API_29_HIDDEN_METHOD_INVOKER = Build.VERSION.SDK_INT < 29 ? new PreQAutoCompleteTextViewReflector() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, androidx.appcompat.R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSearchSrcTextViewBounds = new Rect();
        this.mSearchSrtTextViewBoundsExpanded = new Rect();
        this.mTemp = new int[2];
        this.mTemp2 = new int[2];
        this.mUpdateDrawableStateRunnable = new Runnable(this) { // from class: androidx.appcompat.widget.SearchView.1
            final SearchView this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.updateFocusedState();
            }
        };
        this.mReleaseCursorRunnable = new Runnable(this) { // from class: androidx.appcompat.widget.SearchView.2
            final SearchView this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (this.this$0.mSuggestionsAdapter instanceof SuggestionsAdapter) {
                    this.this$0.mSuggestionsAdapter.changeCursor(null);
                }
            }
        };
        this.mOutsideDrawablesCache = new WeakHashMap<>();
        View.OnClickListener onClickListener = new View.OnClickListener(this) { // from class: androidx.appcompat.widget.SearchView.5
            final SearchView this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (view == this.this$0.mSearchButton) {
                    this.this$0.onSearchClicked();
                    return;
                }
                if (view == this.this$0.mCloseButton) {
                    this.this$0.onCloseClicked();
                    return;
                }
                if (view == this.this$0.mGoButton) {
                    this.this$0.onSubmitQuery();
                } else if (view == this.this$0.mVoiceButton) {
                    this.this$0.onVoiceClicked();
                } else if (view == this.this$0.mSearchSrcTextView) {
                    this.this$0.forceSuggestionQuery();
                }
            }
        };
        this.mOnClickListener = onClickListener;
        this.mTextKeyListener = new View.OnKeyListener(this) { // from class: androidx.appcompat.widget.SearchView.6
            final SearchView this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i2, KeyEvent keyEvent) {
                if (this.this$0.mSearchable == null) {
                    return false;
                }
                if (this.this$0.mSearchSrcTextView.isPopupShowing() && this.this$0.mSearchSrcTextView.getListSelection() != -1) {
                    return this.this$0.onSuggestionsKey(view, i2, keyEvent);
                }
                if (this.this$0.mSearchSrcTextView.isEmpty() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i2 != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView searchView = this.this$0;
                searchView.launchQuerySearch(0, null, searchView.mSearchSrcTextView.getText().toString());
                return true;
            }
        };
        TextView.OnEditorActionListener onEditorActionListener = new TextView.OnEditorActionListener(this) { // from class: androidx.appcompat.widget.SearchView.7
            final SearchView this$0;

            {
                this.this$0 = this;
            }

            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
                this.this$0.onSubmitQuery();
                return true;
            }
        };
        this.mOnEditorActionListener = onEditorActionListener;
        AdapterView.OnItemClickListener onItemClickListener = new AdapterView.OnItemClickListener(this) { // from class: androidx.appcompat.widget.SearchView.8
            final SearchView this$0;

            {
                this.this$0 = this;
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                this.this$0.onItemClicked(i2, 0, null);
            }
        };
        this.mOnItemClickListener = onItemClickListener;
        AdapterView.OnItemSelectedListener onItemSelectedListener = new AdapterView.OnItemSelectedListener(this) { // from class: androidx.appcompat.widget.SearchView.9
            final SearchView this$0;

            {
                this.this$0 = this;
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j) {
                this.this$0.onItemSelected(i2);
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        };
        this.mOnItemSelectedListener = onItemSelectedListener;
        this.mTextWatcher = new TextWatcher(this) { // from class: androidx.appcompat.widget.SearchView.10
            final SearchView this$0;

            {
                this.this$0 = this;
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                this.this$0.onTextChanged(charSequence);
            }
        };
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, androidx.appcompat.R.styleable.SearchView, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, androidx.appcompat.R.styleable.SearchView, attributeSet, tintTypedArrayObtainStyledAttributes.getWrappedTypeArray(), i, 0);
        LayoutInflater.from(context).inflate(tintTypedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.SearchView_layout, androidx.appcompat.R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(androidx.appcompat.R.id.search_src_text);
        this.mSearchSrcTextView = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.mSearchEditFrame = findViewById(androidx.appcompat.R.id.search_edit_frame);
        View viewFindViewById = findViewById(androidx.appcompat.R.id.search_plate);
        this.mSearchPlate = viewFindViewById;
        View viewFindViewById2 = findViewById(androidx.appcompat.R.id.submit_area);
        this.mSubmitArea = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(androidx.appcompat.R.id.search_button);
        this.mSearchButton = imageView;
        ImageView imageView2 = (ImageView) findViewById(androidx.appcompat.R.id.search_go_btn);
        this.mGoButton = imageView2;
        ImageView imageView3 = (ImageView) findViewById(androidx.appcompat.R.id.search_close_btn);
        this.mCloseButton = imageView3;
        ImageView imageView4 = (ImageView) findViewById(androidx.appcompat.R.id.search_voice_btn);
        this.mVoiceButton = imageView4;
        ImageView imageView5 = (ImageView) findViewById(androidx.appcompat.R.id.search_mag_icon);
        this.mCollapsedIcon = imageView5;
        ViewCompat.setBackground(viewFindViewById, tintTypedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.SearchView_queryBackground));
        ViewCompat.setBackground(viewFindViewById2, tintTypedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.SearchView_submitBackground));
        imageView.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.SearchView_searchIcon));
        imageView2.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.SearchView_goIcon));
        imageView3.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.SearchView_searchIcon));
        this.mSearchHintIcon = tintTypedArrayObtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.SearchView_searchHintIcon);
        TooltipCompat.setTooltipText(imageView, getResources().getString(androidx.appcompat.R.string.abc_searchview_description_search));
        this.mSuggestionRowLayout = tintTypedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.SearchView_suggestionRowLayout, androidx.appcompat.R.layout.abc_search_dropdown_item_icons_2line);
        this.mSuggestionCommitIconResId = tintTypedArrayObtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(onClickListener);
        imageView3.setOnClickListener(onClickListener);
        imageView2.setOnClickListener(onClickListener);
        imageView4.setOnClickListener(onClickListener);
        searchAutoComplete.setOnClickListener(onClickListener);
        searchAutoComplete.addTextChangedListener(this.mTextWatcher);
        searchAutoComplete.setOnEditorActionListener(onEditorActionListener);
        searchAutoComplete.setOnItemClickListener(onItemClickListener);
        searchAutoComplete.setOnItemSelectedListener(onItemSelectedListener);
        searchAutoComplete.setOnKeyListener(this.mTextKeyListener);
        searchAutoComplete.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: androidx.appcompat.widget.SearchView.3
            final SearchView this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (this.this$0.mOnQueryTextFocusChangeListener != null) {
                    this.this$0.mOnQueryTextFocusChangeListener.onFocusChange(this.this$0, z);
                }
            }
        });
        setIconifiedByDefault(tintTypedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.SearchView_iconifiedByDefault, true));
        int dimensionPixelSize = tintTypedArrayObtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.SearchView_android_maxWidth, -1);
        if (dimensionPixelSize != -1) {
            setMaxWidth(dimensionPixelSize);
        }
        this.mDefaultQueryHint = tintTypedArrayObtainStyledAttributes.getText(androidx.appcompat.R.styleable.SearchView_defaultQueryHint);
        this.mQueryHint = tintTypedArrayObtainStyledAttributes.getText(androidx.appcompat.R.styleable.SearchView_queryHint);
        int i2 = tintTypedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.SearchView_android_imeOptions, -1);
        if (i2 != -1) {
            setImeOptions(i2);
        }
        int i3 = tintTypedArrayObtainStyledAttributes.getInt(androidx.appcompat.R.styleable.SearchView_android_inputType, -1);
        if (i3 != -1) {
            setInputType(i3);
        }
        setFocusable(tintTypedArrayObtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.SearchView_android_focusable, true));
        tintTypedArrayObtainStyledAttributes.recycle();
        Intent intent = new Intent(NPStringFog.decode(new byte[]{82, 93, 86, 19, 13, 11, 87, 29, 65, 17, 7, 7, 80, 91, 28, 0, 1, 22, 90, 92, 92, 79, 53, 39, 113, 108, 97, 36, 35, 48, 112, 123}, "332abb", true, true));
        this.mVoiceWebSearchIntent = intent;
        intent.addFlags(268435456);
        intent.putExtra(NPStringFog.decode(new byte[]{82, 89, 92, 17, 9, 93, 87, 25, 75, 19, 3, 81, 80, 95, 22, 6, 30, 64, 65, 86, 22, 47, 39, 122, 116, 98, 121, 36, 35, 107, 126, 120, 124, 38, 42}, "378cf4", 1.51850587E9d), NPStringFog.decode(new byte[]{79, 85, 1, 104, 66, 84, 89, 66, 0, 95}, "80c711", 1.002714431E9d));
        Intent intent2 = new Intent(NPStringFog.decode(new byte[]{85, 11, 0, 67, 13, 10, 80, 75, 23, 65, 7, 6, 87, 13, 74, 80, 1, 23, 93, 10, 10, 31, 48, 38, 119, 42, 35, 127, 43, 57, 113, 58, 55, 97, 39, 38, 119, 45}, "4ed1bc", -8287));
        this.mVoiceAppSearchIntent = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.mDropDownAnchor = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new View.OnLayoutChangeListener(this) { // from class: androidx.appcompat.widget.SearchView.4
                final SearchView this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                    this.this$0.adjustDropDownSizeAndPosition();
                }
            });
        }
        updateViewsVisibility(this.mIconifiedByDefault);
        updateQueryHint();
    }

    private Intent createIntent(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra(NPStringFog.decode(new byte[]{23, 23, 1, 64, 57, 23, 23, 1, 22, 75}, "bdd2ff", -9.89311E7f), this.mUserQuery);
        if (str3 != null) {
            intent.putExtra(NPStringFog.decode(new byte[]{16, 66, 4, 65, 31}, "a7a3fd", false), str3);
        }
        if (str2 != null) {
            intent.putExtra(NPStringFog.decode(new byte[]{95, 10, 67, 1, 10, 23, 105, 1, 79, 16, 22, 2, 105, 0, 86, 16, 5, 60, 93, 1, 78}, "6d7ddc", -24743), str2);
        }
        Bundle bundle = this.mAppSearchData;
        if (bundle != null) {
            intent.putExtra(NPStringFog.decode(new byte[]{88, 17, 72, 61, 6, 87, 77, 0}, "9a8bb6", 1548732846L), bundle);
        }
        if (i != 0) {
            intent.putExtra(NPStringFog.decode(new byte[]{0, 90, 18, 12, 9, 93, 62, 82, 3, 28}, "a9fef3", false), i);
            intent.putExtra(NPStringFog.decode(new byte[]{3, 6, 66, 90, 10, 13, 61, 8, 69, 84}, "be63ec", true, false), str4);
        }
        intent.setComponent(this.mSearchable.getSearchActivity());
        return intent;
    }

    private Intent createIntentFromSuggestion(Cursor cursor, int i, String str) {
        int position;
        String columnString;
        try {
            String columnString2 = SuggestionsAdapter.getColumnString(cursor, NPStringFog.decode(new byte[]{65, 65, 1, 85, 7, 16, 70, 107, 15, 92, 22, 6, 92, 64, 57, 83, 1, 23, 91, 91, 8}, "24f2bc", 533003705L));
            if (columnString2 == null) {
                columnString2 = this.mSearchable.getSuggestIntentAction();
            }
            if (columnString2 == null) {
                columnString2 = NPStringFog.decode(new byte[]{89, 11, 92, 69, 95, 8, 92, 75, 81, 89, 68, 4, 86, 17, 22, 86, 83, 21, 81, 10, 86, 25, 99, 36, 121, 55, 123, 127}, "8e870a", -1.085907814E9d);
            }
            String columnString3 = SuggestionsAdapter.getColumnString(cursor, NPStringFog.decode(new byte[]{64, 65, 80, 86, 81, 17, 71, 107, 94, 95, 64, 7, 93, 64, 104, 85, 85, 22, 82}, "34714b", 1.6378922E9f));
            if (columnString3 == null) {
                columnString3 = this.mSearchable.getSuggestIntentData();
            }
            if (columnString3 != null && (columnString = SuggestionsAdapter.getColumnString(cursor, NPStringFog.decode(new byte[]{65, 20, 6, 94, 7, 23, 70, 62, 8, 87, 22, 1, 92, 21, 62, 93, 3, 16, 83, 62, 8, 93}, "2aa9bd", 2200))) != null) {
                columnString3 = columnString3 + NPStringFog.decode(new byte[]{73}, "f62659", 32670) + Uri.encode(columnString);
            }
            return createIntent(columnString2, columnString3 == null ? null : Uri.parse(columnString3), SuggestionsAdapter.getColumnString(cursor, NPStringFog.decode(new byte[]{69, 70, 1, 5, 92, 67, 66, 108, 15, 12, 77, 85, 88, 71, 57, 7, 65, 68, 68, 82, 57, 6, 88, 68, 87}, "63fb90", false)), SuggestionsAdapter.getColumnString(cursor, NPStringFog.decode(new byte[]{66, 20, 85, 6, 0, 22, 69, 62, 91, 15, 17, 0, 95, 21, 109, 16, 16, 0, 67, 24}, "1a2aee", true, false)), i, str);
        } catch (RuntimeException e) {
            try {
                position = cursor.getPosition();
            } catch (RuntimeException e2) {
                position = -1;
            }
            Log.w(LOG_TAG, NPStringFog.decode(new byte[]{96, 92, 88, 17, 87, 89, 19, 74, 76, 4, 83, 84, 64, 77, 80, 12, 90, 66, 19, 90, 76, 17, 71, 94, 65, 25, 88, 23, 20, 67, 92, 78, 25}, "399c41", 10080) + position + NPStringFog.decode(new byte[]{69, 22, 0, 68, 19, 68, 11, 1, 1, 16, 3, 78, 6, 1, 21, 68, 15, 89, 11, 74}, "ede0f6", true), e);
            return null;
        }
    }

    private Intent createVoiceAppSearchIntent(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent(NPStringFog.decode(new byte[]{85, 10, 5, 75, 13, 80, 80, 74, 8, 87, 22, 92, 90, 16, 79, 88, 1, 77, 93, 11, 15, 23, 49, 124, 117, 54, 34, 113}, "4da9b9", true, false));
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.mAppSearchData;
        if (bundle2 != null) {
            bundle.putParcelable(NPStringFog.decode(new byte[]{80, 21, 21, 106, 1, 2, 69, 4}, "1ee5ec", -1807979501L), bundle2);
        }
        Intent intent3 = new Intent(intent);
        String strDecode = NPStringFog.decode(new byte[]{83, 20, 3, 4, 58, 81, 90, 20, 11}, "5ffae7", -3.81097E7f);
        Resources resources = getResources();
        if (searchableInfo.getVoiceLanguageModeId() != 0) {
            strDecode = resources.getString(searchableInfo.getVoiceLanguageModeId());
        }
        String string = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string2 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra(NPStringFog.decode(new byte[]{80, 90, 85, 68, 9, 12, 85, 26, 66, 70, 3, 0, 82, 92, 31, 83, 30, 17, 67, 85, 31, 122, 39, 43, 118, 97, 112, 113, 35, 58, 124, 123, 117, 115, 42}, "1416fe", true), strDecode);
        intent3.putExtra(NPStringFog.decode(new byte[]{82, 11, 84, 70, 14, 93, 87, 75, 67, 68, 4, 81, 80, 13, 30, 81, 25, 64, 65, 4, 30, 100, 51, 123, 126, 53, 100}, "3e04a4", -2.67535518E8d), string);
        intent3.putExtra(NPStringFog.decode(new byte[]{7, 11, 0, 69, 89, 12, 2, 75, 23, 71, 83, 0, 5, 13, 74, 82, 78, 17, 20, 4, 74, 123, 119, 43, 33, 48, 37, 112, 115}, "fed76e", 507386980L), string2);
        intent3.putExtra(NPStringFog.decode(new byte[]{86, 91, 86, 16, 10, 92, 83, 27, 65, 18, 0, 80, 84, 93, 28, 7, 29, 65, 69, 84, 28, 47, 36, 109, 104, 103, 119, 49, 48, 121, 99, 102}, "752be5", 959229813L), voiceMaxResults);
        intent3.putExtra(NPStringFog.decode(new byte[]{2, 89, 89, 92, 12, 94, 6, 103, 69, 81, 6, 91, 0, 95, 80}, "a850e0", false), searchActivity == null ? null : searchActivity.flattenToShortString());
        intent3.putExtra(NPStringFog.decode(new byte[]{89, 89, 84, 66, 93, 91, 92, 25, 67, 64, 87, 87, 91, 95, 30, 85, 74, 70, 74, 86, 30, 98, 119, 97, 109, 123, 100, 99, 109, 98, 125, 121, 116, 121, 124, 117, 113, 121, 100, 117, 124, 102}, "870022", 7.05319071E8d), activity);
        intent3.putExtra(NPStringFog.decode(new byte[]{86, 8, 80, 68, 88, 95, 83, 72, 71, 70, 82, 83, 84, 14, 26, 83, 79, 66, 69, 7, 26, 100, 114, 101, 98, 42, 96, 101, 104, 102, 114, 40, 112, 127, 121, 113, 126, 40, 96, 115, 121, 98, 104, 36, 97, 120, 115, 122, 114}, "7f4676", true), bundle);
        return intent3;
    }

    private Intent createVoiceWebSearchIntent(Intent intent, SearchableInfo searchableInfo) {
        Intent intent2 = new Intent(intent);
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        intent2.putExtra(NPStringFog.decode(new byte[]{82, 82, 94, 9, 11, 87, 86, 108, 66, 4, 1, 82, 80, 84, 87}, "132eb9", false, true), searchActivity == null ? null : searchActivity.flattenToShortString());
        return intent2;
    }

    private void dismissSuggestions() {
        this.mSearchSrcTextView.dismissDropDown();
    }

    private void getChildBoundsWithinSearchView(View view, Rect rect) {
        view.getLocationInWindow(this.mTemp);
        getLocationInWindow(this.mTemp2);
        int[] iArr = this.mTemp;
        int i = iArr[1];
        int[] iArr2 = this.mTemp2;
        int i2 = i - iArr2[1];
        int i3 = iArr[0] - iArr2[0];
        rect.set(i3, i2, view.getWidth() + i3, view.getHeight() + i2);
    }

    private CharSequence getDecoratedHint(CharSequence charSequence) {
        if (!this.mIconifiedByDefault || this.mSearchHintIcon == null) {
            return charSequence;
        }
        double textSize = this.mSearchSrcTextView.getTextSize();
        Double.isNaN(textSize);
        int i = (int) (textSize * 1.25d);
        this.mSearchHintIcon.setBounds(0, 0, i, i);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.mSearchHintIcon), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(androidx.appcompat.R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(androidx.appcompat.R.dimen.abc_search_view_preferred_width);
    }

    private boolean hasVoiceSearch() {
        SearchableInfo searchableInfo = this.mSearchable;
        if (searchableInfo == null || !searchableInfo.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.mSearchable.getVoiceSearchLaunchWebSearch()) {
            intent = this.mVoiceWebSearchIntent;
        } else if (this.mSearchable.getVoiceSearchLaunchRecognizer()) {
            intent = this.mVoiceAppSearchIntent;
        }
        return (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
    }

    static boolean isLandscapeMode(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    private boolean isSubmitAreaEnabled() {
        return (this.mSubmitButtonEnabled || this.mVoiceButtonEnabled) && !isIconified();
    }

    private void launchIntent(Intent intent) {
        if (intent == null) {
            return;
        }
        try {
            getContext().startActivity(intent);
        } catch (RuntimeException e) {
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{119, 80, 89, 90, 84, 92, 17, 93, 81, 67, 95, 91, 89, 17, 81, 85, 69, 81, 71, 88, 68, 79, 11, 24}, "110618", -2.0997558E9f) + intent, e);
        }
    }

    private boolean launchSuggestion(int i, int i2, String str) {
        Cursor cursor = this.mSuggestionsAdapter.getCursor();
        if (cursor == null || !cursor.moveToPosition(i)) {
            return false;
        }
        launchIntent(createIntentFromSuggestion(cursor, i2, str));
        return true;
    }

    private void postUpdateFocusedState() {
        post(this.mUpdateDrawableStateRunnable);
    }

    private void rewriteQueryFromSuggestion(int i) {
        Editable text = this.mSearchSrcTextView.getText();
        Cursor cursor = this.mSuggestionsAdapter.getCursor();
        if (cursor == null) {
            return;
        }
        if (!cursor.moveToPosition(i)) {
            setQuery(text);
            return;
        }
        CharSequence charSequenceConvertToString = this.mSuggestionsAdapter.convertToString(cursor);
        if (charSequenceConvertToString != null) {
            setQuery(charSequenceConvertToString);
        } else {
            setQuery(text);
        }
    }

    private void setQuery(CharSequence charSequence) {
        this.mSearchSrcTextView.setText(charSequence);
        this.mSearchSrcTextView.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    private void updateCloseButton() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.mSearchSrcTextView.getText());
        if (!z2 && (!this.mIconifiedByDefault || this.mExpandedInActionView)) {
            z = false;
        }
        this.mCloseButton.setVisibility(z ? 0 : 8);
        Drawable drawable = this.mCloseButton.getDrawable();
        if (drawable != null) {
            drawable.setState(z2 ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    private void updateQueryHint() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
        if (queryHint == null) {
            queryHint = "";
        }
        searchAutoComplete.setHint(getDecoratedHint(queryHint));
    }

    private void updateSearchAutoComplete() {
        this.mSearchSrcTextView.setThreshold(this.mSearchable.getSuggestThreshold());
        this.mSearchSrcTextView.setImeOptions(this.mSearchable.getImeOptions());
        int inputType = this.mSearchable.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.mSearchable.getSuggestAuthority() != null) {
                inputType = inputType | 65536 | 524288;
            }
        }
        this.mSearchSrcTextView.setInputType(inputType);
        CursorAdapter cursorAdapter = this.mSuggestionsAdapter;
        if (cursorAdapter != null) {
            cursorAdapter.changeCursor(null);
        }
        if (this.mSearchable.getSuggestAuthority() != null) {
            SuggestionsAdapter suggestionsAdapter = new SuggestionsAdapter(getContext(), this, this.mSearchable, this.mOutsideDrawablesCache);
            this.mSuggestionsAdapter = suggestionsAdapter;
            this.mSearchSrcTextView.setAdapter(suggestionsAdapter);
            ((SuggestionsAdapter) this.mSuggestionsAdapter).setQueryRefinement(this.mQueryRefinement ? 2 : 1);
        }
    }

    private void updateSubmitArea() {
        int i = 8;
        if (isSubmitAreaEnabled() && (this.mGoButton.getVisibility() == 0 || this.mVoiceButton.getVisibility() == 0)) {
            i = 0;
        }
        this.mSubmitArea.setVisibility(i);
    }

    private void updateSubmitButton(boolean z) {
        int i = 8;
        if (this.mSubmitButtonEnabled && isSubmitAreaEnabled() && hasFocus() && (z || !this.mVoiceButtonEnabled)) {
            i = 0;
        }
        this.mGoButton.setVisibility(i);
    }

    private void updateViewsVisibility(boolean z) {
        int i = 8;
        this.mIconified = z;
        int i2 = z ? 0 : 8;
        boolean z2 = !TextUtils.isEmpty(this.mSearchSrcTextView.getText());
        this.mSearchButton.setVisibility(i2);
        updateSubmitButton(z2);
        this.mSearchEditFrame.setVisibility(z ? 8 : 0);
        if (this.mCollapsedIcon.getDrawable() != null && !this.mIconifiedByDefault) {
            i = 0;
        }
        this.mCollapsedIcon.setVisibility(i);
        updateCloseButton();
        updateVoiceButton(z2 ? false : true);
        updateSubmitArea();
    }

    private void updateVoiceButton(boolean z) {
        int i;
        if (this.mVoiceButtonEnabled && !isIconified() && z) {
            i = 0;
            this.mGoButton.setVisibility(8);
        } else {
            i = 8;
        }
        this.mVoiceButton.setVisibility(i);
    }

    void adjustDropDownSizeAndPosition() {
        if (this.mDropDownAnchor.getWidth() > 1) {
            Resources resources = getContext().getResources();
            int paddingLeft = this.mSearchPlate.getPaddingLeft();
            Rect rect = new Rect();
            boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
            int dimensionPixelSize = this.mIconifiedByDefault ? resources.getDimensionPixelSize(androidx.appcompat.R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(androidx.appcompat.R.dimen.abc_dropdownitem_icon_width) : 0;
            this.mSearchSrcTextView.getDropDownBackground().getPadding(rect);
            this.mSearchSrcTextView.setDropDownHorizontalOffset(zIsLayoutRtl ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
            this.mSearchSrcTextView.setDropDownWidth((dimensionPixelSize + ((this.mDropDownAnchor.getWidth() + rect.left) + rect.right)) - paddingLeft);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void clearFocus() {
        this.mClearingFocus = true;
        super.clearFocus();
        this.mSearchSrcTextView.clearFocus();
        this.mSearchSrcTextView.setImeVisibility(false);
        this.mClearingFocus = false;
    }

    void forceSuggestionQuery() {
        if (Build.VERSION.SDK_INT >= 29) {
            this.mSearchSrcTextView.refreshAutoCompleteResults();
            return;
        }
        PreQAutoCompleteTextViewReflector preQAutoCompleteTextViewReflector = PRE_API_29_HIDDEN_METHOD_INVOKER;
        preQAutoCompleteTextViewReflector.doBeforeTextChanged(this.mSearchSrcTextView);
        preQAutoCompleteTextViewReflector.doAfterTextChanged(this.mSearchSrcTextView);
    }

    public int getImeOptions() {
        return this.mSearchSrcTextView.getImeOptions();
    }

    public int getInputType() {
        return this.mSearchSrcTextView.getInputType();
    }

    public int getMaxWidth() {
        return this.mMaxWidth;
    }

    public CharSequence getQuery() {
        return this.mSearchSrcTextView.getText();
    }

    public CharSequence getQueryHint() {
        if (this.mQueryHint != null) {
            return this.mQueryHint;
        }
        SearchableInfo searchableInfo = this.mSearchable;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.mDefaultQueryHint : getContext().getText(this.mSearchable.getHintId());
    }

    int getSuggestionCommitIconResId() {
        return this.mSuggestionCommitIconResId;
    }

    int getSuggestionRowLayout() {
        return this.mSuggestionRowLayout;
    }

    public CursorAdapter getSuggestionsAdapter() {
        return this.mSuggestionsAdapter;
    }

    public boolean isIconfiedByDefault() {
        return this.mIconifiedByDefault;
    }

    public boolean isIconified() {
        return this.mIconified;
    }

    public boolean isQueryRefinementEnabled() {
        return this.mQueryRefinement;
    }

    public boolean isSubmitButtonEnabled() {
        return this.mSubmitButtonEnabled;
    }

    void launchQuerySearch(int i, String str, String str2) {
        getContext().startActivity(createIntent(NPStringFog.decode(new byte[]{5, 15, 87, 74, 9, 11, 0, 79, 90, 86, 18, 7, 10, 21, 29, 89, 5, 22, 13, 14, 93, 22, 53, 39, 37, 51, 112, 112}, "da38fb", 1.289806265E9d), null, null, str2, i, str));
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public void onActionViewCollapsed() {
        setQuery("", false);
        clearFocus();
        updateViewsVisibility(true);
        this.mSearchSrcTextView.setImeOptions(this.mCollapsedImeOptions);
        this.mExpandedInActionView = false;
    }

    @Override // androidx.appcompat.view.CollapsibleActionView
    public void onActionViewExpanded() {
        if (this.mExpandedInActionView) {
            return;
        }
        this.mExpandedInActionView = true;
        int imeOptions = this.mSearchSrcTextView.getImeOptions();
        this.mCollapsedImeOptions = imeOptions;
        this.mSearchSrcTextView.setImeOptions(imeOptions | 33554432);
        this.mSearchSrcTextView.setText("");
        setIconified(false);
    }

    void onCloseClicked() {
        if (!TextUtils.isEmpty(this.mSearchSrcTextView.getText())) {
            this.mSearchSrcTextView.setText("");
            this.mSearchSrcTextView.requestFocus();
            this.mSearchSrcTextView.setImeVisibility(true);
        } else if (this.mIconifiedByDefault) {
            OnCloseListener onCloseListener = this.mOnCloseListener;
            if (onCloseListener == null || !onCloseListener.onClose()) {
                clearFocus();
                updateViewsVisibility(true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.mUpdateDrawableStateRunnable);
        post(this.mReleaseCursorRunnable);
        super.onDetachedFromWindow();
    }

    boolean onItemClicked(int i, int i2, String str) {
        OnSuggestionListener onSuggestionListener = this.mOnSuggestionListener;
        if (onSuggestionListener != null && onSuggestionListener.onSuggestionClick(i)) {
            return false;
        }
        launchSuggestion(i, 0, null);
        this.mSearchSrcTextView.setImeVisibility(false);
        dismissSuggestions();
        return true;
    }

    boolean onItemSelected(int i) {
        OnSuggestionListener onSuggestionListener = this.mOnSuggestionListener;
        if (onSuggestionListener != null && onSuggestionListener.onSuggestionSelect(i)) {
            return false;
        }
        rewriteQueryFromSuggestion(i);
        return true;
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            getChildBoundsWithinSearchView(this.mSearchSrcTextView, this.mSearchSrcTextViewBounds);
            this.mSearchSrtTextViewBoundsExpanded.set(this.mSearchSrcTextViewBounds.left, 0, this.mSearchSrcTextViewBounds.right, i4 - i2);
            UpdatableTouchDelegate updatableTouchDelegate = this.mTouchDelegate;
            if (updatableTouchDelegate != null) {
                updatableTouchDelegate.setBounds(this.mSearchSrtTextViewBoundsExpanded, this.mSearchSrcTextViewBounds);
                return;
            }
            UpdatableTouchDelegate updatableTouchDelegate2 = new UpdatableTouchDelegate(this.mSearchSrtTextViewBoundsExpanded, this.mSearchSrcTextViewBounds, this.mSearchSrcTextView);
            this.mTouchDelegate = updatableTouchDelegate2;
            setTouchDelegate(updatableTouchDelegate2);
        }
    }

    @Override // androidx.appcompat.widget.LinearLayoutCompat, android.view.View
    protected void onMeasure(int i, int i2) {
        if (isIconified()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        switch (mode) {
            case Integer.MIN_VALUE:
                int i3 = this.mMaxWidth;
                size = i3 <= 0 ? Math.min(getPreferredWidth(), size) : Math.min(i3, size);
                break;
            case 0:
                size = this.mMaxWidth;
                if (size <= 0) {
                    size = getPreferredWidth();
                }
                break;
            case BasicMeasure.EXACTLY /* 1073741824 */:
                int i4 = this.mMaxWidth;
                if (i4 > 0) {
                    size = Math.min(i4, size);
                }
                break;
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        switch (mode2) {
            case Integer.MIN_VALUE:
                size2 = Math.min(getPreferredHeight(), size2);
                break;
            case 0:
                size2 = getPreferredHeight();
                break;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(size2, BasicMeasure.EXACTLY));
    }

    void onQueryRefine(CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        updateViewsVisibility(savedState.isIconified);
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.isIconified = isIconified();
        return savedState;
    }

    void onSearchClicked() {
        updateViewsVisibility(false);
        this.mSearchSrcTextView.requestFocus();
        this.mSearchSrcTextView.setImeVisibility(true);
        View.OnClickListener onClickListener = this.mOnSearchClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    void onSubmitQuery() {
        Editable text = this.mSearchSrcTextView.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        OnQueryTextListener onQueryTextListener = this.mOnQueryChangeListener;
        if (onQueryTextListener == null || !onQueryTextListener.onQueryTextSubmit(text.toString())) {
            if (this.mSearchable != null) {
                launchQuerySearch(0, null, text.toString());
            }
            this.mSearchSrcTextView.setImeVisibility(false);
            dismissSuggestions();
        }
    }

    boolean onSuggestionsKey(View view, int i, KeyEvent keyEvent) {
        if (this.mSearchable == null || this.mSuggestionsAdapter == null || keyEvent.getAction() != 0 || !keyEvent.hasNoModifiers()) {
            return false;
        }
        if (i == 66 || i == 84 || i == 61) {
            return onItemClicked(this.mSearchSrcTextView.getListSelection(), 0, null);
        }
        if (i != 21 && i != 22) {
            if (i != 19) {
                return false;
            }
            this.mSearchSrcTextView.getListSelection();
            return false;
        }
        this.mSearchSrcTextView.setSelection(i == 21 ? 0 : this.mSearchSrcTextView.length());
        this.mSearchSrcTextView.setListSelection(0);
        this.mSearchSrcTextView.clearListSelection();
        this.mSearchSrcTextView.ensureImeVisible();
        return true;
    }

    void onTextChanged(CharSequence charSequence) {
        Editable text = this.mSearchSrcTextView.getText();
        this.mUserQuery = text;
        boolean z = !TextUtils.isEmpty(text);
        updateSubmitButton(z);
        updateVoiceButton(z ? false : true);
        updateCloseButton();
        updateSubmitArea();
        if (this.mOnQueryChangeListener != null && !TextUtils.equals(charSequence, this.mOldQueryText)) {
            this.mOnQueryChangeListener.onQueryTextChange(charSequence.toString());
        }
        this.mOldQueryText = charSequence.toString();
    }

    void onTextFocusChanged() {
        updateViewsVisibility(isIconified());
        postUpdateFocusedState();
        if (this.mSearchSrcTextView.hasFocus()) {
            forceSuggestionQuery();
        }
    }

    void onVoiceClicked() {
        if (this.mSearchable == null) {
            return;
        }
        SearchableInfo searchableInfo = this.mSearchable;
        try {
            if (searchableInfo.getVoiceSearchLaunchWebSearch()) {
                getContext().startActivity(createVoiceWebSearchIntent(this.mVoiceWebSearchIntent, searchableInfo));
            } else if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                getContext().startActivity(createVoiceAppSearchIntent(this.mVoiceAppSearchIntent, searchableInfo));
            }
        } catch (ActivityNotFoundException e) {
            Log.w(LOG_TAG, NPStringFog.decode(new byte[]{114, 86, 69, 91, 7, 18, 95, 86, 68, 23, 5, 91, 95, 93, 16, 65, 12, 91, 82, 92, 16, 68, 6, 83, 67, 90, 88, 23, 2, 81, 69, 80, 70, 94, 23, 75}, "1907c2", false, false));
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        postUpdateFocusedState();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean requestFocus(int i, Rect rect) {
        if (this.mClearingFocus || !isFocusable()) {
            return false;
        }
        if (isIconified()) {
            return super.requestFocus(i, rect);
        }
        boolean zRequestFocus = this.mSearchSrcTextView.requestFocus(i, rect);
        if (zRequestFocus) {
            updateViewsVisibility(false);
        }
        return zRequestFocus;
    }

    public void setAppSearchData(Bundle bundle) {
        this.mAppSearchData = bundle;
    }

    public void setIconified(boolean z) {
        if (z) {
            onCloseClicked();
        } else {
            onSearchClicked();
        }
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.mIconifiedByDefault == z) {
            return;
        }
        this.mIconifiedByDefault = z;
        updateViewsVisibility(z);
        updateQueryHint();
    }

    public void setImeOptions(int i) {
        this.mSearchSrcTextView.setImeOptions(i);
    }

    public void setInputType(int i) {
        this.mSearchSrcTextView.setInputType(i);
    }

    public void setMaxWidth(int i) {
        this.mMaxWidth = i;
        requestLayout();
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.mOnCloseListener = onCloseListener;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.mOnQueryTextFocusChangeListener = onFocusChangeListener;
    }

    public void setOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
        this.mOnQueryChangeListener = onQueryTextListener;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.mOnSearchClickListener = onClickListener;
    }

    public void setOnSuggestionListener(OnSuggestionListener onSuggestionListener) {
        this.mOnSuggestionListener = onSuggestionListener;
    }

    public void setQuery(CharSequence charSequence, boolean z) {
        this.mSearchSrcTextView.setText(charSequence);
        if (charSequence != null) {
            SearchAutoComplete searchAutoComplete = this.mSearchSrcTextView;
            searchAutoComplete.setSelection(searchAutoComplete.length());
            this.mUserQuery = charSequence;
        }
        if (!z || TextUtils.isEmpty(charSequence)) {
            return;
        }
        onSubmitQuery();
    }

    public void setQueryHint(CharSequence charSequence) {
        this.mQueryHint = charSequence;
        updateQueryHint();
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.mQueryRefinement = z;
        CursorAdapter cursorAdapter = this.mSuggestionsAdapter;
        if (cursorAdapter instanceof SuggestionsAdapter) {
            ((SuggestionsAdapter) cursorAdapter).setQueryRefinement(z ? 2 : 1);
        }
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.mSearchable = searchableInfo;
        if (searchableInfo != null) {
            updateSearchAutoComplete();
            updateQueryHint();
        }
        boolean zHasVoiceSearch = hasVoiceSearch();
        this.mVoiceButtonEnabled = zHasVoiceSearch;
        if (zHasVoiceSearch) {
            this.mSearchSrcTextView.setPrivateImeOptions(IME_OPTION_NO_MICROPHONE);
        }
        updateViewsVisibility(isIconified());
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.mSubmitButtonEnabled = z;
        updateViewsVisibility(isIconified());
    }

    public void setSuggestionsAdapter(CursorAdapter cursorAdapter) {
        this.mSuggestionsAdapter = cursorAdapter;
        this.mSearchSrcTextView.setAdapter(cursorAdapter);
    }

    void updateFocusedState() {
        int[] iArr = this.mSearchSrcTextView.hasFocus() ? FOCUSED_STATE_SET : EMPTY_STATE_SET;
        Drawable background = this.mSearchPlate.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.mSubmitArea.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }
}

package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.R;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
class FragmentLayoutInflaterFactory implements LayoutInflater.Factory2 {
    private static final String TAG = NPStringFog.decode(new byte[]{119, 16, 83, 95, 14, 1, 95, 22, 127, 89, 13, 5, 86, 7, 64}, "1b28cd", true);
    final FragmentManager mFragmentManager;

    FragmentLayoutInflaterFactory(FragmentManager fragmentManager) {
        this.mFragmentManager = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        FragmentStateManager fragmentStateManagerCreateOrGetFragmentStateManager;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.mFragmentManager);
        }
        if (!NPStringFog.decode(new byte[]{3, 19, 88, 83, 14, 4, 11, 21}, "ea94ca", true, false).equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, NPStringFog.decode(new byte[]{90, 13, 87, 64, 68}, "9a6375", -1.29444077E9d));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Fragment);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(R.styleable.Fragment_android_name);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.Fragment_android_id, -1);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.Fragment_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue == null || !FragmentFactory.isFragmentClass(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + NPStringFog.decode(new byte[]{95, 68, 41, 68, 21, 17, 69, 23, 20, 84, 5, 12, 3, 29, 68, 68, 8, 12, 20, 17, 1, 17, 7, 11, 1, 22, 11, 88, 2, 95, 12, 0, 72, 17, 7, 11, 1, 22, 11, 88, 2, 95, 17, 5, 3, 29, 70, 10, 23, 68, 12, 80, 16, 0, 69, 5, 68, 65, 7, 23, 0, 10, 16, 17, 17, 12, 17, 12, 68, 80, 8, 69, 12, 0, 68, 87, 9, 23, 69}, "edd1fe", 1478856657L) + attributeValue);
        }
        Fragment fragmentFindFragmentById = resourceId != -1 ? this.mFragmentManager.findFragmentById(resourceId) : null;
        if (fragmentFindFragmentById == null && string != null) {
            fragmentFindFragmentById = this.mFragmentManager.findFragmentByTag(string);
        }
        if (fragmentFindFragmentById == null && id != -1) {
            fragmentFindFragmentById = this.mFragmentManager.findFragmentById(id);
        }
        if (fragmentFindFragmentById == null) {
            Fragment fragmentInstantiate = this.mFragmentManager.getFragmentFactory().instantiate(context.getClassLoader(), attributeValue);
            fragmentInstantiate.mFromLayout = true;
            fragmentInstantiate.mFragmentId = resourceId != 0 ? resourceId : id;
            fragmentInstantiate.mContainerId = id;
            fragmentInstantiate.mTag = string;
            fragmentInstantiate.mInLayout = true;
            fragmentInstantiate.mFragmentManager = this.mFragmentManager;
            fragmentInstantiate.mHost = this.mFragmentManager.getHost();
            fragmentInstantiate.onInflate(this.mFragmentManager.getHost().getContext(), attributeSet, fragmentInstantiate.mSavedFragmentState);
            FragmentStateManager fragmentStateManagerAddFragment = this.mFragmentManager.addFragment(fragmentInstantiate);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(TAG, NPStringFog.decode(new byte[]{126, 19, 86, 5, 12, 84, 86, 21, 23}, "8a7ba1", -5.0750346E8f) + fragmentInstantiate + NPStringFog.decode(new byte[]{17, 94, 84, 16, 19, 3, 84, 83, 91, 67, 90, 15, 87, 90, 84, 23, 86, 5, 17, 64, 92, 2, 19, 21, 89, 83, 21, 95, 85, 19, 80, 81, 88, 6, 93, 21, 15, 22, 65, 2, 84, 91, 17, 95, 81, 94, 3, 25}, "165c3a", -1.3379771E9f) + Integer.toHexString(resourceId));
                fragmentStateManagerCreateOrGetFragmentStateManager = fragmentStateManagerAddFragment;
                fragmentFindFragmentById = fragmentInstantiate;
            } else {
                fragmentStateManagerCreateOrGetFragmentStateManager = fragmentStateManagerAddFragment;
                fragmentFindFragmentById = fragmentInstantiate;
            }
        } else {
            if (fragmentFindFragmentById.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + NPStringFog.decode(new byte[]{91, 24, 37, 71, 64, 88, 8, 91, 0, 70, 85, 20, 8, 92, 65, 2, 72}, "a8a204", false, true) + Integer.toHexString(resourceId) + NPStringFog.decode(new byte[]{25, 19, 70, 80, 83, 16}, "532140", false) + string + NPStringFog.decode(new byte[]{29, 65, 12, 68, 21, 19, 80, 19, 6, 88, 65, 67, 88, 5, 67, 6, 77}, "1ac65c", -12829) + Integer.toHexString(id) + NPStringFog.decode(new byte[]{22, 79, 15, 22, 12, 18, 87, 86, 9, 22, 12, 87, 68, 24, 0, 16, 5, 85, 91, 93, 8, 22, 68, 84, 89, 74, 70}, "68fbd2", 6993) + attributeValue);
            }
            fragmentFindFragmentById.mInLayout = true;
            fragmentFindFragmentById.mFragmentManager = this.mFragmentManager;
            fragmentFindFragmentById.mHost = this.mFragmentManager.getHost();
            fragmentFindFragmentById.onInflate(this.mFragmentManager.getHost().getContext(), attributeSet, fragmentFindFragmentById.mSavedFragmentState);
            fragmentStateManagerCreateOrGetFragmentStateManager = this.mFragmentManager.createOrGetFragmentStateManager(fragmentFindFragmentById);
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(TAG, NPStringFog.decode(new byte[]{97, 7, 23, 0, 81, 89, 86, 6, 67, 39, 74, 86, 84, 15, 6, 15, 76, 23}, "3bca87", -1.9169729E9f) + fragmentFindFragmentById + NPStringFog.decode(new byte[]{70, 93, 85, 21, 67, 6, 3, 80, 90, 70, 17, 1, 75, 84, 64, 18, 2, 7, 14, 80, 80, 70, 21, 13, 7, 21, 64, 14, 6, 68, 90, 83, 70, 7, 4, 9, 3, 91, 64, 88, 67, 16, 7, 82, 14, 70, 10, 0, 91, 5, 76}, "f54fcd", 8.345683E8f) + Integer.toHexString(resourceId));
            }
        }
        fragmentFindFragmentById.mContainer = (ViewGroup) view;
        fragmentStateManagerCreateOrGetFragmentStateManager.moveToExpectedState();
        fragmentStateManagerCreateOrGetFragmentStateManager.ensureInflatedView();
        if (fragmentFindFragmentById.mView == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 19, 85, 84, 89, 81, 91, 21, 20}, "5a4344", -7.82368595E8d) + attributeValue + NPStringFog.decode(new byte[]{19, 92, 11, 86, 66, 93, 92, 76, 66, 81, 16, 86, 82, 76, 7, 18, 3, 19, 69, 81, 7, 69, 76}, "38b2b3", -7.11913055E8d));
        }
        if (resourceId != 0) {
            fragmentFindFragmentById.mView.setId(resourceId);
        }
        if (fragmentFindFragmentById.mView.getTag() == null) {
            fragmentFindFragmentById.mView.setTag(string);
        }
        fragmentFindFragmentById.mView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener(this, fragmentStateManagerCreateOrGetFragmentStateManager) { // from class: androidx.fragment.app.FragmentLayoutInflaterFactory.1
            final FragmentLayoutInflaterFactory this$0;
            final FragmentStateManager val$fragmentStateManager;

            {
                this.this$0 = this;
                this.val$fragmentStateManager = fragmentStateManagerCreateOrGetFragmentStateManager;
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                Fragment fragment = this.val$fragmentStateManager.getFragment();
                this.val$fragmentStateManager.moveToExpectedState();
                SpecialEffectsController.getOrCreateController((ViewGroup) fragment.mView.getParent(), this.this$0.mFragmentManager).forceCompleteAllOperations();
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
            }
        });
        return fragmentFindFragmentById.mView;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}

package androidx.lifecycle;

import android.view.View;
import androidx.lifecycle.viewmodel.R;

/* JADX INFO: loaded from: classes15.dex */
public class ViewTreeViewModelStoreOwner {
    private ViewTreeViewModelStoreOwner() {
    }

    public static ViewModelStoreOwner get(View view) {
        ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) view.getTag(R.id.view_tree_view_model_store_owner);
        if (viewModelStoreOwner != null) {
            return viewModelStoreOwner;
        }
        Object parent = view.getParent();
        ViewModelStoreOwner viewModelStoreOwner2 = viewModelStoreOwner;
        while (viewModelStoreOwner2 == null && (parent instanceof View)) {
            View view2 = (View) parent;
            viewModelStoreOwner2 = (ViewModelStoreOwner) view2.getTag(R.id.view_tree_view_model_store_owner);
            parent = view2.getParent();
        }
        return viewModelStoreOwner2;
    }

    public static void set(View view, ViewModelStoreOwner viewModelStoreOwner) {
        view.setTag(R.id.view_tree_view_model_store_owner, viewModelStoreOwner);
    }
}

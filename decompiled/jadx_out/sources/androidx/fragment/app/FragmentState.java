package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes31.dex */
final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Parcelable.Creator<FragmentState>() { // from class: androidx.fragment.app.FragmentState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    };
    final Bundle mArguments;
    final String mClassName;
    final int mContainerId;
    final boolean mDetached;
    final int mFragmentId;
    final boolean mFromLayout;
    final boolean mHidden;
    final int mMaxLifecycleState;
    final boolean mRemoving;
    final boolean mRetainInstance;
    Bundle mSavedFragmentState;
    final String mTag;
    final String mWho;

    FragmentState(Parcel parcel) {
        this.mClassName = parcel.readString();
        this.mWho = parcel.readString();
        this.mFromLayout = parcel.readInt() != 0;
        this.mFragmentId = parcel.readInt();
        this.mContainerId = parcel.readInt();
        this.mTag = parcel.readString();
        this.mRetainInstance = parcel.readInt() != 0;
        this.mRemoving = parcel.readInt() != 0;
        this.mDetached = parcel.readInt() != 0;
        this.mArguments = parcel.readBundle();
        this.mHidden = parcel.readInt() != 0;
        this.mSavedFragmentState = parcel.readBundle();
        this.mMaxLifecycleState = parcel.readInt();
    }

    FragmentState(Fragment fragment) {
        this.mClassName = fragment.getClass().getName();
        this.mWho = fragment.mWho;
        this.mFromLayout = fragment.mFromLayout;
        this.mFragmentId = fragment.mFragmentId;
        this.mContainerId = fragment.mContainerId;
        this.mTag = fragment.mTag;
        this.mRetainInstance = fragment.mRetainInstance;
        this.mRemoving = fragment.mRemoving;
        this.mDetached = fragment.mDetached;
        this.mArguments = fragment.mArguments;
        this.mHidden = fragment.mHidden;
        this.mMaxLifecycleState = fragment.mMaxState.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(NPStringFog.decode(new byte[]{127, 65, 81, 85, 85, 1, 87, 71, 99, 70, 89, 16, 92, 72}, "93028d", 431672962L));
        sb.append(this.mClassName);
        sb.append(NPStringFog.decode(new byte[]{21, 76}, "5db705", true));
        sb.append(this.mWho);
        sb.append(NPStringFog.decode(new byte[]{24, 78, 8}, "1323b3", true));
        if (this.mFromLayout) {
            sb.append(NPStringFog.decode(new byte[]{69, 80, 22, 86, 94, 120, 4, 79, 11, 76, 71}, "e6d934", false, false));
        }
        if (this.mContainerId != 0) {
            sb.append(NPStringFog.decode(new byte[]{16, 95, 93, 95, 7, 73}, "069b71", -6.0779264E8f));
            sb.append(Integer.toHexString(this.mContainerId));
        }
        String str = this.mTag;
        if (str != null && !str.isEmpty()) {
            sb.append(NPStringFog.decode(new byte[]{16, 22, 84, 4, 95}, "0b5cbf", false));
            sb.append(this.mTag);
        }
        if (this.mRetainInstance) {
            sb.append(NPStringFog.decode(new byte[]{19, 70, 3, 64, 88, 15, 93, 125, 8, 71, 77, 7, 93, 87, 3}, "34f49f", 6325));
        }
        if (this.mRemoving) {
            sb.append(NPStringFog.decode(new byte[]{67, 75, 92, 8, 88, 16, 10, 87, 94}, "c99e7f", -27377));
        }
        if (this.mDetached) {
            sb.append(NPStringFog.decode(new byte[]{69, 82, 84, 67, 83, 80, 13, 83, 85}, "e61723", 1.06839059E9d));
        }
        if (this.mHidden) {
            sb.append(NPStringFog.decode(new byte[]{17, 13, 8, 92, 85, 7, 95}, "1ea81b", true, true));
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mClassName);
        parcel.writeString(this.mWho);
        parcel.writeInt(this.mFromLayout ? 1 : 0);
        parcel.writeInt(this.mFragmentId);
        parcel.writeInt(this.mContainerId);
        parcel.writeString(this.mTag);
        parcel.writeInt(this.mRetainInstance ? 1 : 0);
        parcel.writeInt(this.mRemoving ? 1 : 0);
        parcel.writeInt(this.mDetached ? 1 : 0);
        parcel.writeBundle(this.mArguments);
        parcel.writeInt(this.mHidden ? 1 : 0);
        parcel.writeBundle(this.mSavedFragmentState);
        parcel.writeInt(this.mMaxLifecycleState);
    }
}

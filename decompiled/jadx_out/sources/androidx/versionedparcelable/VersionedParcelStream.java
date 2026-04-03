package androidx.versionedparcelable;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcelable;
import androidx.collection.ArrayMap;
import androidx.core.internal.view.SupportMenu;
import androidx.versionedparcelable.VersionedParcel;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes14.dex */
class VersionedParcelStream extends VersionedParcel {
    private static final int TYPE_BOOLEAN = 5;
    private static final int TYPE_BOOLEAN_ARRAY = 6;
    private static final int TYPE_DOUBLE = 7;
    private static final int TYPE_DOUBLE_ARRAY = 8;
    private static final int TYPE_FLOAT = 13;
    private static final int TYPE_FLOAT_ARRAY = 14;
    private static final int TYPE_INT = 9;
    private static final int TYPE_INT_ARRAY = 10;
    private static final int TYPE_LONG = 11;
    private static final int TYPE_LONG_ARRAY = 12;
    private static final int TYPE_NULL = 0;
    private static final int TYPE_STRING = 3;
    private static final int TYPE_STRING_ARRAY = 4;
    private static final int TYPE_SUB_BUNDLE = 1;
    private static final int TYPE_SUB_PERSISTABLE_BUNDLE = 2;
    private static final Charset UTF_16 = Charset.forName(NPStringFog.decode(new byte[]{98, 99, 113, 29, 4, 85}, "77705c", 1220041362L));
    int mCount;
    private DataInputStream mCurrentInput;
    private DataOutputStream mCurrentOutput;
    private FieldBuffer mFieldBuffer;
    private int mFieldId;
    int mFieldSize;
    private boolean mIgnoreParcelables;
    private final DataInputStream mMasterInput;
    private final DataOutputStream mMasterOutput;

    private static class FieldBuffer {
        final DataOutputStream mDataStream;
        private final int mFieldId;
        final ByteArrayOutputStream mOutput;
        private final DataOutputStream mTarget;

        FieldBuffer(int i, DataOutputStream dataOutputStream) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.mOutput = byteArrayOutputStream;
            this.mDataStream = new DataOutputStream(byteArrayOutputStream);
            this.mFieldId = i;
            this.mTarget = dataOutputStream;
        }

        void flushField() throws IOException {
            this.mDataStream.flush();
            int size = this.mOutput.size();
            this.mTarget.writeInt((size >= 65535 ? 65535 : size) | (this.mFieldId << 16));
            if (size >= 65535) {
                this.mTarget.writeInt(size);
            }
            this.mOutput.writeTo(this.mTarget);
        }
    }

    public VersionedParcelStream(InputStream inputStream, OutputStream outputStream) {
        this(inputStream, outputStream, new ArrayMap(), new ArrayMap(), new ArrayMap());
    }

    private VersionedParcelStream(InputStream inputStream, OutputStream outputStream, ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.mCount = 0;
        this.mFieldId = -1;
        this.mFieldSize = -1;
        DataInputStream dataInputStream = inputStream != null ? new DataInputStream(new FilterInputStream(this, inputStream) { // from class: androidx.versionedparcelable.VersionedParcelStream.1
            final VersionedParcelStream this$0;

            {
                this.this$0 = this;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read() throws IOException {
                if (this.this$0.mFieldSize != -1 && this.this$0.mCount >= this.this$0.mFieldSize) {
                    throw new IOException();
                }
                int i = super.read();
                this.this$0.mCount++;
                return i;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public int read(byte[] bArr, int i, int i2) throws IOException {
                if (this.this$0.mFieldSize != -1 && this.this$0.mCount >= this.this$0.mFieldSize) {
                    throw new IOException();
                }
                int i3 = super.read(bArr, i, i2);
                if (i3 > 0) {
                    this.this$0.mCount += i3;
                }
                return i3;
            }

            @Override // java.io.FilterInputStream, java.io.InputStream
            public long skip(long j) throws IOException {
                if (this.this$0.mFieldSize != -1 && this.this$0.mCount >= this.this$0.mFieldSize) {
                    throw new IOException();
                }
                long jSkip = super.skip(j);
                if (jSkip > 0) {
                    this.this$0.mCount += (int) jSkip;
                }
                return jSkip;
            }
        }) : null;
        this.mMasterInput = dataInputStream;
        DataOutputStream dataOutputStream = outputStream != null ? new DataOutputStream(outputStream) : null;
        this.mMasterOutput = dataOutputStream;
        this.mCurrentInput = dataInputStream;
        this.mCurrentOutput = dataOutputStream;
    }

    private void readObject(int i, String str, Bundle bundle) {
        switch (i) {
            case 0:
                bundle.putParcelable(str, null);
                return;
            case 1:
                bundle.putBundle(str, readBundle());
                return;
            case 2:
                bundle.putBundle(str, readBundle());
                return;
            case 3:
                bundle.putString(str, readString());
                return;
            case 4:
                bundle.putStringArray(str, (String[]) readArray(new String[0]));
                return;
            case 5:
                bundle.putBoolean(str, readBoolean());
                return;
            case 6:
                bundle.putBooleanArray(str, readBooleanArray());
                return;
            case 7:
                bundle.putDouble(str, readDouble());
                return;
            case 8:
                bundle.putDoubleArray(str, readDoubleArray());
                return;
            case 9:
                bundle.putInt(str, readInt());
                return;
            case 10:
                bundle.putIntArray(str, readIntArray());
                return;
            case 11:
                bundle.putLong(str, readLong());
                return;
            case 12:
                bundle.putLongArray(str, readLongArray());
                return;
            case 13:
                bundle.putFloat(str, readFloat());
                return;
            case 14:
                bundle.putFloatArray(str, readFloatArray());
                return;
            default:
                throw new RuntimeException(NPStringFog.decode(new byte[]{101, 87, 10, 12, 86, 18, 94, 25, 21, 27, 73, 0, 16}, "09ab9e", true, false) + i);
        }
    }

    private void writeObject(Object obj) {
        if (obj == null) {
            writeInt(0);
            return;
        }
        if (obj instanceof Bundle) {
            writeInt(1);
            writeBundle((Bundle) obj);
            return;
        }
        if (obj instanceof String) {
            writeInt(3);
            writeString((String) obj);
            return;
        }
        if (obj instanceof String[]) {
            writeInt(4);
            writeArray((String[]) obj);
            return;
        }
        if (obj instanceof Boolean) {
            writeInt(5);
            writeBoolean(((Boolean) obj).booleanValue());
            return;
        }
        if (obj instanceof boolean[]) {
            writeInt(6);
            writeBooleanArray((boolean[]) obj);
            return;
        }
        if (obj instanceof Double) {
            writeInt(7);
            writeDouble(((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof double[]) {
            writeInt(8);
            writeDoubleArray((double[]) obj);
            return;
        }
        if (obj instanceof Integer) {
            writeInt(9);
            writeInt(((Integer) obj).intValue());
            return;
        }
        if (obj instanceof int[]) {
            writeInt(10);
            writeIntArray((int[]) obj);
            return;
        }
        if (obj instanceof Long) {
            writeInt(11);
            writeLong(((Long) obj).longValue());
            return;
        }
        if (obj instanceof long[]) {
            writeInt(12);
            writeLongArray((long[]) obj);
            return;
        }
        if (obj instanceof Float) {
            writeInt(13);
            writeFloat(((Float) obj).floatValue());
        } else if (obj instanceof float[]) {
            writeInt(14);
            writeFloatArray((float[]) obj);
        } else {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{102, 11, 75, 68, 17, 65, 92, 23, 76, 84, 5, 17, 71, 28, 72, 84, 65}, "3e81a1", false) + obj.getClass());
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void closeField() {
        FieldBuffer fieldBuffer = this.mFieldBuffer;
        if (fieldBuffer != null) {
            try {
                if (fieldBuffer.mOutput.size() != 0) {
                    this.mFieldBuffer.flushField();
                }
                this.mFieldBuffer = null;
            } catch (IOException e) {
                throw new VersionedParcel.ParcelException(e);
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected VersionedParcel createSubParcel() {
        return new VersionedParcelStream(this.mCurrentInput, this.mCurrentOutput, this.mReadCache, this.mWriteCache, this.mParcelizerCache);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean isStream() {
        return true;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readBoolean() {
        try {
            return this.mCurrentInput.readBoolean();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public Bundle readBundle() {
        int i = readInt();
        if (i < 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        for (int i2 = 0; i2 < i; i2++) {
            readObject(readInt(), readString(), bundle);
        }
        return bundle;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public byte[] readByteArray() {
        try {
            int i = this.mCurrentInput.readInt();
            if (i <= 0) {
                return null;
            }
            byte[] bArr = new byte[i];
            this.mCurrentInput.readFully(bArr);
            return bArr;
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected CharSequence readCharSequence() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public double readDouble() {
        try {
            return this.mCurrentInput.readDouble();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public boolean readField(int i) {
        while (true) {
            try {
                int i2 = this.mFieldId;
                if (i2 == i) {
                    return true;
                }
                if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                    return false;
                }
                if (this.mCount < this.mFieldSize) {
                    this.mMasterInput.skip(r2 - r1);
                }
                this.mFieldSize = -1;
                int i3 = this.mMasterInput.readInt();
                this.mCount = 0;
                int i4 = i3 & SupportMenu.USER_MASK;
                if (i4 == 65535) {
                    i4 = this.mMasterInput.readInt();
                }
                this.mFieldId = (i3 >> 16) & SupportMenu.USER_MASK;
                this.mFieldSize = i4;
            } catch (IOException e) {
                return false;
            }
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public float readFloat() {
        try {
            return this.mCurrentInput.readFloat();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public int readInt() {
        try {
            return this.mCurrentInput.readInt();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public long readLong() {
        try {
            return this.mCurrentInput.readLong();
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public <T extends Parcelable> T readParcelable() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public String readString() {
        try {
            int i = this.mCurrentInput.readInt();
            if (i <= 0) {
                return null;
            }
            byte[] bArr = new byte[i];
            this.mCurrentInput.readFully(bArr);
            return new String(bArr, UTF_16);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public IBinder readStrongBinder() {
        return null;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setOutputField(int i) {
        closeField();
        FieldBuffer fieldBuffer = new FieldBuffer(i, this.mMasterOutput);
        this.mFieldBuffer = fieldBuffer;
        this.mCurrentOutput = fieldBuffer.mDataStream;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void setSerializationFlags(boolean z, boolean z2) {
        if (!z) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{98, 93, 66, 10, 4, 88, 88, 66, 81, 23, 12, 91, 95, 24, 95, 5, 69, 64, 89, 81, 67, 67, 10, 86, 91, 93, 83, 23, 69, 93, 66, 24, 94, 12, 17, 20, 80, 84, 92, 12, 18, 81, 85}, "180ce4", 23713));
        }
        this.mIgnoreParcelables = z2;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBoolean(boolean z) {
        try {
            this.mCurrentOutput.writeBoolean(z);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeBundle(Bundle bundle) {
        try {
            if (bundle == null) {
                this.mCurrentOutput.writeInt(-1);
                return;
            }
            Set<String> setKeySet = bundle.keySet();
            this.mCurrentOutput.writeInt(setKeySet.size());
            for (String str : setKeySet) {
                writeString(str);
                writeObject(bundle.get(str));
            }
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr) {
        try {
            if (bArr != null) {
                this.mCurrentOutput.writeInt(bArr.length);
                this.mCurrentOutput.write(bArr);
            } else {
                this.mCurrentOutput.writeInt(-1);
            }
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeByteArray(byte[] bArr, int i, int i2) {
        try {
            if (bArr != null) {
                this.mCurrentOutput.writeInt(i2);
                this.mCurrentOutput.write(bArr, i, i2);
            } else {
                this.mCurrentOutput.writeInt(-1);
            }
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    protected void writeCharSequence(CharSequence charSequence) {
        if (!this.mIgnoreParcelables) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{112, 10, 4, 65, 107, 87, 66, 23, 0, 93, 91, 87, 19, 1, 4, 93, 86, 93, 71, 66, 7, 86, 24, 69, 65, 11, 17, 71, 93, 92, 19, 22, 10, 19, 89, 92, 19, 45, 16, 71, 72, 71, 71, 49, 17, 65, 93, 83, 94}, "3be382", 1544805469L));
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeDouble(double d) {
        try {
            this.mCurrentOutput.writeDouble(d);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeFloat(float f) {
        try {
            this.mCurrentOutput.writeFloat(f);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeInt(int i) {
        try {
            this.mCurrentOutput.writeInt(i);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeLong(long j) {
        try {
            this.mCurrentOutput.writeLong(j);
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeParcelable(Parcelable parcelable) {
        if (!this.mIgnoreParcelables) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{52, 86, 23, 5, 1, 84, 5, 85, 9, 3, 23, 24, 7, 86, 11, 8, 11, 76, 68, 85, 0, 70, 19, 74, 13, 67, 17, 3, 10, 24, 16, 88, 69, 7, 10, 24, 43, 66, 17, 22, 17, 76, 55, 67, 23, 3, 5, 85}, "d7efd8", 8.895609E8f));
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeString(String str) {
        try {
            if (str != null) {
                byte[] bytes = str.getBytes(UTF_16);
                this.mCurrentOutput.writeInt(bytes.length);
                this.mCurrentOutput.write(bytes);
            } else {
                this.mCurrentOutput.writeInt(-1);
            }
        } catch (IOException e) {
            throw new VersionedParcel.ParcelException(e);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongBinder(IBinder iBinder) {
        if (!this.mIgnoreParcelables) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{117, 15, 94, 82, 81, 71, 68, 70, 83, 87, 90, 91, 88, 18, 16, 84, 81, 21, 64, 20, 89, 66, 64, 80, 89, 70, 68, 89, 20, 84, 89, 70, 127, 67, 64, 69, 66, 18, 99, 66, 70, 80, 86, 11}, "7f0645", false, true));
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public void writeStrongInterface(IInterface iInterface) {
        if (!this.mIgnoreParcelables) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{32, 89, 92, 7, 82, 19, 17, 16, 81, 2, 89, 15, 13, 68, 18, 1, 82, 65, 21, 66, 91, 23, 67, 4, 12, 16, 70, 12, 23, 0, 12, 16, 125, 22, 67, 17, 23, 68, 97, 23, 69, 4, 3, 93}, "b02c7a", false, true));
        }
    }
}

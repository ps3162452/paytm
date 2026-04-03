package androidx.versionedparcelable;

import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.NetworkOnMainThreadException;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseBooleanArray;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes14.dex */
public abstract class VersionedParcel {
    private static final int EX_BAD_PARCELABLE = -2;
    private static final int EX_ILLEGAL_ARGUMENT = -3;
    private static final int EX_ILLEGAL_STATE = -5;
    private static final int EX_NETWORK_MAIN_THREAD = -6;
    private static final int EX_NULL_POINTER = -4;
    private static final int EX_PARCELABLE = -9;
    private static final int EX_SECURITY = -1;
    private static final int EX_UNSUPPORTED_OPERATION = -7;
    private static final String TAG = NPStringFog.decode(new byte[]{53, 81, 20, 16, 10, 93, 13, 81, 2, 51, 2, 64, 0, 81, 10}, "c4fcc2", false, true);
    private static final int TYPE_BINDER = 5;
    private static final int TYPE_FLOAT = 8;
    private static final int TYPE_INTEGER = 7;
    private static final int TYPE_PARCELABLE = 2;
    private static final int TYPE_SERIALIZABLE = 3;
    private static final int TYPE_STRING = 4;
    private static final int TYPE_VERSIONED_PARCELABLE = 1;
    protected final ArrayMap<String, Class> mParcelizerCache;
    protected final ArrayMap<String, Method> mReadCache;
    protected final ArrayMap<String, Method> mWriteCache;

    public static class ParcelException extends RuntimeException {
        public ParcelException(Throwable th) {
            super(th);
        }
    }

    public VersionedParcel(ArrayMap<String, Method> arrayMap, ArrayMap<String, Method> arrayMap2, ArrayMap<String, Class> arrayMap3) {
        this.mReadCache = arrayMap;
        this.mWriteCache = arrayMap2;
        this.mParcelizerCache = arrayMap3;
    }

    private Exception createException(int i, String str) {
        switch (i) {
            case -9:
                return (Exception) readParcelable();
            case -8:
            default:
                return new RuntimeException(NPStringFog.decode(new byte[]{54, 89, 93, 91, 90, 67, 13, 23, 83, 77, 86, 81, 19, 67, 95, 90, 91, 20, 0, 88, 82, 80, 15, 20}, "c76554", true, false) + i + NPStringFog.decode(new byte[]{16, 9, 74, 85, 25}, "0d9298", true, true) + str);
            case -7:
                return new UnsupportedOperationException(str);
            case -6:
                return new NetworkOnMainThreadException();
            case -5:
                return new IllegalStateException(str);
            case -4:
                return new NullPointerException(str);
            case -3:
                return new IllegalArgumentException(str);
            case -2:
                return new BadParcelableException(str);
            case -1:
                return new SecurityException(str);
        }
    }

    private Class findParcelClass(Class<? extends VersionedParcelable> cls) throws ClassNotFoundException {
        Class cls2 = this.mParcelizerCache.get(cls.getName());
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(String.format(NPStringFog.decode(new byte[]{16, 17, 30, 21, 65, 51, 84, 16, 83, 85, 94, 10, 79, 7, 66}, "5b002c", 16787), cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.mParcelizerCache.put(cls.getName(), cls3);
        return cls3;
    }

    private Method getReadMethod(String str) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.mReadCache.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod(NPStringFog.decode(new byte[]{20, 83, 86, 81}, "f675ad", -28943), VersionedParcel.class);
        this.mReadCache.put(str, declaredMethod);
        return declaredMethod;
    }

    protected static Throwable getRootCause(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    private <T> int getType(T t) {
        if (t instanceof String) {
            return 4;
        }
        if (t instanceof Parcelable) {
            return 2;
        }
        if (t instanceof VersionedParcelable) {
            return 1;
        }
        if (t instanceof Serializable) {
            return 3;
        }
        if (t instanceof IBinder) {
            return 5;
        }
        if (t instanceof Integer) {
            return 7;
        }
        if (t instanceof Float) {
            return 8;
        }
        throw new IllegalArgumentException(t.getClass().getName() + NPStringFog.decode(new byte[]{19, 84, 5, 12, 15, 12, 71, 23, 6, 7, 65, 53, 86, 69, 23, 11, 14, 13, 86, 83, 52, 3, 19, 0, 86, 91, 8, 7, 5}, "37dbac", 1402299878L));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Method getWriteMethod(Class cls) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException {
        Method method = this.mWriteCache.get(cls.getName());
        if (method != null) {
            return method;
        }
        Class clsFindParcelClass = findParcelClass(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsFindParcelClass.getDeclaredMethod(NPStringFog.decode(new byte[]{65, 23, 92, 69, 4}, "6e51ad", -9.36929525E8d), cls, VersionedParcel.class);
        this.mWriteCache.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private <T, S extends Collection<T>> S readCollection(S s) {
        int i = readInt();
        if (i < 0) {
            return null;
        }
        if (i == 0) {
            return s;
        }
        int i2 = readInt();
        if (i < 0) {
            return null;
        }
        switch (i2) {
            case 1:
                for (int i3 = i; i3 > 0; i3--) {
                    s.add(readVersionedParcelable());
                }
                return s;
            case 2:
                while (i > 0) {
                    s.add(readParcelable());
                    i--;
                }
                return s;
            case 3:
                while (i > 0) {
                    s.add(readSerializable());
                    i--;
                }
                return s;
            case 4:
                while (i > 0) {
                    s.add(readString());
                    i--;
                }
                return s;
            case 5:
                while (i > 0) {
                    s.add(readStrongBinder());
                    i--;
                }
                return s;
            default:
                return s;
        }
    }

    private Exception readException(int i, String str) {
        return createException(i, str);
    }

    private int readExceptionCode() {
        return readInt();
    }

    private <T> void writeCollection(Collection<T> collection) {
        if (collection == null) {
            writeInt(-1);
        }
        int size = collection.size();
        writeInt(size);
        if (size > 0) {
            int type = getType(collection.iterator().next());
            writeInt(type);
            switch (type) {
                case 1:
                    Iterator<T> it = collection.iterator();
                    while (it.hasNext()) {
                        writeVersionedParcelable((VersionedParcelable) it.next());
                    }
                    break;
                case 2:
                    Iterator<T> it2 = collection.iterator();
                    while (it2.hasNext()) {
                        writeParcelable((Parcelable) it2.next());
                    }
                    break;
                case 3:
                    Iterator<T> it3 = collection.iterator();
                    while (it3.hasNext()) {
                        writeSerializable((Serializable) it3.next());
                    }
                    break;
                case 4:
                    Iterator<T> it4 = collection.iterator();
                    while (it4.hasNext()) {
                        writeString((String) it4.next());
                    }
                    break;
                case 5:
                    Iterator<T> it5 = collection.iterator();
                    while (it5.hasNext()) {
                        writeStrongBinder((IBinder) it5.next());
                    }
                    break;
                case 7:
                    Iterator<T> it6 = collection.iterator();
                    while (it6.hasNext()) {
                        writeInt(((Integer) it6.next()).intValue());
                    }
                    break;
                case 8:
                    Iterator<T> it7 = collection.iterator();
                    while (it7.hasNext()) {
                        writeFloat(((Float) it7.next()).floatValue());
                    }
                    break;
            }
        }
    }

    private <T> void writeCollection(Collection<T> collection, int i) {
        setOutputField(i);
        writeCollection(collection);
    }

    private void writeSerializable(Serializable serializable) {
        if (serializable == null) {
            writeString(null);
            return;
        }
        String name = serializable.getClass().getName();
        writeString(name);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(serializable);
            objectOutputStream.close();
            writeByteArray(byteArrayOutputStream.toByteArray());
        } catch (IOException e) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{99, 92, 70, 69, 11, 13, 91, 92, 80, 102, 3, 16, 86, 92, 88, 87, 0, 14, 80, 25, 81, 88, 1, 13, 64, 87, 64, 83, 16, 7, 81, 25, 125, 121, 39, 26, 86, 92, 68, 66, 11, 13, 91, 25, 67, 68, 11, 22, 92, 87, 83, 22, 17, 7, 71, 80, 85, 90, 11, 24, 84, 91, 88, 83, 66, 13, 87, 83, 81, 85, 22, 66, 29, 87, 85, 91, 7, 66, 8, 25}, "5946bb", -2.0799217E9f) + name + NPStringFog.decode(new byte[]{72}, "ae63f2", 22753), e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void writeVersionedParcelableCreator(VersionedParcelable versionedParcelable) {
        try {
            writeString(findParcelClass(versionedParcelable.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(versionedParcelable.getClass().getSimpleName() + NPStringFog.decode(new byte[]{66, 82, 89, 83, 74, 68, 12, 89, 66, 22, 81, 5, 20, 83, 22, 87, 25, 52, 3, 68, 85, 83, 85, 13, 24, 83, 68}, "b6669d", true), e);
        }
    }

    protected abstract void closeField();

    protected abstract VersionedParcel createSubParcel();

    public boolean isStream() {
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    protected <T> T[] readArray(T[] tArr) {
        int i = readInt();
        if (i < 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(i);
        if (i != 0) {
            int i2 = readInt();
            if (i < 0) {
                return null;
            }
            switch (i2) {
                case 1:
                    for (int i3 = i; i3 > 0; i3--) {
                        arrayList.add(readVersionedParcelable());
                    }
                    break;
                case 2:
                    while (i > 0) {
                        arrayList.add(readParcelable());
                        i--;
                    }
                    break;
                case 3:
                    while (i > 0) {
                        arrayList.add(readSerializable());
                        i--;
                    }
                    break;
                case 4:
                    while (i > 0) {
                        arrayList.add(readString());
                        i--;
                    }
                    break;
                case 5:
                    while (i > 0) {
                        arrayList.add(readStrongBinder());
                        i--;
                    }
                    break;
            }
        }
        return (T[]) arrayList.toArray(tArr);
    }

    public <T> T[] readArray(T[] tArr, int i) {
        return !readField(i) ? tArr : (T[]) readArray(tArr);
    }

    protected abstract boolean readBoolean();

    public boolean readBoolean(boolean z, int i) {
        return !readField(i) ? z : readBoolean();
    }

    protected boolean[] readBooleanArray() {
        int i = readInt();
        if (i < 0) {
            return null;
        }
        boolean[] zArr = new boolean[i];
        for (int i2 = 0; i2 < i; i2++) {
            zArr[i2] = readInt() != 0;
        }
        return zArr;
    }

    public boolean[] readBooleanArray(boolean[] zArr, int i) {
        return !readField(i) ? zArr : readBooleanArray();
    }

    protected abstract Bundle readBundle();

    public Bundle readBundle(Bundle bundle, int i) {
        return !readField(i) ? bundle : readBundle();
    }

    public byte readByte(byte b, int i) {
        return !readField(i) ? b : (byte) (readInt() & 255);
    }

    protected abstract byte[] readByteArray();

    public byte[] readByteArray(byte[] bArr, int i) {
        return !readField(i) ? bArr : readByteArray();
    }

    public char[] readCharArray(char[] cArr, int i) {
        if (!readField(i)) {
            return cArr;
        }
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        char[] cArr2 = new char[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            cArr2[i3] = (char) readInt();
        }
        return cArr2;
    }

    protected abstract CharSequence readCharSequence();

    public CharSequence readCharSequence(CharSequence charSequence, int i) {
        return !readField(i) ? charSequence : readCharSequence();
    }

    protected abstract double readDouble();

    public double readDouble(double d, int i) {
        return !readField(i) ? d : readDouble();
    }

    protected double[] readDoubleArray() {
        int i = readInt();
        if (i < 0) {
            return null;
        }
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = readDouble();
        }
        return dArr;
    }

    public double[] readDoubleArray(double[] dArr, int i) {
        return !readField(i) ? dArr : readDoubleArray();
    }

    public Exception readException(Exception exc, int i) {
        int exceptionCode;
        return (readField(i) && (exceptionCode = readExceptionCode()) != 0) ? readException(exceptionCode, readString()) : exc;
    }

    protected abstract boolean readField(int i);

    protected abstract float readFloat();

    public float readFloat(float f, int i) {
        return !readField(i) ? f : readFloat();
    }

    protected float[] readFloatArray() {
        int i = readInt();
        if (i < 0) {
            return null;
        }
        float[] fArr = new float[i];
        for (int i2 = 0; i2 < i; i2++) {
            fArr[i2] = readFloat();
        }
        return fArr;
    }

    public float[] readFloatArray(float[] fArr, int i) {
        return !readField(i) ? fArr : readFloatArray();
    }

    protected <T extends VersionedParcelable> T readFromParcel(String str, VersionedParcel versionedParcel) {
        try {
            return (T) getReadMethod(str).invoke(null, versionedParcel);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{103, 82, 20, 23, 89, 10, 95, 82, 2, 52, 81, 23, 82, 82, 10, 68, 85, 11, 82, 88, 19, 10, 68, 0, 67, 82, 2, 68, 115, 9, 80, 68, 21, 42, 95, 17, 119, 88, 19, 10, 84, 32, 73, 84, 3, 20, 68, 12, 94, 89}, "17fd0e", false), e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{55, 7, 65, 17, 95, 89, 15, 7, 87, 50, 87, 68, 2, 7, 95, 66, 83, 88, 2, 13, 70, 12, 66, 83, 19, 7, 87, 66, 127, 90, 13, 7, 84, 3, 90, 119, 2, 1, 86, 17, 69, 115, 25, 1, 86, 18, 66, 95, 14, 12}, "ab3b66", -18251), e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{98, 87, 75, 70, 95, 12, 90, 87, 93, 101, 87, 17, 87, 87, 85, 21, 83, 13, 87, 93, 76, 91, 66, 6, 70, 87, 93, 21, 120, 12, 103, 71, 90, 93, 123, 6, 64, 90, 86, 81, 115, 27, 87, 87, 73, 65, 95, 12, 90}, "42956c", -1462744008L), e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException(NPStringFog.decode(new byte[]{96, 83, 64, 66, 10, 90, 88, 83, 86, 97, 2, 71, 85, 83, 94, 17, 6, 91, 85, 89, 71, 95, 23, 80, 68, 83, 86, 17, 42, 91, 64, 89, 81, 80, 23, 92, 89, 88, 102, 80, 17, 82, 83, 66, 119, 73, 0, 80, 70, 66, 91, 94, 13}, "6621c5", true), e4);
        }
    }

    protected abstract int readInt();

    public int readInt(int i, int i2) {
        return !readField(i2) ? i : readInt();
    }

    protected int[] readIntArray() {
        int i = readInt();
        if (i < 0) {
            return null;
        }
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = readInt();
        }
        return iArr;
    }

    public int[] readIntArray(int[] iArr, int i) {
        return !readField(i) ? iArr : readIntArray();
    }

    public <T> List<T> readList(List<T> list, int i) {
        return !readField(i) ? list : (List) readCollection(new ArrayList());
    }

    protected abstract long readLong();

    public long readLong(long j, int i) {
        return !readField(i) ? j : readLong();
    }

    protected long[] readLongArray() {
        int i = readInt();
        if (i < 0) {
            return null;
        }
        long[] jArr = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            jArr[i2] = readLong();
        }
        return jArr;
    }

    public long[] readLongArray(long[] jArr, int i) {
        return !readField(i) ? jArr : readLongArray();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K, V> Map<K, V> readMap(Map<K, V> map, int i) {
        if (!readField(i)) {
            return map;
        }
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        ArrayMap arrayMap = new ArrayMap();
        if (i2 == 0) {
            return arrayMap;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        readCollection(arrayList);
        readCollection(arrayList2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayMap.put(arrayList.get(i3), arrayList2.get(i3));
        }
        return arrayMap;
    }

    protected abstract <T extends Parcelable> T readParcelable();

    public <T extends Parcelable> T readParcelable(T t, int i) {
        return !readField(i) ? t : (T) readParcelable();
    }

    protected Serializable readSerializable() {
        String string = readString();
        if (string == null) {
            return null;
        }
        try {
            return (Serializable) new ObjectInputStream(this, new ByteArrayInputStream(readByteArray())) { // from class: androidx.versionedparcelable.VersionedParcel.1
                final VersionedParcel this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.io.ObjectInputStream
                protected Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws ClassNotFoundException, IOException {
                    Class<?> cls = Class.forName(objectStreamClass.getName(), false, getClass().getClassLoader());
                    return cls != null ? cls : super.resolveClass(objectStreamClass);
                }
            }.readObject();
        } catch (IOException e) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{96, 87, 68, 23, 91, 86, 88, 87, 82, 52, 83, 75, 85, 87, 90, 5, 80, 85, 83, 18, 83, 10, 81, 86, 67, 92, 66, 1, 64, 92, 82, 18, 127, 43, 119, 65, 85, 87, 70, 16, 91, 86, 88, 18, 68, 1, 83, 93, 95, 92, 81, 68, 83, 25, 101, 87, 68, 13, 83, 85, 95, 72, 87, 6, 94, 92, 22, 93, 84, 14, 87, 90, 66, 18, 30, 10, 83, 84, 83, 18, 11, 68}, "626d29", 1711083519L) + string + NPStringFog.decode(new byte[]{16}, "947201", 32645412L), e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{53, 0, 71, 17, 81, 88, 13, 0, 81, 50, 89, 69, 0, 0, 89, 3, 90, 91, 6, 69, 80, 12, 91, 88, 22, 11, 65, 7, 74, 82, 7, 69, 118, 14, 89, 68, 16, 43, 90, 22, 126, 88, 22, 11, 81, 39, 64, 84, 6, 21, 65, 11, 87, 89, 67, 23, 80, 3, 92, 94, 13, 2, 21, 3, 24, 100, 6, 23, 92, 3, 84, 94, 25, 4, 87, 14, 93, 23, 12, 7, 95, 7, 91, 67, 67, 77, 91, 3, 85, 82, 67, 88, 21}, "ce5b87", -7.18201928E8d) + string + NPStringFog.decode(new byte[]{24}, "1e84b9", false, true), e2);
        }
    }

    public <T> Set<T> readSet(Set<T> set, int i) {
        return !readField(i) ? set : (Set) readCollection(new ArraySet());
    }

    public Size readSize(Size size, int i) {
        if (!readField(i)) {
            return size;
        }
        if (readBoolean()) {
            return new Size(readInt(), readInt());
        }
        return null;
    }

    public SizeF readSizeF(SizeF sizeF, int i) {
        if (!readField(i)) {
            return sizeF;
        }
        if (readBoolean()) {
            return new SizeF(readFloat(), readFloat());
        }
        return null;
    }

    public SparseBooleanArray readSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int i) {
        if (!readField(i)) {
            return sparseBooleanArray;
        }
        int i2 = readInt();
        if (i2 < 0) {
            return null;
        }
        SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            sparseBooleanArray2.put(readInt(), readBoolean());
        }
        return sparseBooleanArray2;
    }

    protected abstract String readString();

    public String readString(String str, int i) {
        return !readField(i) ? str : readString();
    }

    protected abstract IBinder readStrongBinder();

    public IBinder readStrongBinder(IBinder iBinder, int i) {
        return !readField(i) ? iBinder : readStrongBinder();
    }

    protected <T extends VersionedParcelable> T readVersionedParcelable() {
        String string = readString();
        if (string == null) {
            return null;
        }
        return (T) readFromParcel(string, createSubParcel());
    }

    public <T extends VersionedParcelable> T readVersionedParcelable(T t, int i) {
        return !readField(i) ? t : (T) readVersionedParcelable();
    }

    protected abstract void setOutputField(int i);

    public void setSerializationFlags(boolean z, boolean z2) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <T> void writeArray(T[] tArr) {
        if (tArr == 0) {
            writeInt(-1);
        }
        int length = tArr.length;
        writeInt(length);
        if (length > 0) {
            int type = getType(tArr[0]);
            writeInt(type);
            switch (type) {
                case 1:
                    for (Object[] objArr : tArr) {
                        writeVersionedParcelable((VersionedParcelable) objArr);
                    }
                    break;
                case 2:
                    for (Object[] objArr2 : tArr) {
                        writeParcelable((Parcelable) objArr2);
                    }
                    break;
                case 3:
                    for (Object[] objArr3 : tArr) {
                        writeSerializable((Serializable) objArr3);
                    }
                    break;
                case 4:
                    for (Object[] objArr4 : tArr) {
                        writeString((String) objArr4);
                    }
                    break;
                case 5:
                    for (Object[] objArr5 : tArr) {
                        writeStrongBinder((IBinder) objArr5);
                    }
                    break;
            }
        }
    }

    public <T> void writeArray(T[] tArr, int i) {
        setOutputField(i);
        writeArray(tArr);
    }

    protected abstract void writeBoolean(boolean z);

    public void writeBoolean(boolean z, int i) {
        setOutputField(i);
        writeBoolean(z);
    }

    protected void writeBooleanArray(boolean[] zArr) {
        if (zArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(zArr.length);
        for (boolean z : zArr) {
            writeInt(z ? 1 : 0);
        }
    }

    public void writeBooleanArray(boolean[] zArr, int i) {
        setOutputField(i);
        writeBooleanArray(zArr);
    }

    protected abstract void writeBundle(Bundle bundle);

    public void writeBundle(Bundle bundle, int i) {
        setOutputField(i);
        writeBundle(bundle);
    }

    public void writeByte(byte b, int i) {
        setOutputField(i);
        writeInt(b);
    }

    protected abstract void writeByteArray(byte[] bArr);

    public void writeByteArray(byte[] bArr, int i) {
        setOutputField(i);
        writeByteArray(bArr);
    }

    protected abstract void writeByteArray(byte[] bArr, int i, int i2);

    public void writeByteArray(byte[] bArr, int i, int i2, int i3) {
        setOutputField(i3);
        writeByteArray(bArr, i, i2);
    }

    public void writeCharArray(char[] cArr, int i) {
        setOutputField(i);
        if (cArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(cArr.length);
        for (char c : cArr) {
            writeInt(c);
        }
    }

    protected abstract void writeCharSequence(CharSequence charSequence);

    public void writeCharSequence(CharSequence charSequence, int i) {
        setOutputField(i);
        writeCharSequence(charSequence);
    }

    protected abstract void writeDouble(double d);

    public void writeDouble(double d, int i) {
        setOutputField(i);
        writeDouble(d);
    }

    protected void writeDoubleArray(double[] dArr) {
        if (dArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(dArr.length);
        for (double d : dArr) {
            writeDouble(d);
        }
    }

    public void writeDoubleArray(double[] dArr, int i) {
        setOutputField(i);
        writeDoubleArray(dArr);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void writeException(Exception exc, int i) {
        setOutputField(i);
        if (exc == 0) {
            writeNoException();
            return;
        }
        int i2 = 0;
        if ((exc instanceof Parcelable) && exc.getClass().getClassLoader() == Parcelable.class.getClassLoader()) {
            i2 = -9;
        } else if (exc instanceof SecurityException) {
            i2 = -1;
        } else if (exc instanceof BadParcelableException) {
            i2 = -2;
        } else if (exc instanceof IllegalArgumentException) {
            i2 = -3;
        } else if (exc instanceof NullPointerException) {
            i2 = -4;
        } else if (exc instanceof IllegalStateException) {
            i2 = -5;
        } else if (exc instanceof NetworkOnMainThreadException) {
            i2 = -6;
        } else if (exc instanceof UnsupportedOperationException) {
            i2 = -7;
        }
        writeInt(i2);
        if (i2 == 0) {
            if (!(exc instanceof RuntimeException)) {
                throw new RuntimeException(exc);
            }
            throw ((RuntimeException) exc);
        }
        writeString(exc.getMessage());
        switch (i2) {
            case -9:
                writeParcelable((Parcelable) exc);
                return;
            default:
                return;
        }
    }

    protected abstract void writeFloat(float f);

    public void writeFloat(float f, int i) {
        setOutputField(i);
        writeFloat(f);
    }

    protected void writeFloatArray(float[] fArr) {
        if (fArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(fArr.length);
        for (float f : fArr) {
            writeFloat(f);
        }
    }

    public void writeFloatArray(float[] fArr, int i) {
        setOutputField(i);
        writeFloatArray(fArr);
    }

    protected abstract void writeInt(int i);

    public void writeInt(int i, int i2) {
        setOutputField(i2);
        writeInt(i);
    }

    protected void writeIntArray(int[] iArr) {
        if (iArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(iArr.length);
        for (int i : iArr) {
            writeInt(i);
        }
    }

    public void writeIntArray(int[] iArr, int i) {
        setOutputField(i);
        writeIntArray(iArr);
    }

    public <T> void writeList(List<T> list, int i) {
        writeCollection(list, i);
    }

    protected abstract void writeLong(long j);

    public void writeLong(long j, int i) {
        setOutputField(i);
        writeLong(j);
    }

    protected void writeLongArray(long[] jArr) {
        if (jArr == null) {
            writeInt(-1);
            return;
        }
        writeInt(jArr.length);
        for (long j : jArr) {
            writeLong(j);
        }
    }

    public void writeLongArray(long[] jArr, int i) {
        setOutputField(i);
        writeLongArray(jArr);
    }

    public <K, V> void writeMap(Map<K, V> map, int i) {
        setOutputField(i);
        if (map == null) {
            writeInt(-1);
            return;
        }
        int size = map.size();
        writeInt(size);
        if (size != 0) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (Map.Entry<K, V> entry : map.entrySet()) {
                arrayList.add(entry.getKey());
                arrayList2.add(entry.getValue());
            }
            writeCollection(arrayList);
            writeCollection(arrayList2);
        }
    }

    protected void writeNoException() {
        writeInt(0);
    }

    protected abstract void writeParcelable(Parcelable parcelable);

    public void writeParcelable(Parcelable parcelable, int i) {
        setOutputField(i);
        writeParcelable(parcelable);
    }

    public void writeSerializable(Serializable serializable, int i) {
        setOutputField(i);
        writeSerializable(serializable);
    }

    public <T> void writeSet(Set<T> set, int i) {
        writeCollection(set, i);
    }

    public void writeSize(Size size, int i) {
        setOutputField(i);
        writeBoolean(size != null);
        if (size != null) {
            writeInt(size.getWidth());
            writeInt(size.getHeight());
        }
    }

    public void writeSizeF(SizeF sizeF, int i) {
        setOutputField(i);
        writeBoolean(sizeF != null);
        if (sizeF != null) {
            writeFloat(sizeF.getWidth());
            writeFloat(sizeF.getHeight());
        }
    }

    public void writeSparseBooleanArray(SparseBooleanArray sparseBooleanArray, int i) {
        setOutputField(i);
        if (sparseBooleanArray == null) {
            writeInt(-1);
            return;
        }
        int size = sparseBooleanArray.size();
        writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            writeInt(sparseBooleanArray.keyAt(i2));
            writeBoolean(sparseBooleanArray.valueAt(i2));
        }
    }

    protected abstract void writeString(String str);

    public void writeString(String str, int i) {
        setOutputField(i);
        writeString(str);
    }

    protected abstract void writeStrongBinder(IBinder iBinder);

    public void writeStrongBinder(IBinder iBinder, int i) {
        setOutputField(i);
        writeStrongBinder(iBinder);
    }

    protected abstract void writeStrongInterface(IInterface iInterface);

    public void writeStrongInterface(IInterface iInterface, int i) {
        setOutputField(i);
        writeStrongInterface(iInterface);
    }

    protected <T extends VersionedParcelable> void writeToParcel(T t, VersionedParcel versionedParcel) {
        try {
            getWriteMethod(t.getClass()).invoke(null, t, versionedParcel);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{51, 0, 65, 22, 15, 88, 11, 0, 87, 53, 7, 69, 6, 0, 95, 69, 3, 89, 6, 10, 70, 11, 18, 82, 23, 0, 87, 69, 37, 91, 4, 22, 64, 43, 9, 67, 35, 10, 70, 11, 2, 114, 29, 6, 86, 21, 18, 94, 10, 11}, "ee3ef7", 1.6779311E9f), e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{97, 84, 23, 69, 13, 12, 89, 84, 1, 102, 5, 17, 84, 84, 9, 22, 1, 13, 84, 94, 16, 88, 16, 6, 69, 84, 1, 22, 45, 15, 91, 84, 2, 87, 8, 34, 84, 82, 0, 69, 23, 38, 79, 82, 0, 70, 16, 10, 88, 95}, "71e6dc", true), e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{55, 3, 23, 67, 89, 95, 15, 3, 1, 96, 81, 66, 2, 3, 9, 16, 85, 94, 2, 9, 16, 94, 68, 85, 19, 3, 1, 16, 126, 95, 50, 19, 6, 88, 125, 85, 21, 14, 10, 84, 117, 72, 2, 3, 21, 68, 89, 95, 15}, "afe000", 796), e3);
        } catch (InvocationTargetException e4) {
            if (!(e4.getCause() instanceof RuntimeException)) {
                throw new RuntimeException(NPStringFog.decode(new byte[]{101, 85, 20, 70, 11, 14, 93, 85, 2, 101, 3, 19, 80, 85, 10, 21, 7, 15, 80, 95, 19, 91, 22, 4, 65, 85, 2, 21, 43, 15, 69, 95, 5, 84, 22, 8, 92, 94, 50, 84, 16, 6, 86, 68, 35, 77, 1, 4, 67, 68, 15, 90, 12}, "30f5ba", 1430719639L), e4);
            }
            throw ((RuntimeException) e4.getCause());
        }
    }

    protected void writeVersionedParcelable(VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            writeString(null);
            return;
        }
        writeVersionedParcelableCreator(versionedParcelable);
        VersionedParcel versionedParcelCreateSubParcel = createSubParcel();
        writeToParcel(versionedParcelable, versionedParcelCreateSubParcel);
        versionedParcelCreateSubParcel.closeField();
    }

    public void writeVersionedParcelable(VersionedParcelable versionedParcelable, int i) {
        setOutputField(i);
        writeVersionedParcelable(versionedParcelable);
    }
}

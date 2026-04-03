package com.google.android.gms.common.data;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public class BitmapTeleporter extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<BitmapTeleporter> CREATOR = new zaa();
    final int zaa;
    ParcelFileDescriptor zab;
    final int zac;
    private Bitmap zad;
    private boolean zae;
    private File zaf;

    BitmapTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor, int i2) {
        this.zaa = i;
        this.zab = parcelFileDescriptor;
        this.zac = i2;
        this.zad = null;
        this.zae = false;
    }

    public BitmapTeleporter(Bitmap bitmap) {
        this.zaa = 1;
        this.zab = null;
        this.zac = 0;
        this.zad = bitmap;
        this.zae = true;
    }

    private static final void zaa(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            Log.w(NPStringFog.decode(new byte[]{117, 8, 66, 9, 89, 19, 99, 4, 90, 1, 72, 12, 69, 21, 83, 22}, "7a6d8c", false, true), NPStringFog.decode(new byte[]{115, 13, 23, 93, 7, 22, 94, 13, 22, 17, 0, 90, 95, 17, 7, 17, 16, 66, 66, 7, 3, 92}, "0bb1c6", 2.20587811E8d), e);
        }
    }

    public Bitmap get() {
        if (!this.zae) {
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream((ParcelFileDescriptor) Preconditions.checkNotNull(this.zab)));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    int i = dataInputStream.readInt();
                    int i2 = dataInputStream.readInt();
                    Bitmap.Config configValueOf = Bitmap.Config.valueOf(dataInputStream.readUTF());
                    dataInputStream.read(bArr);
                    zaa(dataInputStream);
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, configValueOf);
                    bitmapCreateBitmap.copyPixelsFromBuffer(byteBufferWrap);
                    this.zad = bitmapCreateBitmap;
                    this.zae = true;
                } catch (IOException e) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{117, 87, 68, 9, 80, 20, 88, 87, 69, 69, 70, 81, 87, 92, 17, 3, 70, 91, 91, 24, 65, 4, 70, 87, 83, 84, 17, 3, 93, 88, 83, 24, 85, 0, 71, 87, 68, 81, 65, 17, 91, 70}, "681e44", 1.420955574E9d), e);
                }
            } catch (Throwable th) {
                zaa(dataInputStream);
                throw th;
            }
        }
        return this.zad;
    }

    public void release() {
        if (this.zae) {
            return;
        }
        try {
            ((ParcelFileDescriptor) Preconditions.checkNotNull(this.zab)).close();
        } catch (IOException e) {
            Log.w(NPStringFog.decode(new byte[]{118, 10, 23, 11, 84, 72, 96, 6, 15, 3, 69, 87, 70, 23, 6, 20}, "4ccf58", true, false), NPStringFog.decode(new byte[]{32, 88, 66, 85, 2, 65, 13, 88, 67, 25, 5, 13, 12, 68, 82, 25, 54, 39, 39}, "c779fa", 6587), e);
        }
    }

    public void setTempDir(File file) {
        if (file == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{122, 3, 93, 94, 95, 77, 25, 17, 86, 68, 16, 87, 76, 14, 95, 16, 68, 92, 84, 18, 19, 84, 89, 75, 92, 1, 71, 95, 66, 64}, "9b3009", -1.2681588E9f));
        }
        this.zaf = file;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        if (this.zab == null) {
            Bitmap bitmap = (Bitmap) Preconditions.checkNotNull(this.zad);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getRowBytes() * bitmap.getHeight());
            bitmap.copyPixelsToBuffer(byteBufferAllocate);
            byte[] bArrArray = byteBufferAllocate.array();
            File file = this.zaf;
            if (file == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{70, 1, 68, 53, 82, 89, 69, 32, 89, 19, 31, 29, 21, 9, 69, 18, 67, 20, 87, 1, 16, 2, 86, 88, 89, 1, 84, 65, 85, 81, 83, 11, 66, 4, 23, 67, 71, 13, 68, 8, 89, 83, 21, 16, 88, 8, 68, 20, 90, 6, 90, 4, 84, 64, 21, 16, 95, 65, 86, 20, 69, 5, 66, 2, 82, 88}, "5d0a74", true));
            }
            try {
                File fileCreateTempFile = File.createTempFile(NPStringFog.decode(new byte[]{66, 87, 89, 3, 68, 9, 68, 70, 80, 20}, "625f4f", true), NPStringFog.decode(new byte[]{79, 64, 92, 19}, "a41c79", -26091), file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                    this.zab = ParcelFileDescriptor.open(fileCreateTempFile, 268435456);
                    fileCreateTempFile.delete();
                    DataOutputStream dataOutputStream = new DataOutputStream(new BufferedOutputStream(fileOutputStream));
                    try {
                        try {
                            dataOutputStream.writeInt(bArrArray.length);
                            dataOutputStream.writeInt(bitmap.getWidth());
                            dataOutputStream.writeInt(bitmap.getHeight());
                            dataOutputStream.writeUTF(bitmap.getConfig().toString());
                            dataOutputStream.write(bArrArray);
                        } catch (IOException e) {
                            throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 94, 65, 14, 87, 65, 86, 94, 64, 66, 68, 19, 81, 69, 81, 66, 90, 15, 76, 94, 20, 23, 93, 13, 81, 95, 95, 7, 87, 65, 94, 88, 88, 7}, "814b3a", false), e);
                        }
                    } finally {
                        zaa(dataOutputStream);
                    }
                } catch (FileNotFoundException e2) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{96, 87, 12, 18, 87, 75, 85, 64, 24, 66, 94, 80, 88, 87, 65, 11, 75, 25, 71, 93, 12, 7, 80, 86, 67, 18, 0, 14, 74, 92, 85, 86, 24, 66, 92, 92, 88, 87, 21, 7, 92}, "42ab89", true));
                }
            } catch (IOException e3) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 93, 68, 9, 5, 25, 94, 93, 69, 69, 2, 75, 85, 83, 69, 0, 65, 77, 85, 95, 65, 10, 19, 88, 66, 75, 17, 3, 8, 85, 85}, "021ea9", 1.9457599E9f), e3);
            }
        }
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zab, i | 1, false);
        SafeParcelWriter.writeInt(parcel, 3, this.zac);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        this.zab = null;
    }
}

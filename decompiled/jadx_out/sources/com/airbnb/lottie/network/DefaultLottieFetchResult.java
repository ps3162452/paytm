package com.airbnb.lottie.network;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.utils.Logger;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class DefaultLottieFetchResult implements LottieFetchResult {

    @NonNull
    private final HttpURLConnection connection;

    public DefaultLottieFetchResult(@NonNull HttpURLConnection httpURLConnection) {
        this.connection = httpURLConnection;
    }

    private String getErrorFromConnection(HttpURLConnection httpURLConnection) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        sb.append(line).append('\n');
                    } else {
                        try {
                            break;
                        } catch (Exception e) {
                        }
                    }
                } finally {
                    try {
                        bufferedReader.close();
                    } catch (Exception e2) {
                    }
                }
            } catch (Exception e3) {
                throw e3;
            }
        }
        return sb.toString();
    }

    @Override // com.airbnb.lottie.network.LottieFetchResult
    @NonNull
    public InputStream bodyByteStream() throws IOException {
        return this.connection.getInputStream();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.connection.disconnect();
    }

    @Override // com.airbnb.lottie.network.LottieFetchResult
    @Nullable
    public String contentType() {
        return this.connection.getContentType();
    }

    @Override // com.airbnb.lottie.network.LottieFetchResult
    @Nullable
    public String error() {
        try {
            if (isSuccessful()) {
                return null;
            }
            return NPStringFog.decode(new byte[]{51, 89, 4, 82, 85, 6, 70, 67, 10, 16, 95, 6, 18, 84, 13, 16}, "f7e09c", -6.0730607E7d) + this.connection.getURL() + NPStringFog.decode(new byte[]{75, 25, 116, 86, 15, 89, 0, 93, 18, 64, 15, 65, 13, 25}, "e927f5", false, false) + this.connection.getResponseCode() + "\n" + getErrorFromConnection(this.connection);
        } catch (IOException e) {
            Logger.warning(NPStringFog.decode(new byte[]{1, 83, 77, 25, 86, 64, 20, 89, 75, 25, 85, 83, 15, 90, 92, 93, 19}, "f69932", true, true), e);
            return e.getMessage();
        }
    }

    @Override // com.airbnb.lottie.network.LottieFetchResult
    public boolean isSuccessful() {
        try {
            return this.connection.getResponseCode() / 100 == 2;
        } catch (IOException e) {
            return false;
        }
    }
}

package com.dz.scanner;

import com.dz.scanner.RequestNetwork;
import com.google.gson.Gson;
import java.io.IOException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

/* JADX INFO: loaded from: classes73.dex */
public class RequestNetworkController {
    public static final String DELETE = "DELETE";
    public static final String GET = "GET";
    public static final String POST = "POST";
    public static final String PUT = "PUT";
    private static final int READ_TIMEOUT = 25000;
    public static final int REQUEST_BODY = 1;
    public static final int REQUEST_PARAM = 0;
    private static final int SOCKET_TIMEOUT = 15000;
    private static RequestNetworkController mInstance;
    protected OkHttpClient client;

    private OkHttpClient getClient() {
        if (this.client == null) {
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            try {
                TrustManager[] trustManagerArr = new TrustManager[1];
                trustManagerArr[0] = new X509TrustManager(this) { // from class: com.dz.scanner.RequestNetworkController.1
                    final RequestNetworkController this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public X509Certificate[] getAcceptedIssuers() {
                        return new X509Certificate[0];
                    }
                };
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, trustManagerArr, new SecureRandom());
                builder.sslSocketFactory(sSLContext.getSocketFactory(), (X509TrustManager) trustManagerArr[0]);
                builder.connectTimeout(15000L, TimeUnit.MILLISECONDS);
                builder.readTimeout(25000L, TimeUnit.MILLISECONDS);
                builder.writeTimeout(25000L, TimeUnit.MILLISECONDS);
                builder.hostnameVerifier(new HostnameVerifier(this) { // from class: com.dz.scanner.RequestNetworkController.2
                    final RequestNetworkController this$0;

                    {
                        this.this$0 = this;
                    }

                    @Override // javax.net.ssl.HostnameVerifier
                    public boolean verify(String str, SSLSession sSLSession) {
                        return true;
                    }
                });
            } catch (Exception e) {
            }
            this.client = builder.build();
        }
        return this.client;
    }

    public static RequestNetworkController getInstance() {
        RequestNetworkController requestNetworkController;
        synchronized (RequestNetworkController.class) {
            try {
                if (mInstance == null) {
                    mInstance = new RequestNetworkController();
                }
                requestNetworkController = mInstance;
            } finally {
            }
        }
        return requestNetworkController;
    }

    public void execute(RequestNetwork requestNetwork, String str, String str2, String str3, RequestNetwork.RequestListener requestListener) {
        Request.Builder builder = new Request.Builder();
        Headers.Builder builder2 = new Headers.Builder();
        if (requestNetwork.getHeaders().size() > 0) {
            for (Map.Entry<String, Object> entry : requestNetwork.getHeaders().entrySet()) {
                builder2.add(entry.getKey(), String.valueOf(entry.getValue()));
            }
        }
        try {
            if (requestNetwork.getRequestType() != 0) {
                RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(requestNetwork.getParams()));
                if (str.equals(GET)) {
                    builder.url(str2).headers(builder2.build()).get();
                } else {
                    builder.url(str2).headers(builder2.build()).method(str, requestBodyCreate);
                }
            } else if (str.equals(GET)) {
                try {
                    HttpUrl.Builder builderNewBuilder = HttpUrl.parse(str2).newBuilder();
                    if (requestNetwork.getParams().size() > 0) {
                        for (Map.Entry<String, Object> entry2 : requestNetwork.getParams().entrySet()) {
                            builderNewBuilder.addQueryParameter(entry2.getKey(), String.valueOf(entry2.getValue()));
                        }
                    }
                    builder.url(builderNewBuilder.build()).headers(builder2.build()).get();
                } catch (NullPointerException e) {
                    throw new NullPointerException("unexpected url: " + str2);
                }
            } else {
                FormBody.Builder builder3 = new FormBody.Builder();
                if (requestNetwork.getParams().size() > 0) {
                    for (Map.Entry<String, Object> entry3 : requestNetwork.getParams().entrySet()) {
                        builder3.add(entry3.getKey(), String.valueOf(entry3.getValue()));
                    }
                }
                builder.url(str2).headers(builder2.build()).method(str, builder3.build());
            }
            getClient().newCall(builder.build()).enqueue(new Callback(this, requestNetwork, requestListener, str3) { // from class: com.dz.scanner.RequestNetworkController.3
                final RequestNetworkController this$0;
                private final RequestNetwork.RequestListener val$requestListener;
                private final RequestNetwork val$requestNetwork;
                private final String val$tag;

                {
                    this.this$0 = this;
                    this.val$requestNetwork = requestNetwork;
                    this.val$requestListener = requestListener;
                    this.val$tag = str3;
                }

                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    this.val$requestNetwork.getActivity().runOnUiThread(new Runnable(this, this.val$requestListener, this.val$tag, iOException) { // from class: com.dz.scanner.RequestNetworkController.3.1
                        final AnonymousClass3 this$1;
                        private final IOException val$e;
                        private final RequestNetwork.RequestListener val$requestListener;
                        private final String val$tag;

                        {
                            this.this$1 = this;
                            this.val$requestListener = requestListener;
                            this.val$tag = str;
                            this.val$e = iOException;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            this.val$requestListener.onErrorResponse(this.val$tag, this.val$e.getMessage());
                        }
                    });
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) throws IOException {
                    this.val$requestNetwork.getActivity().runOnUiThread(new Runnable(this, response, this.val$requestListener, this.val$tag, response.body().string().trim()) { // from class: com.dz.scanner.RequestNetworkController.3.2
                        final AnonymousClass3 this$1;
                        private final RequestNetwork.RequestListener val$requestListener;
                        private final Response val$response;
                        private final String val$responseBody;
                        private final String val$tag;

                        {
                            this.this$1 = this;
                            this.val$response = response;
                            this.val$requestListener = requestListener;
                            this.val$tag = str;
                            this.val$responseBody = str;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            Headers headers = this.val$response.headers();
                            HashMap<String, Object> map = new HashMap<>();
                            for (String str4 : headers.names()) {
                                map.put(str4, headers.get(str4) != null ? headers.get(str4) : "null");
                            }
                            this.val$requestListener.onResponse(this.val$tag, this.val$responseBody, map);
                        }
                    });
                }
            });
        } catch (Exception e2) {
            requestListener.onErrorResponse(str3, e2.getMessage());
        }
    }
}

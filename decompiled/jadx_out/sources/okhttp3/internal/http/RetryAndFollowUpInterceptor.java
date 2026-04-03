package okhttp3.internal.http;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.HttpRetryException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import n.NPStringFog;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.connection.StreamAllocation;
import okhttp3.internal.http2.ConnectionShutdownException;
import org.apache.http.HttpStatus;

/* JADX INFO: loaded from: classes62.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {
    private static final int MAX_FOLLOW_UPS = 20;
    private Object callStackTrace;
    private volatile boolean canceled;
    private final OkHttpClient client;
    private final boolean forWebSocket;
    private StreamAllocation streamAllocation;

    public RetryAndFollowUpInterceptor(OkHttpClient okHttpClient, boolean z) {
        this.client = okHttpClient;
        this.forWebSocket = z;
    }

    private Address createAddress(HttpUrl httpUrl) {
        HostnameVerifier hostnameVerifier;
        SSLSocketFactory sslSocketFactory;
        CertificatePinner certificatePinner = null;
        if (httpUrl.isHttps()) {
            sslSocketFactory = this.client.sslSocketFactory();
            hostnameVerifier = this.client.hostnameVerifier();
            certificatePinner = this.client.certificatePinner();
        } else {
            hostnameVerifier = null;
            sslSocketFactory = null;
        }
        return new Address(httpUrl.host(), httpUrl.port(), this.client.dns(), this.client.socketFactory(), sslSocketFactory, hostnameVerifier, certificatePinner, this.client.proxyAuthenticator(), this.client.proxy(), this.client.protocols(), this.client.connectionSpecs(), this.client.proxySelector());
    }

    private Request followUpRequest(Response response) throws IOException {
        String strHeader;
        HttpUrl httpUrlResolve;
        if (response == null) {
            throw new IllegalStateException();
        }
        RealConnection realConnectionConnection = this.streamAllocation.connection();
        Route route = realConnectionConnection != null ? realConnectionConnection.route() : null;
        int iCode = response.code();
        String strMethod = response.request().method();
        switch (iCode) {
            case HttpStatus.SC_MULTIPLE_CHOICES /* 300 */:
            case 301:
            case 302:
            case 303:
                break;
            case 307:
            case 308:
                if (!strMethod.equals(NPStringFog.decode(new byte[]{33, 119, 99}, "f27e36", false, false)) && !strMethod.equals(NPStringFog.decode(new byte[]{41, 116, 119, 124}, "a16886", -11176))) {
                    return null;
                }
                break;
            case 401:
                return this.client.authenticator().authenticate(route, response);
            case HttpStatus.SC_PROXY_AUTHENTICATION_REQUIRED /* 407 */:
                if ((route != null ? route.proxy() : this.client.proxy()).type() != Proxy.Type.HTTP) {
                    throw new ProtocolException(NPStringFog.decode(new byte[]{51, 83, 7, 86, 80, 19, 4, 82, 68, 123, 109, 49, 49, 105, 52, 97, 118, 61, 56, 105, 37, 102, 109, 45, 65, 30, 80, 3, 14, 76, 65, 85, 11, 87, 92, 69, 22, 94, 13, 95, 92, 69, 15, 89, 16, 19, 76, 22, 8, 88, 3, 19, 73, 23, 14, 78, 29}, "a6d39e", 8691));
                }
                return this.client.proxyAuthenticator().authenticate(route, response);
            case HttpStatus.SC_REQUEST_TIMEOUT /* 408 */:
                if (!this.client.retryOnConnectionFailure() || (response.request().body() instanceof UnrepeatableRequestBody)) {
                    return null;
                }
                if (response.priorResponse() == null || response.priorResponse().code() != 408) {
                    return response.request();
                }
                return null;
            default:
                return null;
        }
        if (!this.client.followRedirects() || (strHeader = response.header(NPStringFog.decode(new byte[]{116, 11, 6, 89, 76, 12, 87, 10}, "8de88e", -14956))) == null || (httpUrlResolve = response.request().url().resolve(strHeader)) == null) {
            return null;
        }
        if (!httpUrlResolve.scheme().equals(response.request().url().scheme()) && !this.client.followSslRedirects()) {
            return null;
        }
        Request.Builder builderNewBuilder = response.request().newBuilder();
        if (HttpMethod.permitsRequestBody(strMethod)) {
            boolean zRedirectsWithBody = HttpMethod.redirectsWithBody(strMethod);
            if (HttpMethod.redirectsToGet(strMethod)) {
                builderNewBuilder.method(NPStringFog.decode(new byte[]{35, 33, 101}, "dd19df", -1.311364052E9d), null);
            } else {
                builderNewBuilder.method(strMethod, zRedirectsWithBody ? response.request().body() : null);
            }
            if (!zRedirectsWithBody) {
                builderNewBuilder.removeHeader(NPStringFog.decode(new byte[]{103, 67, 88, 15, 17, 94, 86, 67, 20, 36, 12, 91, 92, 85, 80, 15, 5}, "319ab8", -991175974L));
                builderNewBuilder.removeHeader(NPStringFog.decode(new byte[]{118, 86, 13, 69, 0, 10, 65, 20, 47, 84, 11, 3, 65, 81}, "59c1ed", -1.783987651E9d));
                builderNewBuilder.removeHeader(NPStringFog.decode(new byte[]{112, 94, 91, 68, 0, 10, 71, 28, 97, 73, 21, 1}, "3150ed", false));
            }
        }
        if (!sameConnection(response, httpUrlResolve)) {
            builderNewBuilder.removeHeader(NPStringFog.decode(new byte[]{34, 22, 66, 10, 14, 22, 10, 25, 87, 22, 8, 11, 13}, "cc6bad", true));
        }
        return builderNewBuilder.url(httpUrlResolve).build();
    }

    private boolean isRecoverable(IOException iOException, boolean z) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private boolean recover(IOException iOException, boolean z, Request request) {
        this.streamAllocation.streamFailed(iOException);
        if (this.client.retryOnConnectionFailure()) {
            return !(z && (request.body() instanceof UnrepeatableRequestBody)) && isRecoverable(iOException, z) && this.streamAllocation.hasMoreRoutes();
        }
        return false;
    }

    private boolean sameConnection(Response response, HttpUrl httpUrl) {
        HttpUrl httpUrlUrl = response.request().url();
        return httpUrlUrl.host().equals(httpUrl.host()) && httpUrlUrl.port() == httpUrl.port() && httpUrlUrl.scheme().equals(httpUrl.scheme());
    }

    public void cancel() {
        this.canceled = true;
        StreamAllocation streamAllocation = this.streamAllocation;
        if (streamAllocation != null) {
            streamAllocation.cancel();
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Response responseProceed;
        Request requestFollowUpRequest;
        Request request = chain.request();
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        Call call = realInterceptorChain.call();
        EventListener eventListener = realInterceptorChain.eventListener();
        this.streamAllocation = new StreamAllocation(this.client.connectionPool(), createAddress(request.url()), call, eventListener, this.callStackTrace);
        Response response = null;
        int i = 0;
        Request request2 = request;
        while (!this.canceled) {
            try {
                try {
                    try {
                        responseProceed = realInterceptorChain.proceed(request2, this.streamAllocation, null, null);
                        if (response != null) {
                            responseProceed = responseProceed.newBuilder().priorResponse(response.newBuilder().body(null).build()).build();
                        }
                        requestFollowUpRequest = followUpRequest(responseProceed);
                    } catch (RouteException e) {
                        if (!recover(e.getLastConnectException(), false, request2)) {
                            throw e.getLastConnectException();
                        }
                    }
                } catch (IOException e2) {
                    if (!recover(e2, !(e2 instanceof ConnectionShutdownException), request2)) {
                        throw e2;
                    }
                }
                if (requestFollowUpRequest == null) {
                    if (!this.forWebSocket) {
                        this.streamAllocation.release();
                    }
                    return responseProceed;
                }
                Util.closeQuietly(responseProceed.body());
                int i2 = i + 1;
                if (i2 > 20) {
                    this.streamAllocation.release();
                    throw new ProtocolException(NPStringFog.decode(new byte[]{55, 94, 14, 16, 88, 86, 13, 72, 65, 86, 90, 91, 15, 94, 22, 29, 64, 71, 67, 67, 4, 65, 64, 82, 16, 69, 18, 10, 21}, "c1a057", true, true) + i2);
                }
                if (requestFollowUpRequest.body() instanceof UnrepeatableRequestBody) {
                    this.streamAllocation.release();
                    throw new HttpRetryException(NPStringFog.decode(new byte[]{117, 7, 11, 90, 14, 70, 22, 20, 0, 64, 19, 75, 22, 21, 17, 70, 4, 83, 91, 3, 1, 20, 41, 102, 98, 54, 69, 86, 14, 86, 79}, "6fe4a2", true), responseProceed.code());
                }
                if (!sameConnection(responseProceed, requestFollowUpRequest.url())) {
                    this.streamAllocation.release();
                    this.streamAllocation = new StreamAllocation(this.client.connectionPool(), createAddress(requestFollowUpRequest.url()), call, eventListener, this.callStackTrace);
                } else if (this.streamAllocation.codec() != null) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{32, 15, 9, 21, 13, 15, 4, 67, 18, 14, 1, 65, 1, 12, 2, 31, 68, 14, 5, 67}, "ccffda", false, true) + responseProceed + NPStringFog.decode(new byte[]{18, 92, 80, 2, 13, 68, 70, 24, 90, 10, 12, 16, 87, 24, 80, 18, 16, 67, 80, 89, 90, 13, 10, 13, 85, 24, 74, 18, 17, 6, 83, 85, 23, 70, 33, 2, 86, 24, 80, 8, 23, 6, 64, 91, 92, 22, 23, 12, 64, 7}, "289fcc", -430114988L));
                }
                response = responseProceed;
                i = i2;
                request2 = requestFollowUpRequest;
            } catch (Throwable th) {
                this.streamAllocation.streamFailed(null);
                this.streamAllocation.release();
                throw th;
            }
        }
        this.streamAllocation.release();
        throw new IOException(NPStringFog.decode(new byte[]{39, 7, 88, 81, 80, 95, 1, 2}, "df6253", 1.220056827E9d));
    }

    public boolean isCanceled() {
        return this.canceled;
    }

    public void setCallStackTrace(Object obj) {
        this.callStackTrace = obj;
    }

    public StreamAllocation streamAllocation() {
        return this.streamAllocation;
    }
}

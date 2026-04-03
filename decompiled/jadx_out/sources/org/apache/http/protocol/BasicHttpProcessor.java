package org.apache.http.protocol;

import java.io.IOException;
import java.util.List;
import n.NPStringFog;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class BasicHttpProcessor implements HttpProcessor, HttpRequestInterceptorList, HttpResponseInterceptorList {
    protected List requestInterceptors;
    protected List responseInterceptors;

    public BasicHttpProcessor() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 64, 19, 81, 68}, "14f3ec", -21292));
    }

    public void addInterceptor(HttpRequestInterceptor httpRequestInterceptor) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 65, 16, 87, 25}, "05e581", true));
    }

    public void addInterceptor(HttpRequestInterceptor httpRequestInterceptor, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 77, 67, 1, 18}, "696c3b", -4.15861918E8d));
    }

    public void addInterceptor(HttpResponseInterceptor httpResponseInterceptor) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 77, 65, 90, 66}, "c948cf", -5.615576E8f));
    }

    public void addInterceptor(HttpResponseInterceptor httpResponseInterceptor, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 64, 76, 81, 23}, "749363", -878606953L));
    }

    @Override // org.apache.http.protocol.HttpRequestInterceptorList
    public void addRequestInterceptor(HttpRequestInterceptor httpRequestInterceptor) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 69, 70, 90, 66}, "c138c8", -2.0454602E9f));
    }

    @Override // org.apache.http.protocol.HttpRequestInterceptorList
    public void addRequestInterceptor(HttpRequestInterceptor httpRequestInterceptor, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 65, 19, 4, 18}, "35ff34", -434512482L));
    }

    @Override // org.apache.http.protocol.HttpResponseInterceptorList
    public void addResponseInterceptor(HttpResponseInterceptor httpResponseInterceptor) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 21, 77, 91, 18}, "6a8938", 886579435L));
    }

    @Override // org.apache.http.protocol.HttpResponseInterceptorList
    public void addResponseInterceptor(HttpResponseInterceptor httpResponseInterceptor, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 69, 68, 90, 16}, "411816", false));
    }

    public void clearInterceptors() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 69, 67, 7, 69}, "916ed9", -32232));
    }

    @Override // org.apache.http.protocol.HttpRequestInterceptorList
    public void clearRequestInterceptors() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 21, 77, 87, 64}, "9a85ae", true, false));
    }

    @Override // org.apache.http.protocol.HttpResponseInterceptorList
    public void clearResponseInterceptors() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 21, 16, 0, 67}, "caebb4", -2.056972653E9d));
    }

    public Object clone() throws CloneNotSupportedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 68, 70, 87, 68}, "c035e4", -10871));
    }

    public BasicHttpProcessor copy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 71, 64, 3, 25}, "b35a81", -392919116L));
    }

    protected void copyInterceptors(BasicHttpProcessor basicHttpProcessor) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 21, 67, 1, 68}, "ba6cea", 613956292L));
    }

    @Override // org.apache.http.protocol.HttpRequestInterceptorList
    public HttpRequestInterceptor getRequestInterceptor(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 22, 71, 3, 25}, "eb2a8e", true, true));
    }

    @Override // org.apache.http.protocol.HttpRequestInterceptorList
    public int getRequestInterceptorCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 67, 16, 1, 20}, "e7ec59", 1.570552684E9d));
    }

    @Override // org.apache.http.protocol.HttpResponseInterceptorList
    public HttpResponseInterceptor getResponseInterceptor(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 71, 22, 87, 22}, "c3c57c", 8.996507E8f));
    }

    @Override // org.apache.http.protocol.HttpResponseInterceptorList
    public int getResponseInterceptorCount() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 69, 64, 86, 64}, "7154a9", true, false));
    }

    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 16, 67, 86, 22}, "9d6474", -7.8243795E8f));
    }

    @Override // org.apache.http.HttpResponseInterceptor
    public void process(HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 68, 16, 81, 69}, "40e3d4", 1166759928L));
    }

    @Override // org.apache.http.protocol.HttpRequestInterceptorList
    public void removeRequestInterceptorByClass(Class cls) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 65, 65, 83, 16}, "e54118", -1.1672379E9f));
    }

    @Override // org.apache.http.protocol.HttpResponseInterceptorList
    public void removeResponseInterceptorByClass(Class cls) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 65, 65, 83, 25}, "85418b", false));
    }

    @Override // org.apache.http.protocol.HttpRequestInterceptorList, org.apache.http.protocol.HttpResponseInterceptorList
    public void setInterceptors(List list) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 66, 76, 7, 22}, "f69e79", 24408));
    }
}

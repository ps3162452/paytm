package com.airbnb.lottie.utils;

/* JADX INFO: loaded from: classes64.dex */
public class MeanCalculator {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f1n;
    private float sum;

    public void add(float f) {
        this.sum += f;
        this.f1n++;
        if (this.f1n == Integer.MAX_VALUE) {
            this.sum /= 2.0f;
            this.f1n /= 2;
        }
    }

    public float getMean() {
        if (this.f1n == 0) {
            return 0.0f;
        }
        return this.sum / this.f1n;
    }
}

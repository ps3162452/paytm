package com.google.firebase.database.connection.util;

import com.google.firebase.database.logging.LogWrapper;
import com.google.firebase.database.logging.Logger;
import java.util.Random;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class RetryHelper {
    private long currentRetryDelay;
    private final ScheduledExecutorService executorService;
    private final double jitterFactor;
    private boolean lastWasSuccess;
    private final LogWrapper logger;
    private final long maxRetryDelay;
    private final long minRetryDelayAfterFailure;
    private final Random random;
    private final double retryExponent;
    private ScheduledFuture<?> scheduledRetry;

    public static class Builder {
        private final LogWrapper logger;
        private final ScheduledExecutorService service;
        private long minRetryDelayAfterFailure = 1000;
        private double jitterFactor = 0.5d;
        private long retryMaxDelay = 30000;
        private double retryExponent = 1.3d;

        public Builder(ScheduledExecutorService scheduledExecutorService, Logger logger, String str) {
            this.service = scheduledExecutorService;
            this.logger = new LogWrapper(logger, str);
        }

        public RetryHelper build() {
            return new RetryHelper(this.service, this.logger, this.minRetryDelayAfterFailure, this.retryMaxDelay, this.retryExponent, this.jitterFactor);
        }

        public Builder withJitterFactor(double d) {
            if (d < 0.0d || d > 1.0d) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{118, 70, 84, 76, 9, 83, 89, 64, 19, 86, 17, 66, 23, 91, 85, 25, 22, 87, 89, 83, 86, 3, 68}, "7439d6", false) + d);
            }
            this.jitterFactor = d;
            return this;
        }

        public Builder withMaxDelay(long j) {
            this.retryMaxDelay = j;
            return this;
        }

        public Builder withMinDelayAfterFailure(long j) {
            this.minRetryDelayAfterFailure = j;
            return this;
        }

        public Builder withRetryExponent(double d) {
            this.retryExponent = d;
            return this;
        }
    }

    private RetryHelper(ScheduledExecutorService scheduledExecutorService, LogWrapper logWrapper, long j, long j2, double d, double d2) {
        this.random = new Random();
        this.lastWasSuccess = true;
        this.executorService = scheduledExecutorService;
        this.logger = logWrapper;
        this.minRetryDelayAfterFailure = j;
        this.maxRetryDelay = j2;
        this.retryExponent = d;
        this.jitterFactor = d2;
    }

    public void cancel() {
        if (this.scheduledRetry != null) {
            this.logger.debug(NPStringFog.decode(new byte[]{114, 83, 94, 80, 6, 90, 93, 91, 94, 84, 67, 83, 73, 91, 67, 71, 10, 88, 86, 18, 66, 86, 23, 68, 72, 18, 81, 71, 23, 83, 92, 66, 68}, "1203c6", -1.324047081E9d), new Object[0]);
            this.scheduledRetry.cancel(false);
            this.scheduledRetry = null;
        } else {
            this.logger.debug(NPStringFog.decode(new byte[]{121, 87, 17, 92, 65, 80, 68, 76, 88, 87, 94, 25, 69, 93, 69, 75, 64, 25, 86, 76, 69, 92, 84, 73, 67, 24, 69, 86, 25, 90, 86, 86, 82, 92, 85}, "781999", 6.89154381E8d), new Object[0]);
        }
        this.currentRetryDelay = 0L;
    }

    public void retry(Runnable runnable) {
        long jNextDouble = 0;
        Runnable runnable2 = new Runnable(this, runnable) { // from class: com.google.firebase.database.connection.util.RetryHelper.1
            final RetryHelper this$0;
            final Runnable val$runnable;

            {
                this.this$0 = this;
                this.val$runnable = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.scheduledRetry = null;
                this.val$runnable.run();
            }
        };
        if (this.scheduledRetry != null) {
            this.logger.debug(NPStringFog.decode(new byte[]{123, 86, 93, 90, 7, 14, 84, 94, 93, 94, 66, 18, 74, 82, 69, 80, 13, 23, 75, 23, 64, 90, 10, 7, 92, 66, 95, 92, 6, 66, 74, 82, 71, 75, 27}, "8739bb", 2.3388228E8d), new Object[0]);
            this.scheduledRetry.cancel(false);
            this.scheduledRetry = null;
        }
        if (!this.lastWasSuccess) {
            long j = this.currentRetryDelay;
            if (j == 0) {
                this.currentRetryDelay = this.minRetryDelayAfterFailure;
            } else {
                double d = j;
                double d2 = this.retryExponent;
                Double.isNaN(d);
                this.currentRetryDelay = Math.min((long) (d * d2), this.maxRetryDelay);
            }
            double d3 = this.jitterFactor;
            long j2 = this.currentRetryDelay;
            double d4 = j2;
            Double.isNaN(d4);
            double d5 = j2;
            Double.isNaN(d5);
            jNextDouble = (long) ((d3 * d5 * this.random.nextDouble()) + (d4 * (1.0d - d3)));
        }
        this.lastWasSuccess = false;
        this.logger.debug(NPStringFog.decode(new byte[]{50, 87, 81, 80, 83, 65, 13, 93, 87, 82, 23, 70, 4, 64, 75, 76, 23, 93, 15, 20, 28, 81, 90, 71}, "a49574", true), Long.valueOf(jNextDouble));
        this.scheduledRetry = this.executorService.schedule(runnable2, jNextDouble, TimeUnit.MILLISECONDS);
    }

    public void setMaxDelay() {
        this.currentRetryDelay = this.maxRetryDelay;
    }

    public void signalSuccess() {
        this.lastWasSuccess = true;
        this.currentRetryDelay = 0L;
    }
}

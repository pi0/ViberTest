.class public interface abstract Lcom/google/analytics/tracking/android/ITracker;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract handleGetTrackingId()Ljava/lang/String;
.end method

.method public abstract handleSendEvent(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract handleSendView(Lcom/viber/dexshared/GoogleAnalyticsHelper;)V
.end method

.method public abstract handleSetCustomMetric(Lcom/viber/dexshared/GoogleAnalyticsHelper;IJ)V
.end method

.method public abstract handleStarSession(Lcom/viber/dexshared/GoogleAnalyticsHelper;Z)V
.end method

.method public abstract handleTrackActivityStart(Lcom/viber/dexshared/GoogleAnalyticsHelper;Landroid/app/Activity;)V
.end method

.method public abstract handleTrackActivityStop(Lcom/viber/dexshared/GoogleAnalyticsHelper;Landroid/app/Activity;)V
.end method

.method public abstract handleTrackCustomDimension(Lcom/viber/dexshared/GoogleAnalyticsHelper;ILjava/lang/String;)V
.end method

.method public abstract handleTrackEvent(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract handleTrackPageView(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;)V
.end method

.method public abstract handleTrackSendView(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;)V
.end method

.method public abstract handleTrackSocial(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleTrackTiming(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract handleTrackTransaction(Lcom/viber/dexshared/GoogleAnalyticsHelper;Lcom/google/analytics/tracking/android/Transaction;)V
.end method

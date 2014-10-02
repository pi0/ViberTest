.class public interface abstract Lcom/viber/dexshared/GoogleAnalyticsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract activityStart(Landroid/app/Activity;)V
.end method

.method public abstract activityStop(Landroid/app/Activity;)V
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract initViberTracker(Landroid/content/Context;Ljava/lang/String;DZI)V
.end method

.method public abstract sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract sendSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendTransaction(Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract sendView(Ljava/lang/String;)V
.end method

.method public abstract sendViewWithoutParams()V
.end method

.method public abstract setCustomDimension(ILjava/lang/String;)V
.end method

.method public abstract setCustomMetric(IJ)V
.end method

.method public abstract setDebug(Z)V
.end method

.method public abstract setDefaultTracker()V
.end method

.method public abstract setDispatchPeriod(I)V
.end method

.method public abstract setSampleRate(D)V
.end method

.method public abstract setStarSession(Z)V
.end method

.method public abstract trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackView(Ljava/lang/String;)V
.end method

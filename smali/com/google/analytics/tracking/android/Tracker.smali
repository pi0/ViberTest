.class public Lcom/google/analytics/tracking/android/Tracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

.field private mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

.field private unhandledEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/Tracker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/analytics/tracking/android/ITracker;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    .line 29
    invoke-static {}, Lcom/viber/voip/c/g;->a()Lcom/viber/voip/c/b;

    move-result-object v0

    new-instance v1, Lcom/google/analytics/tracking/android/Tracker$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/analytics/tracking/android/Tracker$1;-><init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ITracker;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/c/b;->a(Lcom/viber/voip/c/f;)V

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ITracker;)Lcom/google/analytics/tracking/android/ITracker;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/Tracker;)Lcom/viber/dexshared/GoogleAnalyticsHelper;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/analytics/tracking/android/Tracker;Lcom/viber/dexshared/GoogleAnalyticsHelper;)Lcom/viber/dexshared/GoogleAnalyticsHelper;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/Tracker;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/Tracker;->handleUnhandledEvents()V

    return-void
.end method

.method private handleUnhandledEvents()V
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    return-void

    .line 44
    :cond_1
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    .line 45
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 46
    const-wide/16 v3, 0x64

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructException(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructRawException(Ljava/lang/String;Ljava/lang/Throwable;Z)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructTransaction(Lcom/google/analytics/tracking/android/Transaction;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/tracking/android/Transaction;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/ITracker;->handleGetTrackingId()Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    const/4 v1, 0x3

    sget-object v2, Lcom/google/analytics/tracking/android/Tracker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTrackingId() mTrackerDelegate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", returning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    return-object v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public send(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/analytics/tracking/android/ITracker;->handleSendEvent(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 161
    iget-object v6, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    new-instance v0, Lcom/google/analytics/tracking/android/Tracker$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/analytics/tracking/android/Tracker$10;-><init>(Lcom/google/analytics/tracking/android/Tracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sendException(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sendException(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sendSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/analytics/tracking/android/ITracker;->handleTrackSocial(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    new-instance v1, Lcom/google/analytics/tracking/android/Tracker$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/analytics/tracking/android/Tracker$6;-><init>(Lcom/google/analytics/tracking/android/Tracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sendTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public sendTransaction(Lcom/google/analytics/tracking/android/Transaction;)V
    .locals 2
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-interface {v0, v1, p1}, Lcom/google/analytics/tracking/android/ITracker;->handleTrackTransaction(Lcom/viber/dexshared/GoogleAnalyticsHelper;Lcom/google/analytics/tracking/android/Transaction;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    new-instance v1, Lcom/google/analytics/tracking/android/Tracker$11;

    invoke-direct {v1, p0, p1}, Lcom/google/analytics/tracking/android/Tracker$11;-><init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/Transaction;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sendView()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/ITracker;->handleSendView(Lcom/viber/dexshared/GoogleAnalyticsHelper;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    new-instance v1, Lcom/google/analytics/tracking/android/Tracker$12;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/Tracker$12;-><init>(Lcom/google/analytics/tracking/android/Tracker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public sendView(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-interface {v0, v1, p1}, Lcom/google/analytics/tracking/android/ITracker;->handleTrackSendView(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    new-instance v1, Lcom/google/analytics/tracking/android/Tracker$7;

    invoke-direct {v1, p0, p1}, Lcom/google/analytics/tracking/android/Tracker$7;-><init>(Lcom/google/analytics/tracking/android/Tracker;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAnonymizeIp(Z)V
    .locals 1
    .parameter

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAppInstallerId(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAppScreen(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCampaign(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCustomDimension(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/analytics/tracking/android/ITracker;->handleTrackCustomDimension(Lcom/viber/dexshared/GoogleAnalyticsHelper;ILjava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    new-instance v1, Lcom/google/analytics/tracking/android/Tracker$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/analytics/tracking/android/Tracker$4;-><init>(Lcom/google/analytics/tracking/android/Tracker;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCustomDimensionsAndMetrics(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCustomMetric(ILjava/lang/Long;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/analytics/tracking/android/ITracker;->handleSetCustomMetric(Lcom/viber/dexshared/GoogleAnalyticsHelper;IJ)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    new-instance v1, Lcom/google/analytics/tracking/android/Tracker$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/analytics/tracking/android/Tracker$5;-><init>(Lcom/google/analytics/tracking/android/Tracker;ILjava/lang/Long;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSampleRate(D)V
    .locals 1
    .parameter

    .prologue
    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setStartSession(Z)V
    .locals 2
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-interface {v0, v1, p1}, Lcom/google/analytics/tracking/android/ITracker;->handleStarSession(Lcom/viber/dexshared/GoogleAnalyticsHelper;Z)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    new-instance v1, Lcom/google/analytics/tracking/android/Tracker$9;

    invoke-direct {v1, p0, p1}, Lcom/google/analytics/tracking/android/Tracker$9;-><init>(Lcom/google/analytics/tracking/android/Tracker;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setThrottlingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setUseSecure(Z)V
    .locals 1
    .parameter

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/analytics/tracking/android/ITracker;->handleTrackEvent(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 55
    iget-object v6, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    new-instance v0, Lcom/google/analytics/tracking/android/Tracker$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/analytics/tracking/android/Tracker$2;-><init>(Lcom/google/analytics/tracking/android/Tracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public trackException(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public trackSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/analytics/tracking/android/ITracker;->handleTrackTiming(Lcom/viber/dexshared/GoogleAnalyticsHelper;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 135
    iget-object v7, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    new-instance v0, Lcom/google/analytics/tracking/android/Tracker$8;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/analytics/tracking/android/Tracker$8;-><init>(Lcom/google/analytics/tracking/android/Tracker;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public trackTransaction(Lcom/google/analytics/tracking/android/Transaction;)V
    .locals 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    invoke-interface {v0, v1, p1}, Lcom/google/analytics/tracking/android/ITracker;->handleTrackTransaction(Lcom/viber/dexshared/GoogleAnalyticsHelper;Lcom/google/analytics/tracking/android/Transaction;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker;->unhandledEvents:Ljava/util/List;

    new-instance v1, Lcom/google/analytics/tracking/android/Tracker$3;

    invoke-direct {v1, p0, p1}, Lcom/google/analytics/tracking/android/Tracker$3;-><init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/Transaction;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public trackView()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public trackView(Ljava/lang/String;)V
    .locals 1
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

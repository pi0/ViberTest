.class public Lcom/google/analytics/tracking/android/GoogleAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

.field private final mTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/tracking/android/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .locals 2
    .parameter

    .prologue
    .line 17
    const-class v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 21
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->sInstance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    .locals 3
    .parameter

    .prologue
    .line 35
    monitor-enter p0

    .line 36
    if-nez p1, :cond_0

    .line 37
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "trackingId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 39
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/Tracker;

    .line 41
    if-nez v0, :cond_1

    .line 42
    new-instance v0, Lcom/google/analytics/tracking/android/Tracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/analytics/tracking/android/Tracker;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/analytics/tracking/android/ITracker;)V

    .line 43
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public setTrackerDelegate(Lcom/google/analytics/tracking/android/ITracker;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    .line 27
    return-void
.end method

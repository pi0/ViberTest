.class Lcom/google/analytics/tracking/android/Tracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/c/f;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/Tracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$trackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

.field final synthetic val$trackingId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ITracker;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker$1;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/Tracker$1;->val$trackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    iput-object p3, p0, Lcom/google/analytics/tracking/android/Tracker$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/analytics/tracking/android/Tracker$1;->val$trackingId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDexLoaded()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$1;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker$1;->val$trackerDelegate:Lcom/google/analytics/tracking/android/ITracker;

    #setter for: Lcom/google/analytics/tracking/android/Tracker;->mTrackerDelegate:Lcom/google/analytics/tracking/android/ITracker;
    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->access$002(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ITracker;)Lcom/google/analytics/tracking/android/ITracker;

    .line 33
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$1;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    invoke-static {}, Lcom/viber/voip/ViberEnv;->newGoogleAnalyticsHelper()Lcom/viber/dexshared/GoogleAnalyticsHelper;

    move-result-object v1

    #setter for: Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;
    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->access$102(Lcom/google/analytics/tracking/android/Tracker;Lcom/viber/dexshared/GoogleAnalyticsHelper;)Lcom/viber/dexshared/GoogleAnalyticsHelper;

    .line 34
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$1;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    #getter for: Lcom/google/analytics/tracking/android/Tracker;->gaHelper:Lcom/viber/dexshared/GoogleAnalyticsHelper;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Tracker;->access$100(Lcom/google/analytics/tracking/android/Tracker;)Lcom/viber/dexshared/GoogleAnalyticsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/Tracker$1;->val$trackingId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/viber/dexshared/GoogleAnalyticsHelper;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$1;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    #calls: Lcom/google/analytics/tracking/android/Tracker;->handleUnhandledEvents()V
    invoke-static {v0}, Lcom/google/analytics/tracking/android/Tracker;->access$200(Lcom/google/analytics/tracking/android/Tracker;)V

    .line 36
    return-void
.end method

.class Lcom/google/analytics/tracking/android/Tracker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/Tracker;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/Tracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker$2;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/Tracker$2;->val$category:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/analytics/tracking/android/Tracker$2;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/analytics/tracking/android/Tracker$2;->val$label:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/analytics/tracking/android/Tracker$2;->val$value:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$2;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker$2;->val$category:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/Tracker$2;->val$action:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/Tracker$2;->val$label:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/analytics/tracking/android/Tracker$2;->val$value:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    return-void
.end method

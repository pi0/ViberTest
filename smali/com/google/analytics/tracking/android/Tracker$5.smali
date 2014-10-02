.class Lcom/google/analytics/tracking/android/Tracker$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/Tracker;

.field final synthetic val$index:I

.field final synthetic val$value:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/Tracker;ILjava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker$5;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iput p2, p0, Lcom/google/analytics/tracking/android/Tracker$5;->val$index:I

    iput-object p3, p0, Lcom/google/analytics/tracking/android/Tracker$5;->val$value:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$5;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iget v1, p0, Lcom/google/analytics/tracking/android/Tracker$5;->val$index:I

    iget-object v2, p0, Lcom/google/analytics/tracking/android/Tracker$5;->val$value:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/Tracker;->setCustomMetric(ILjava/lang/Long;)V

    .line 99
    return-void
.end method

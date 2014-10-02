.class Lcom/google/analytics/tracking/android/Tracker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/Tracker;

.field final synthetic val$transaction:Lcom/google/analytics/tracking/android/Transaction;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/Transaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker$3;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/Tracker$3;->val$transaction:Lcom/google/analytics/tracking/android/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$3;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker$3;->val$transaction:Lcom/google/analytics/tracking/android/Transaction;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->trackTransaction(Lcom/google/analytics/tracking/android/Transaction;)V

    .line 73
    return-void
.end method

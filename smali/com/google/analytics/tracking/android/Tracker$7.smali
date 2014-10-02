.class Lcom/google/analytics/tracking/android/Tracker$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/Tracker;

.field final synthetic val$appScreen:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/Tracker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker$7;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/Tracker$7;->val$appScreen:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$7;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker$7;->val$appScreen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 125
    return-void
.end method

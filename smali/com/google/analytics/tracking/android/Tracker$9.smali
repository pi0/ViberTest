.class Lcom/google/analytics/tracking/android/Tracker$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/Tracker;

.field final synthetic val$startSession:Z


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/Tracker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker$9;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iput-boolean p2, p0, Lcom/google/analytics/tracking/android/Tracker$9;->val$startSession:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$9;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iget-boolean v1, p0, Lcom/google/analytics/tracking/android/Tracker$9;->val$startSession:Z

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->setStartSession(Z)V

    .line 152
    return-void
.end method

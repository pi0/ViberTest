.class Lcom/google/analytics/tracking/android/Tracker$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/Tracker;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$network:Ljava/lang/String;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/Tracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker$6;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/Tracker$6;->val$network:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/analytics/tracking/android/Tracker$6;->val$action:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/analytics/tracking/android/Tracker$6;->val$target:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$6;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker$6;->val$network:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/Tracker$6;->val$action:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/Tracker$6;->val$target:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->sendSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

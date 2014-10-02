.class Lcom/google/analytics/tracking/android/Tracker$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/Tracker;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$intervalInMilliseconds:J

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/Tracker;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker$8;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/Tracker$8;->val$category:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/analytics/tracking/android/Tracker$8;->val$intervalInMilliseconds:J

    iput-object p5, p0, Lcom/google/analytics/tracking/android/Tracker$8;->val$name:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/analytics/tracking/android/Tracker$8;->val$label:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$8;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Tracker$8;->val$category:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/Tracker$8;->val$intervalInMilliseconds:J

    iget-object v4, p0, Lcom/google/analytics/tracking/android/Tracker$8;->val$name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/analytics/tracking/android/Tracker$8;->val$label:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/analytics/tracking/android/Tracker;->trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

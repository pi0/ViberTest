.class Lcom/google/analytics/tracking/android/Tracker$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/Tracker;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Tracker$12;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Tracker$12;->this$0:Lcom/google/analytics/tracking/android/Tracker;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Tracker;->sendView()V

    .line 191
    return-void
.end method

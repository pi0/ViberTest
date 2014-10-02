.class public Lcom/android/camera/MonitoredActivity;
.super Lcom/android/camera/NoSearchActivity;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/camera/NoSearchActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/MonitoredActivity;->a:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/android/camera/x;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/camera/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b(Lcom/android/camera/x;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/camera/NoSearchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/x;

    .line 62
    invoke-interface {v0, p0}, Lcom/android/camera/x;->a(Lcom/android/camera/MonitoredActivity;)V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/camera/NoSearchActivity;->onDestroy()V

    .line 69
    iget-object v0, p0, Lcom/android/camera/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/x;

    .line 70
    invoke-interface {v0, p0}, Lcom/android/camera/x;->b(Lcom/android/camera/MonitoredActivity;)V

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/camera/NoSearchActivity;->onStart()V

    .line 77
    iget-object v0, p0, Lcom/android/camera/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/x;

    .line 78
    invoke-interface {v0, p0}, Lcom/android/camera/x;->c(Lcom/android/camera/MonitoredActivity;)V

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/camera/NoSearchActivity;->onStop()V

    .line 85
    iget-object v0, p0, Lcom/android/camera/MonitoredActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/x;

    .line 86
    invoke-interface {v0, p0}, Lcom/android/camera/x;->d(Lcom/android/camera/MonitoredActivity;)V

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

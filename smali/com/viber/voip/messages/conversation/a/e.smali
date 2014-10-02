.class Lcom/viber/voip/messages/conversation/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/e;->a:Lcom/viber/voip/messages/conversation/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/e;->a:Lcom/viber/voip/messages/conversation/a/d;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/a/d;->a(Lcom/viber/voip/messages/conversation/a/d;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/e;->a:Lcom/viber/voip/messages/conversation/a/d;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/a/d;->b(Lcom/viber/voip/messages/conversation/a/d;)Landroid/view/View;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/e;->a:Lcom/viber/voip/messages/conversation/a/d;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/e;->a:Lcom/viber/voip/messages/conversation/a/d;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/a/d;->a(Lcom/viber/voip/messages/conversation/a/d;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 96
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 98
    :cond_0
    return-void
.end method

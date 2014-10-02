.class Lcom/viber/voip/messages/conversation/m;
.super Lcom/viber/voip/messages/controller/ah;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/i;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/m;->a:Lcom/viber/voip/messages/conversation/i;

    invoke-direct {p0}, Lcom/viber/voip/messages/controller/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/c/ao;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/m;->a:Lcom/viber/voip/messages/conversation/i;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/i;->i:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/conversation/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/conversation/n;-><init>(Lcom/viber/voip/messages/conversation/m;Lcom/viber/voip/messages/controller/c/ao;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method

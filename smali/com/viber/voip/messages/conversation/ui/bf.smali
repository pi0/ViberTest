.class Lcom/viber/voip/messages/conversation/ui/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/aj;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ba;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bf;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bf;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->i:Lcom/viber/voip/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/z;->a(I)V

    .line 218
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bg;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bg;-><init>(Lcom/viber/voip/messages/conversation/ui/bf;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    return-void
.end method

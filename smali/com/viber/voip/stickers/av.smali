.class Lcom/viber/voip/stickers/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/as;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/as;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/viber/voip/stickers/av;->a:Lcom/viber/voip/stickers/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/stickers/av;->a:Lcom/viber/voip/stickers/as;

    invoke-static {v0}, Lcom/viber/voip/stickers/as;->c(Lcom/viber/voip/stickers/as;)Lcom/viber/voip/stickers/ax;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/viber/voip/stickers/av;->a:Lcom/viber/voip/stickers/as;

    invoke-static {v1}, Lcom/viber/voip/stickers/as;->d(Lcom/viber/voip/stickers/as;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/stickers/aw;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/stickers/aw;-><init>(Lcom/viber/voip/stickers/av;Lcom/viber/voip/stickers/ax;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    :cond_0
    return-void
.end method

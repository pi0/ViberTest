.class Lcom/viber/voip/stickers/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/du;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/r;)V
    .locals 0
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/viber/voip/stickers/w;->a:Lcom/viber/voip/stickers/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/viber/voip/stickers/w;->a:Lcom/viber/voip/stickers/r;

    invoke-static {v0}, Lcom/viber/voip/stickers/r;->i(Lcom/viber/voip/stickers/r;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/stickers/x;

    invoke-direct {v1, p0}, Lcom/viber/voip/stickers/x;-><init>(Lcom/viber/voip/stickers/w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 917
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 921
    return-void
.end method

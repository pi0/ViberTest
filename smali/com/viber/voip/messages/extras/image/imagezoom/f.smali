.class Lcom/viber/voip/messages/extras/image/imagezoom/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/image/imagezoom/k;

.field final synthetic b:Z

.field final synthetic c:Lcom/viber/voip/messages/extras/image/imagezoom/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/image/imagezoom/e;Lcom/viber/voip/messages/extras/image/imagezoom/k;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/f;->c:Lcom/viber/voip/messages/extras/image/imagezoom/e;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/f;->a:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    iput-boolean p3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/f;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/imagezoom/f;->c:Lcom/viber/voip/messages/extras/image/imagezoom/e;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/imagezoom/f;->a:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/extras/image/imagezoom/f;->a:Lcom/viber/voip/messages/extras/image/imagezoom/k;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/image/imagezoom/k;->a()I

    move-result v2

    iget-boolean v3, p0, Lcom/viber/voip/messages/extras/image/imagezoom/f;->b:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/image/imagezoom/e;->a(Landroid/graphics/Bitmap;IZ)V

    .line 127
    return-void
.end method

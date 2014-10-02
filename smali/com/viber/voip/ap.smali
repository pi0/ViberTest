.class Lcom/viber/voip/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/al;


# instance fields
.field final synthetic a:Lcom/viber/voip/MyQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/MyQRCodeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/viber/voip/ap;->a:Lcom/viber/voip/MyQRCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    if-eqz p3, :cond_0

    .line 39
    iget-object v0, p0, Lcom/viber/voip/ap;->a:Lcom/viber/voip/MyQRCodeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/MyQRCodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 40
    iget-object v0, p0, Lcom/viber/voip/ap;->a:Lcom/viber/voip/MyQRCodeActivity;

    iget-object v1, p0, Lcom/viber/voip/ap;->a:Lcom/viber/voip/MyQRCodeActivity;

    invoke-virtual {v1}, Lcom/viber/voip/MyQRCodeActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/MyQRCodeActivity;->a(Lcom/viber/voip/MyQRCodeActivity;Ljava/lang/String;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ap;->a:Lcom/viber/voip/MyQRCodeActivity;

    invoke-static {v0}, Lcom/viber/voip/MyQRCodeActivity;->a(Lcom/viber/voip/MyQRCodeActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

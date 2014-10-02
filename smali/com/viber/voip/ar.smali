.class Lcom/viber/voip/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/viber/voip/MyQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/MyQRCodeActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/viber/voip/ar;->b:Lcom/viber/voip/MyQRCodeActivity;

    iput-object p2, p0, Lcom/viber/voip/ar;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/ar;->b:Lcom/viber/voip/MyQRCodeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/MyQRCodeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/viber/voip/ar;->b:Lcom/viber/voip/MyQRCodeActivity;

    invoke-static {v0}, Lcom/viber/voip/MyQRCodeActivity;->b(Lcom/viber/voip/MyQRCodeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ar;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    iget-object v0, p0, Lcom/viber/voip/ar;->b:Lcom/viber/voip/MyQRCodeActivity;

    invoke-static {v0}, Lcom/viber/voip/MyQRCodeActivity;->a(Lcom/viber/voip/MyQRCodeActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_0
    return-void
.end method

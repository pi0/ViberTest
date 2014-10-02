.class Lcom/android/camera/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/android/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/camera/e;->a:Lcom/android/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->f:Lcom/viber/voip/a/s;

    invoke-virtual {v1}, Lcom/viber/voip/a/s;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 182
    iget-object v0, p0, Lcom/android/camera/e;->a:Lcom/android/camera/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CropImage;->setResult(I)V

    .line 183
    iget-object v0, p0, Lcom/android/camera/e;->a:Lcom/android/camera/CropImage;

    invoke-virtual {v0}, Lcom/android/camera/CropImage;->finish()V

    .line 184
    return-void
.end method

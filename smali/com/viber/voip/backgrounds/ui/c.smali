.class Lcom/viber/voip/backgrounds/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/viber/voip/backgrounds/ui/c;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/c;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->e(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/c;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->f(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/c;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->e(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 344
    :cond_0
    return-void
.end method

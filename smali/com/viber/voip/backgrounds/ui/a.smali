.class Lcom/viber/voip/backgrounds/ui/a;
.super Lcom/viber/voip/backgrounds/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/viber/voip/backgrounds/ui/a;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-direct {p0}, Lcom/viber/voip/backgrounds/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/backgrounds/o;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/a;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->a(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 142
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/a;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/a;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/o;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/a;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->c(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 151
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/a;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/a;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    return-void
.end method

.method public b(Lcom/viber/voip/backgrounds/o;)V
    .locals 2
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/a;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->d(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 163
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/a;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/viber/voip/backgrounds/ui/a;->a:Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;->b(Lcom/viber/voip/backgrounds/ui/BackgroundGalleryActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_0
    return-void
.end method

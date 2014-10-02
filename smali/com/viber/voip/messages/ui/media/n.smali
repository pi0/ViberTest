.class Lcom/viber/voip/messages/ui/media/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/dexshared/GMaps$GoogleMap$InfoWindowAdapter;


# instance fields
.field a:Landroid/view/LayoutInflater;

.field final synthetic b:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;Landroid/view/LayoutInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/n;->b:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/n;->a:Landroid/view/LayoutInflater;

    .line 276
    iput-object p2, p0, Lcom/viber/voip/messages/ui/media/n;->a:Landroid/view/LayoutInflater;

    .line 278
    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/viber/dexshared/GMaps$Marker;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/viber/dexshared/GMaps$Marker;)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 282
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/n;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030068

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 284
    const v0, 0x7f0701a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 285
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 286
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 287
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/n;->b:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreviewActivityV2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02035b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 291
    const v0, 0x7f0701a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 292
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 294
    const v0, 0x7f0701a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    invoke-interface {p1}, Lcom/viber/dexshared/GMaps$Marker;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const v0, 0x7f0701a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 298
    invoke-interface {p1}, Lcom/viber/dexshared/GMaps$Marker;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    return-object v1
.end method

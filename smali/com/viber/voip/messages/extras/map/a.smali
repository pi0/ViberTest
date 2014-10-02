.class public Lcom/viber/voip/messages/extras/map/a;
.super Lcom/google/android/maps/Overlay;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/viber/voip/messages/extras/map/k;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/viber/voip/messages/extras/map/a;->g:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/map/a;->a(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/viber/voip/messages/extras/map/a;->e:Landroid/view/ViewGroup;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/extras/map/k;)Lcom/viber/voip/messages/extras/map/a;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 62
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/a;->f:Lcom/viber/voip/messages/extras/map/k;

    .line 63
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 69
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :goto_0
    return-object p0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public a()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    new-instance v0, Lcom/google/android/maps/MapView$LayoutParams;

    new-instance v1, Lcom/google/android/maps/GeoPoint;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/map/a;->f:Lcom/viber/voip/messages/extras/map/k;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/map/b;->a()I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/extras/map/a;->f:Lcom/viber/voip/messages/extras/map/k;

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/k;->b()Lcom/viber/voip/messages/extras/map/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/extras/map/b;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    const/16 v2, 0x51

    invoke-direct {v0, v4, v4, v1, v2}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;I)V

    .line 92
    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/a;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/map/a;->a:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 53
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 54
    const v1, 0x7f030068

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->a:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->a:Landroid/view/View;

    iget v1, p0, Lcom/viber/voip/messages/extras/map/a;->g:I

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 56
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->a:Landroid/view/View;

    const v1, 0x7f0701a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->b:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->a:Landroid/view/View;

    const v1, 0x7f0701a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->c:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->a:Landroid/view/View;

    const v1, 0x7f0701a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->d:Landroid/widget/ProgressBar;

    .line 59
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/a;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    return-void
.end method

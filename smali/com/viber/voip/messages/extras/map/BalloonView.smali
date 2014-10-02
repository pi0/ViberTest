.class public Lcom/viber/voip/messages/extras/map/BalloonView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Lcom/viber/voip/messages/extras/map/k;

.field private f:Landroid/widget/ImageView;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/map/BalloonView;->setupView(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/map/BalloonView;->setupView(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/map/BalloonView;->setupView(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/extras/map/k;)Lcom/viber/voip/messages/extras/map/BalloonView;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 59
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->e:Lcom/viber/voip/messages/extras/map/k;

    .line 60
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 66
    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/viber/voip/messages/extras/map/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :goto_0
    return-object p0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupView(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 46
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 47
    const v1, 0x7f030068

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->a:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->a:Landroid/view/View;

    iget v1, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->g:I

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 49
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->a:Landroid/view/View;

    const v1, 0x7f0701a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->b:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->a:Landroid/view/View;

    const v1, 0x7f0701a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->c:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->a:Landroid/view/View;

    const v1, 0x7f0701a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->d:Landroid/widget/ProgressBar;

    .line 52
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->f:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->f:Landroid/widget/ImageView;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/BalloonView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/map/BalloonView;->addView(Landroid/view/View;)V

    .line 56
    return-void
.end method

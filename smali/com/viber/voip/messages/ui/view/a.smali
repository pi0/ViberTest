.class public Lcom/viber/voip/messages/ui/view/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/view/a;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/view/a;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/viber/voip/messages/ui/view/a;->a:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->a:Landroid/content/Context;

    const v1, 0x7f0c0684

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->e:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/view/a;->g:I

    .line 49
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030066

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->b:Landroid/view/View;

    .line 51
    const v0, 0x7f0700ac

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->d:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f07019c

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/view/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->c:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->c:Landroid/widget/Button;

    new-instance v1, Lcom/viber/voip/messages/ui/view/b;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/view/b;-><init>(Lcom/viber/voip/messages/ui/view/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/view/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setContentTopPadding(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v2, p0, Lcom/viber/voip/messages/ui/view/a;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/ui/view/a;->g:I

    :goto_0
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    return-void

    :cond_0
    move v0, v1

    .line 72
    goto :goto_0
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 62
    iput-object p1, p0, Lcom/viber/voip/messages/ui/view/a;->f:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/view/a;->e:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/view/a;->f:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

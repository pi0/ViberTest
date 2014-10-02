.class public Lcom/viber/voip/f/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/FrameLayout;

.field private d:Z

.field private e:Lcom/viber/voip/f/h;

.field private f:Lcom/viber/voip/f/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/viber/voip/f/h;Lcom/viber/voip/f/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/viber/voip/f/f;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/viber/voip/f/f;->b:Landroid/widget/FrameLayout;

    .line 38
    iput-object p3, p0, Lcom/viber/voip/f/f;->e:Lcom/viber/voip/f/h;

    .line 39
    iput-object p4, p0, Lcom/viber/voip/f/f;->f:Lcom/viber/voip/f/i;

    .line 40
    return-void
.end method

.method public static a(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 81
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/f/f;->e:Lcom/viber/voip/f/h;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/viber/voip/f/f;->e:Lcom/viber/voip/f/h;

    iget-boolean v1, p0, Lcom/viber/voip/f/f;->d:Z

    invoke-interface {v0, v1}, Lcom/viber/voip/f/h;->e(Z)V

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/f/f;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    const v1, 0x7f03008a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/viber/voip/f/f;->c:Landroid/widget/FrameLayout;

    .line 45
    iget-object v0, p0, Lcom/viber/voip/f/f;->c:Landroid/widget/FrameLayout;

    const v1, 0x7f070221

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/viber/voip/f/f;->c:Landroid/widget/FrameLayout;

    const v1, 0x7f070215

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v0, p0, Lcom/viber/voip/f/f;->c:Landroid/widget/FrameLayout;

    const v1, 0x7f070222

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    iget-object v1, p0, Lcom/viber/voip/f/f;->c:Landroid/widget/FrameLayout;

    const v2, 0x7f070223

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/viber/voip/f/f;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 50
    iget-object v3, p0, Lcom/viber/voip/f/f;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/viber/voip/f/g;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/viber/voip/f/g;-><init>(Lcom/viber/voip/f/f;Landroid/widget/ImageView;Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/f/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 71
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 72
    const/16 v0, 0x50

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 73
    iget-object v0, p0, Lcom/viber/voip/f/f;->b:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/viber/voip/f/f;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/f/f;->d:Z

    .line 75
    invoke-direct {p0}, Lcom/viber/voip/f/f;->d()V

    .line 76
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/f/f;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/viber/voip/f/f;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/f/f;->d:Z

    .line 86
    invoke-direct {p0}, Lcom/viber/voip/f/f;->d()V

    .line 87
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/viber/voip/f/f;->d:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 103
    :sswitch_0
    iget-object v0, p0, Lcom/viber/voip/f/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->S:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/f/f;->a:Landroid/content/Context;

    const v3, 0x7f0c0651

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ui/GenericWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/viber/voip/f/f;->b()V

    .line 105
    iget-object v0, p0, Lcom/viber/voip/f/f;->f:Lcom/viber/voip/f/i;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/viber/voip/f/f;->f:Lcom/viber/voip/f/i;

    invoke-interface {v0}, Lcom/viber/voip/f/i;->a()V

    goto :goto_0

    .line 110
    :sswitch_1
    invoke-virtual {p0}, Lcom/viber/voip/f/f;->b()V

    .line 111
    iget-object v0, p0, Lcom/viber/voip/f/f;->f:Lcom/viber/voip/f/i;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/viber/voip/f/f;->f:Lcom/viber/voip/f/i;

    invoke-interface {v0}, Lcom/viber/voip/f/i;->b()V

    goto :goto_0

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x7f070215 -> :sswitch_1
        0x7f070221 -> :sswitch_0
    .end sparse-switch
.end method

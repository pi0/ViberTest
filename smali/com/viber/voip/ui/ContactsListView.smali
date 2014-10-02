.class public Lcom/viber/voip/ui/ContactsListView;
.super Lcom/viber/voip/ui/t;
.source "SourceFile"


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private a:I

.field private b:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 26
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0d0164

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/t;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0d0164

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/ui/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0d0164

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2, p3}, Lcom/viber/voip/ui/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/ui/ak;)V
    .locals 2
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/viber/voip/ui/ContactsListView;->z:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ui/ContactsListView;->o:Lcom/viber/voip/ui/ai;

    iget-object v0, v0, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ui/ContactsListView;->A:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/ui/ak;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ui/ContactsListView;->B:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/ui/ak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ui/ContactsListView;->A:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/viber/voip/ui/ak;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/viber/voip/ui/ContactsListView;->B:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/viber/voip/ui/ak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/ui/ContactsListView;->z:Z

    .line 80
    :cond_1
    return-void
.end method

.method public a(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/viber/voip/ui/ContactsListView;->o:Lcom/viber/voip/ui/ai;

    iget-object v0, v0, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    const v1, 0x7f070246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    iget v1, p0, Lcom/viber/voip/ui/ContactsListView;->a:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 91
    iget v1, p0, Lcom/viber/voip/ui/ContactsListView;->b:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 93
    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 95
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/viber/voip/util/gl;->a(Landroid/widget/ListView;I)V

    .line 98
    :cond_1
    const v0, 0x7f0200c6

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/ui/ContactsListView;->o:Lcom/viber/voip/ui/ai;

    iget-object v1, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 103
    return-void

    .line 100
    :cond_2
    const v0, 0x7f0200c5

    goto :goto_0
.end method

.method protected c()Lcom/viber/voip/ui/ai;
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/viber/voip/ui/ContactsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    const v1, 0x7f0a0146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/ui/ContactsListView;->a:I

    .line 57
    const v1, 0x7f0a0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/ContactsListView;->b:I

    .line 59
    new-instance v1, Lcom/viber/voip/ui/ai;

    invoke-direct {v1}, Lcom/viber/voip/ui/ai;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/viber/voip/ui/ContactsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f030093

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/viber/voip/ui/ContactsListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    .line 61
    iget-object v0, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    const v2, 0x7f070246

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/viber/voip/ui/ai;->f:Landroid/view/View;

    .line 62
    iget-object v0, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    const v2, 0x7f0700ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/ui/ContactsListView;->B:Landroid/widget/TextView;

    .line 65
    iget-object v0, v1, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    const v2, 0x7f070247

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/ui/ContactsListView;->A:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/viber/voip/ui/ContactsListView;->A:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    return-object v1
.end method

.method protected getHeaderTag()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f07009c

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super/range {p0 .. p5}, Lcom/viber/voip/ui/t;->onLayout(ZIIII)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/ui/ContactsListView;->z:Z

    .line 41
    return-void
.end method

.method public setupViews(Z)V
    .locals 1
    .parameter

    .prologue
    .line 83
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/ui/ContactsListView;->a(ZZ)V

    .line 84
    return-void
.end method

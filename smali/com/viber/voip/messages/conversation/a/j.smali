.class Lcom/viber/voip/messages/conversation/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a/g;

.field private b:Landroid/view/View;

.field private c:Lcom/viber/voip/messages/conversation/h;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/conversation/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/j;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/conversation/a/g;Lcom/viber/voip/messages/conversation/a/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/j;-><init>(Lcom/viber/voip/messages/conversation/a/g;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/a/j;)Lcom/viber/voip/messages/conversation/h;
    .locals 1
    .parameter

    .prologue
    .line 382
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->c:Lcom/viber/voip/messages/conversation/h;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/j;->d()V

    return-void
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 431
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->c:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->c:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->c:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->c:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->j()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->c:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/block/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    const v1, 0x7f0702e2

    .line 438
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    .line 440
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->b:Landroid/view/View;

    const v2, 0x7f0702e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/AutoFitButton;

    .line 441
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/AutoFitButton;->setDisableOnSizeChanged(Z)V

    .line 442
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/widget/AutoFitButton;->setTextSize(IF)V

    .line 444
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/a/g;->a(Lcom/viber/voip/messages/conversation/a/g;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f0702df

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->b:Landroid/view/View;

    .line 388
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->b:Landroid/view/View;

    const v1, 0x7f0702e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/a/k;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/a/k;-><init>(Lcom/viber/voip/messages/conversation/a/j;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->b:Landroid/view/View;

    const v1, 0x7f0702e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/AutoFitButton;

    .line 399
    new-instance v1, Lcom/viber/voip/messages/conversation/a/l;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/a/l;-><init>(Lcom/viber/voip/messages/conversation/a/j;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/AutoFitButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    new-instance v1, Lcom/viber/voip/messages/conversation/a/m;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/a/m;-><init>(Lcom/viber/voip/messages/conversation/a/j;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/AutoFitButton;->setOnSizeChangedListener(Lcom/viber/voip/widget/a;)V

    .line 417
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/j;->c:Lcom/viber/voip/messages/conversation/h;

    .line 427
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/j;->b()V

    .line 428
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 420
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/j;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 421
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/j;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :cond_0
    return-void

    .line 421
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/j;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/a/j;->a(Z)V

    .line 448
    return-void

    .line 447
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

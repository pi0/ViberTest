.class public Lcom/viber/voip/ui/y;
.super Lcom/viber/voip/ui/ai;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field private k:I

.field private final l:I

.field private final m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/viber/voip/ui/ai;-><init>()V

    .line 405
    const/high16 v0, 0x4270

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/ui/y;->j:I

    .line 406
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/y;->e:Landroid/view/View;

    .line 407
    iget-object v0, p0, Lcom/viber/voip/ui/y;->e:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/ui/y;->b:Landroid/widget/TextView;

    .line 408
    iget-object v0, p0, Lcom/viber/voip/ui/y;->e:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/ui/y;->a:Landroid/widget/ImageView;

    .line 410
    iput p5, p0, Lcom/viber/voip/ui/y;->l:I

    .line 411
    iput p6, p0, Lcom/viber/voip/ui/y;->m:I

    .line 413
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0xfa

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 416
    iget v0, p0, Lcom/viber/voip/ui/y;->k:I

    if-ne v0, p1, :cond_0

    .line 435
    :goto_0
    return-void

    .line 419
    :cond_0
    iget v0, p0, Lcom/viber/voip/ui/y;->k:I

    if-ne v0, v6, :cond_5

    if-ne p1, v5, :cond_5

    iget-object v0, p0, Lcom/viber/voip/ui/y;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/ui/y;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 421
    iget-object v0, p0, Lcom/viber/voip/ui/y;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/viber/voip/ui/y;->l:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 422
    iget-object v0, p0, Lcom/viber/voip/ui/y;->a:Landroid/widget/ImageView;

    const-string/jumbo v3, "rotation"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    .line 432
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/viber/voip/ui/y;->b:Landroid/widget/TextView;

    if-eq p1, v5, :cond_2

    if-ne p1, v6, :cond_8

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/viber/voip/ui/y;->a:Landroid/widget/ImageView;

    if-eq p1, v5, :cond_3

    if-ne p1, v6, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    iput p1, p0, Lcom/viber/voip/ui/y;->k:I

    goto :goto_0

    .line 424
    :cond_5
    iget v0, p0, Lcom/viber/voip/ui/y;->k:I

    if-ne v0, v5, :cond_6

    if-ne p1, v6, :cond_6

    iget-object v0, p0, Lcom/viber/voip/ui/y;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/viber/voip/ui/y;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 425
    iget-object v0, p0, Lcom/viber/voip/ui/y;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/viber/voip/ui/y;->m:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 426
    iget-object v0, p0, Lcom/viber/voip/ui/y;->a:Landroid/widget/ImageView;

    const-string/jumbo v3, "rotation"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v0, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 427
    :cond_6
    iget v0, p0, Lcom/viber/voip/ui/y;->k:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    iget v0, p0, Lcom/viber/voip/ui/y;->k:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    :cond_7
    if-ne p1, v5, :cond_1

    iget-object v0, p0, Lcom/viber/voip/ui/y;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/ui/y;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/viber/voip/ui/y;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/viber/voip/ui/y;->l:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 429
    iget-object v0, p0, Lcom/viber/voip/ui/y;->a:Landroid/widget/ImageView;

    const-string/jumbo v3, "rotation"

    new-array v4, v5, [F

    fill-array-data v4, :array_2

    invoke-static {v0, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_8
    move v0, v1

    .line 432
    goto :goto_2

    .line 422
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x34t 0xc3t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 426
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x34t 0xc3t
    .end array-data

    .line 429
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.class public Lcom/viber/voip/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/x;


# instance fields
.field final synthetic a:Lcom/viber/voip/ConversationListView;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/ConversationListView;)V
    .locals 3
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/viber/voip/z;->a:Lcom/viber/voip/ConversationListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/z;->b:I

    .line 457
    invoke-virtual {p1}, Lcom/viber/voip/ConversationListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030114

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/z;->c:Landroid/view/View;

    .line 459
    iget-object v0, p0, Lcom/viber/voip/z;->c:Landroid/view/View;

    const v1, 0x7f07038f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/z;->d:Landroid/widget/TextView;

    .line 461
    iget-object v0, p0, Lcom/viber/voip/z;->c:Landroid/view/View;

    const v1, 0x7f070390

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/z;->e:Landroid/widget/ProgressBar;

    .line 463
    const/high16 v0, 0x4270

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/z;->f:I

    .line 464
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/viber/voip/z;->c:Landroid/view/View;

    return-object v0
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 467
    iget v0, p0, Lcom/viber/voip/z;->b:I

    if-ne v0, p1, :cond_1

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iput p1, p0, Lcom/viber/voip/z;->b:I

    .line 473
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 486
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/z;->e:Landroid/widget/ProgressBar;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 489
    if-eqz v0, :cond_0

    .line 490
    iget-object v1, p0, Lcom/viber/voip/z;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 475
    :pswitch_0
    const v0, 0x7f0c0514

    .line 476
    goto :goto_1

    .line 478
    :pswitch_1
    const v0, 0x7f0c0515

    .line 479
    invoke-virtual {p0}, Lcom/viber/voip/z;->c()V

    goto :goto_1

    .line 486
    :cond_2
    const/16 v1, 0x8

    goto :goto_2

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/viber/voip/z;->f:I

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 506
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const v1, 0x7f040005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 509
    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 510
    new-instance v1, Lcom/viber/voip/aa;

    invoke-direct {v1, p0}, Lcom/viber/voip/aa;-><init>(Lcom/viber/voip/z;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 525
    iget-object v1, p0, Lcom/viber/voip/z;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 526
    return-void
.end method

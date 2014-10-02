.class Lcom/viber/voip/contacts/ui/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/viber/voip/contacts/ui/bu;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/bu;ILandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iput p2, p0, Lcom/viber/voip/contacts/ui/bv;->a:I

    iput-object p3, p0, Lcom/viber/voip/contacts/ui/bv;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x8

    .line 161
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/viber/voip/contacts/ui/bv;->a:I

    if-eq v0, v5, :cond_1

    move v0, v1

    .line 162
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v3, v3, Lcom/viber/voip/contacts/ui/bu;->q:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/viber/voip/contacts/ui/bv;->a:I

    if-ne v3, v5, :cond_2

    .line 163
    :goto_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_0
    :goto_2
    iget v0, p0, Lcom/viber/voip/contacts/ui/bv;->a:I

    packed-switch v0, :pswitch_data_0

    .line 190
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 161
    goto :goto_0

    :cond_2
    move v1, v2

    .line 162
    goto :goto_1

    .line 166
    :cond_3
    if-eqz v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bv;->b:Landroid/app/Activity;

    const v3, 0x7f040019

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 175
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->r:Landroid/widget/TextView;

    const v1, 0x7f0c0335

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->o:Lcom/viber/voip/ui/ViberTextView;

    invoke-virtual {v0, v4}, Lcom/viber/voip/ui/ViberTextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->r:Landroid/widget/TextView;

    const v1, 0x7f0c0337

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->o:Lcom/viber/voip/ui/ViberTextView;

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/ViberTextView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->r:Landroid/widget/TextView;

    const v1, 0x7f0c0336

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->o:Lcom/viber/voip/ui/ViberTextView;

    invoke-virtual {v0, v4}, Lcom/viber/voip/ui/ViberTextView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bv;->c:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

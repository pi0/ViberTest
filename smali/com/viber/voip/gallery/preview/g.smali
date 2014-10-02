.class Lcom/viber/voip/gallery/preview/g;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;ILjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/g;->c:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    iput p2, p0, Lcom/viber/voip/gallery/preview/g;->a:I

    iput-object p3, p0, Lcom/viber/voip/gallery/preview/g;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/g;->c:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 369
    iget v1, p0, Lcom/viber/voip/gallery/preview/g;->a:I

    packed-switch v1, :pswitch_data_0

    .line 383
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 384
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/g;->c:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    iget-object v0, v0, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/g;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/g;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 386
    :cond_0
    return-void

    .line 371
    :pswitch_0
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/g;->c:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    iget-object v1, v1, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 372
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/g;->c:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    invoke-static {v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->b(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;)Lcom/viber/voip/gallery/preview/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 375
    :pswitch_1
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/g;->c:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    iget-object v1, v1, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 376
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/g;->c:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    invoke-static {v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;)Lcom/viber/voip/gallery/preview/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 379
    :pswitch_2
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/g;->c:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    iget-object v1, v1, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 380
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/g;->c:Lcom/viber/voip/gallery/preview/DoodleBaseActivity;

    invoke-static {v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d(Lcom/viber/voip/gallery/preview/DoodleBaseActivity;)Lcom/viber/voip/gallery/preview/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0x7f07024e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

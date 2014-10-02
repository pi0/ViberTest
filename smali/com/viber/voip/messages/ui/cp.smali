.class Lcom/viber/voip/messages/ui/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cp;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 358
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cp;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/viber/voip/messages/ui/cp;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->k(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v1, p0, Lcom/viber/voip/messages/ui/cp;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/ui/MessageComposerView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 362
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cp;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->l(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cp;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->k(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/cq;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/cq;-><init>(Lcom/viber/voip/messages/ui/cp;)V

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/widget/RadioButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    :cond_0
    return-void
.end method

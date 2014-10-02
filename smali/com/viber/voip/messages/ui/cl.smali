.class Lcom/viber/voip/messages/ui/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cl;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/cl;->a:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cl;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->D(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1065
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cl;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->D(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/cl;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1066
    return-void
.end method

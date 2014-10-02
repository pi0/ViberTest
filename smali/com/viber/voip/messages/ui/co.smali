.class Lcom/viber/voip/messages/ui/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/viber/voip/messages/ui/co;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/viber/voip/messages/ui/co;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->j(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/cw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/cw;->a(Z)V

    .line 337
    return-void
.end method

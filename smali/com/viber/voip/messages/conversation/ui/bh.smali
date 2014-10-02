.class Lcom/viber/voip/messages/conversation/ui/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/bj;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ba;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bh;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bh;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Lcom/viber/voip/messages/conversation/ui/ba;)Lcom/viber/voip/messages/ui/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/aj;->f()V

    .line 240
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bh;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(IILandroid/view/View;)V

    .line 241
    return-void
.end method

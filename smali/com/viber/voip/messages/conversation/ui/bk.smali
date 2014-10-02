.class Lcom/viber/voip/messages/conversation/ui/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/bj;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bk;->a:Lcom/viber/voip/messages/conversation/ui/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bk;->a:Lcom/viber/voip/messages/conversation/ui/bj;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/bj;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->d()V

    .line 269
    return-void
.end method

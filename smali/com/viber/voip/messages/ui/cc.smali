.class Lcom/viber/voip/messages/ui/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic b:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cc;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/cc;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cc;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->A(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/conversation/ao;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/cc;->a:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/ao;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 802
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cc;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->j(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/cw;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/cw;->a(Z)V

    .line 803
    return-void
.end method

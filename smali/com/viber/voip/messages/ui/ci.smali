.class Lcom/viber/voip/messages/ui/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/ae;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 949
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ci;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 952
    if-eqz p1, :cond_0

    .line 953
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ci;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->o(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    .line 954
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ci;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->p(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/cj;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/ui/cj;-><init>(Lcom/viber/voip/messages/ui/ci;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 961
    :cond_0
    return-void
.end method

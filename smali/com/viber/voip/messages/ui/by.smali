.class Lcom/viber/voip/messages/ui/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/viber/voip/messages/ui/by;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/by;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/viber/voip/messages/ui/by;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    new-instance v1, Lcom/viber/voip/messages/ui/bz;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/bz;-><init>(Lcom/viber/voip/messages/ui/by;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/ui/MessageComposerView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 705
    iget-object v0, p0, Lcom/viber/voip/messages/ui/by;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->m(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/viber/voip/messages/ui/by;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->n(Lcom/viber/voip/messages/ui/MessageComposerView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 707
    iget-object v0, p0, Lcom/viber/voip/messages/ui/by;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/ui/MessageComposerView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 709
    :cond_0
    return-void
.end method

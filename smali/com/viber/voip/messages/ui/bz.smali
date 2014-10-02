.class Lcom/viber/voip/messages/ui/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/by;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/by;)V
    .locals 0
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bz;->a:Lcom/viber/voip/messages/ui/by;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 700
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bz;->a:Lcom/viber/voip/messages/ui/by;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/by;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->m(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/d;

    move-result-object v0

    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/viber/voip/messages/ui/bz;->a:Lcom/viber/voip/messages/ui/by;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/by;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/d;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lcom/viber/voip/messages/ui/bz;->a:Lcom/viber/voip/messages/ui/by;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/by;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 702
    return-void
.end method

.class Lcom/viber/voip/messages/ui/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/cr;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/cr;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cs;->a:Lcom/viber/voip/messages/ui/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cs;->a:Lcom/viber/voip/messages/ui/cr;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/cr;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    const v1, 0x7f060019

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/ui/MessageComposerView;I)V

    .line 398
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cs;->a:Lcom/viber/voip/messages/ui/cr;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/cr;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->m(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/d;

    move-result-object v0

    const-string/jumbo v1, "sticker"

    iget-object v2, p0, Lcom/viber/voip/messages/ui/cs;->a:Lcom/viber/voip/messages/ui/cr;

    iget-wide v2, v2, Lcom/viber/voip/messages/ui/cr;->a:J

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/d;->a(Ljava/lang/String;J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/viber/voip/messages/ui/cs;->a:Lcom/viber/voip/messages/ui/cr;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/cr;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 400
    return-void
.end method

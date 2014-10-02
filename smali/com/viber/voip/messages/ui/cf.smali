.class Lcom/viber/voip/messages/ui/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 871
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cf;->c:Lcom/viber/voip/messages/ui/MessageComposerView;

    iput p2, p0, Lcom/viber/voip/messages/ui/cf;->a:I

    iput p3, p0, Lcom/viber/voip/messages/ui/cf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 874
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cf;->c:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->m(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/d;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/ui/cf;->a:I

    iget v2, p0, Lcom/viber/voip/messages/ui/cf;->b:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/d;->a(IILjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 876
    iget-object v1, p0, Lcom/viber/voip/messages/ui/cf;->c:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->C(Lcom/viber/voip/messages/ui/MessageComposerView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setRecipientNumber(Ljava/lang/String;)V

    .line 877
    iget-object v1, p0, Lcom/viber/voip/messages/ui/cf;->c:Lcom/viber/voip/messages/ui/MessageComposerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 878
    return-void
.end method

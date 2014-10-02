.class Lcom/viber/voip/messages/ui/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ce;->d:Lcom/viber/voip/messages/ui/MessageComposerView;

    iput p2, p0, Lcom/viber/voip/messages/ui/ce;->a:I

    iput p3, p0, Lcom/viber/voip/messages/ui/ce;->b:I

    iput-object p4, p0, Lcom/viber/voip/messages/ui/ce;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 856
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ce;->d:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->m(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/d;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/ui/ce;->a:I

    iget v2, p0, Lcom/viber/voip/messages/ui/ce;->b:I

    iget-object v3, p0, Lcom/viber/voip/messages/ui/ce;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/d;->a(IILjava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ce;->d:Lcom/viber/voip/messages/ui/MessageComposerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    .line 858
    return-void
.end method

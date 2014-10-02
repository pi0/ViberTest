.class Lcom/viber/voip/messages/ui/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cr;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    iput-wide p2, p0, Lcom/viber/voip/messages/ui/cr;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cr;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    new-instance v1, Lcom/viber/voip/messages/ui/cs;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/cs;-><init>(Lcom/viber/voip/messages/ui/cr;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/ui/MessageComposerView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 403
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cr;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->m(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cr;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->n(Lcom/viber/voip/messages/ui/MessageComposerView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 405
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cr;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/ui/MessageComposerView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 407
    :cond_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/cr;->b:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->f(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/a/m;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/a/m;->b:Lcom/viber/voip/a/ac;

    iget-wide v2, p0, Lcom/viber/voip/messages/ui/cr;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ac;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 408
    return-void
.end method

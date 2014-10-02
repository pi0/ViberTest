.class Lcom/viber/voip/messages/conversation/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/bb;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/bd;->a:Lcom/viber/voip/messages/conversation/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 246
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bd;->a:Lcom/viber/voip/messages/conversation/bb;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bd;->a:Lcom/viber/voip/messages/conversation/bb;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/bd;->a:Lcom/viber/voip/messages/conversation/bb;

    iget-object v2, v2, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v2

    iget v2, v2, Lcom/viber/voip/messages/conversation/bi;->a:I

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/bd;->a:Lcom/viber/voip/messages/conversation/bb;

    iget-object v3, v3, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v3}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/conversation/bi;->b:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;Landroid/text/Spannable;IIZ)V

    .line 247
    return-void
.end method

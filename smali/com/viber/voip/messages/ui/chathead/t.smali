.class Lcom/viber/voip/messages/ui/chathead/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/t;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 1745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDismiss: mIsReopened"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/t;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->N(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Ljava/lang/String;)V

    .line 1746
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/t;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->p()V

    .line 1747
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/t;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->f()V

    .line 1748
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/t;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->g()V

    .line 1749
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/t;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->N(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1750
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/t;->a:Lcom/viber/voip/messages/ui/chathead/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 1751
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/t;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->a(Z)V

    .line 1752
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/t;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->l(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/t;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->Y(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1753
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/t;->a:Lcom/viber/voip/messages/ui/chathead/d;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/d;I)V

    .line 1758
    :cond_1
    :goto_0
    return-void

    .line 1755
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/t;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->Z(Lcom/viber/voip/messages/ui/chathead/d;)V

    goto :goto_0
.end method

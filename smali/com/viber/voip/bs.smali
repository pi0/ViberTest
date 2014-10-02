.class Lcom/viber/voip/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/i;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/viber/voip/bs;->b:Lcom/viber/voip/SystemDialogActivity;

    iput-object p2, p0, Lcom/viber/voip/bs;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 414
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 416
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p1, p1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 422
    invoke-interface {v0, v2}, Lcom/viber/voip/contacts/b/b;->b(Ljava/lang/String;)Lcom/viber/voip/contacts/b/i;

    move-result-object v1

    .line 424
    if-eqz v1, :cond_0

    move-object v5, v0

    move-object v0, v1

    .line 431
    :goto_0
    if-eqz v5, :cond_1

    if-nez v0, :cond_2

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/bs;->b:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/bs;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/SystemDialogActivity;->a(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V

    .line 445
    :goto_1
    return-void

    .line 434
    :cond_2
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v1

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/b;->c()J

    move-result-wide v3

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 436
    const-string/jumbo v1, "com.viber.voip.action.PRE_CONVERSATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string/jumbo v1, "send_1to1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 439
    iget-object v1, p0, Lcom/viber/voip/bs;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/SystemDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 440
    iget-object v0, p0, Lcom/viber/voip/bs;->b:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/bs;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-static {v1}, Lcom/viber/voip/SystemDialogActivity;->a(Lcom/viber/voip/SystemDialogActivity;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/DialogInterface;)V

    goto :goto_1

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/bs;->b:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/bs;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/SystemDialogActivity;->a(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, v6

    move-object v5, v6

    goto :goto_0
.end method

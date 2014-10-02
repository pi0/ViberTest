.class Lcom/viber/voip/messages/ui/chathead/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/internal/view/menu/MenuBuilder$Callback;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/r;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 396
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 409
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 398
    :pswitch_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/r;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->c()V

    .line 399
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/r;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->a(Lcom/viber/voip/messages/ui/chathead/a/l;)Lcom/viber/voip/messages/ui/chathead/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/chathead/a/b;->d(Z)V

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/r;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->c()V

    .line 403
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    const-string/jumbo v2, "selected_item"

    const v3, 0x7f0c029f

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/a/r;->a:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/a/l;->f(Lcom/viber/voip/messages/ui/chathead/a/l;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    :pswitch_data_0
    .packed-switch 0x7f070074
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuModeChange(Lcom/actionbarsherlock/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    return-void
.end method

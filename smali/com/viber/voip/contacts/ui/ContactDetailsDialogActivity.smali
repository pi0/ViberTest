.class public Lcom/viber/voip/contacts/ui/ContactDetailsDialogActivity;
.super Lcom/viber/voip/contacts/ui/ContactDetailsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;Z)V

    .line 17
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 32
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 29
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsDialogActivity;->finish()V

    .line 30
    const/4 v0, 0x1

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

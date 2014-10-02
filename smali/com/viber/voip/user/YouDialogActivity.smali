.class public Lcom/viber/voip/user/YouDialogActivity;
.super Lcom/viber/voip/user/YouActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/viber/voip/user/YouActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isActionBarWithShadow()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 14
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/viber/voip/util/gl;->a(Landroid/app/Activity;Z)V

    .line 17
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/user/YouActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/viber/voip/user/YouDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200c5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 20
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 34
    invoke-super {p0, p1}, Lcom/viber/voip/user/YouActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 31
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/user/YouDialogActivity;->finish()V

    .line 32
    const/4 v0, 0x1

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

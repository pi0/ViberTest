.class public Lcom/viber/voip/block/BlockListActivity;
.super Lcom/viber/voip/app/ViberSingleFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/viber/voip/block/e;

    invoke-direct {v0}, Lcom/viber/voip/block/e;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/viber/voip/block/BlockListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 21
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 22
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 23
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
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 29
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/block/BlockListActivity;->finish()V

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

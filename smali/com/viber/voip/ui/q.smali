.class public abstract Lcom/viber/voip/ui/q;
.super Lcom/viber/voip/ui/an;
.source "SourceFile"


# instance fields
.field private mNewPackageCountListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/viber/voip/ui/an;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNewPackagesCount()I
    .locals 4

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/viber/voip/ui/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/viber/voip/ui/q;->mNewPackageCountListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 25
    new-instance v1, Lcom/viber/voip/ui/r;

    invoke-direct {v1, p0}, Lcom/viber/voip/ui/r;-><init>(Lcom/viber/voip/ui/q;)V

    iput-object v1, p0, Lcom/viber/voip/ui/q;->mNewPackageCountListener:Landroid/content/BroadcastReceiver;

    .line 31
    iget-object v1, p0, Lcom/viber/voip/ui/q;->mNewPackageCountListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.viber.voip.stickers.notification.UPDATE_STICKER_PACKAGES_COUNT_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    :cond_0
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->a()I

    move-result v0

    return v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/ui/q;->mNewPackageCountListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/viber/voip/ui/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/viber/voip/ui/q;->mNewPackageCountListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/ui/q;->mNewPackageCountListener:Landroid/content/BroadcastReceiver;

    .line 46
    :cond_1
    invoke-super {p0}, Lcom/viber/voip/ui/an;->onDestroyView()V

    .line 47
    return-void
.end method

.method public abstract onNewStickerPackageCountChanged(I)V
.end method

.method protected setMoreOptionMenuIcon(Lcom/actionbarsherlock/view/MenuItem;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    if-lez p2, :cond_1

    const v0, 0x7f0202fb

    :goto_0
    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 53
    :cond_0
    return-void

    .line 51
    :cond_1
    const v0, 0x7f0202fa

    goto :goto_0
.end method

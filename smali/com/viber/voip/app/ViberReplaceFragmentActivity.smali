.class public abstract Lcom/viber/voip/app/ViberReplaceFragmentActivity;
.super Lcom/viber/voip/app/ViberSingleFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberReplaceFragmentActivity;->b()Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/app/ViberReplaceFragmentActivity;->a:Landroid/support/v4/app/Fragment;

    .line 16
    invoke-virtual {p0}, Lcom/viber/voip/app/ViberReplaceFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f070094

    iget-object v2, p0, Lcom/viber/voip/app/ViberReplaceFragmentActivity;->a:Landroid/support/v4/app/Fragment;

    const-string/jumbo v3, "single_pane"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 19
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    return-void
.end method

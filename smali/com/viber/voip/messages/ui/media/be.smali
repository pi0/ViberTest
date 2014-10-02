.class public Lcom/viber/voip/messages/ui/media/be;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/be;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method protected e()Z
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/be;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 35
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/be;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 47
    const v0, 0x7f0c038c

    .line 48
    packed-switch v1, :pswitch_data_0

    .line 66
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/be;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :pswitch_1
    const v0, 0x7f0c03a2

    .line 51
    goto :goto_0

    .line 53
    :pswitch_2
    const v0, 0x7f0c0441

    .line 54
    goto :goto_0

    .line 56
    :pswitch_3
    const v0, 0x7f0c0460

    .line 57
    goto :goto_0

    .line 59
    :pswitch_4
    const v0, 0x7f0c0456

    .line 60
    goto :goto_0

    .line 62
    :pswitch_5
    const v0, 0x7f0c039b

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

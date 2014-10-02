.class Lcom/viber/voip/an;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/HomeActivity;


# direct methods
.method public constructor <init>(Lcom/viber/voip/HomeActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/viber/voip/an;->a:Lcom/viber/voip/HomeActivity;

    .line 722
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 723
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/viber/voip/an;->a:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->f(Lcom/viber/voip/HomeActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter

    .prologue
    .line 727
    packed-switch p1, :pswitch_data_0

    .line 737
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 729
    :pswitch_0
    new-instance v0, Lcom/viber/voip/messages/ui/dp;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/dp;-><init>()V

    goto :goto_0

    .line 731
    :pswitch_1
    new-instance v0, Lcom/viber/voip/contacts/ui/bm;

    invoke-direct {v0}, Lcom/viber/voip/contacts/ui/bm;-><init>()V

    goto :goto_0

    .line 733
    :pswitch_2
    new-instance v0, Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-direct {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;-><init>()V

    goto :goto_0

    .line 735
    :pswitch_3
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/bf;

    invoke-direct {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;-><init>()V

    goto :goto_0

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

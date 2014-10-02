.class Lcom/viber/voip/settings/ui/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/settings/ui/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/j;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/viber/voip/settings/ui/ah;->b:Lcom/viber/voip/settings/ui/j;

    iput-object p2, p0, Lcom/viber/voip/settings/ui/ah;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 730
    invoke-static {}, Lcom/viber/voip/viberout/e;->a()V

    .line 731
    iget-object v0, p0, Lcom/viber/voip/settings/ui/ah;->b:Lcom/viber/voip/settings/ui/j;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "Viber out trial prefs have been reset"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 734
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/settings/ui/ah;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 735
    iget-object v2, p0, Lcom/viber/voip/settings/ui/ah;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 740
    :goto_1
    const/4 v2, 0x3

    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "changed VO installation type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/viber/voip/settings/ui/ah;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 742
    packed-switch v0, :pswitch_data_0

    .line 757
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/settings/ui/ah;->b:Lcom/viber/voip/settings/ui/j;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/viber/voip/ViberApplication;->exit(Landroid/app/Activity;Z)V

    .line 758
    return v6

    .line 734
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 744
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "PREF_VO_MANUAL_EXPOSURE_ENABLED"

    invoke-interface {v0, v2, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 745
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "vo_exposure"

    invoke-interface {v0, v2, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    goto :goto_2

    .line 748
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "PREF_VO_MANUAL_EXPOSURE_ENABLED"

    invoke-interface {v0, v2, v6}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 749
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "vo_exposure"

    invoke-interface {v0, v2, v6}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    goto :goto_2

    .line 752
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "PREF_VO_MANUAL_EXPOSURE_ENABLED"

    invoke-interface {v0, v2, v6}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 753
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "vo_exposure"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_1

    .line 742
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

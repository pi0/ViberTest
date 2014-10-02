.class Lcom/viber/voip/settings/ui/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/j;)V
    .locals 0
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Lcom/viber/voip/settings/ui/ao;->a:Lcom/viber/voip/settings/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 909
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/settings/ui/ao;->a:Lcom/viber/voip/settings/ui/j;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/viber/voip/settings/ui/ao;->a:Lcom/viber/voip/settings/ui/j;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/j;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/viber/voip/f/j;->a(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/viber/voip/f/h;)V

    .line 911
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/f/j;->b(Z)V

    .line 912
    return v4
.end method

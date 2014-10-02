.class Lcom/viber/voip/settings/ui/ar;
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
    .line 226
    iput-object p1, p0, Lcom/viber/voip/settings/ui/ar;->a:Lcom/viber/voip/settings/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/viber/voip/settings/ui/ar;->a:Lcom/viber/voip/settings/ui/j;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/j;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/ViberApplication;->exit(Landroid/app/Activity;Z)V

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.class Lcom/viber/voip/settings/ui/bs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/settings/ui/bj;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bj;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bs;->b:Lcom/viber/voip/settings/ui/bj;

    iput-object p2, p0, Lcom/viber/voip/settings/ui/bs;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 225
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bs;->b:Lcom/viber/voip/settings/ui/bj;

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    invoke-virtual {v1, v5}, Lcom/viber/voip/a/an;->l(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/an;->l(Z)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/settings/ui/bs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/settings/ui/bj;->a(Lcom/viber/voip/a/x;Lcom/viber/voip/a/x;ZLjava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bs;->b:Lcom/viber/voip/settings/ui/bj;

    iget-object v0, v0, Lcom/viber/voip/settings/ui/bj;->e:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/viber/voip/settings/ui/bs;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 227
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bs;->b:Lcom/viber/voip/settings/ui/bj;

    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 230
    :cond_0
    return-void
.end method

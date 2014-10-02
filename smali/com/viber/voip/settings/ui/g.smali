.class Lcom/viber/voip/settings/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/preference/CheckBoxPreference;

.field final synthetic b:Lcom/viber/voip/settings/ui/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/a;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/viber/voip/settings/ui/g;->b:Lcom/viber/voip/settings/ui/a;

    iput-object p2, p0, Lcom/viber/voip/settings/ui/g;->a:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/viber/voip/settings/ui/g;->a:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->ap()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    iget-object v0, p0, Lcom/viber/voip/settings/ui/g;->b:Lcom/viber/voip/settings/ui/a;

    iget-object v0, v0, Lcom/viber/voip/settings/ui/a;->e:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/viber/voip/settings/j;->ao()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 221
    return-void
.end method

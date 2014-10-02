.class Lcom/viber/voip/settings/ui/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/settings/ui/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/j;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 787
    iput-object p1, p0, Lcom/viber/voip/settings/ui/aj;->b:Lcom/viber/voip/settings/ui/j;

    iput-object p2, p0, Lcom/viber/voip/settings/ui/aj;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 790
    check-cast p1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 791
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/settings/ui/aj;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 792
    const/4 v0, 0x1

    return v0
.end method

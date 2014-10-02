.class Lcom/viber/voip/settings/ui/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Landroid/preference/ListPreference;

.field final synthetic b:Lcom/viber/voip/settings/ui/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/j;Landroid/preference/ListPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/viber/voip/settings/ui/as;->b:Lcom/viber/voip/settings/ui/j;

    iput-object p2, p0, Lcom/viber/voip/settings/ui/as;->a:Landroid/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 346
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sever config changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->showToast(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/viber/voip/settings/ui/as;->a:Landroid/preference/ListPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current server type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 349
    iget-object v0, p0, Lcom/viber/voip/settings/ui/as;->b:Lcom/viber/voip/settings/ui/j;

    invoke-static {v0}, Lcom/viber/voip/settings/ui/j;->a(Lcom/viber/voip/settings/ui/j;)V

    .line 350
    const/4 v0, 0x1

    return v0
.end method

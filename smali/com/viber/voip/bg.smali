.class Lcom/viber/voip/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Landroid/preference/CheckBoxPreference;

.field final synthetic b:Lcom/viber/voip/SoundSettingsActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SoundSettingsActivity;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/viber/voip/bg;->b:Lcom/viber/voip/SoundSettingsActivity;

    iput-object p2, p0, Lcom/viber/voip/bg;->a:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 205
    invoke-static {}, Lcom/viber/voip/sound/VoENativeDebugHelper;->clearDumps()V

    .line 206
    iget-object v0, p0, Lcom/viber/voip/bg;->a:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/viber/voip/bg;->a:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 208
    return v2
.end method

.class Lcom/viber/voip/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lorg/webrtc/voiceengine/NativeADMCtl;

.field final synthetic b:Lcom/viber/voip/SoundSettingsActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SoundSettingsActivity;Lorg/webrtc/voiceengine/NativeADMCtl;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/viber/voip/bf;->b:Lcom/viber/voip/SoundSettingsActivity;

    iput-object p2, p0, Lcom/viber/voip/bf;->a:Lorg/webrtc/voiceengine/NativeADMCtl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 163
    check-cast p2, Ljava/lang/String;

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 165
    iget-object v2, p0, Lcom/viber/voip/bf;->a:Lorg/webrtc/voiceengine/NativeADMCtl;

    invoke-virtual {v2}, Lorg/webrtc/voiceengine/NativeADMCtl;->getDeviceMask()I

    move-result v2

    and-int/2addr v2, v1

    if-eq v1, v2, :cond_0

    .line 166
    iget-object v1, p0, Lcom/viber/voip/bf;->b:Lcom/viber/voip/SoundSettingsActivity;

    invoke-virtual {v1}, Lcom/viber/voip/SoundSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c05aa

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    const/4 v0, 0x0

    .line 171
    :goto_0
    return v0

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/bf;->a:Lorg/webrtc/voiceengine/NativeADMCtl;

    invoke-virtual {v2, v1}, Lorg/webrtc/voiceengine/NativeADMCtl;->setDeviceMask(I)V

    .line 170
    iget-object v2, p0, Lcom/viber/voip/bf;->b:Lcom/viber/voip/SoundSettingsActivity;

    iget-object v3, p0, Lcom/viber/voip/bf;->a:Lorg/webrtc/voiceengine/NativeADMCtl;

    invoke-virtual {v2, v3, v1}, Lcom/viber/voip/SoundSettingsActivity;->a(Lorg/webrtc/voiceengine/NativeADMCtl;I)V

    goto :goto_0
.end method

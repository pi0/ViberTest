.class public Lcom/viber/voip/SoundSettingsActivity;
.super Lcom/viber/voip/app/ViberPreferenceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/settings/m;


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

.field private c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

.field private d:Lcom/viber/voip/settings/l;

.field private e:Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    .line 67
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_audio_driver"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_hw_agc_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_hw_iir_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_hw_ns_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_sw_agc_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_sw_aec_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_sw_ns_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_vad_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_rxns_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_ns_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_rxagc_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_agc_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_aec_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_speaker_vad_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_speaker_rxns_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_speaker_ns_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_speaker_rxagc_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_speaker_agc_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_speaker_aec_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_codec_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_vve_debug_voice_rtpdebug_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_vve_debug_video_rtpdebug_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_vve_debug_video_capture_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_vve_debug_clear_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_htc_hwaec"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    const-string/jumbo v1, "sound_settings_video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/viber/voip/app/ViberPreferenceActivity;-><init>()V

    .line 259
    new-instance v0, Lcom/viber/voip/bh;

    invoke-direct {v0, p0}, Lcom/viber/voip/bh;-><init>(Lcom/viber/voip/SoundSettingsActivity;)V

    iput-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->e:Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .parameter

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lorg/webrtc/voiceengine/NativeADMCtl;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 222
    invoke-virtual {p1, p2}, Lorg/webrtc/voiceengine/NativeADMCtl;->getAvailableFeaturesMask(I)I

    move-result v4

    .line 223
    invoke-virtual {p1, p2}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v5

    .line 225
    const-string/jumbo v0, "sound_settings_hw_agc_key"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 226
    and-int/lit8 v1, v4, 0x1

    if-ne v2, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 227
    and-int/lit8 v1, v5, 0x1

    if-ne v2, v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 228
    const-string/jumbo v0, "sound_settings_hw_iir_key"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 229
    and-int/lit8 v1, v4, 0x2

    if-ne v6, v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 230
    and-int/lit8 v1, v5, 0x2

    if-ne v6, v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 231
    const-string/jumbo v0, "sound_settings_hw_ns_key"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 232
    and-int/lit8 v1, v4, 0x4

    if-ne v7, v1, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 233
    and-int/lit8 v1, v5, 0x4

    if-ne v7, v1, :cond_5

    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 235
    const-string/jumbo v0, "sound_settings_sw_agc_key"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 236
    and-int/lit8 v1, v4, 0x8

    if-ne v8, v1, :cond_6

    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 237
    and-int/lit8 v1, v5, 0x8

    if-ne v8, v1, :cond_7

    move v1, v2

    :goto_7
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 238
    const-string/jumbo v0, "sound_settings_sw_aec_key"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 239
    const/16 v1, 0x10

    and-int/lit8 v6, v4, 0x10

    if-ne v1, v6, :cond_8

    move v1, v2

    :goto_8
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 240
    const/16 v1, 0x10

    and-int/lit8 v6, v5, 0x10

    if-ne v1, v6, :cond_9

    move v1, v2

    :goto_9
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 241
    const-string/jumbo v0, "sound_settings_sw_ns_key"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 242
    const/16 v1, 0x20

    and-int/lit8 v4, v4, 0x20

    if-ne v1, v4, :cond_a

    move v1, v2

    :goto_a
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 243
    const/16 v1, 0x20

    and-int/lit8 v4, v5, 0x20

    if-ne v1, v4, :cond_b

    :goto_b
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 244
    return-void

    :cond_0
    move v1, v3

    .line 226
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 227
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 229
    goto :goto_2

    :cond_3
    move v1, v3

    .line 230
    goto :goto_3

    :cond_4
    move v1, v3

    .line 232
    goto :goto_4

    :cond_5
    move v1, v3

    .line 233
    goto :goto_5

    :cond_6
    move v1, v3

    .line 236
    goto :goto_6

    :cond_7
    move v1, v3

    .line 237
    goto :goto_7

    :cond_8
    move v1, v3

    .line 239
    goto :goto_8

    :cond_9
    move v1, v3

    .line 240
    goto :goto_9

    :cond_a
    move v1, v3

    .line 242
    goto :goto_a

    :cond_b
    move v2, v3

    .line 243
    goto :goto_b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/viber/voip/SoundSettingsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/viber/voip/SoundSettingsActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 108
    invoke-static {}, Lorg/webrtc/voiceengine/NativeADMCtl;->getInstance()Lorg/webrtc/voiceengine/NativeADMCtl;

    move-result-object v1

    .line 110
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;->MODE_EARPIECE:Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    invoke-interface {v0, v2}, Lcom/viber/voip/sound/ISoundService;->getAudioSettings(Lcom/viber/voip/sound/ISoundService$AudioModeCtl;)Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    .line 111
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    iget-object v2, p0, Lcom/viber/voip/SoundSettingsActivity;->e:Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;

    invoke-interface {v0, v2}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->addListener(Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;)V

    .line 113
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getAECMode()I

    move-result v0

    .line 114
    iget-object v2, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v2}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getAGCMode()I

    move-result v2

    .line 115
    iget-object v3, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v3}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getRxAGCMode()I

    move-result v3

    .line 116
    iget-object v4, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v4}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getNSMode()I

    move-result v4

    .line 117
    iget-object v5, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v5}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getRxNSMode()I

    move-result v5

    .line 118
    iget-object v6, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v6}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getVADMode()I

    move-result v6

    .line 120
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v7

    iput-object v7, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    .line 122
    iget-object v7, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    sget-object v8, Lcom/viber/voip/SoundSettingsActivity;->a:Ljava/util/Set;

    invoke-static {p0, v7, v8}, Lcom/viber/voip/settings/n;->a(Landroid/preference/PreferenceActivity;Lcom/viber/voip/settings/l;Ljava/util/Set;)Z

    .line 124
    iget-object v7, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v8, "sound_settings_aec_key"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 125
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v7, "sound_settings_agc_key"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 126
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_rxagc_key"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 127
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_ns_key"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 128
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_rxns_key"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 129
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_vad_key"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 131
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/sound/ISoundService$AudioModeCtl;->MODE_LOUDSPEAKER:Lcom/viber/voip/sound/ISoundService$AudioModeCtl;

    invoke-interface {v0, v2}, Lcom/viber/voip/sound/ISoundService;->getAudioSettings(Lcom/viber/voip/sound/ISoundService$AudioModeCtl;)Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    .line 133
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getAECMode()I

    move-result v0

    .line 134
    iget-object v2, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v2}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getAGCMode()I

    move-result v2

    .line 135
    iget-object v3, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v3}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getRxAGCMode()I

    move-result v3

    .line 136
    iget-object v4, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v4}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getNSMode()I

    move-result v4

    .line 137
    iget-object v5, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v5}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getRxNSMode()I

    move-result v5

    .line 138
    iget-object v6, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v6}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->getVADMode()I

    move-result v6

    .line 140
    iget-object v7, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v8, "sound_settings_speaker_aec_key"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 141
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v7, "sound_settings_speaker_agc_key"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 142
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_speaker_rxagc_key"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 143
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_speaker_ns_key"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 144
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_speaker_rxns_key"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 145
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_speaker_vad_key"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 147
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_audio_driver"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {v1}, Lorg/webrtc/voiceengine/NativeADMCtl;->isNativeDriverAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_audio_driver"

    const-string/jumbo v3, "2"

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 153
    :cond_0
    :goto_0
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->addPreferencesFromResource(I)V

    .line 155
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_audio_driver"

    const-string/jumbo v3, "0"

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Lorg/webrtc/voiceengine/NativeADMCtl;I)V

    .line 157
    const-string/jumbo v0, "sound_settings_audio_driver"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 158
    invoke-virtual {v1}, Lorg/webrtc/voiceengine/NativeADMCtl;->isInitialized()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 160
    new-instance v2, Lcom/viber/voip/bf;

    invoke-direct {v2, p0, v1}, Lcom/viber/voip/bf;-><init>(Lcom/viber/voip/SoundSettingsActivity;Lorg/webrtc/voiceengine/NativeADMCtl;)V

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    const-string/jumbo v0, "Default (selected by server)"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    const-string/jumbo v0, "-1"

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getVocoderSettings()Lcom/viber/voip/sound/ISoundService$IVocoderSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IVocoderSettings;->getSupportedCodecs()Ljava/util/Set;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 183
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;

    .line 185
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;->getVocoderName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;->getVocoderId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    :cond_1
    invoke-virtual {v1}, Lorg/webrtc/voiceengine/NativeADMCtl;->isOpenSLESDriverAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_audio_driver"

    const-string/jumbo v3, "1"

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    goto/16 :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "sound_settings_audio_driver"

    const-string/jumbo v3, "4"

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    goto/16 :goto_0

    .line 189
    :cond_3
    const-string/jumbo v0, "sound_settings_codec_key"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 190
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 191
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 193
    const-string/jumbo v0, "sound_settings_htc_hwaec"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 194
    invoke-static {}, Lcom/viber/voip/sound/SoundServiceCommonConfig$HtcHwConfig$HtcHwCtl;->ctlHwAecSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 196
    const-string/jumbo v0, "sound_settings_video"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 197
    invoke-static {}, Lorg/webrtc/videoengine/ViEVideoSupport;->isVideoCallSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 199
    const-string/jumbo v0, "sound_settings_vve_debug_clear_key"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 200
    invoke-virtual {v0, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 202
    new-instance v1, Lcom/viber/voip/bg;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/bg;-><init>(Lcom/viber/voip/SoundSettingsActivity;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    const-string/jumbo v0, "sound_settings_vve_debug_video_capture_key"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 213
    invoke-static {}, Lcom/viber/voip/sound/VoENativeDebugHelper;->isVideoCaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "1"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 214
    const-string/jumbo v0, "sound_settings_vve_debug_video_rtpdebug_key"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 215
    invoke-static {}, Lcom/viber/voip/sound/VoENativeDebugHelper;->isVideoRtpdumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "1"

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v0, "sound_settings_vve_debug_voice_rtpdebug_key"

    invoke-direct {p0, v0}, Lcom/viber/voip/SoundSettingsActivity;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 217
    invoke-static {}, Lcom/viber/voip/sound/VoENativeDebugHelper;->isVoiceRtpdumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "1"

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 219
    return-void

    .line 213
    :cond_4
    const-string/jumbo v1, "0"

    goto :goto_2

    .line 215
    :cond_5
    const-string/jumbo v1, "0"

    goto :goto_3

    .line 217
    :cond_6
    const-string/jumbo v1, "0"

    goto :goto_4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    invoke-interface {v0, p0}, Lcom/viber/voip/settings/l;->b(Lcom/viber/voip/settings/m;)V

    .line 254
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->e:Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->removeListener(Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;)V

    .line 256
    invoke-super {p0}, Lcom/viber/voip/app/ViberPreferenceActivity;->onDestroy()V

    .line 257
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 432
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 437
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 434
    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    .line 435
    const/4 v0, 0x1

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/viber/voip/app/ViberPreferenceActivity;->onPause()V

    .line 331
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    invoke-interface {v0, p0}, Lcom/viber/voip/settings/l;->b(Lcom/viber/voip/settings/m;)V

    .line 332
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/viber/voip/app/ViberPreferenceActivity;->onResume()V

    .line 325
    iget-object v0, p0, Lcom/viber/voip/SoundSettingsActivity;->d:Lcom/viber/voip/settings/l;

    invoke-interface {v0, p0}, Lcom/viber/voip/settings/l;->a(Lcom/viber/voip/settings/m;)V

    .line 326
    return-void
.end method

.method public onSharedPreferenceChanged(Lcom/viber/voip/settings/l;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 336
    invoke-static {}, Lorg/webrtc/voiceengine/NativeADMCtl;->getInstance()Lorg/webrtc/voiceengine/NativeADMCtl;

    move-result-object v2

    .line 337
    const-string/jumbo v3, "sound_settings_audio_driver"

    const-string/jumbo v4, "0"

    invoke-interface {p1, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 338
    const-string/jumbo v4, "sound_settings_audio_driver"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    const-string/jumbo v4, "sound_settings_hw_agc_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 341
    const-string/jumbo v0, "sound_settings_hw_agc_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 342
    if-nez v0, :cond_2

    invoke-virtual {v2, v3}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    .line 343
    :goto_1
    invoke-virtual {v2, v3, v0}, Lorg/webrtc/voiceengine/NativeADMCtl;->setFeaturesMask(II)V

    goto :goto_0

    .line 342
    :cond_2
    invoke-virtual {v2, v3}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    :cond_3
    const-string/jumbo v4, "sound_settings_hw_iir_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 345
    const-string/jumbo v0, "sound_settings_hw_iir_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 346
    if-nez v0, :cond_4

    invoke-virtual {v2, v3}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    .line 347
    :goto_2
    invoke-virtual {v2, v3, v0}, Lorg/webrtc/voiceengine/NativeADMCtl;->setFeaturesMask(II)V

    goto :goto_0

    .line 346
    :cond_4
    invoke-virtual {v2, v3}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 348
    :cond_5
    const-string/jumbo v4, "sound_settings_hw_ns_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 349
    const-string/jumbo v0, "sound_settings_hw_ns_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 350
    if-nez v0, :cond_6

    invoke-virtual {v2, v3}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    .line 351
    :goto_3
    invoke-virtual {v2, v3, v0}, Lorg/webrtc/voiceengine/NativeADMCtl;->setFeaturesMask(II)V

    goto/16 :goto_0

    .line 350
    :cond_6
    invoke-virtual {v2, v3}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    goto :goto_3

    .line 352
    :cond_7
    const-string/jumbo v4, "sound_settings_sw_agc_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 353
    const-string/jumbo v0, "sound_settings_sw_agc_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 354
    if-nez v0, :cond_8

    invoke-virtual {v2, v3}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    .line 355
    :goto_4
    invoke-virtual {v2, v3, v0}, Lorg/webrtc/voiceengine/NativeADMCtl;->setFeaturesMask(II)V

    goto/16 :goto_0

    .line 354
    :cond_8
    invoke-virtual {v2, v3}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    goto :goto_4

    .line 356
    :cond_9
    const-string/jumbo v4, "sound_settings_sw_aec_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 357
    const-string/jumbo v0, "sound_settings_sw_aec_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 358
    if-nez v0, :cond_a

    invoke-virtual {v2, v3}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    .line 359
    :goto_5
    invoke-virtual {v2, v3, v0}, Lorg/webrtc/voiceengine/NativeADMCtl;->setFeaturesMask(II)V

    goto/16 :goto_0

    .line 358
    :cond_a
    invoke-virtual {v2, v3}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    goto :goto_5

    .line 360
    :cond_b
    const-string/jumbo v4, "sound_settings_sw_ns_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 361
    const-string/jumbo v0, "sound_settings_sw_ns_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 362
    if-nez v0, :cond_c

    invoke-virtual {v2, v3}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v0

    and-int/lit8 v0, v0, -0x21

    .line 363
    :goto_6
    invoke-virtual {v2, v3, v0}, Lorg/webrtc/voiceengine/NativeADMCtl;->setFeaturesMask(II)V

    goto/16 :goto_0

    .line 362
    :cond_c
    invoke-virtual {v2, v3}, Lorg/webrtc/voiceengine/NativeADMCtl;->getFeaturesMask(I)I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    goto :goto_6

    .line 364
    :cond_d
    const-string/jumbo v2, "sound_settings_aec_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 365
    const-string/jumbo v0, "sound_settings_aec_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setAECMode(I)I

    goto/16 :goto_0

    .line 367
    :cond_e
    const-string/jumbo v2, "sound_settings_agc_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 368
    const-string/jumbo v0, "sound_settings_agc_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setAGCMode(I)I

    goto/16 :goto_0

    .line 370
    :cond_f
    const-string/jumbo v2, "sound_settings_rxagc_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 371
    const-string/jumbo v0, "sound_settings_rxagc_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 372
    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setRxAGCMode(I)I

    goto/16 :goto_0

    .line 373
    :cond_10
    const-string/jumbo v2, "sound_settings_ns_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 374
    const-string/jumbo v0, "sound_settings_ns_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setNSMode(I)I

    goto/16 :goto_0

    .line 376
    :cond_11
    const-string/jumbo v2, "sound_settings_rxns_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 377
    const-string/jumbo v0, "sound_settings_rxns_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setRxNSMode(I)I

    goto/16 :goto_0

    .line 379
    :cond_12
    const-string/jumbo v2, "sound_settings_vad_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 380
    const-string/jumbo v0, "sound_settings_vad_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 381
    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->b:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setVADMode(I)I

    goto/16 :goto_0

    .line 382
    :cond_13
    const-string/jumbo v2, "sound_settings_speaker_aec_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 383
    const-string/jumbo v0, "sound_settings_speaker_aec_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setAECMode(I)I

    goto/16 :goto_0

    .line 385
    :cond_14
    const-string/jumbo v2, "sound_settings_speaker_agc_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 386
    const-string/jumbo v0, "sound_settings_speaker_agc_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 387
    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setAGCMode(I)I

    goto/16 :goto_0

    .line 388
    :cond_15
    const-string/jumbo v2, "sound_settings_speaker_rxagc_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 389
    const-string/jumbo v0, "sound_settings_speaker_rxagc_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 390
    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setRxAGCMode(I)I

    goto/16 :goto_0

    .line 391
    :cond_16
    const-string/jumbo v2, "sound_settings_speaker_ns_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 392
    const-string/jumbo v0, "sound_settings_speaker_ns_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 393
    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setNSMode(I)I

    goto/16 :goto_0

    .line 394
    :cond_17
    const-string/jumbo v2, "sound_settings_speaker_rxns_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 395
    const-string/jumbo v0, "sound_settings_speaker_rxns_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 396
    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setRxNSMode(I)I

    goto/16 :goto_0

    .line 397
    :cond_18
    const-string/jumbo v2, "sound_settings_speaker_vad_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 398
    const-string/jumbo v0, "sound_settings_speaker_vad_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/viber/voip/SoundSettingsActivity;->c:Lcom/viber/voip/sound/ISoundService$IAudioSettings;

    invoke-interface {v1, v0}, Lcom/viber/voip/sound/ISoundService$IAudioSettings;->setVADMode(I)I

    goto/16 :goto_0

    .line 400
    :cond_19
    const-string/jumbo v2, "sound_settings_codec_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 401
    const-string/jumbo v0, "sound_settings_codec_key"

    const-string/jumbo v1, "0"

    invoke-interface {p1, v0, v1}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 402
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/sound/ISoundService$VocoderCtl;->VOECTL_FORCE_CODEC:Lcom/viber/voip/sound/ISoundService$VocoderCtl;

    invoke-interface {v1, v2, v0, v0}, Lcom/viber/voip/sound/ISoundService;->setVocoderCtl(Lcom/viber/voip/sound/ISoundService$VocoderCtl;II)I

    goto/16 :goto_0

    .line 403
    :cond_1a
    const-string/jumbo v2, "sound_settings_htc_hwaec"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    const-string/jumbo v2, "sound_settings_vve_debug_voice_rtpdebug_key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 406
    const-string/jumbo v2, "sound_settings_vve_debug_voice_rtpdebug_key"

    const-string/jumbo v3, "0"

    invoke-interface {p1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 407
    :goto_7
    invoke-static {v0}, Lcom/viber/voip/sound/VoENativeDebugHelper;->setVoiceRtpdumpEnabled(Z)V

    goto/16 :goto_0

    :cond_1b
    move v0, v1

    .line 406
    goto :goto_7

    .line 408
    :cond_1c
    const-string/jumbo v2, "sound_settings_vve_debug_video_rtpdebug_key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 409
    const-string/jumbo v2, "sound_settings_vve_debug_video_rtpdebug_key"

    const-string/jumbo v3, "0"

    invoke-interface {p1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1d

    .line 410
    :goto_8
    invoke-static {v0}, Lcom/viber/voip/sound/VoENativeDebugHelper;->setVideoRtpdumpEnabled(Z)V

    goto/16 :goto_0

    :cond_1d
    move v0, v1

    .line 409
    goto :goto_8

    .line 411
    :cond_1e
    const-string/jumbo v2, "sound_settings_vve_debug_video_capture_key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 412
    const-string/jumbo v2, "sound_settings_vve_debug_video_capture_key"

    const-string/jumbo v3, "0"

    invoke-interface {p1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1f

    .line 413
    :goto_9
    invoke-static {v0}, Lcom/viber/voip/sound/VoENativeDebugHelper;->setVideoCaptureEnabled(Z)V

    goto/16 :goto_0

    :cond_1f
    move v0, v1

    .line 412
    goto :goto_9

    .line 414
    :cond_20
    const-string/jumbo v2, "sound_settings_video"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 415
    const-string/jumbo v2, "0"

    const-string/jumbo v3, "sound_settings_video"

    const-string/jumbo v4, "1"

    invoke-interface {p1, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 416
    :goto_a
    if-eqz v0, :cond_22

    .line 417
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getFlagsForDeviceModel()I

    move-result v2

    or-int/lit8 v2, v2, 0x40

    invoke-static {v2}, Lcom/viber/voip/sound/AbstractSoundService;->setDeviceFlags(I)I

    .line 421
    :goto_b
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/bn;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/bn;-><init>(Lcom/viber/voip/SoundSettingsActivity;Z)V

    invoke-virtual {v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    goto/16 :goto_0

    :cond_21
    move v0, v1

    .line 415
    goto :goto_a

    .line 419
    :cond_22
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getFlagsForDeviceModel()I

    move-result v2

    and-int/lit8 v2, v2, -0x41

    invoke-static {v2}, Lcom/viber/voip/sound/AbstractSoundService;->setDeviceFlags(I)I

    goto :goto_b
.end method

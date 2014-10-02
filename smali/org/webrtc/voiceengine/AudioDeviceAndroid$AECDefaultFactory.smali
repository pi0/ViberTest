.class Lorg/webrtc/voiceengine/AudioDeviceAndroid$AECDefaultFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/voiceengine/AudioDeviceAndroid$EffectFactory;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/voiceengine/AudioDeviceAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/voiceengine/AudioDeviceAndroid;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lorg/webrtc/voiceengine/AudioDeviceAndroid$AECDefaultFactory;->this$0:Lorg/webrtc/voiceengine/AudioDeviceAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/media/AudioRecord;)Landroid/media/audiofx/AudioEffect;
    .locals 1
    .parameter

    .prologue
    .line 204
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    return-object v0
.end method

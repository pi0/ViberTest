.class Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;


# instance fields
.field final _bitrate:I

.field final _ident:I

.field final _name:Ljava/lang/String;

.field final _pltype:I

.field final synthetic this$1:Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;


# direct methods
.method public constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;ILjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor;->this$1:Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput p2, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor;->_ident:I

    .line 289
    iput-object p3, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor;->_name:Ljava/lang/String;

    .line 290
    iput p4, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor;->_pltype:I

    .line 291
    iput p5, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor;->_bitrate:I

    .line 292
    return-void
.end method


# virtual methods
.method public getVocoderBitrate()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor;->_bitrate:I

    return v0
.end method

.method public getVocoderId()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor;->_ident:I

    return v0
.end method

.method public getVocoderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getVocoderPayloadType()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$VocoderDescriptor;->_pltype:I

    return v0
.end method

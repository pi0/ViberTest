.class Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;


# direct methods
.method constructor <init>(Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$1;->this$1:Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;->getVocoderId()I

    move-result v0

    invoke-interface {p2}, Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;->getVocoderId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 309
    check-cast p1, Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;

    check-cast p2, Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/sound/CommonAbstractSoundService$VocoderSettingsImpl$1;->compare(Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;)I

    move-result v0

    return v0
.end method

.class Lcom/viber/voip/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ViberApplication;


# direct methods
.method constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/viber/voip/do;->a:Lcom/viber/voip/ViberApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 4
    .parameter

    .prologue
    .line 483
    const-string/jumbo v0, "0"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "sound_settings_video"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 484
    :goto_0
    if-eqz v0, :cond_1

    .line 485
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getFlagsForDeviceModel()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-static {v1}, Lcom/viber/voip/sound/AbstractSoundService;->setDeviceFlags(I)I

    .line 489
    :goto_1
    invoke-interface {p1, v0}, Lcom/viber/jni/controller/PhoneController;->setEnableVideo(Z)V

    .line 490
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 487
    :cond_1
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getFlagsForDeviceModel()I

    move-result v1

    and-int/lit8 v1, v1, -0x41

    invoke-static {v1}, Lcom/viber/voip/sound/AbstractSoundService;->setDeviceFlags(I)I

    goto :goto_1
.end method

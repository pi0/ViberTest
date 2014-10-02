.class Lcom/viber/voip/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sound/ISoundService$IAudioSettings$IAudioSettingsListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/SoundSettingsActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SoundSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/viber/voip/bh;->a:Lcom/viber/voip/SoundSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAECChange(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/bm;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/bm;-><init>(Lcom/viber/voip/bh;I)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 319
    return-void
.end method

.method public onAGCChange(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 301
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/bl;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/bl;-><init>(Lcom/viber/voip/bh;I)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 308
    return-void
.end method

.method public onNSChange(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/bk;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/bk;-><init>(Lcom/viber/voip/bh;I)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 297
    return-void
.end method

.method public onRxAGCChange(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/bj;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/bj;-><init>(Lcom/viber/voip/bh;I)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 286
    return-void
.end method

.method public onRxNSChange(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/bi;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/bi;-><init>(Lcom/viber/voip/bh;I)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 275
    return-void
.end method

.method public onVADChange(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    return-void
.end method

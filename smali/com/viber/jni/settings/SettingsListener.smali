.class public Lcom/viber/jni/settings/SettingsListener;
.super Lcom/viber/jni/controller/ControllerListener;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/settings/SettingsControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/ControllerListener",
        "<",
        "Lcom/viber/jni/settings/SettingsControllerDelegate;",
        ">;",
        "Lcom/viber/jni/settings/SettingsControllerDelegate;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/viber/jni/controller/ControllerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeLastOnlineSettingsReply(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    new-instance v0, Lcom/viber/jni/settings/SettingsListener$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/settings/SettingsListener$1;-><init>(Lcom/viber/jni/settings/SettingsListener;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/settings/SettingsListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 23
    return-void
.end method

.method public onChangeReadNotificationsSettingsReply(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Lcom/viber/jni/settings/SettingsListener$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/jni/settings/SettingsListener$2;-><init>(Lcom/viber/jni/settings/SettingsListener;II)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/settings/SettingsListener;->notifyListeners(Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;)V

    .line 34
    return-void
.end method

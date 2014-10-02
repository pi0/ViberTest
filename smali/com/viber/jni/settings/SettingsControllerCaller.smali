.class public Lcom/viber/jni/settings/SettingsControllerCaller;
.super Lcom/viber/jni/controller/PhoneControllerCaller;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/settings/SettingsController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/jni/controller/PhoneControllerCaller",
        "<",
        "Lcom/viber/jni/settings/SettingsController;",
        ">;",
        "Lcom/viber/jni/settings/SettingsController;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/viber/jni/settings/SettingsController;Lcom/viber/jni/connection/ConnectionController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/viber/jni/controller/PhoneControllerCaller;-><init>(Ljava/lang/Object;Lcom/viber/jni/connection/ConnectionController;)V

    .line 18
    return-void
.end method


# virtual methods
.method public handleChangeLastOnlineSettings(I)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    new-instance v0, Lcom/viber/jni/settings/SettingsControllerCaller$1;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/settings/SettingsControllerCaller$1;-><init>(Lcom/viber/jni/settings/SettingsControllerCaller;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/settings/SettingsControllerCaller;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

.method public handleChangeReadNotificationsSettings(I)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    new-instance v0, Lcom/viber/jni/settings/SettingsControllerCaller$2;

    invoke-direct {v0, p0, p1}, Lcom/viber/jni/settings/SettingsControllerCaller$2;-><init>(Lcom/viber/jni/settings/SettingsControllerCaller;I)V

    invoke-virtual {p0, v0}, Lcom/viber/jni/settings/SettingsControllerCaller;->multyMethodCall(Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;)Z

    move-result v0

    return v0
.end method

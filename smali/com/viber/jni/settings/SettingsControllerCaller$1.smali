.class Lcom/viber/jni/settings/SettingsControllerCaller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback",
        "<",
        "Lcom/viber/jni/settings/SettingsController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/settings/SettingsControllerCaller;

.field final synthetic val$setting:I


# direct methods
.method constructor <init>(Lcom/viber/jni/settings/SettingsControllerCaller;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/viber/jni/settings/SettingsControllerCaller$1;->this$0:Lcom/viber/jni/settings/SettingsControllerCaller;

    iput p2, p0, Lcom/viber/jni/settings/SettingsControllerCaller$1;->val$setting:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/viber/jni/settings/SettingsController;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/viber/jni/settings/SettingsControllerCaller$1;->val$setting:I

    invoke-interface {p1, v0}, Lcom/viber/jni/settings/SettingsController;->handleChangeLastOnlineSettings(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    check-cast p1, Lcom/viber/jni/settings/SettingsController;

    invoke-virtual {p0, p1}, Lcom/viber/jni/settings/SettingsControllerCaller$1;->call(Lcom/viber/jni/settings/SettingsController;)Z

    move-result v0

    return v0
.end method

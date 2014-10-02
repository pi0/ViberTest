.class Lcom/viber/jni/settings/SettingsListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/jni/controller/ControllerListener$ControllerListenerAction",
        "<",
        "Lcom/viber/jni/settings/SettingsControllerDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/settings/SettingsListener;

.field final synthetic val$setting:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/settings/SettingsListener;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/viber/jni/settings/SettingsListener$1;->this$0:Lcom/viber/jni/settings/SettingsListener;

    iput p2, p0, Lcom/viber/jni/settings/SettingsListener$1;->val$setting:I

    iput p3, p0, Lcom/viber/jni/settings/SettingsListener$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/settings/SettingsControllerDelegate;)V
    .locals 2
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/viber/jni/settings/SettingsListener$1;->val$setting:I

    iget v1, p0, Lcom/viber/jni/settings/SettingsListener$1;->val$status:I

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/settings/SettingsControllerDelegate;->onChangeLastOnlineSettingsReply(II)V

    .line 21
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    check-cast p1, Lcom/viber/jni/settings/SettingsControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/settings/SettingsListener$1;->execute(Lcom/viber/jni/settings/SettingsControllerDelegate;)V

    return-void
.end method

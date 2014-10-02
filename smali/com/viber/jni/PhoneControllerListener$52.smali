.class Lcom/viber/jni/PhoneControllerListener$52;
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
        "Lcom/viber/jni/PhoneControllerDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerListener;

.field final synthetic val$SmartNotifications:Z

.field final synthetic val$groupId:J

.field final synthetic val$isOk:Z


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$52;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$52;->val$groupId:J

    iput-boolean p4, p0, Lcom/viber/jni/PhoneControllerListener$52;->val$SmartNotifications:Z

    iput-boolean p5, p0, Lcom/viber/jni/PhoneControllerListener$52;->val$isOk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 4
    .parameter

    .prologue
    .line 1128
    iget-wide v0, p0, Lcom/viber/jni/PhoneControllerListener$52;->val$groupId:J

    iget-boolean v2, p0, Lcom/viber/jni/PhoneControllerListener$52;->val$SmartNotifications:Z

    iget-boolean v3, p0, Lcom/viber/jni/PhoneControllerListener$52;->val$isOk:Z

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/jni/PhoneControllerDelegate;->onChangeGroupSettingsReply(JZZ)V

    .line 1129
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1125
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$52;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

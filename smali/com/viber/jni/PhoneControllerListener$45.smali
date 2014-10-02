.class Lcom/viber/jni/PhoneControllerListener$45;
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

.field final synthetic val$IsOK:Z

.field final synthetic val$PeerPhoneNum:Ljava/lang/String;

.field final synthetic val$SmartNotifications:Z


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$45;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerListener$45;->val$PeerPhoneNum:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/viber/jni/PhoneControllerListener$45;->val$SmartNotifications:Z

    iput-boolean p4, p0, Lcom/viber/jni/PhoneControllerListener$45;->val$IsOK:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 3
    .parameter

    .prologue
    .line 864
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener$45;->val$PeerPhoneNum:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/viber/jni/PhoneControllerListener$45;->val$SmartNotifications:Z

    iget-boolean v2, p0, Lcom/viber/jni/PhoneControllerListener$45;->val$IsOK:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/PhoneControllerDelegate;->onChangeConversationSettingsReply(Ljava/lang/String;ZZ)V

    .line 865
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 861
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$45;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

.class Lcom/viber/jni/PhoneControllerListener$49;
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

.field final synthetic val$Flags:I

.field final synthetic val$lastMessageToken:J

.field final synthetic val$peerNum:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1084
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$49;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerListener$49;->val$peerNum:Ljava/lang/String;

    iput-wide p3, p0, Lcom/viber/jni/PhoneControllerListener$49;->val$lastMessageToken:J

    iput p5, p0, Lcom/viber/jni/PhoneControllerListener$49;->val$Flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 4
    .parameter

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener$49;->val$peerNum:Ljava/lang/String;

    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$49;->val$lastMessageToken:J

    iget v3, p0, Lcom/viber/jni/PhoneControllerListener$49;->val$Flags:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/jni/PhoneControllerDelegate;->onSyncConversation(Ljava/lang/String;JI)Z

    .line 1088
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1084
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$49;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

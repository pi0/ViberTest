.class Lcom/viber/jni/PhoneControllerListener$36;
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

.field final synthetic val$active:Z

.field final synthetic val$deviceId:I

.field final synthetic val$fromNumber:Ljava/lang/String;

.field final synthetic val$groupId:J

.field final synthetic val$isSecondaryDevice:Z


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;ZIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$36;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$36;->val$groupId:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$36;->val$fromNumber:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/viber/jni/PhoneControllerListener$36;->val$active:Z

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$36;->val$deviceId:I

    iput-boolean p7, p0, Lcom/viber/jni/PhoneControllerListener$36;->val$isSecondaryDevice:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 7
    .parameter

    .prologue
    .line 741
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$36;->val$groupId:J

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerListener$36;->val$fromNumber:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/viber/jni/PhoneControllerListener$36;->val$active:Z

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$36;->val$deviceId:I

    iget-boolean v6, p0, Lcom/viber/jni/PhoneControllerListener$36;->val$isSecondaryDevice:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerDelegate;->onGroupUserIsTyping(JLjava/lang/String;ZIZ)V

    .line 742
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 737
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$36;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

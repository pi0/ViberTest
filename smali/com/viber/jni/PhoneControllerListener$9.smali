.class Lcom/viber/jni/PhoneControllerListener$9;
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

.field final synthetic val$messageToken:I

.field final synthetic val$serverToken:J

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;IJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$9;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput p2, p0, Lcom/viber/jni/PhoneControllerListener$9;->val$messageToken:I

    iput-wide p3, p0, Lcom/viber/jni/PhoneControllerListener$9;->val$serverToken:J

    iput p5, p0, Lcom/viber/jni/PhoneControllerListener$9;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 4
    .parameter

    .prologue
    .line 335
    iget v0, p0, Lcom/viber/jni/PhoneControllerListener$9;->val$messageToken:I

    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$9;->val$serverToken:J

    iget v3, p0, Lcom/viber/jni/PhoneControllerListener$9;->val$status:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/jni/PhoneControllerDelegate;->onSendTextReply(IJI)V

    .line 336
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$9;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

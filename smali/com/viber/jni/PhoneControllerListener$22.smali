.class Lcom/viber/jni/PhoneControllerListener$22;
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

.field final synthetic val$messageId:I

.field final synthetic val$messageToken:J

.field final synthetic val$seq:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;IJII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$22;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput p2, p0, Lcom/viber/jni/PhoneControllerListener$22;->val$seq:I

    iput-wide p3, p0, Lcom/viber/jni/PhoneControllerListener$22;->val$messageToken:J

    iput p5, p0, Lcom/viber/jni/PhoneControllerListener$22;->val$status:I

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$22;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 6
    .parameter

    .prologue
    .line 521
    iget v1, p0, Lcom/viber/jni/PhoneControllerListener$22;->val$seq:I

    iget-wide v2, p0, Lcom/viber/jni/PhoneControllerListener$22;->val$messageToken:J

    iget v4, p0, Lcom/viber/jni/PhoneControllerListener$22;->val$status:I

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$22;->val$messageId:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerDelegate;->onSendMessageReply(IJII)V

    .line 522
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$22;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

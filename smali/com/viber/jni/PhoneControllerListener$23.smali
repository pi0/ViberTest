.class Lcom/viber/jni/PhoneControllerListener$23;
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

.field final synthetic val$messageSeq:I

.field final synthetic val$messageToken:J

.field final synthetic val$timeStamp:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JJII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$23;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$23;->val$messageToken:J

    iput-wide p4, p0, Lcom/viber/jni/PhoneControllerListener$23;->val$timeStamp:J

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$23;->val$messageSeq:I

    iput p7, p0, Lcom/viber/jni/PhoneControllerListener$23;->val$messageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 7
    .parameter

    .prologue
    .line 535
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$23;->val$messageToken:J

    iget-wide v3, p0, Lcom/viber/jni/PhoneControllerListener$23;->val$timeStamp:J

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$23;->val$messageSeq:I

    iget v6, p0, Lcom/viber/jni/PhoneControllerListener$23;->val$messageId:I

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerDelegate;->onMessageDelivered(JJII)Z

    .line 536
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$23;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

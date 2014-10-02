.class Lcom/viber/jni/PhoneControllerListener$73;
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

.field final synthetic val$actionToken:J

.field final synthetic val$groupID:J

.field final synthetic val$like:Z

.field final synthetic val$messageID:I

.field final synthetic val$messageToken:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JJIZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$73;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$73;->val$groupID:J

    iput-wide p4, p0, Lcom/viber/jni/PhoneControllerListener$73;->val$messageToken:J

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$73;->val$messageID:I

    iput-boolean p7, p0, Lcom/viber/jni/PhoneControllerListener$73;->val$like:Z

    iput-wide p8, p0, Lcom/viber/jni/PhoneControllerListener$73;->val$actionToken:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 9
    .parameter

    .prologue
    .line 1585
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$73;->val$groupID:J

    iget-wide v3, p0, Lcom/viber/jni/PhoneControllerListener$73;->val$messageToken:J

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$73;->val$messageID:I

    iget-boolean v6, p0, Lcom/viber/jni/PhoneControllerListener$73;->val$like:Z

    iget-wide v7, p0, Lcom/viber/jni/PhoneControllerListener$73;->val$actionToken:J

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Lcom/viber/jni/PhoneControllerDelegate;->onSyncMessageLike(JJIZJ)Z

    .line 1586
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1582
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$73;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

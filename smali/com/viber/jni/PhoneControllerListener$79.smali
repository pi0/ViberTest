.class Lcom/viber/jni/PhoneControllerListener$79;
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

.field final synthetic val$groupId:J

.field final synthetic val$messageId:I

.field final synthetic val$revision:I

.field final synthetic val$seq:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JJIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$79;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$79;->val$groupId:J

    iput-wide p4, p0, Lcom/viber/jni/PhoneControllerListener$79;->val$actionToken:J

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$79;->val$seq:I

    iput p7, p0, Lcom/viber/jni/PhoneControllerListener$79;->val$messageId:I

    iput p8, p0, Lcom/viber/jni/PhoneControllerListener$79;->val$revision:I

    iput p9, p0, Lcom/viber/jni/PhoneControllerListener$79;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 9
    .parameter

    .prologue
    .line 1699
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$79;->val$groupId:J

    iget-wide v3, p0, Lcom/viber/jni/PhoneControllerListener$79;->val$actionToken:J

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$79;->val$seq:I

    iget v6, p0, Lcom/viber/jni/PhoneControllerListener$79;->val$messageId:I

    iget v7, p0, Lcom/viber/jni/PhoneControllerListener$79;->val$revision:I

    iget v8, p0, Lcom/viber/jni/PhoneControllerListener$79;->val$status:I

    move-object v0, p1

    invoke-interface/range {v0 .. v8}, Lcom/viber/jni/PhoneControllerDelegate;->onChangeGroup(JJIIII)V

    .line 1700
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1695
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$79;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

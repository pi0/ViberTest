.class Lcom/viber/jni/PhoneControllerListener$72;
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

.field final synthetic val$seq:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JJIZIJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$72;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$groupID:J

    iput-wide p4, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$messageToken:J

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$messageID:I

    iput-boolean p7, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$like:Z

    iput p8, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$seq:I

    iput-wide p9, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$actionToken:J

    iput p11, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 11
    .parameter

    .prologue
    .line 1572
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$groupID:J

    iget-wide v3, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$messageToken:J

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$messageID:I

    iget-boolean v6, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$like:Z

    iget v7, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$seq:I

    iget-wide v8, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$actionToken:J

    iget v10, p0, Lcom/viber/jni/PhoneControllerListener$72;->val$status:I

    move-object v0, p1

    invoke-interface/range {v0 .. v10}, Lcom/viber/jni/PhoneControllerDelegate;->onLikePublicGroupMessage(JJIZIJI)V

    .line 1573
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1569
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$72;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

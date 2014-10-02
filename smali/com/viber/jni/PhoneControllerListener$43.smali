.class Lcom/viber/jni/PhoneControllerListener$43;
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

.field final synthetic val$groupID:J

.field final synthetic val$lastMessageToken:J

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$43;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$43;->val$groupID:J

    iput-wide p4, p0, Lcom/viber/jni/PhoneControllerListener$43;->val$lastMessageToken:J

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$43;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 6
    .parameter

    .prologue
    .line 838
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$43;->val$groupID:J

    iget-wide v3, p0, Lcom/viber/jni/PhoneControllerListener$43;->val$lastMessageToken:J

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$43;->val$status:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerDelegate;->onSyncGroupReply(JJI)V

    .line 839
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$43;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

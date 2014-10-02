.class Lcom/viber/jni/PhoneControllerListener$38;
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

.field final synthetic val$groupId:J

.field final synthetic val$messageToken:J

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$38;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$38;->val$groupId:J

    iput-wide p4, p0, Lcom/viber/jni/PhoneControllerListener$38;->val$messageToken:J

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$38;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 6
    .parameter

    .prologue
    .line 768
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$38;->val$groupId:J

    iget-wide v3, p0, Lcom/viber/jni/PhoneControllerListener$38;->val$messageToken:J

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$38;->val$status:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerDelegate;->onGroupLeave(JJI)V

    .line 769
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$38;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

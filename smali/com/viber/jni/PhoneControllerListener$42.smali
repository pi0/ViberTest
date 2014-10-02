.class Lcom/viber/jni/PhoneControllerListener$42;
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

.field final synthetic val$sequence:I

.field final synthetic val$status:I

.field final synthetic val$tokens:[J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;I[JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 822
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$42;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput p2, p0, Lcom/viber/jni/PhoneControllerListener$42;->val$sequence:I

    iput-object p3, p0, Lcom/viber/jni/PhoneControllerListener$42;->val$tokens:[J

    iput p4, p0, Lcom/viber/jni/PhoneControllerListener$42;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 3
    .parameter

    .prologue
    .line 825
    iget v0, p0, Lcom/viber/jni/PhoneControllerListener$42;->val$sequence:I

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerListener$42;->val$tokens:[J

    iget v2, p0, Lcom/viber/jni/PhoneControllerListener$42;->val$status:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/PhoneControllerDelegate;->onSyncMessagesReply(I[JI)V

    .line 826
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 822
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$42;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

.class Lcom/viber/jni/PhoneControllerListener$7;
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

.field final synthetic val$aBVersion:I

.field final synthetic val$isOk:Z

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;ZII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$7;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-boolean p2, p0, Lcom/viber/jni/PhoneControllerListener$7;->val$isOk:Z

    iput p3, p0, Lcom/viber/jni/PhoneControllerListener$7;->val$seq:I

    iput p4, p0, Lcom/viber/jni/PhoneControllerListener$7;->val$aBVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 3
    .parameter

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerListener$7;->val$isOk:Z

    iget v1, p0, Lcom/viber/jni/PhoneControllerListener$7;->val$seq:I

    iget v2, p0, Lcom/viber/jni/PhoneControllerListener$7;->val$aBVersion:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/PhoneControllerDelegate;->onShareAddressBookReply(ZII)V

    .line 302
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$7;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

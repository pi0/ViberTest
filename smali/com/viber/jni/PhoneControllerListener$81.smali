.class Lcom/viber/jni/PhoneControllerListener$81;
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

.field final synthetic val$seq:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1724
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$81;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput p2, p0, Lcom/viber/jni/PhoneControllerListener$81;->val$seq:I

    iput p3, p0, Lcom/viber/jni/PhoneControllerListener$81;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 2
    .parameter

    .prologue
    .line 1727
    iget v0, p0, Lcom/viber/jni/PhoneControllerListener$81;->val$seq:I

    iget v1, p0, Lcom/viber/jni/PhoneControllerListener$81;->val$status:I

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/PhoneControllerDelegate;->onRequestCanceled(II)V

    .line 1728
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1724
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$81;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

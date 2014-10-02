.class Lcom/viber/jni/PhoneControllerListener$20;
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

.field final synthetic val$isOk:Z


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$20;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-boolean p2, p0, Lcom/viber/jni/PhoneControllerListener$20;->val$isOk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 1
    .parameter

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/viber/jni/PhoneControllerListener$20;->val$isOk:Z

    invoke-interface {p1, v0}, Lcom/viber/jni/PhoneControllerDelegate;->onUpdateBadgeReply(Z)V

    .line 496
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$20;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

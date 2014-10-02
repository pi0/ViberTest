.class Lcom/viber/jni/PhoneControllerListener$31;
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


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$31;->this$0:Lcom/viber/jni/PhoneControllerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 663
    invoke-interface {p1}, Lcom/viber/jni/PhoneControllerDelegate;->onKeepaliveReply()V

    .line 664
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$31;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

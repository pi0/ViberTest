.class Lcom/viber/jni/PhoneControllerListener$74;
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


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$74;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput p2, p0, Lcom/viber/jni/PhoneControllerListener$74;->val$sequence:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 1
    .parameter

    .prologue
    .line 1598
    iget v0, p0, Lcom/viber/jni/PhoneControllerListener$74;->val$sequence:I

    invoke-interface {p1, v0}, Lcom/viber/jni/PhoneControllerDelegate;->onBlockListReply(I)V

    .line 1599
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1595
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$74;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

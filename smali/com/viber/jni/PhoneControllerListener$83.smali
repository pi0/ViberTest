.class Lcom/viber/jni/PhoneControllerListener$83;
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

.field final synthetic val$groupUri:Ljava/lang/String;

.field final synthetic val$seq:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1749
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$83;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerListener$83;->val$groupUri:Ljava/lang/String;

    iput p3, p0, Lcom/viber/jni/PhoneControllerListener$83;->val$seq:I

    iput p4, p0, Lcom/viber/jni/PhoneControllerListener$83;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 3
    .parameter

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener$83;->val$groupUri:Ljava/lang/String;

    iget v1, p0, Lcom/viber/jni/PhoneControllerListener$83;->val$seq:I

    iget v2, p0, Lcom/viber/jni/PhoneControllerListener$83;->val$status:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/PhoneControllerDelegate;->onValidatePublicGroupUri(Ljava/lang/String;II)V

    .line 1753
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1749
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$83;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

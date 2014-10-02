.class Lcom/viber/jni/PhoneControllerListener$94;
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

.field final synthetic val$contactsActivity:[I

.field final synthetic val$seq:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;[III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1949
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$94;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerListener$94;->val$contactsActivity:[I

    iput p3, p0, Lcom/viber/jni/PhoneControllerListener$94;->val$seq:I

    iput p4, p0, Lcom/viber/jni/PhoneControllerListener$94;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 3
    .parameter

    .prologue
    .line 1952
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener$94;->val$contactsActivity:[I

    iget v1, p0, Lcom/viber/jni/PhoneControllerListener$94;->val$seq:I

    iget v2, p0, Lcom/viber/jni/PhoneControllerListener$94;->val$status:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/PhoneControllerDelegate;->onGetUserAppsReply([III)V

    .line 1953
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1949
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$94;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

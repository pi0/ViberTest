.class Lcom/viber/jni/PhoneControllerListener$11;
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

.field final synthetic val$users:[Lcom/viber/jni/CGetUserDetails;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;[Lcom/viber/jni/CGetUserDetails;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$11;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerListener$11;->val$users:[Lcom/viber/jni/CGetUserDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 1
    .parameter

    .prologue
    .line 361
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener$11;->val$users:[Lcom/viber/jni/CGetUserDetails;

    invoke-interface {p1, v0}, Lcom/viber/jni/PhoneControllerDelegate;->onGetUsersDetail([Lcom/viber/jni/CGetUserDetails;)V

    .line 362
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$11;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

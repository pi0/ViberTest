.class Lcom/viber/jni/PhoneControllerListener$91;
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

.field final synthetic val$contactsActivity:Ljava/util/Map;

.field final synthetic val$seq:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;Ljava/util/Map;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1913
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$91;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerListener$91;->val$contactsActivity:Ljava/util/Map;

    iput p3, p0, Lcom/viber/jni/PhoneControllerListener$91;->val$seq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 2
    .parameter

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener$91;->val$contactsActivity:Ljava/util/Map;

    iget v1, p0, Lcom/viber/jni/PhoneControllerListener$91;->val$seq:I

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/PhoneControllerDelegate;->onGetUserActivity(Ljava/util/Map;I)V

    .line 1917
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1913
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$91;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

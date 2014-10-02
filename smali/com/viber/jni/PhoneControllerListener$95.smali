.class Lcom/viber/jni/PhoneControllerListener$95;
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

.field final synthetic val$messageToken:J

.field final synthetic val$notification:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1960
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$95;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$95;->val$messageToken:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$95;->val$notification:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 3
    .parameter

    .prologue
    .line 1963
    iget-wide v0, p0, Lcom/viber/jni/PhoneControllerListener$95;->val$messageToken:J

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerListener$95;->val$notification:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/PhoneControllerDelegate;->onWebNotification(JLjava/lang/String;)Z

    .line 1964
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1960
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$95;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

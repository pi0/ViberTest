.class Lcom/viber/jni/PhoneControllerListener$55;
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

.field final synthetic val$groupId:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$55;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$55;->val$groupId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 2
    .parameter

    .prologue
    .line 1165
    iget-wide v0, p0, Lcom/viber/jni/PhoneControllerListener$55;->val$groupId:J

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/PhoneControllerDelegate;->onGroupConversationUpdate(J)Z

    .line 1166
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1161
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$55;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

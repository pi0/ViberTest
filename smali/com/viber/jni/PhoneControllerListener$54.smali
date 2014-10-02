.class Lcom/viber/jni/PhoneControllerListener$54;
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

.field final synthetic val$flags:I

.field final synthetic val$messageToken:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$54;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$54;->val$messageToken:J

    iput p4, p0, Lcom/viber/jni/PhoneControllerListener$54;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 3
    .parameter

    .prologue
    .line 1152
    iget-wide v0, p0, Lcom/viber/jni/PhoneControllerListener$54;->val$messageToken:J

    iget v2, p0, Lcom/viber/jni/PhoneControllerListener$54;->val$flags:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/PhoneControllerDelegate;->onMessageStateUpdate(JI)Z

    .line 1153
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1148
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$54;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

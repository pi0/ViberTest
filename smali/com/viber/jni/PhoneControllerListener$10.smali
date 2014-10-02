.class Lcom/viber/jni/PhoneControllerListener$10;
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

.field final synthetic val$serverToken:J

.field final synthetic val$timeDelivered:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$10;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$10;->val$serverToken:J

    iput-wide p4, p0, Lcom/viber/jni/PhoneControllerListener$10;->val$timeDelivered:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 4
    .parameter

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/viber/jni/PhoneControllerListener$10;->val$serverToken:J

    iget-wide v2, p0, Lcom/viber/jni/PhoneControllerListener$10;->val$timeDelivered:J

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/jni/PhoneControllerDelegate;->onTextDelivered(JJ)V

    .line 349
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$10;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

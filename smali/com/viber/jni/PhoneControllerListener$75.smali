.class Lcom/viber/jni/PhoneControllerListener$75;
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

.field final synthetic val$activationCode:I

.field final synthetic val$deviceID:I

.field final synthetic val$flags:I

.field final synthetic val$messageToken:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1608
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$75;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$75;->val$messageToken:J

    iput p4, p0, Lcom/viber/jni/PhoneControllerListener$75;->val$activationCode:I

    iput p5, p0, Lcom/viber/jni/PhoneControllerListener$75;->val$deviceID:I

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$75;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 6
    .parameter

    .prologue
    .line 1611
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$75;->val$messageToken:J

    iget v3, p0, Lcom/viber/jni/PhoneControllerListener$75;->val$activationCode:I

    iget v4, p0, Lcom/viber/jni/PhoneControllerListener$75;->val$deviceID:I

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$75;->val$flags:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerDelegate;->onSecondaryRegistered(JIII)Z

    .line 1612
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1608
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$75;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

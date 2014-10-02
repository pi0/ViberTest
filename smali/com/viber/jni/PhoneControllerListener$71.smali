.class Lcom/viber/jni/PhoneControllerListener$71;
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

.field final synthetic val$groupID:J

.field final synthetic val$seq:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$71;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$71;->val$groupID:J

    iput p4, p0, Lcom/viber/jni/PhoneControllerListener$71;->val$seq:I

    iput p5, p0, Lcom/viber/jni/PhoneControllerListener$71;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 4
    .parameter

    .prologue
    .line 1559
    iget-wide v0, p0, Lcom/viber/jni/PhoneControllerListener$71;->val$groupID:J

    iget v2, p0, Lcom/viber/jni/PhoneControllerListener$71;->val$seq:I

    iget v3, p0, Lcom/viber/jni/PhoneControllerListener$71;->val$status:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/jni/PhoneControllerDelegate;->onJoinPublicGroup(JII)V

    .line 1560
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1556
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$71;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

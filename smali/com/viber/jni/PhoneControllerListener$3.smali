.class Lcom/viber/jni/PhoneControllerListener$3;
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

.field final synthetic val$callToken:J

.field final synthetic val$clientName:Ljava/lang/String;

.field final synthetic val$numMissed:I

.field final synthetic val$numMissedOther:I

.field final synthetic val$originPhoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$3;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$3;->val$callToken:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$3;->val$originPhoneNumber:Ljava/lang/String;

    iput p5, p0, Lcom/viber/jni/PhoneControllerListener$3;->val$numMissed:I

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$3;->val$numMissedOther:I

    iput-object p7, p0, Lcom/viber/jni/PhoneControllerListener$3;->val$clientName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 7
    .parameter

    .prologue
    .line 238
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$3;->val$callToken:J

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerListener$3;->val$originPhoneNumber:Ljava/lang/String;

    iget v4, p0, Lcom/viber/jni/PhoneControllerListener$3;->val$numMissed:I

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$3;->val$numMissedOther:I

    iget-object v6, p0, Lcom/viber/jni/PhoneControllerListener$3;->val$clientName:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerDelegate;->onCallMissed(JLjava/lang/String;IILjava/lang/String;)V

    .line 239
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$3;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

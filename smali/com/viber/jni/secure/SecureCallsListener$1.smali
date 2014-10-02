.class Lcom/viber/jni/secure/SecureCallsListener$1;
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
        "Lcom/viber/jni/secure/SecureCallsDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/secure/SecureCallsListener;

.field final synthetic val$ct:J

.field final synthetic val$peerCID:I

.field final synthetic val$sharedSecret:[B

.field final synthetic val$sharedSecretString:Ljava/lang/String;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/viber/jni/secure/SecureCallsListener;JI[BILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/viber/jni/secure/SecureCallsListener$1;->this$0:Lcom/viber/jni/secure/SecureCallsListener;

    iput-wide p2, p0, Lcom/viber/jni/secure/SecureCallsListener$1;->val$ct:J

    iput p4, p0, Lcom/viber/jni/secure/SecureCallsListener$1;->val$peerCID:I

    iput-object p5, p0, Lcom/viber/jni/secure/SecureCallsListener$1;->val$sharedSecret:[B

    iput p6, p0, Lcom/viber/jni/secure/SecureCallsListener$1;->val$state:I

    iput-object p7, p0, Lcom/viber/jni/secure/SecureCallsListener$1;->val$sharedSecretString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/secure/SecureCallsDelegate;)V
    .locals 7
    .parameter

    .prologue
    .line 24
    iget-wide v1, p0, Lcom/viber/jni/secure/SecureCallsListener$1;->val$ct:J

    iget v3, p0, Lcom/viber/jni/secure/SecureCallsListener$1;->val$peerCID:I

    iget-object v4, p0, Lcom/viber/jni/secure/SecureCallsListener$1;->val$sharedSecret:[B

    iget v5, p0, Lcom/viber/jni/secure/SecureCallsListener$1;->val$state:I

    iget-object v6, p0, Lcom/viber/jni/secure/SecureCallsListener$1;->val$sharedSecretString:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/jni/secure/SecureCallsDelegate;->onSecureCallStateChange(JI[BILjava/lang/String;)V

    .line 25
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/viber/jni/secure/SecureCallsDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/secure/SecureCallsListener$1;->execute(Lcom/viber/jni/secure/SecureCallsDelegate;)V

    return-void
.end method

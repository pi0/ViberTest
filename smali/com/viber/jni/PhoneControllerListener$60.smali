.class Lcom/viber/jni/PhoneControllerListener$60;
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

.field final synthetic val$chunkSeq:I

.field final synthetic val$lastChunk:Z

.field final synthetic val$myEncryptedNumber:Ljava/lang/String;

.field final synthetic val$publicGroupInfo:[Lcom/viber/jni/PublicGroupInfo;

.field final synthetic val$recoveryGroupInfo:[Lcom/viber/jni/RecoveryGroupInfo;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;[Lcom/viber/jni/RecoveryGroupInfo;[Lcom/viber/jni/PublicGroupInfo;Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$60;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerListener$60;->val$recoveryGroupInfo:[Lcom/viber/jni/RecoveryGroupInfo;

    iput-object p3, p0, Lcom/viber/jni/PhoneControllerListener$60;->val$publicGroupInfo:[Lcom/viber/jni/PublicGroupInfo;

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$60;->val$myEncryptedNumber:Ljava/lang/String;

    iput p5, p0, Lcom/viber/jni/PhoneControllerListener$60;->val$status:I

    iput p6, p0, Lcom/viber/jni/PhoneControllerListener$60;->val$chunkSeq:I

    iput-boolean p7, p0, Lcom/viber/jni/PhoneControllerListener$60;->val$lastChunk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 7
    .parameter

    .prologue
    .line 1283
    iget-object v1, p0, Lcom/viber/jni/PhoneControllerListener$60;->val$recoveryGroupInfo:[Lcom/viber/jni/RecoveryGroupInfo;

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerListener$60;->val$publicGroupInfo:[Lcom/viber/jni/PublicGroupInfo;

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerListener$60;->val$myEncryptedNumber:Ljava/lang/String;

    iget v4, p0, Lcom/viber/jni/PhoneControllerListener$60;->val$status:I

    iget v5, p0, Lcom/viber/jni/PhoneControllerListener$60;->val$chunkSeq:I

    iget-boolean v6, p0, Lcom/viber/jni/PhoneControllerListener$60;->val$lastChunk:Z

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerDelegate;->onRecoverGroups([Lcom/viber/jni/RecoveryGroupInfo;[Lcom/viber/jni/PublicGroupInfo;Ljava/lang/String;IIZ)V

    .line 1284
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1279
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$60;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

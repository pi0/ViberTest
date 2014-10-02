.class Lcom/viber/jni/PhoneControllerListener$69;
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

.field final synthetic val$members:[Ljava/lang/String;

.field final synthetic val$messageId:I

.field final synthetic val$notAddedMembers:Ljava/util/Map;

.field final synthetic val$revision:I

.field final synthetic val$seq:I

.field final synthetic val$status:I

.field final synthetic val$token:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JIJI[Ljava/lang/String;Ljava/util/Map;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$69;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$groupId:J

    iput p4, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$seq:I

    iput-wide p5, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$token:J

    iput p7, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$messageId:I

    iput-object p8, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$members:[Ljava/lang/String;

    iput-object p9, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$notAddedMembers:Ljava/util/Map;

    iput p10, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$status:I

    iput p11, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$revision:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 11
    .parameter

    .prologue
    .line 1534
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$groupId:J

    iget v3, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$seq:I

    iget-wide v4, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$token:J

    iget v6, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$messageId:I

    iget-object v7, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$members:[Ljava/lang/String;

    iget-object v8, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$notAddedMembers:Ljava/util/Map;

    iget v9, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$status:I

    iget v10, p0, Lcom/viber/jni/PhoneControllerListener$69;->val$revision:I

    move-object v0, p1

    invoke-interface/range {v0 .. v10}, Lcom/viber/jni/PhoneControllerDelegate;->onGroupAddMembers(JIJI[Ljava/lang/String;Ljava/util/Map;II)V

    .line 1535
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1531
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$69;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

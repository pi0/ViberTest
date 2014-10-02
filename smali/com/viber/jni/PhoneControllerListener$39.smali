.class Lcom/viber/jni/PhoneControllerListener$39;
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

.field final synthetic val$addedMembers:[Lcom/viber/jni/GroupUserInfo;

.field final synthetic val$clientName:Ljava/lang/String;

.field final synthetic val$flags:I

.field final synthetic val$groupId:J

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$groupOldName:Ljava/lang/String;

.field final synthetic val$messageToken:J

.field final synthetic val$messageType:I

.field final synthetic val$phoneNumber:Ljava/lang/String;

.field final synthetic val$timeChanged:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;I[Lcom/viber/jni/GroupUserInfo;)V
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
    .parameter
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$39;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$groupId:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$groupName:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$groupOldName:Ljava/lang/String;

    iput-wide p6, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$messageToken:J

    iput p8, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$flags:I

    iput-wide p9, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$timeChanged:J

    iput-object p11, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$phoneNumber:Ljava/lang/String;

    iput-object p12, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$clientName:Ljava/lang/String;

    iput p13, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$messageType:I

    iput-object p14, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$addedMembers:[Lcom/viber/jni/GroupUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 14
    .parameter

    .prologue
    .line 783
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$groupId:J

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$groupName:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$groupOldName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$messageToken:J

    iget v7, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$flags:I

    iget-wide v8, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$timeChanged:J

    iget-object v10, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$phoneNumber:Ljava/lang/String;

    iget-object v11, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$clientName:Ljava/lang/String;

    iget v12, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$messageType:I

    iget-object v13, p0, Lcom/viber/jni/PhoneControllerListener$39;->val$addedMembers:[Lcom/viber/jni/GroupUserInfo;

    move-object v0, p1

    invoke-interface/range {v0 .. v13}, Lcom/viber/jni/PhoneControllerDelegate;->onGroupChanged(JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;I[Lcom/viber/jni/GroupUserInfo;)Z

    .line 785
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 779
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$39;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

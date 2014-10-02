.class Lcom/viber/jni/PhoneControllerListener$37;
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

.field final synthetic val$groupId:J

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$members:[Lcom/viber/jni/GroupUserInfo;

.field final synthetic val$seq:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;IJLjava/lang/String;[Lcom/viber/jni/GroupUserInfo;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$37;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput p2, p0, Lcom/viber/jni/PhoneControllerListener$37;->val$seq:I

    iput-wide p3, p0, Lcom/viber/jni/PhoneControllerListener$37;->val$groupId:J

    iput-object p5, p0, Lcom/viber/jni/PhoneControllerListener$37;->val$groupName:Ljava/lang/String;

    iput-object p6, p0, Lcom/viber/jni/PhoneControllerListener$37;->val$members:[Lcom/viber/jni/GroupUserInfo;

    iput p7, p0, Lcom/viber/jni/PhoneControllerListener$37;->val$flags:I

    iput p8, p0, Lcom/viber/jni/PhoneControllerListener$37;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 8
    .parameter

    .prologue
    .line 755
    iget v1, p0, Lcom/viber/jni/PhoneControllerListener$37;->val$seq:I

    iget-wide v2, p0, Lcom/viber/jni/PhoneControllerListener$37;->val$groupId:J

    iget-object v4, p0, Lcom/viber/jni/PhoneControllerListener$37;->val$groupName:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/jni/PhoneControllerListener$37;->val$members:[Lcom/viber/jni/GroupUserInfo;

    iget v6, p0, Lcom/viber/jni/PhoneControllerListener$37;->val$flags:I

    iget v7, p0, Lcom/viber/jni/PhoneControllerListener$37;->val$status:I

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/viber/jni/PhoneControllerDelegate;->onGroupInfo(IJLjava/lang/String;[Lcom/viber/jni/GroupUserInfo;II)V

    .line 756
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 751
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$37;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

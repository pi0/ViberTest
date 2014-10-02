.class Lcom/viber/jni/PhoneControllerListener$68;
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

.field final synthetic val$clientPhone:Ljava/lang/String;

.field final synthetic val$groupId:J

.field final synthetic val$messageToken:J

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$68;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$68;->val$groupId:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$68;->val$clientPhone:Ljava/lang/String;

    iput-wide p5, p0, Lcom/viber/jni/PhoneControllerListener$68;->val$messageToken:J

    iput p7, p0, Lcom/viber/jni/PhoneControllerListener$68;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 7
    .parameter

    .prologue
    .line 1510
    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$68;->val$groupId:J

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerListener$68;->val$clientPhone:Ljava/lang/String;

    iget-wide v4, p0, Lcom/viber/jni/PhoneControllerListener$68;->val$messageToken:J

    iget v6, p0, Lcom/viber/jni/PhoneControllerListener$68;->val$status:I

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/viber/jni/PhoneControllerDelegate;->onGroupAddMember(JLjava/lang/String;JI)V

    .line 1511
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1507
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$68;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

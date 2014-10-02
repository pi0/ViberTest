.class Lcom/viber/jni/PhoneControllerListener$32;
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

.field final synthetic val$context:I

.field final synthetic val$groupId:J

.field final synthetic val$notFoundMembers:Ljava/util/Map;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;IIJLjava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$32;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput p2, p0, Lcom/viber/jni/PhoneControllerListener$32;->val$status:I

    iput p3, p0, Lcom/viber/jni/PhoneControllerListener$32;->val$context:I

    iput-wide p4, p0, Lcom/viber/jni/PhoneControllerListener$32;->val$groupId:J

    iput-object p6, p0, Lcom/viber/jni/PhoneControllerListener$32;->val$notFoundMembers:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 6
    .parameter

    .prologue
    .line 678
    iget v1, p0, Lcom/viber/jni/PhoneControllerListener$32;->val$status:I

    iget v2, p0, Lcom/viber/jni/PhoneControllerListener$32;->val$context:I

    iget-wide v3, p0, Lcom/viber/jni/PhoneControllerListener$32;->val$groupId:J

    iget-object v5, p0, Lcom/viber/jni/PhoneControllerListener$32;->val$notFoundMembers:Ljava/util/Map;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/PhoneControllerDelegate;->onCreateGroupReply(IIJLjava/util/Map;)V

    .line 679
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$32;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

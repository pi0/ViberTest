.class Lcom/viber/jni/PhoneControllerWrapper$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/viber/jni/controller/PhoneControllerCaller$MultiCallerCallback",
        "<",
        "Lcom/viber/jni/controller/PhoneController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/PhoneControllerWrapper;

.field final synthetic val$deletedConversationTokens:[Lcom/viber/jni/ConversationToken;

.field final synthetic val$deletedGroupTokens:[Lcom/viber/jni/GroupToken;

.field final synthetic val$sequence:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerWrapper;[Lcom/viber/jni/ConversationToken;[Lcom/viber/jni/GroupToken;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerWrapper$15;->this$0:Lcom/viber/jni/PhoneControllerWrapper;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerWrapper$15;->val$deletedConversationTokens:[Lcom/viber/jni/ConversationToken;

    iput-object p3, p0, Lcom/viber/jni/PhoneControllerWrapper$15;->val$deletedGroupTokens:[Lcom/viber/jni/GroupToken;

    iput p4, p0, Lcom/viber/jni/PhoneControllerWrapper$15;->val$sequence:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/viber/jni/controller/PhoneController;)Z
    .locals 3
    .parameter

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerWrapper$15;->val$deletedConversationTokens:[Lcom/viber/jni/ConversationToken;

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerWrapper$15;->val$deletedGroupTokens:[Lcom/viber/jni/GroupToken;

    iget v2, p0, Lcom/viber/jni/PhoneControllerWrapper$15;->val$sequence:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/controller/PhoneController;->handleSyncDeletedMessages([Lcom/viber/jni/ConversationToken;[Lcom/viber/jni/GroupToken;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1010
    check-cast p1, Lcom/viber/jni/controller/PhoneController;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerWrapper$15;->call(Lcom/viber/jni/controller/PhoneController;)Z

    move-result v0

    return v0
.end method

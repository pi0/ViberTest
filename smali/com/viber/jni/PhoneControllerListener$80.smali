.class Lcom/viber/jni/PhoneControllerListener$80;
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

.field final synthetic val$publicGroupInfos:[Lcom/viber/jni/PublicGroupInfo;

.field final synthetic val$seq:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;I[Lcom/viber/jni/PublicGroupInfo;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$80;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput p2, p0, Lcom/viber/jni/PhoneControllerListener$80;->val$seq:I

    iput-object p3, p0, Lcom/viber/jni/PhoneControllerListener$80;->val$publicGroupInfos:[Lcom/viber/jni/PublicGroupInfo;

    iput p4, p0, Lcom/viber/jni/PhoneControllerListener$80;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 3
    .parameter

    .prologue
    .line 1714
    iget v0, p0, Lcom/viber/jni/PhoneControllerListener$80;->val$seq:I

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerListener$80;->val$publicGroupInfos:[Lcom/viber/jni/PublicGroupInfo;

    iget v2, p0, Lcom/viber/jni/PhoneControllerListener$80;->val$status:I

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/PhoneControllerDelegate;->onSearchPublicGroups(I[Lcom/viber/jni/PublicGroupInfo;I)V

    .line 1715
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1710
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$80;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

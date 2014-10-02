.class Lcom/viber/jni/PhoneControllerListener$76;
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

.field final synthetic val$groupInfo:[Lcom/viber/jni/PGLatestParams;

.field final synthetic val$token:J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;[Lcom/viber/jni/PGLatestParams;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$76;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerListener$76;->val$groupInfo:[Lcom/viber/jni/PGLatestParams;

    iput-wide p3, p0, Lcom/viber/jni/PhoneControllerListener$76;->val$token:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 3
    .parameter

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener$76;->val$groupInfo:[Lcom/viber/jni/PGLatestParams;

    iget-wide v1, p0, Lcom/viber/jni/PhoneControllerListener$76;->val$token:J

    invoke-interface {p1, v0, v1, v2}, Lcom/viber/jni/PhoneControllerDelegate;->onPublicGroupsUpdated([Lcom/viber/jni/PGLatestParams;J)V

    .line 1643
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1639
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$76;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

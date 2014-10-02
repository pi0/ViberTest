.class Lcom/viber/jni/PhoneControllerListener$57;
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

.field final synthetic val$deletedTokens:[J

.field final synthetic val$readToken:[J


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;[J[J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$57;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-object p2, p0, Lcom/viber/jni/PhoneControllerListener$57;->val$readToken:[J

    iput-object p3, p0, Lcom/viber/jni/PhoneControllerListener$57;->val$deletedTokens:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 2
    .parameter

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/viber/jni/PhoneControllerListener$57;->val$readToken:[J

    iget-object v1, p0, Lcom/viber/jni/PhoneControllerListener$57;->val$deletedTokens:[J

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/PhoneControllerDelegate;->onSyncMessages([J[J)Z

    .line 1191
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1187
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$57;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

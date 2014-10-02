.class Lcom/viber/jni/PhoneControllerListener$47;
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

.field final synthetic val$ClientName:Ljava/lang/String;

.field final synthetic val$MessageToken:J

.field final synthetic val$PhotoDownloadID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$47;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$47;->val$MessageToken:J

    iput-object p4, p0, Lcom/viber/jni/PhoneControllerListener$47;->val$ClientName:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/jni/PhoneControllerListener$47;->val$PhotoDownloadID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 4
    .parameter

    .prologue
    .line 888
    iget-wide v0, p0, Lcom/viber/jni/PhoneControllerListener$47;->val$MessageToken:J

    iget-object v2, p0, Lcom/viber/jni/PhoneControllerListener$47;->val$ClientName:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/jni/PhoneControllerListener$47;->val$PhotoDownloadID:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/jni/PhoneControllerDelegate;->onUserInfoChange(JLjava/lang/String;Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 885
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$47;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

.class Lcom/viber/jni/ptt/PttPlayerListener$1;
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
        "Lcom/viber/jni/ptt/PttControllerDelegate$Player;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/viber/jni/ptt/PttPlayerListener;

.field final synthetic val$pttID:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/PttPlayerListener;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/viber/jni/ptt/PttPlayerListener$1;->this$0:Lcom/viber/jni/ptt/PttPlayerListener;

    iput-object p2, p0, Lcom/viber/jni/ptt/PttPlayerListener$1;->val$pttID:Ljava/lang/String;

    iput p3, p0, Lcom/viber/jni/ptt/PttPlayerListener$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/ptt/PttControllerDelegate$Player;)V
    .locals 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/jni/ptt/PttPlayerListener$1;->val$pttID:Ljava/lang/String;

    iget v1, p0, Lcom/viber/jni/ptt/PttPlayerListener$1;->val$status:I

    invoke-interface {p1, v0, v1}, Lcom/viber/jni/ptt/PttControllerDelegate$Player;->onStartPlayPttReply(Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/viber/jni/ptt/PttControllerDelegate$Player;

    invoke-virtual {p0, p1}, Lcom/viber/jni/ptt/PttPlayerListener$1;->execute(Lcom/viber/jni/ptt/PttControllerDelegate$Player;)V

    return-void
.end method

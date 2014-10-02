.class Lcom/viber/jni/ptt/PttPlayerListener$4;
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


# direct methods
.method constructor <init>(Lcom/viber/jni/ptt/PttPlayerListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/viber/jni/ptt/PttPlayerListener$4;->this$0:Lcom/viber/jni/ptt/PttPlayerListener;

    iput-object p2, p0, Lcom/viber/jni/ptt/PttPlayerListener$4;->val$pttID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/ptt/PttControllerDelegate$Player;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/jni/ptt/PttPlayerListener$4;->val$pttID:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/viber/jni/ptt/PttControllerDelegate$Player;->onPttBufferingStarted(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    check-cast p1, Lcom/viber/jni/ptt/PttControllerDelegate$Player;

    invoke-virtual {p0, p1}, Lcom/viber/jni/ptt/PttPlayerListener$4;->execute(Lcom/viber/jni/ptt/PttControllerDelegate$Player;)V

    return-void
.end method

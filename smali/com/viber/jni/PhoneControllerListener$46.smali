.class Lcom/viber/jni/PhoneControllerListener$46;
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

.field final synthetic val$GroupID:J

.field final synthetic val$IsOK:Z

.field final synthetic val$Mute:Z


# direct methods
.method constructor <init>(Lcom/viber/jni/PhoneControllerListener;JZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 873
    iput-object p1, p0, Lcom/viber/jni/PhoneControllerListener$46;->this$0:Lcom/viber/jni/PhoneControllerListener;

    iput-wide p2, p0, Lcom/viber/jni/PhoneControllerListener$46;->val$GroupID:J

    iput-boolean p4, p0, Lcom/viber/jni/PhoneControllerListener$46;->val$Mute:Z

    iput-boolean p5, p0, Lcom/viber/jni/PhoneControllerListener$46;->val$IsOK:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/viber/jni/PhoneControllerDelegate;)V
    .locals 4
    .parameter

    .prologue
    .line 876
    iget-wide v0, p0, Lcom/viber/jni/PhoneControllerListener$46;->val$GroupID:J

    iget-boolean v2, p0, Lcom/viber/jni/PhoneControllerListener$46;->val$Mute:Z

    iget-boolean v3, p0, Lcom/viber/jni/PhoneControllerListener$46;->val$IsOK:Z

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/jni/PhoneControllerDelegate;->onMuteGroupReply(JZZ)V

    .line 877
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 873
    check-cast p1, Lcom/viber/jni/PhoneControllerDelegate;

    invoke-virtual {p0, p1}, Lcom/viber/jni/PhoneControllerListener$46;->execute(Lcom/viber/jni/PhoneControllerDelegate;)V

    return-void
.end method

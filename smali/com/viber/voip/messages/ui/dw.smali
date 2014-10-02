.class Lcom/viber/voip/messages/ui/dw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/connection/ConnectionDelegate;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/PttViewController;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/PttViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/viber/voip/messages/ui/dw;->a:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dw;->a:Lcom/viber/voip/messages/ui/PttViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/PttViewController;->setEnabled(Z)V

    .line 72
    return-void
.end method

.method public onConnectionStateChange(I)V
    .locals 2
    .parameter

    .prologue
    .line 76
    iget-object v1, p0, Lcom/viber/voip/messages/ui/dw;->a:Lcom/viber/voip/messages/ui/PttViewController;

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/PttViewController;->setEnabled(Z)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

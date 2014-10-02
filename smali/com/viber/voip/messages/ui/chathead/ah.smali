.class Lcom/viber/voip/messages/ui/chathead/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 2707
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 4
    .parameter

    .prologue
    .line 2711
    packed-switch p1, :pswitch_data_0

    .line 2727
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->s(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/chathead/aj;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/chathead/aj;-><init>(Lcom/viber/voip/messages/ui/chathead/ah;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2747
    :goto_0
    return-void

    .line 2713
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ah;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->s(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/chathead/ai;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/chathead/ai;-><init>(Lcom/viber/voip/messages/ui/chathead/ah;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2711
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

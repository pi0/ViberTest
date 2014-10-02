.class Lcom/viber/voip/messages/conversation/publicgroup/aj;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/aj;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 541
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aj;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->j(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/widget/MessageBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    sget-object v0, Lcom/viber/voip/messages/conversation/publicgroup/an;->a:[I

    invoke-static {p1}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->resolveEnum(I)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 544
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/aj;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/ak;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/publicgroup/ak;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/aj;)V

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

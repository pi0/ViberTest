.class Lcom/viber/service/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/service/OutgoingCallBroadcaster;


# direct methods
.method constructor <init>(Lcom/viber/service/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    iput-object p2, p0, Lcom/viber/service/e;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/viber/service/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/viber/service/e;->a:Landroid/content/Intent;

    const-string/jumbo v1, "viber_out"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/service/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/e;->b(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    iget-object v1, p0, Lcom/viber/service/e;->a:Landroid/content/Intent;

    new-instance v3, Lcom/viber/service/OutgoingCallBroadcaster$OutgoingCallReceiver;

    iget-object v4, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    invoke-direct {v3, v4}, Lcom/viber/service/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/viber/service/OutgoingCallBroadcaster;)V

    move-object v4, v2

    move-object v6, p3

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/viber/service/OutgoingCallBroadcaster;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 112
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/viber/service/OutgoingCallBroadcaster;->finish()V

    .line 163
    :goto_0
    return-void

    .line 116
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 160
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/viber/service/OutgoingCallBroadcaster;->finish()V

    goto :goto_0

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    iget-object v1, p0, Lcom/viber/service/e;->a:Landroid/content/Intent;

    new-instance v3, Lcom/viber/service/OutgoingCallBroadcaster$OutgoingCallReceiver;

    iget-object v4, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    invoke-direct {v3, v4}, Lcom/viber/service/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/viber/service/OutgoingCallBroadcaster;)V

    move-object v4, v2

    move-object v6, p3

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/viber/service/OutgoingCallBroadcaster;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 123
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/viber/service/e;->a:Landroid/content/Intent;

    const-string/jumbo v1, "viber_out"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    iget-object v1, p0, Lcom/viber/service/e;->a:Landroid/content/Intent;

    new-instance v3, Lcom/viber/service/OutgoingCallBroadcaster$OutgoingCallReceiver;

    iget-object v4, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    invoke-direct {v3, v4}, Lcom/viber/service/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/viber/service/OutgoingCallBroadcaster;)V

    move-object v4, v2

    move-object v6, p3

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/viber/service/OutgoingCallBroadcaster;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    const-string/jumbo v1, "com.viber.voip.action.CALL_DIALOG"

    invoke-static {v0, v1}, Lcom/viber/service/OutgoingCallBroadcaster;->a(Lcom/viber/service/OutgoingCallBroadcaster;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    const-string/jumbo v1, "com.viber.voip.action.CALL_DIALOG"

    invoke-static {v0, v1}, Lcom/viber/service/OutgoingCallBroadcaster;->a(Lcom/viber/service/OutgoingCallBroadcaster;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v0, p0, Lcom/viber/service/e;->b:Ljava/lang/String;

    const-string/jumbo v1, "[^*0-9]+"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-static {v0, v1}, Lcom/viber/service/OutgoingCallBroadcaster;->a(Lcom/viber/service/OutgoingCallBroadcaster;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    const-string/jumbo v1, "android.intent.action.CALL"

    invoke-static {v0, v1}, Lcom/viber/service/OutgoingCallBroadcaster;->a(Lcom/viber/service/OutgoingCallBroadcaster;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :pswitch_4
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    const-string/jumbo v1, "com.viber.voip.action.SERVICE_NUMBER_DIALOG"

    invoke-static {v0, v1}, Lcom/viber/service/OutgoingCallBroadcaster;->a(Lcom/viber/service/OutgoingCallBroadcaster;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :pswitch_5
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    const-string/jumbo v1, "com.viber.voip.action.NO_SERVICE_DIALOG"

    invoke-static {v0, v1}, Lcom/viber/service/OutgoingCallBroadcaster;->a(Lcom/viber/service/OutgoingCallBroadcaster;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :pswitch_6
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    const-string/jumbo v1, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-static {v0, v1}, Lcom/viber/service/OutgoingCallBroadcaster;->a(Lcom/viber/service/OutgoingCallBroadcaster;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :pswitch_7
    iget-object v0, p0, Lcom/viber/service/e;->c:Lcom/viber/service/OutgoingCallBroadcaster;

    const-string/jumbo v1, "com.viber.voip.action.SLOW_INTERNET_DIALOG"

    invoke-static {v0, v1}, Lcom/viber/service/OutgoingCallBroadcaster;->a(Lcom/viber/service/OutgoingCallBroadcaster;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

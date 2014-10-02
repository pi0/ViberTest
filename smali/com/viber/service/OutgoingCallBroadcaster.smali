.class public Lcom/viber/service/OutgoingCallBroadcaster;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    .line 97
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Lcom/viber/service/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/service/e;-><init>(Lcom/viber/service/OutgoingCallBroadcaster;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    .line 166
    return-void
.end method

.method static synthetic a(Lcom/viber/service/OutgoingCallBroadcaster;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/viber/service/OutgoingCallBroadcaster;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v3, 0x1000

    .line 169
    invoke-virtual {p0}, Lcom/viber/service/OutgoingCallBroadcaster;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 171
    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.viber.voip.action.SERVICE_NUMBER_DIALOG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.viber.voip.action.NO_SERVICE_DIALOG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.viber.voip.action.GSM_CALL_IN_PROGRESS_DIALOG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.viber.voip.action.SLOW_INTERNET_DIALOG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.viber.voip.action.PROBLEM_DEVICE_DIALOG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 179
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    if-eqz v1, :cond_1

    const-string/jumbo v2, "com.viber.voip.action.GSM_CALL_IN_PROGRESS_DIALOG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 183
    :cond_1
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v0}, Lcom/viber/service/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 195
    :cond_2
    :goto_0
    return-void

    .line 185
    :cond_3
    const-string/jumbo v2, "com.viber.voip.action.CALL_DIALOG"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    const-string/jumbo v1, "last_resolved"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 189
    const-string/jumbo v1, "extra_was_viber"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "extra_was_viber"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    const-string/jumbo v0, "extra_was_viber"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    :cond_4
    invoke-virtual {p0, v2}, Lcom/viber/service/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    if-eqz p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/viber/service/OutgoingCallBroadcaster;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/viber/service/OutgoingCallBroadcaster;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/viber/voip/phone/aa;->a(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 52
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "external_call"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 53
    :goto_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "contact_id"

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 54
    :goto_2
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/viber/service/OutgoingCallBroadcaster;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "notif_extra_call"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 57
    :goto_3
    cmp-long v10, v8, v10

    if-eqz v10, :cond_1

    .line 58
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v10

    invoke-virtual {v10}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Lcom/viber/voip/e/u;->c(J)V

    .line 61
    :cond_1
    if-eqz v0, :cond_6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    .line 62
    invoke-static {p0, v4, v5}, Lcom/viber/voip/contacts/c/d/aa;->a(Landroid/content/Context;J)Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v1

    .line 64
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.CALL"

    const-string/jumbo v4, "tel"

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/viber/service/OutgoingCallBroadcaster;->setIntent(Landroid/content/Intent;)V

    .line 69
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/service/OutgoingCallBroadcaster;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move v0, v3

    .line 52
    goto :goto_1

    :cond_3
    move-wide v4, v6

    .line 53
    goto :goto_2

    :cond_4
    move-wide v8, v10

    .line 54
    goto :goto_3

    .line 71
    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.NO_LONGER_VIBER_PROBLEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/viber/service/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/viber/service/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 75
    :cond_6
    if-eqz v12, :cond_7

    .line 76
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    invoke-direct {p0, v1, v12}, Lcom/viber/service/OutgoingCallBroadcaster;->a(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_7
    new-instance v3, Lcom/viber/service/OutgoingCallBroadcaster$OutgoingCallReceiver;

    invoke-direct {v3, p0}, Lcom/viber/service/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/viber/service/OutgoingCallBroadcaster;)V

    const/4 v5, -0x1

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/viber/service/OutgoingCallBroadcaster;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/viber/service/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 205
    const/4 v0, 0x3

    const-string/jumbo v1, "OutgoingCallBroadcaster"

    const-string/jumbo v2, "onNewIntent() new call request received, do nothing, because already calling"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

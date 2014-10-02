.class public Lcom/viber/service/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 71
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {p1, p0}, Lcom/viber/voip/phone/aa;->a(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/viber/voip/viberout/e;->b(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "external_call"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "contact_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 80
    :cond_2
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/viber/service/c;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/service/c;-><init>(ZJLandroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/viber/service/b;->c(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {p0, p1, p2, p3, p4}, Lcom/viber/service/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v1

    .line 45
    invoke-interface {v1}, Lcom/viber/jni/dialer/DialerController;->getPhoneState()I

    move-result v2

    .line 50
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->isGSMCallActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    :cond_0
    const-string/jumbo v0, "com.viber.voip.action.GSM_CALL_IN_PROGRESS_DIALOG"

    invoke-static {p0, p1, v0}, Lcom/viber/service/b;->d(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string/jumbo v2, "com.viber.voip.action.REDIAL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    invoke-interface {v1}, Lcom/viber/jni/dialer/DialerController;->handleRedial()V

    goto :goto_0

    .line 57
    :cond_2
    const-string/jumbo v0, "viber_out"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 58
    const-string/jumbo v2, "from_dialpad"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 59
    invoke-static {v2}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->b(Z)V

    .line 60
    if-eqz v0, :cond_3

    .line 61
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/viber/jni/dialer/DialerController;->handleDialViberOut(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/viber/jni/dialer/DialerController;->handleDial(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    const-string/jumbo v0, "viber_out"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    const-string/jumbo v0, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-static {p0, p1, v0}, Lcom/viber/service/b;->d(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 146
    const-string/jumbo v0, "com.viber.voip.action.NO_SERVICE_DIALOG"

    invoke-static {p0, p1, v0}, Lcom/viber/service/b;->d(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-static {p0, p1, p4}, Lcom/viber/service/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_3
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 168
    :pswitch_0
    if-eqz p4, :cond_5

    .line 169
    const-string/jumbo v0, "com.viber.voip.action.CALL_DIALOG"

    invoke-static {p0, p1, v0}, Lcom/viber/service/b;->d(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_1
    invoke-static {p0, p1, p4}, Lcom/viber/service/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    const-string/jumbo v0, "viber_out"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    invoke-static {p0, p1, p4}, Lcom/viber/service/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_4
    const-string/jumbo v0, "com.viber.voip.action.CALL_DIALOG"

    invoke-static {p0, p1, v0}, Lcom/viber/service/b;->d(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_5
    invoke-static {p0, p1, p4}, Lcom/viber/service/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :pswitch_3
    const-string/jumbo v0, "[^*0-9]+"

    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    const-string/jumbo v0, "android.intent.action.DIAL"

    invoke-static {p0, p1, v0}, Lcom/viber/service/b;->d(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_6
    const-string/jumbo v0, "android.intent.action.CALL"

    invoke-static {p0, p1, v0}, Lcom/viber/service/b;->d(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :pswitch_4
    const-string/jumbo v0, "com.viber.voip.action.SERVICE_NUMBER_DIALOG"

    invoke-static {p0, p1, v0}, Lcom/viber/service/b;->d(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_5
    const-string/jumbo v0, "com.viber.voip.action.NO_SERVICE_DIALOG"

    invoke-static {p0, p1, v0}, Lcom/viber/service/b;->d(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_6
    const-string/jumbo v0, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-static {p0, p1, v0}, Lcom/viber/service/b;->d(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :pswitch_7
    const-string/jumbo v0, "com.viber.voip.action.SLOW_INTERNET_DIALOG"

    invoke-static {p0, p1, v0}, Lcom/viber/service/b;->d(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static c(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7fffffff

    .line 112
    .line 123
    const-string/jumbo v0, "number_status"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 124
    const-string/jumbo v1, "canonized_number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    if-eq v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 126
    invoke-static {p0, p1, p2, v0, v1}, Lcom/viber/service/b;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Lcom/viber/service/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/service/d;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v0, p2, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x1000

    .line 204
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 205
    const-string/jumbo v1, "android.intent.action.CALL"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.viber.voip.action.SERVICE_NUMBER_DIALOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.viber.voip.action.NO_SERVICE_DIALOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.viber.voip.action.GSM_CALL_IN_PROGRESS_DIALOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.viber.voip.action.SLOW_INTERNET_DIALOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.viber.voip.action.PROBLEM_DEVICE_DIALOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    if-eqz v0, :cond_1

    const-string/jumbo v2, "com.viber.voip.action.GSM_CALL_IN_PROGRESS_DIALOG"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 215
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 217
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 229
    :cond_2
    :goto_0
    return-void

    .line 219
    :cond_3
    const-string/jumbo v1, "com.viber.voip.action.CALL_DIALOG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 221
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    const-string/jumbo v0, "last_resolved"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 223
    const-string/jumbo v0, "extra_was_viber"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "extra_was_viber"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 225
    const-string/jumbo v0, "extra_was_viber"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    :cond_4
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.class public Lcom/viber/voip/sms/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/viber/voip/sms/s;->a:I

    .line 291
    const-class v0, Lcom/viber/voip/sms/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sms/s;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)V
    .locals 2
    .parameter

    .prologue
    .line 131
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "viber_first_sms"

    invoke-interface {v0, v1, p0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 132
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    const-string/jumbo v0, "needViberForSmsDialog SHOW! and set setViberUsedForSms to true!"

    invoke-static {v0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/viber/voip/sms/s;->a(Z)V

    .line 94
    invoke-static {}, Lcom/viber/voip/sms/s;->f()V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.SMS_ACCEPTING_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processViberNumberForGrowSMS number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 240
    sget v0, Lcom/viber/voip/sms/s;->a:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/viber/voip/sms/s;->a:I

    packed-switch v0, :pswitch_data_0

    .line 246
    :goto_0
    invoke-static {}, Lcom/viber/voip/sms/s;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    if-ge p3, v2, :cond_0

    .line 248
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSmsDbManager()Lcom/viber/voip/sms/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/sms/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/viber/voip/messages/controller/cq;->a()Lcom/viber/voip/messages/controller/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/cq;->d()V

    .line 251
    :cond_0
    const-string/jumbo v0, "processViberNumberForGrowSMS show popup and notification"

    invoke-static {v0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/viber/voip/sms/s;->a(Ljava/lang/String;Ljava/lang/String;IZLcom/viber/voip/messages/controller/ab;)V

    .line 270
    :cond_1
    :goto_1
    return-void

    .line 241
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->x:Lcom/viber/voip/a/aa;

    iget-object v1, v1, Lcom/viber/voip/a/aa;->a:Lcom/viber/voip/a/af;

    iget-object v1, v1, Lcom/viber/voip/a/af;->a:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->x:Lcom/viber/voip/a/aa;

    iget-object v1, v1, Lcom/viber/voip/a/aa;->a:Lcom/viber/voip/a/af;

    iget-object v1, v1, Lcom/viber/voip/a/af;->b:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->x:Lcom/viber/voip/a/aa;

    iget-object v1, v1, Lcom/viber/voip/a/aa;->a:Lcom/viber/voip/a/af;

    iget-object v1, v1, Lcom/viber/voip/a/af;->c:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-static {}, Lcom/viber/voip/sms/s;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 254
    if-ge p3, v2, :cond_3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSmsDbManager()Lcom/viber/voip/sms/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/sms/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_3
    invoke-static {}, Lcom/viber/voip/sms/s;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 256
    const-string/jumbo v0, "processViberNumberForGrowSMS start Sms reply activity!"

    invoke-static {v0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 257
    if-ge p3, v2, :cond_4

    invoke-static {}, Lcom/viber/voip/messages/controller/cq;->a()Lcom/viber/voip/messages/controller/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/cq;->d()V

    .line 258
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/sms/SmsReplyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 259
    const-string/jumbo v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string/jumbo v1, "sms_body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string/jumbo v1, "sms_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    sput-boolean v2, Lcom/viber/voip/sms/SmsReplyActivity;->a:Z

    .line 263
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 265
    :cond_5
    const-string/jumbo v0, "processViberNumberForGrowSMS in call"

    invoke-static {v0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 266
    :cond_6
    invoke-static {}, Lcom/viber/voip/sms/s;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string/jumbo v0, "Viber is not used for Sms (need to ask User after 7 incoming SMS)"

    invoke-static {v0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/viber/voip/sms/s;->g()V

    goto/16 :goto_1

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 220
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/sms/t;

    invoke-direct {v1, p0}, Lcom/viber/voip/sms/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IZLcom/viber/voip/messages/controller/ab;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notify SMS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", readed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", smsId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSmsDbManager()Lcom/viber/voip/sms/a;

    move-result-object v0

    .line 188
    if-lez p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/viber/voip/sms/a;->a(I)V

    .line 189
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    invoke-interface {v1, p0, p1, p3, p4}, Lcom/viber/voip/messages/controller/x;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/viber/voip/messages/controller/ab;)V

    .line 190
    invoke-virtual {v0, p0}, Lcom/viber/voip/sms/a;->b(Ljava/lang/String;)V

    .line 191
    if-eqz p1, :cond_1

    .line 192
    sget-object v0, Lcom/viber/voip/a/a;->x:Lcom/viber/voip/a/aa;

    invoke-virtual {v0}, Lcom/viber/voip/a/aa;->c()Lcom/viber/voip/a/x;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/x;->a(Ljava/lang/Long;)Lcom/viber/voip/a/x;

    .line 194
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 200
    :cond_1
    return-void
.end method

.method public static a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/viber/voip/sms/s;->a(ZZ)V

    .line 116
    return-void
.end method

.method public static a(ZZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setViberUsedForSms usedForSms = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " resetCancelCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "viber_sms"

    invoke-interface {v0, v1, p0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 121
    if-nez p0, :cond_0

    if-eqz p1, :cond_0

    .line 122
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/sms/s;->a(I)V

    .line 124
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-static {}, Lcom/viber/voip/sms/s;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    invoke-static {}, Lcom/viber/voip/sms/s;->b()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/viber/voip/sms/s;->i()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 101
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isGrowMessagesEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isViberUsedForSms "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/sms/s;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cancel count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/sms/s;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    :try_start_0
    const-string/jumbo v0, "createFakeSms start service"

    invoke-static {v0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    const-string/jumbo v1, "Y29tLmFuZHJvaWQubW1z"

    invoke-static {v1}, Lcom/viber/voip/util/aj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Y29tLmFuZHJvaWQubW1zLnRyYW5zYWN0aW9uLlNtc1JlY2VpdmVyU2VydmljZQ=="

    invoke-static {v2}, Lcom/viber/voip/util/aj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string/jumbo v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string/jumbo v1, "pdus"

    new-instance v2, Lcom/viber/voip/sms/a/a;

    invoke-direct {v2, p1, p2}, Lcom/viber/voip/sms/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/viber/voip/sms/a/a;->a()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 318
    const-string/jumbo v1, "format"

    const-string/jumbo v2, "3gpp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    const-string/jumbo v0, "createFakeSms SecurityException"

    invoke-static {v0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 343
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    .line 344
    invoke-static {}, Lcom/viber/voip/registration/dj;->c()Z

    move-result v2

    .line 345
    invoke-virtual {v0}, Lcom/viber/voip/rakuten/l;->c()Z

    move-result v1

    .line 346
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "generateInviteSmsText isRegisteredJapanese:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", rakutenConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", phoneLang:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 350
    if-eqz v2, :cond_0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v3

    iget-object v3, v3, Lcom/viber/voip/bd;->j:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/rakuten/l;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 357
    :goto_0
    if-eqz v2, :cond_1

    .line 358
    const v0, 0x7f0c078e

    .line 363
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "generateInviteSmsText text:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 365
    return-object v0

    .line 353
    :cond_0
    const-string/jumbo v0, "www.viber.com/dl"

    move-object v1, v0

    goto :goto_0

    .line 360
    :cond_1
    const v0, 0x7f0c032e

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "checkIsViberNumberForGrowSMS number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/sms/v;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/viber/voip/sms/v;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0, p1, v1}, Lcom/viber/voip/util/hd;->b(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    .line 290
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-static {p0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Z
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "viber_sms"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    return-void
.end method

.method public static c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 110
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "viber_hide_native_sms"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getDevicesManager()Lcom/viber/voip/registration/bh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/registration/bh;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-static {}, Lcom/viber/voip/sms/s;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    invoke-static {}, Lcom/viber/voip/sms/s;->i()I

    move-result v1

    .line 137
    if-eqz v1, :cond_2

    const/4 v2, 0x3

    if-eq v2, v1, :cond_2

    const/4 v2, 0x7

    if-ne v2, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/viber/voip/sms/s;->i()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "neverShowReplyActivity"

    invoke-static {v0}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 146
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/viber/voip/sms/s;->a(I)V

    .line 147
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSmsDbManager()Lcom/viber/voip/sms/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/sms/a;->c()V

    .line 148
    return-void
.end method

.method public static g()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-static {}, Lcom/viber/voip/sms/s;->i()I

    move-result v0

    .line 152
    if-gez v0, :cond_0

    move v0, v1

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelShowReplyActivity cancelCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/sms/s;->c(Ljava/lang/String;)V

    .line 155
    const/4 v2, 0x7

    if-gt v0, v2, :cond_1

    .line 156
    invoke-static {v0}, Lcom/viber/voip/sms/s;->a(I)V

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/sms/s;->a(Z)V

    .line 159
    invoke-static {}, Lcom/viber/voip/sms/s;->f()V

    goto :goto_0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method private static i()I
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "viber_first_sms"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static j()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    .line 337
    const-string/jumbo v0, "phone"

    invoke-virtual {v2, v0}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 338
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

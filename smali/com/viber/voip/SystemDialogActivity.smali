.class public Lcom/viber/voip/SystemDialogActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"


# static fields
.field private static a:J


# instance fields
.field private b:Landroid/content/DialogInterface;

.field private c:Ljava/lang/String;

.field private d:Lcom/viber/voip/db;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/viber/voip/SystemDialogActivity;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    .line 1238
    new-instance v0, Lcom/viber/voip/db;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/db;-><init>(Lcom/viber/voip/SystemDialogActivity;Lcom/viber/voip/bo;)V

    iput-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    .line 1239
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/SystemDialogActivity;)Landroid/content/DialogInterface;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->b:Landroid/content/DialogInterface;

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    .line 994
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 995
    const v1, 0x7f0c0377

    new-instance v2, Lcom/viber/voip/co;

    invoke-direct {v2, p0}, Lcom/viber/voip/co;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1002
    iget-object v1, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1003
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1004
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1005
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1204
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/viber/jni/dialer/DialerController;->handleDialogReply(ILjava/lang/String;)V

    .line 1207
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 14
    .parameter

    .prologue
    const v6, 0x7f0c02b6

    const v9, 0x7f0c02ae

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resolveIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->c(Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-direct {p0, p1}, Lcom/viber/voip/SystemDialogActivity;->b(Landroid/content/Intent;)V

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string/jumbo v0, "com.viber.voip.action.SMS_ACCEPTING_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0554

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c03d8

    new-instance v2, Lcom/viber/voip/bz;

    invoke-direct {v2, p0}, Lcom/viber/voip/bz;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02b5

    new-instance v2, Lcom/viber/voip/bo;

    invoke-direct {v2, p0}, Lcom/viber/voip/bo;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 128
    :cond_2
    const-string/jumbo v0, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode"

    invoke-interface {v0, v1, v5}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v2

    .line 132
    if-eqz v2, :cond_3

    .line 133
    const v1, 0x7f0c039f

    .line 134
    const v0, 0x7f0c03a0

    .line 135
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v3

    sget-object v4, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v5, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "202"

    invoke-virtual {v4, v5}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 146
    :goto_1
    invoke-virtual {p0, v1}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/viber/voip/cm;

    invoke-direct {v3, p0, v2}, Lcom/viber/voip/cm;-><init>(Lcom/viber/voip/SystemDialogActivity;Z)V

    invoke-static {p0, v1, v0, v3, v11}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->b:Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 136
    :cond_3
    invoke-static {p0}, Lcom/viber/voip/util/ft;->d(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    const v1, 0x7f0c03a2

    .line 138
    const v0, 0x7f0c038e

    .line 139
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v3

    sget-object v4, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v5, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "201"

    invoke-virtual {v4, v5}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1

    .line 141
    :cond_4
    const v1, 0x7f0c03a1

    .line 142
    const v0, 0x7f0c03a3

    .line 143
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v3

    sget-object v4, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v5, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "203"

    invoke-virtual {v4, v5}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1

    .line 162
    :cond_5
    const-string/jumbo v0, "com.viber.voip.action.PTT_LOW_STORAGE_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    const v0, 0x7f0c03a5

    const v1, 0x7f0c03a6

    invoke-static {p0, v0, v1, v4}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->b:Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 164
    :cond_6
    const-string/jumbo v0, "com.viber.voip.action.ACTION_CORRUPTED_FILE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    const v0, 0x7f0c05a8

    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4, v0, v4}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/content/DialogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->b:Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 166
    :cond_7
    const-string/jumbo v0, "com.viber.voip.action.PTT_MEMORY_USAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 167
    const v1, 0x7f0c03ab

    const v2, 0x7f0c03ac

    new-instance v3, Lcom/viber/voip/cu;

    invoke-direct {v3, p0}, Lcom/viber/voip/cu;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    new-instance v4, Lcom/viber/voip/cw;

    invoke-direct {v4, p0}, Lcom/viber/voip/cw;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILcom/viber/voip/util/az;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->b:Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 188
    :cond_8
    const-string/jumbo v0, "com.viber.voip.action.PTT_DOWNLOAD_FAILED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    const v0, 0x7f0c03ad

    const v1, 0x7f0c03ae

    invoke-static {p0, v0, v1, v4}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->b:Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 190
    :cond_9
    const-string/jumbo v0, "com.viber.voip.action.PTT_UPLOAD_FAILED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 191
    const v0, 0x7f0c03ad

    const v1, 0x7f0c03af

    invoke-static {p0, v0, v1, v4}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->b:Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 192
    :cond_a
    const-string/jumbo v0, "com.viber.voip.action.CALL_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 193
    const-string/jumbo v0, "last_resolved"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 194
    sget-wide v0, Lcom/viber/voip/SystemDialogActivity;->a:J

    cmp-long v0, v0, v12

    if-ltz v0, :cond_d

    move v0, v11

    .line 196
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolveIntent: resolved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/SystemDialogActivity;->c(Ljava/lang/String;)V

    .line 198
    if-nez v0, :cond_12

    .line 202
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 203
    const-string/jumbo v1, "resolved"

    invoke-virtual {p1, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    const/4 v1, -0x1

    .line 209
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 210
    const v1, 0x7f0c0586

    .line 212
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/registration/HardwareParameters;->isGsmSupported()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 213
    const v2, 0x7f0c058d

    .line 243
    :goto_3
    if-eqz v2, :cond_b

    new-instance v3, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    const-string/jumbo v4, ""

    invoke-virtual {p0, v2}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 244
    :cond_b
    if-eqz v9, :cond_c

    if-eqz v2, :cond_c

    const v3, 0x7f0c0380

    if-eq v2, v3, :cond_c

    invoke-static {}, Lcom/viber/voip/util/gn;->a()Z

    move-result v3

    if-nez v3, :cond_c

    .line 246
    new-instance v3, Lcom/viber/voip/cy;

    invoke-direct {v3, p0, v2, v0}, Lcom/viber/voip/cy;-><init>(Lcom/viber/voip/SystemDialogActivity;ILandroid/net/Uri;)V

    new-instance v4, Lcom/viber/voip/cz;

    invoke-direct {v4, p0}, Lcom/viber/voip/cz;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    const v0, 0x7f0c0380

    if-eq v2, v0, :cond_11

    move v6, v5

    :goto_4
    move-object v0, p0

    move v5, v9

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->b:Landroid/content/DialogInterface;

    .line 277
    :cond_c
    sput-wide v12, Lcom/viber/voip/SystemDialogActivity;->a:J

    goto/16 :goto_0

    :cond_d
    move v0, v5

    .line 194
    goto :goto_2

    .line 218
    :cond_e
    const v2, 0x7f0c0586

    invoke-virtual {p0, v2}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v2, 0x7f0c058e

    invoke-virtual {p0, v2}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0c058f

    new-instance v10, Lcom/viber/voip/cx;

    invoke-direct {v10, p0}, Lcom/viber/voip/cx;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;Z)Landroid/content/DialogInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/SystemDialogActivity;->b:Landroid/content/DialogInterface;

    move v9, v5

    move v2, v5

    goto :goto_3

    .line 227
    :cond_f
    const-string/jumbo v2, "extra_was_viber"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "extra_was_viber"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 230
    const v2, 0x7f0c0465

    .line 231
    const v9, 0x7f0c0377

    .line 232
    goto :goto_3

    .line 234
    :cond_10
    const v2, 0x7f0c0380

    .line 237
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v3

    sget-object v4, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v6, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "300"

    invoke-virtual {v4, v6}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_3

    :cond_11
    move v6, v11

    .line 246
    goto :goto_4

    .line 279
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 281
    :cond_13
    const-string/jumbo v0, "com.viber.voip.action.GSM_CALL_IN_PROGRESS_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 283
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "302"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 286
    const v0, 0x7f0c037a

    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2, v0}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 289
    new-instance v1, Lcom/viber/voip/da;

    invoke-direct {v1, p0}, Lcom/viber/voip/da;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-static {p0, v4, v0, v1, v5}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->b:Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 302
    :cond_14
    const-string/jumbo v0, "com.viber.voip.action.SERVICE_NUMBER_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 303
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const v1, 0x7f0c037b

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "300"

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/net/Uri;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :cond_15
    const-string/jumbo v0, "com.viber.voip.action.NO_LONGER_VIBER_PROBLEM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 305
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 306
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "sms_body"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "address"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-direct {p0, v0, v1}, Lcom/viber/voip/SystemDialogActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 316
    :cond_16
    const v0, 0x7f0c0469

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->a(I)V

    goto/16 :goto_0

    .line 318
    :cond_17
    const-string/jumbo v0, "com.viber.voip.action.NO_LONGER_IN_GROUP_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 319
    const v0, 0x7f0c046c

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->a(I)V

    goto/16 :goto_0

    .line 320
    :cond_18
    const-string/jumbo v0, "com.viber.voip.action.NO_INTERNET_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 321
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 322
    if-nez v0, :cond_19

    .line 323
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const v1, 0x7f0c03a2

    const v2, 0x7f0c037e

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "201"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/net/Uri;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :cond_19
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const v0, 0x7f0c037e

    .line 327
    :goto_5
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "smsto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 328
    const v0, 0x7f0c0414

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 325
    :cond_1a
    const v0, 0x7f0c038e

    goto :goto_5

    .line 330
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const v2, 0x7f0c03a2

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "201"

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/net/Uri;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :cond_1c
    const-string/jumbo v0, "com.viber.voip.action.NO_SERVICE_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 335
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 339
    if-nez v0, :cond_1d

    .line 340
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const v1, 0x7f0c037f

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "204"

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/net/Uri;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 342
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const v0, 0x7f0c037f

    .line 344
    :goto_6
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "smsto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 345
    const v0, 0x7f0c0415

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 342
    :cond_1e
    const v0, 0x7f0c037d

    goto :goto_6

    .line 347
    :cond_1f
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "204"

    invoke-direct {p0, v1, v0, v2}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/net/Uri;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :cond_20
    const-string/jumbo v0, "com.viber.voip.action.SWITCH_TO_GSM_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 352
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "303"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 354
    const-string/jumbo v0, "phone_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 355
    const-string/jumbo v0, "phone_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->c:Ljava/lang/String;

    .line 358
    :cond_21
    const v0, 0x7f0c0375

    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    const v1, 0x7f0c0376

    invoke-virtual {p0, v1}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    new-instance v2, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    invoke-direct {v2, v0, v1}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 362
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/bq;

    invoke-direct {v1, p0}, Lcom/viber/voip/bq;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/bp;

    invoke-direct {v1, p0}, Lcom/viber/voip/bp;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 393
    :cond_22
    const-string/jumbo v0, "com.viber.voip.action.SLOW_INTERNET_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 394
    const v0, 0x7f0c0364

    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    const v1, 0x7f0c0384

    invoke-virtual {p0, v1}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    new-instance v2, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    invoke-direct {v2, v0, v1}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 398
    new-instance v2, Lcom/viber/voip/br;

    invoke-direct {v2, p0}, Lcom/viber/voip/br;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-static {p0, v0, v1, v2, v5}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 406
    :cond_23
    const-string/jumbo v0, "android.intent.action.SENDTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 407
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "smsto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    :cond_24
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/bs;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/bs;-><init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V

    goto/16 :goto_0

    .line 448
    :cond_25
    const-string/jumbo v0, "com.viber.voip.action.PROBLEM_DEVICE_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 449
    const v0, 0x7f0c0389

    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 450
    new-instance v1, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2, v0}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 452
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0389

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/bt;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/bt;-><init>(Lcom/viber/voip/SystemDialogActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 471
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 472
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 473
    :cond_26
    const-string/jumbo v0, "com.viber.voip.action.DATA_ROAMING_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 474
    const v0, 0x7f0c038a

    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    new-instance v1, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2, v0}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 477
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 478
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 479
    new-array v2, v11, [Landroid/widget/CheckBox;

    .line 481
    const v0, 0x7f0c02b5

    new-instance v3, Lcom/viber/voip/bu;

    invoke-direct {v3, p0, v2, p1}, Lcom/viber/voip/bu;-><init>(Lcom/viber/voip/SystemDialogActivity;[Landroid/widget/CheckBox;Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 493
    new-instance v0, Lcom/viber/voip/bv;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/bv;-><init>(Lcom/viber/voip/SystemDialogActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 500
    iget-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 502
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030092

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 503
    const v0, 0x7f070244

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    aput-object v0, v2, v5

    .line 504
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 506
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 507
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 508
    :cond_27
    const-string/jumbo v0, "com.viber.voip.action.CHANGE_LOCATION_SETTINGS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 510
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "305c"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 511
    new-instance v0, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    const-string/jumbo v1, ""

    const v2, 0x7f0c042e

    invoke-virtual {p0, v2}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 513
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 515
    const v1, 0x7f0c042e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 516
    new-instance v1, Lcom/viber/voip/bw;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/bw;-><init>(Lcom/viber/voip/SystemDialogActivity;Landroid/content/Intent;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 534
    new-instance v1, Lcom/viber/voip/bx;

    invoke-direct {v1, p0}, Lcom/viber/voip/bx;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-virtual {v0, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 547
    new-instance v1, Lcom/viber/voip/by;

    invoke-direct {v1, p0}, Lcom/viber/voip/by;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 554
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 556
    :cond_28
    const-string/jumbo v0, "com.viber.voip.action.SEND_NO_LOCATION_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 557
    const v0, 0x7f0c042f

    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 558
    new-instance v1, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2, v0}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 560
    new-instance v1, Lcom/viber/voip/ca;

    invoke-direct {v1, p0}, Lcom/viber/voip/ca;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-static {p0, v4, v0, v1, v11}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 576
    :cond_29
    const-string/jumbo v0, "com.viber.voip.action.ACTION_GEN_DEV_KEY_FAILED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 577
    const v0, 0x7f0c0430

    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    new-instance v1, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2, v0}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 580
    new-instance v1, Lcom/viber/voip/cb;

    invoke-direct {v1, p0}, Lcom/viber/voip/cb;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-static {p0, v4, v0, v1, v11}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 590
    :cond_2a
    const-string/jumbo v0, "com.viber.voip.action.NO_INTERNET_CONNECTION_DOWNLOAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 591
    const v0, 0x7f0c038e

    .line 592
    const-string/jumbo v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const v2, 0x7f0c03a2

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "201"

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/net/Uri;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 593
    :cond_2b
    const-string/jumbo v0, "com.viber.voip.action.INVALID_NUMBER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 594
    invoke-direct {p0}, Lcom/viber/voip/SystemDialogActivity;->b()V

    goto/16 :goto_0

    .line 595
    :cond_2c
    const-string/jumbo v0, "com.viber.voip.action.DOWNLOAD_FAIL_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 597
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 598
    const-string/jumbo v1, "EXTRA_ERROR_CODE"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 599
    packed-switch v0, :pswitch_data_0

    .line 605
    const v0, 0x7f0c038c

    .line 608
    :goto_7
    const-string/jumbo v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "201"

    invoke-direct {p0, v1, v0, v2}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/net/Uri;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 601
    :pswitch_0
    const v0, 0x7f0c038d

    .line 602
    goto :goto_7

    .line 609
    :cond_2d
    const-string/jumbo v0, "com.viber.voip.action.TYPE_TEXT_ONLY_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string/jumbo v0, "com.viber.voip.action.TYPE_NO_SPIRIT_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 611
    :cond_2e
    const-string/jumbo v0, "dialog_context"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    const v1, 0x7f0c0466

    invoke-virtual {p0, v1}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 614
    const-string/jumbo v1, "com.viber.voip.action.TYPE_NO_SPIRIT_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 615
    new-instance v1, Lcom/viber/voip/cc;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/cc;-><init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V

    invoke-static {v0, v0, v1}, Lcom/viber/voip/util/w;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/ag;)V

    goto/16 :goto_0

    .line 644
    :cond_2f
    new-instance v1, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2, v6}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 646
    new-instance v7, Lcom/viber/voip/cf;

    invoke-direct {v7, p0, v0}, Lcom/viber/voip/cf;-><init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V

    new-instance v8, Lcom/viber/voip/cg;

    invoke-direct {v8, p0, v0}, Lcom/viber/voip/cg;-><init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V

    move-object v4, p0

    move v10, v5

    invoke-static/range {v4 .. v10}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 669
    :cond_30
    const-string/jumbo v0, "com.viber.voip.action.NUMBER_NOT_VIBER_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 670
    const v0, 0x7f0c052a

    const v1, 0x7f0c0529

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "507"

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/net/Uri;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 671
    :cond_31
    const-string/jumbo v0, "com.viber.voip.action.INVITE_NUMBER_NOT_VIBER_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 672
    const-string/jumbo v0, "dialog_context"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 674
    :cond_32
    const-string/jumbo v0, "com.viber.voip.action.RATE_POPUP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 676
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "405"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 678
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030090

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 679
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c051c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/ch;

    invoke-direct {v2, p0}, Lcom/viber/voip/ch;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 689
    new-instance v2, Lcom/viber/voip/ci;

    invoke-direct {v2, p0, v1}, Lcom/viber/voip/ci;-><init>(Lcom/viber/voip/SystemDialogActivity;Landroid/app/AlertDialog;)V

    .line 725
    const v3, 0x7f07023f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 726
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    const v3, 0x7f070240

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 729
    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 731
    const v3, 0x7f070241

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 732
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 735
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 736
    :cond_33
    const-string/jumbo v0, "com.viber.voip.action.NO_MULTI_SYNC_ACCOUNTS_ALLOWED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 738
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0397

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 739
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    goto/16 :goto_0

    .line 740
    :cond_34
    const-string/jumbo v0, "com.viber.voip.action.SYNC_ACCOUNT_ENABLE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 742
    invoke-static {}, Lcom/viber/service/contacts/sync/a;->a()Lcom/viber/service/contacts/sync/a;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/viber/service/contacts/sync/a;->a(Z)V

    .line 743
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    goto/16 :goto_0

    .line 744
    :cond_35
    const-string/jumbo v0, "com.viber.voip.action.ACTION_LOW_STORAGE_SPACE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 745
    const v0, 0x7f0c039b

    const v1, 0x7f0c039c

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "351"

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/net/Uri;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 746
    :cond_36
    const-string/jumbo v0, "com.viber.voip.action.ACTION_SD_CARD_UNAVALIABLE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 747
    const v0, 0x7f0c0460

    const v1, 0x7f0c0489

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "337"

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/net/Uri;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 748
    :cond_37
    const-string/jumbo v0, "com.viber.voip.action.SETTINGS_CHANGE_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string/jumbo v0, "com.viber.voip.action.SETTINGS_CHANGE_CHECK"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 749
    :cond_38
    invoke-direct {p0}, Lcom/viber/voip/SystemDialogActivity;->e()V

    goto/16 :goto_0

    .line 750
    :cond_39
    const-string/jumbo v0, "com.viber.voip.action.CORRUPTED_UPGRADE_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 751
    invoke-direct {p0}, Lcom/viber/voip/SystemDialogActivity;->d()V

    goto/16 :goto_0

    .line 754
    :cond_3a
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1122
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1123
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "message_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "message_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1125
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v5, "message_thread_id"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    .line 1127
    if-nez v0, :cond_0

    .line 1130
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/viber/voip/util/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    :cond_0
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->m(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v5

    .line 1137
    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 1142
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    sget-object v6, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v7, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "311"

    invoke-virtual {v6, v7}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 1144
    if-eqz v5, :cond_3

    const v2, 0x7f0c0417

    :goto_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v0, v1

    :cond_2
    aput-object v0, v6, v7

    invoke-virtual {p0, v2, v6}, Lcom/viber/voip/SystemDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1146
    new-instance v1, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2, v0}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 1147
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1148
    const/high16 v2, 0x104

    iget-object v6, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v1, v2, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v6, 0x7f0c0418

    new-instance v7, Lcom/viber/voip/cs;

    invoke-direct {v7, p0, v3, v4, v5}, Lcom/viber/voip/cs;-><init>(Lcom/viber/voip/SystemDialogActivity;JLcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1165
    iget-object v2, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1166
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1167
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    :goto_1
    return-void

    .line 1144
    :cond_3
    const v2, 0x7f0c0416

    goto :goto_0

    .line 1170
    :catch_0
    move-exception v0

    .line 1172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;IILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1059
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v1, p4}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 1060
    new-instance v0, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    const-string/jumbo v1, ""

    invoke-virtual {p0, p3}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 1062
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1064
    if-eqz p1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1065
    :cond_0
    const v1, 0x104000a

    iget-object v2, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1088
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1089
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1090
    if-eqz p2, :cond_1

    .line 1091
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1092
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1093
    return-void

    .line 1067
    :cond_2
    const v1, 0x7f0c0377

    new-instance v2, Lcom/viber/voip/cq;

    invoke-direct {v2, p0, p4, p1}, Lcom/viber/voip/cq;-><init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    iget-object v3, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 969
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/net/Uri;IILjava/lang/String;)V

    .line 970
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 931
    if-eqz p1, :cond_0

    .line 932
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    .line 933
    const-string/jumbo v1, "message_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 934
    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/i;->a(J)V

    .line 936
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/SystemDialogActivity;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/SystemDialogActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/SystemDialogActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/viber/voip/SystemDialogActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/SystemDialogActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 759
    const v2, 0x7f0c0652

    const v3, 0x7f0c0653

    const v4, 0x7f0c0654

    const v5, 0x7f0c0655

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/SystemDialogActivity;->a(Ljava/lang/String;IIIIZ)V

    .line 761
    return-void
.end method

.method private a(Ljava/lang/String;IIIIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 771
    .line 773
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 828
    :goto_0
    return-void

    .line 780
    :cond_0
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 781
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 788
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 792
    :cond_1
    const-string/jumbo v3, "display_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 793
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 795
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 796
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 797
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 798
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 803
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    goto :goto_0

    .line 800
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 803
    :goto_2
    invoke-static {v1}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 806
    if-eqz p6, :cond_5

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v7

    invoke-virtual {p0, p3, v1}, Lcom/viber/voip/SystemDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    new-instance v3, Lcom/viber/voip/cj;

    invoke-direct {v3, p0, p1}, Lcom/viber/voip/cj;-><init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V

    new-instance v4, Lcom/viber/voip/ck;

    invoke-direct {v4, p0}, Lcom/viber/voip/ck;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    move-object v0, p0

    move v1, p2

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IIZ)Landroid/content/DialogInterface;

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v7

    aput-object v0, v1, v6

    invoke-virtual {p0, p3, v1}, Lcom/viber/voip/SystemDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v0, p1

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1010
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1011
    const v1, 0x7f0c02af

    new-instance v2, Lcom/viber/voip/cp;

    invoke-direct {v2, p0, p2}, Lcom/viber/voip/cp;-><init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    iget-object v3, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1027
    iget-object v1, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1028
    const v1, 0x7f0c046b

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/SystemDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1029
    const v1, 0x7f0c046a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1030
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1031
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 947
    const v0, 0x7f0c038f

    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 948
    const v1, 0x7f0c0390

    invoke-virtual {p0, v1}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 949
    new-instance v2, Lcom/viber/logger/QaLogger$QaNotificationEvent;

    invoke-direct {v2, v0, v1}, Lcom/viber/logger/QaLogger$QaNotificationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 951
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 953
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 954
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 956
    const v0, 0x104000a

    new-instance v1, Lcom/viber/voip/cn;

    invoke-direct {v1, p0}, Lcom/viber/voip/cn;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 964
    iget-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 965
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 966
    return-void
.end method

.method private b(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 1215
    if-eqz p1, :cond_1

    .line 1216
    instance-of v0, p1, Landroid/app/Dialog;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1218
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    :cond_1
    :goto_0
    return-void

    .line 1219
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 865
    .line 867
    const-string/jumbo v6, ""

    .line 871
    invoke-static {p0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/Intent;)V

    .line 928
    :goto_0
    return-void

    .line 876
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 879
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 883
    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 884
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 885
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 886
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 889
    :goto_1
    invoke-static {v2}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 896
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 897
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    goto :goto_0

    .line 889
    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v7}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    throw v0

    .line 907
    :cond_2
    new-instance v2, Lcom/viber/service/f;

    invoke-direct {v2}, Lcom/viber/service/f;-><init>()V

    new-instance v3, Lcom/viber/voip/cl;

    invoke-direct {v3, p0, v7, v1, v0}, Lcom/viber/voip/cl;-><init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/viber/service/f;->a(Lcom/viber/service/i;)V

    goto :goto_0

    .line 889
    :catchall_1
    move-exception v0

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object v0, v6

    move-object v1, v7

    goto :goto_1

    :cond_4
    move-object v0, v6

    move-object v1, v7

    goto :goto_2
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 939
    if-eqz p1, :cond_0

    .line 940
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    .line 941
    const-string/jumbo v1, "message_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 942
    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->d(J)V

    .line 944
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/SystemDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/viber/voip/SystemDialogActivity;->c()V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/SystemDialogActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/viber/voip/SystemDialogActivity;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/viber/voip/SystemDialogActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 764
    const v2, 0x7f0c0386

    const v3, 0x7f0c0387

    const v4, 0x7f0c02af

    const v5, 0x7f0c02b6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/SystemDialogActivity;->a(Ljava/lang/String;IIIIZ)V

    .line 766
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1034
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1035
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    const-string/jumbo v1, "sms_body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smsto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1038
    invoke-virtual {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 1039
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/SystemDialogActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 1096
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1097
    const v1, 0x104000a

    iget-object v2, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1098
    iget-object v1, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1099
    const v1, 0x7f0c039e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1100
    const v1, 0x7f0c039d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1102
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 862
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 1105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0402

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0403

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/viber/voip/cr;

    invoke-direct {v2, p0}, Lcom/viber/voip/cr;-><init>(Lcom/viber/voip/SystemDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1117
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1118
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/SystemDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/viber/voip/SystemDialogActivity;->f()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 1177
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settingChangeAction lastOnline:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->c(Ljava/lang/String;)V

    .line 1179
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "last_online_settings_enable_alarmed"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 1181
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    const v0, 0x7f0c03fc

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v1, :cond_1

    const v0, 0x7f0c03fd

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c02b6

    iget-object v3, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/SystemDialogActivity;->d:Lcom/viber/voip/db;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v1, :cond_2

    const v0, 0x7f0c03fe

    :goto_2
    new-instance v3, Lcom/viber/voip/ct;

    invoke-direct {v3, p0, v1}, Lcom/viber/voip/ct;-><init>(Lcom/viber/voip/SystemDialogActivity;Z)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1196
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1197
    return-void

    .line 1181
    :cond_0
    const v0, 0x7f0c040b

    goto :goto_0

    :cond_1
    const v0, 0x7f0c040c

    goto :goto_1

    :cond_2
    const v0, 0x7f0c040d

    goto :goto_2
.end method

.method private f()V
    .locals 3

    .prologue
    .line 1200
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "show_rate_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 1201
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 831
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "UseProblemDevice"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 832
    return-void
.end method

.method public a(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1210
    invoke-direct {p0, p1}, Lcom/viber/voip/SystemDialogActivity;->b(Landroid/content/DialogInterface;)V

    .line 1211
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 1212
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 1235
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->finish()V

    .line 1236
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 1230
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onBackPressed()V

    .line 1231
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigurationChanged newConfig.orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->c(Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->b:Landroid/content/DialogInterface;

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->b(Landroid/content/DialogInterface;)V

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/SystemDialogActivity;->c:Ljava/lang/String;

    .line 856
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 857
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 104
    const-string/jumbo v0, "onNewIntent"

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->c(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/Intent;)V

    .line 106
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 107
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 848
    const-string/jumbo v0, "onPause"

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->c(Ljava/lang/String;)V

    .line 849
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onPause()V

    .line 850
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 842
    const-string/jumbo v0, "onResume"

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->c(Ljava/lang/String;)V

    .line 843
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onResume()V

    .line 844
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 97
    const-string/jumbo v0, "onStart"

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->c(Ljava/lang/String;)V

    .line 98
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStart()V

    .line 99
    invoke-virtual {p0}, Lcom/viber/voip/SystemDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/Intent;)V

    .line 100
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 836
    const-string/jumbo v0, "onStop"

    invoke-direct {p0, v0}, Lcom/viber/voip/SystemDialogActivity;->c(Ljava/lang/String;)V

    .line 837
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStop()V

    .line 838
    return-void
.end method

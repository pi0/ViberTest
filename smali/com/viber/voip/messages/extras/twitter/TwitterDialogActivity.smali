.class public Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private a:Lcom/viber/voip/messages/extras/twitter/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;)Lcom/viber/voip/messages/extras/twitter/l;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->a:Lcom/viber/voip/messages/extras/twitter/l;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 12
    .parameter

    .prologue
    const-wide/16 v9, -0x1

    const v11, 0x7f0c02b6

    const/16 v7, 0x14

    const/4 v8, 0x0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resolveIntent() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->a(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v0, "com.viber.voip.action.TWITTER_ERROR_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const-string/jumbo v0, "extra_error_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 45
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 46
    const v0, 0x7f0c02ee

    new-instance v2, Lcom/viber/voip/messages/extras/twitter/g;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/extras/twitter/g;-><init>(Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 55
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string/jumbo v0, "com.viber.voip.action.TWITTER_CHANGE_ACCOUNT_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 60
    const v2, 0x7f0c04df

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 61
    const v0, 0x7f0c044f

    new-instance v2, Lcom/viber/voip/messages/extras/twitter/h;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/extras/twitter/h;-><init>(Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    new-instance v0, Lcom/viber/voip/messages/extras/twitter/i;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/twitter/i;-><init>(Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;)V

    invoke-virtual {v1, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 80
    :cond_2
    const-string/jumbo v0, "com.viber.voip.action.TWITTER_GET_TWEET_DIALOG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v0, "extra_msg_id"

    invoke-virtual {p1, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 82
    const-string/jumbo v0, "extra_msg_myme_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 83
    const-string/jumbo v0, "extra_msg_media_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    const-string/jumbo v0, "extra_msg_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    cmp-long v1, v2, v9

    if-eqz v1, :cond_0

    .line 86
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v6, Landroid/widget/EditText;

    invoke-direct {v6, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 90
    const v0, 0x7f0c04e3

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 91
    const v0, 0x7f0c04e4

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 92
    const v10, 0x104000a

    new-instance v0, Lcom/viber/voip/messages/extras/twitter/j;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/extras/twitter/j;-><init>(Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;JLjava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 100
    new-instance v0, Lcom/viber/voip/messages/extras/twitter/k;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/twitter/k;-><init>(Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;)V

    invoke-virtual {v9, v11, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    move v9, v7

    move v10, v8

    .line 109
    invoke-virtual/range {v5 .. v10}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 110
    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 111
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 122
    const-string/jumbo v0, "--->"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getTwitterManager()Lcom/viber/voip/messages/extras/twitter/l;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->a:Lcom/viber/voip/messages/extras/twitter/l;

    .line 25
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->finish()V

    .line 119
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->a(Landroid/content/Intent;)V

    .line 36
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStart()V

    .line 30
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/twitter/TwitterDialogActivity;->a(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

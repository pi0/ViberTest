.class public Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private a:Lcom/viber/voip/messages/extras/fb/s;

.field private b:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)Lcom/viber/voip/messages/extras/fb/s;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->a:Lcom/viber/voip/messages/extras/fb/s;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "fb_comment"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->showDialog(I)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string/jumbo v1, "fb_error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->showDialog(I)V

    goto :goto_0

    .line 79
    :cond_2
    const-string/jumbo v1, "fb_cancel_rentry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->showDialog(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    const-string/jumbo v0, "FacebookDialogActivity"

    const-string/jumbo v1, "FacebookDialogActivity.onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/app/ViberActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 239
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 285
    const-string/jumbo v0, "FacebookDialogActivity"

    const-string/jumbo v1, "FacebookDialogActivity.onContentChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onContentChanged()V

    .line 287
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f03012f

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->setContentView(I)V

    .line 38
    const v0, 0x7f0700af

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/extras/fb/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/fb/d;-><init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46
    const-string/jumbo v0, "FacebookDialogActivity"

    const-string/jumbo v1, "FacebookDialogActivity.onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->a:Lcom/viber/voip/messages/extras/fb/s;

    .line 48
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->a(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 92
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 93
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->b:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->b:Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0c0446

    const v7, 0x7f0c02b6

    const v6, 0x7f0c02b5

    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 103
    const-string/jumbo v0, "FacebookDialogActivity"

    const-string/jumbo v1, "FacebookDialogActivity.onCreateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    packed-switch p1, :pswitch_data_0

    .line 228
    invoke-super {p0, p1, p2}, Lcom/viber/voip/app/ViberActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v6

    .line 231
    :goto_0
    return-object v6

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 134
    const-string/jumbo v4, "msg_body"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    const v5, 0x7f0c043d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 139
    const v5, 0x7f0c043e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 140
    new-instance v5, Lcom/viber/voip/messages/extras/fb/e;

    invoke-direct {v5, p0, v0, v1}, Lcom/viber/voip/messages/extras/fb/e;-><init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;Landroid/content/Intent;Landroid/widget/EditText;)V

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    new-instance v0, Lcom/viber/voip/messages/extras/fb/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/fb/f;-><init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V

    invoke-virtual {v4, v7, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 157
    new-instance v0, Lcom/viber/voip/messages/extras/fb/g;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/fb/g;-><init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    move-object v0, v6

    .line 166
    check-cast v0, Landroid/app/AlertDialog;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 167
    invoke-virtual {v6, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "msg_body"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 176
    new-instance v0, Lcom/viber/voip/messages/extras/fb/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/fb/h;-><init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    new-instance v0, Lcom/viber/voip/messages/extras/fb/i;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/fb/i;-><init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 193
    invoke-virtual {v6, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 197
    :pswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "msg_body"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    const-string/jumbo v2, "msg_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 204
    const v1, 0x7f0c03bd

    new-instance v2, Lcom/viber/voip/messages/extras/fb/j;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/extras/fb/j;-><init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    new-instance v1, Lcom/viber/voip/messages/extras/fb/k;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/fb/k;-><init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 216
    new-instance v1, Lcom/viber/voip/messages/extras/fb/l;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/extras/fb/l;-><init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 224
    invoke-virtual {v6, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 243
    const-string/jumbo v0, "FacebookDialogActivity"

    const-string/jumbo v1, "FacebookDialogActivity.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 245
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 249
    const-string/jumbo v0, "FacebookDialogActivity"

    const-string/jumbo v1, "FacebookDialogActivity.onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDetachedFromWindow()V

    .line 251
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->finish()V

    .line 292
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->a(Landroid/content/Intent;)V

    .line 54
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 55
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 255
    const-string/jumbo v0, "FacebookDialogActivity"

    const-string/jumbo v1, "FacebookDialogActivity.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onPause()V

    .line 257
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/viber/voip/app/ViberActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 88
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 261
    const-string/jumbo v0, "FacebookDialogActivity"

    const-string/jumbo v1, "FacebookDialogActivity.onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onRestart()V

    .line 263
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 267
    const-string/jumbo v0, "FacebookDialogActivity"

    const-string/jumbo v1, "FacebookDialogActivity.onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onResume()V

    .line 269
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 273
    const-string/jumbo v0, "FacebookDialogActivity"

    const-string/jumbo v1, "FacebookDialogActivity.onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStart()V

    .line 275
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 279
    const-string/jumbo v0, "FacebookDialogActivity"

    const-string/jumbo v1, "FacebookDialogActivity.onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStop()V

    .line 281
    return-void
.end method

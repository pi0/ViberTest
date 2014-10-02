.class public Lcom/viber/voip/registration/t;
.super Lcom/viber/voip/registration/ai;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Lcom/viber/voip/registration/z;

.field private i:Lcom/viber/voip/registration/aa;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/os/CountDownTimer;

.field private m:I

.field private n:J

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/viber/voip/registration/ai;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/registration/t;->m:I

    .line 82
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/viber/voip/registration/t;->n:J

    .line 636
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/registration/t;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/viber/voip/registration/t;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/viber/voip/registration/t;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/registration/t;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/registration/t;Lcom/viber/voip/registration/aa;)Lcom/viber/voip/registration/aa;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/viber/voip/registration/t;->i:Lcom/viber/voip/registration/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/registration/t;Lcom/viber/voip/registration/z;)Lcom/viber/voip/registration/z;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/viber/voip/registration/t;->h:Lcom/viber/voip/registration/z;

    return-object p1
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 197
    iput p1, p0, Lcom/viber/voip/registration/t;->m:I

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/registration/t;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/viber/voip/registration/t;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-direct {p0}, Lcom/viber/voip/registration/t;->m()V

    goto :goto_0

    .line 207
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/t;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/viber/voip/registration/t;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    const-string/jumbo v0, "activation_waiting_dialog"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/t;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/registration/t;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/viber/voip/registration/t;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-direct {p0}, Lcom/viber/voip/registration/t;->n()V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/viber/voip/registration/t;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/t;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/registration/t;Lcom/viber/voip/registration/df;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/t;->c(Lcom/viber/voip/registration/df;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/registration/t;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/t;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/registration/t;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/viber/voip/registration/t;->o:I

    return v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    const v0, 0x7f07015b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/viber/voip/registration/t;->c:Landroid/widget/EditText;

    .line 140
    iget-object v0, p0, Lcom/viber/voip/registration/t;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/viber/voip/registration/u;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/u;-><init>(Lcom/viber/voip/registration/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    const v0, 0x7f07015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/t;->d:Landroid/view/View;

    .line 163
    const v0, 0x7f07015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/registration/t;->f:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f07015f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/t;->e:Landroid/view/View;

    .line 166
    const v0, 0x7f070160

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/registration/t;->g:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lcom/viber/voip/registration/t;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v0, 0x7f07015c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/registration/t;->b:Landroid/widget/Button;

    .line 170
    iget-object v0, p0, Lcom/viber/voip/registration/t;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/viber/voip/registration/t;->g:Landroid/widget/Button;

    const v1, 0x7f0c05d2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/t;->a(Landroid/view/View;)V

    .line 176
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/registration/t;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/registration/t;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private c(Lcom/viber/voip/registration/df;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 412
    const-string/jumbo v0, "onActivationAccepted"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/t;->h(Ljava/lang/String;)V

    .line 413
    iget-boolean v0, p1, Lcom/viber/voip/registration/df;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 414
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    .line 415
    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivationAccepted :: setting device key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/viber/voip/registration/df;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/viber/voip/registration/t;->h(Ljava/lang/String;)V

    .line 417
    iget-object v3, p1, Lcom/viber/voip/registration/df;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/viber/voip/registration/ActivationController;->setDeviceKey(Ljava/lang/String;)V

    .line 418
    iget-object v3, p1, Lcom/viber/voip/registration/df;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/viber/voip/registration/ActivationController;->setKeyChainDeviceKey(Ljava/lang/String;)V

    .line 419
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 421
    invoke-direct {p0, v1}, Lcom/viber/voip/registration/t;->a(I)V

    .line 422
    return-void

    :cond_0
    move v0, v1

    .line 413
    goto :goto_0
.end method

.method static synthetic d(Lcom/viber/voip/registration/t;)J
    .locals 2
    .parameter

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/viber/voip/registration/t;->n:J

    return-wide v0
.end method

.method static synthetic e(Lcom/viber/voip/registration/t;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/registration/t;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/registration/t;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/viber/voip/registration/t;->q()V

    return-void
.end method

.method static synthetic g(Lcom/viber/voip/registration/t;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/registration/t;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/voip/registration/t;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 426
    iget-object v0, p0, Lcom/viber/voip/registration/t;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 427
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 428
    :cond_0
    const v0, 0x7f0c02f0

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/t;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/t;->k:Ljava/lang/String;

    .line 432
    :goto_0
    const-string/jumbo v0, "onActivationRejected"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/t;->h(Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "104"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 436
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0521

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/t;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0333

    new-instance v2, Lcom/viber/voip/registration/y;

    invoke-direct {v2, p0}, Lcom/viber/voip/registration/y;-><init>(Lcom/viber/voip/registration/t;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 452
    return-void

    .line 430
    :cond_1
    iput-object p1, p0, Lcom/viber/voip/registration/t;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method private l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_1

    const-string/jumbo v2, "activation_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 186
    const-string/jumbo v0, "activation_code"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lookupActivationCode activationCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/t;->h(Ljava/lang/String;)V

    .line 193
    return-object v0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "activation_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "activation_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private m()V
    .locals 7

    .prologue
    .line 224
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "mm:ss"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 225
    new-instance v0, Lcom/viber/voip/registration/v;

    iget-wide v2, p0, Lcom/viber/voip/registration/t;->n:J

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/registration/v;-><init>(Lcom/viber/voip/registration/t;JJLjava/text/SimpleDateFormat;)V

    iput-object v0, p0, Lcom/viber/voip/registration/t;->l:Landroid/os/CountDownTimer;

    .line 239
    iget-object v0, p0, Lcom/viber/voip/registration/t;->l:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 240
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/viber/voip/registration/t;->l:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/viber/voip/registration/t;->l:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/registration/t;->l:Landroid/os/CountDownTimer;

    .line 247
    :cond_0
    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 306
    invoke-direct {p0}, Lcom/viber/voip/registration/t;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/t;->j:Ljava/lang/String;

    .line 307
    iget-object v0, p0, Lcom/viber/voip/registration/t;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/registration/t;->h:Lcom/viber/voip/registration/z;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/viber/voip/registration/t;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    const-string/jumbo v0, "activation_waiting_dialog"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/t;->f(Ljava/lang/String;)V

    .line 313
    new-instance v0, Lcom/viber/voip/registration/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/registration/z;-><init>(Lcom/viber/voip/registration/t;Lcom/viber/voip/registration/u;)V

    iput-object v0, p0, Lcom/viber/voip/registration/t;->h:Lcom/viber/voip/registration/z;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/registration/t;->j:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/z;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 320
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 323
    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/registration/w;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/w;-><init>(Lcom/viber/voip/registration/t;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 389
    return-void
.end method

.method private r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/viber/voip/registration/t;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private s()V
    .locals 3

    .prologue
    .line 459
    const-string/jumbo v0, "saveState"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/t;->h(Ljava/lang/String;)V

    .line 460
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "activation_code_key"

    invoke-direct {p0}, Lcom/viber/voip/registration/t;->r()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 461
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    .line 464
    const-string/jumbo v0, "restoreState"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/t;->h(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "activation_code_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 468
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v2, "activation_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/viber/voip/registration/t;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 472
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 393
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->d:Lcom/viber/voip/a/d;

    const-wide/32 v2, 0xea60

    iget-wide v4, p0, Lcom/viber/voip/registration/t;->n:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/d;->a(J)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 395
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/registration/ActivationController;->setActicationCode(Ljava/lang/String;)V

    .line 397
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/registration/x;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/registration/x;-><init>(Lcom/viber/voip/registration/t;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 403
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 560
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/registration/dj;->a(Z)V

    .line 562
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->j()V

    .line 564
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f070161

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 565
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/t;->i(Ljava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/viber/voip/registration/t;->o()V

    .line 408
    iget-object v0, p0, Lcom/viber/voip/registration/t;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 409
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 568
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/viber/voip/registration/t;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 570
    iget-object v0, p0, Lcom/viber/voip/registration/t;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 571
    iget-object v0, p0, Lcom/viber/voip/registration/t;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 574
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/registration/ai;->c()V

    .line 575
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 578
    invoke-super {p0}, Lcom/viber/voip/registration/ai;->d()V

    .line 579
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/viber/voip/registration/t;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 581
    iget-object v0, p0, Lcom/viber/voip/registration/t;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 583
    :cond_0
    return-void
.end method

.method public onActivityBackPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 290
    iget-object v0, p0, Lcom/viber/voip/registration/t;->h:Lcom/viber/voip/registration/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/t;->h:Lcom/viber/voip/registration/z;

    invoke-virtual {v0}, Lcom/viber/voip/registration/z;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/viber/voip/registration/t;->h:Lcom/viber/voip/registration/z;

    invoke-virtual {v0, v2}, Lcom/viber/voip/registration/z;->cancel(Z)Z

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/t;->i:Lcom/viber/voip/registration/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/registration/t;->i:Lcom/viber/voip/registration/aa;

    invoke-virtual {v0}, Lcom/viber/voip/registration/aa;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/viber/voip/registration/t;->i:Lcom/viber/voip/registration/aa;

    invoke-virtual {v0, v2}, Lcom/viber/voip/registration/aa;->cancel(Z)Z

    .line 297
    :cond_1
    const-string/jumbo v0, "activation_waiting_dialog"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/t;->g(Ljava/lang/String;)V

    .line 298
    invoke-direct {p0}, Lcom/viber/voip/registration/t;->n()V

    .line 300
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 301
    return v2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/viber/voip/registration/ai;->onAttach(Landroid/app/Activity;)V

    .line 133
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->k()V

    .line 136
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 626
    check-cast p1, Landroid/app/Dialog;

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 627
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    iget-object v1, p0, Lcom/viber/voip/registration/t;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "104"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 634
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 254
    :sswitch_0
    invoke-direct {p0}, Lcom/viber/voip/registration/t;->p()V

    .line 255
    invoke-direct {p0}, Lcom/viber/voip/registration/t;->o()V

    goto :goto_0

    .line 258
    :sswitch_1
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 259
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->d:Lcom/viber/voip/a/d;

    invoke-virtual {v1}, Lcom/viber/voip/a/d;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 261
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v1

    .line 263
    invoke-interface {v1}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getRegNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick: GET: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/registration/t;->h(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v2

    iget-object v2, v2, Lcom/viber/voip/bd;->w:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick: LINK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/t;->h(Ljava/lang/String;)V

    .line 271
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 272
    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/t;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/registration/t;->i:Lcom/viber/voip/registration/aa;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/viber/voip/registration/t;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    const-string/jumbo v0, "activation_waiting_dialog"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/t;->f(Ljava/lang/String;)V

    .line 277
    new-instance v0, Lcom/viber/voip/registration/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/registration/aa;-><init>(Lcom/viber/voip/registration/t;Lcom/viber/voip/registration/u;)V

    iput-object v0, p0, Lcom/viber/voip/registration/t;->i:Lcom/viber/voip/registration/aa;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 282
    :sswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/hb;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 252
    :sswitch_data_0
    .sparse-switch
        0x7f07015c -> :sswitch_0
        0x7f070160 -> :sswitch_1
        0x7f0702b9 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x4

    const-string/jumbo v1, "ActivationFragment"

    const-string/jumbo v2, "ActivationFragment.onCreate"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-super {p0, p1}, Lcom/viber/voip/registration/ai;->onCreate(Landroid/os/Bundle;)V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    const-string/jumbo v0, "key_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/registration/t;->m:I

    .line 98
    const-string/jumbo v0, "key_millis_until_finished"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/registration/t;->n:J

    .line 99
    const-string/jumbo v0, "activation_error_message_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/t;->k:Ljava/lang/String;

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/registration/t;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a021c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/registration/t;->o:I

    .line 104
    return-void

    .line 101
    :cond_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->d:Lcom/viber/voip/a/d;

    invoke-virtual {v1}, Lcom/viber/voip/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 108
    const v0, 0x7f030054

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    invoke-direct {p0, v0}, Lcom/viber/voip/registration/t;->b(Landroid/view/View;)V

    .line 112
    iget v1, p0, Lcom/viber/voip/registration/t;->m:I

    invoke-direct {p0, v1}, Lcom/viber/voip/registration/t;->a(I)V

    .line 114
    invoke-direct {p0}, Lcom/viber/voip/registration/t;->l()Ljava/lang/String;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/t;->b(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-object v0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/registration/t;->b:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 611
    iget-object v0, p0, Lcom/viber/voip/registration/t;->h:Lcom/viber/voip/registration/z;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/viber/voip/registration/t;->h:Lcom/viber/voip/registration/z;

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/z;->cancel(Z)Z

    .line 613
    iput-object v2, p0, Lcom/viber/voip/registration/t;->h:Lcom/viber/voip/registration/z;

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/t;->i:Lcom/viber/voip/registration/aa;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/viber/voip/registration/t;->i:Lcom/viber/voip/registration/aa;

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/aa;->cancel(Z)Z

    .line 617
    iput-object v2, p0, Lcom/viber/voip/registration/t;->i:Lcom/viber/voip/registration/aa;

    .line 619
    :cond_1
    const-string/jumbo v0, "activation_waiting_dialog"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/t;->g(Ljava/lang/String;)V

    .line 621
    invoke-super {p0}, Lcom/viber/voip/registration/ai;->onDestroy()V

    .line 622
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 476
    const-string/jumbo v0, "activation_error_message_key"

    iget-object v1, p0, Lcom/viber/voip/registration/t;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string/jumbo v0, "key_status"

    iget v1, p0, Lcom/viber/voip/registration/t;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 478
    const-string/jumbo v0, "key_millis_until_finished"

    iget-wide v1, p0, Lcom/viber/voip/registration/t;->n:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 479
    invoke-super {p0, p1}, Lcom/viber/voip/registration/ai;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 480
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 484
    invoke-super {p0}, Lcom/viber/voip/registration/ai;->onStart()V

    .line 485
    invoke-direct {p0}, Lcom/viber/voip/registration/t;->t()V

    .line 486
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 490
    invoke-super {p0}, Lcom/viber/voip/registration/ai;->onStop()V

    .line 491
    invoke-direct {p0}, Lcom/viber/voip/registration/t;->s()V

    .line 492
    return-void
.end method

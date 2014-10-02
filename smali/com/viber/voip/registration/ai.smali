.class public abstract Lcom/viber/voip/registration/ai;
.super Lcom/viber/voip/ui/al;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/d;
.implements Lcom/viber/voip/registration/o;
.implements Lcom/viber/voip/registration/r;


# instance fields
.field protected a:Landroid/os/Handler;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/viber/voip/ui/al;-><init>()V

    .line 48
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/viber/voip/registration/ai;->b:Ljava/lang/String;

    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/registration/ai;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/viber/voip/registration/ai;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 81
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 263
    const-string/jumbo v0, "onError()"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ai;->h(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    .line 267
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->f()V

    .line 269
    :cond_0
    const-string/jumbo v0, "waiting_for_activation_dialog"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ai;->g(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x21

    const/4 v5, -0x1

    .line 190
    const v0, 0x7f070161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 191
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    const-string/jumbo v2, "<a>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 194
    if-eq v2, v5, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 196
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 197
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 198
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 199
    new-instance v1, Lcom/viber/voip/registration/am;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/am;-><init>(Lcom/viber/voip/registration/ai;)V

    .line 205
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 206
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 215
    :goto_0
    return-void

    .line 208
    :cond_0
    new-instance v1, Lcom/viber/voip/registration/an;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/an;-><init>(Lcom/viber/voip/registration/ai;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/registration/df;)V
    .locals 4
    .parameter

    .prologue
    .line 236
    const-string/jumbo v0, "onFastRegistrationAccepted()"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ai;->h(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->f()V

    .line 240
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getKeyChainDeviceKey()Ljava/lang/String;

    move-result-object v1

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFastRegistrationAccepted() from KeyChain deviceKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/registration/ai;->h(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/ActivationController;->setDeviceKey(Ljava/lang/String;)V

    .line 246
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 247
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->f()V

    .line 276
    const-string/jumbo v0, "waiting_for_activation_dialog"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ai;->g(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRegistrationRejected() errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ai;->h(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->f()V

    .line 258
    const-string/jumbo v0, "waiting_for_activation_dialog"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ai;->g(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 136
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 137
    invoke-static {v0}, Lcom/viber/voip/util/gj;->a(Landroid/text/Editable;)V

    .line 138
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getBiDiAwareFormatter()Lcom/viber/voip/util/l;

    move-result-object v1

    .line 139
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/viber/voip/util/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 141
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "105"

    invoke-virtual {v1, v3}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 142
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c0462

    :goto_0
    new-instance v3, Lcom/viber/voip/registration/ak;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/viber/voip/registration/ak;-><init>(Lcom/viber/voip/registration/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const v5, 0x7f0c02b5

    const v6, 0x7f0c0321

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IIZ)Landroid/content/DialogInterface;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 161
    new-instance v1, Lcom/viber/voip/registration/al;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/al;-><init>(Lcom/viber/voip/registration/ai;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 167
    return-void

    :cond_0
    move v1, v7

    .line 142
    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method public b(Lcom/viber/voip/registration/df;)V
    .locals 2
    .parameter

    .prologue
    .line 221
    const-string/jumbo v0, "onRegistrationAccepted()"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ai;->h(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->f()V

    .line 226
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->d()V

    .line 231
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/ActivationController;->setKeyChainDeviceKey(Ljava/lang/String;)V

    .line 232
    return-void

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/RegistrationActivity;

    invoke-virtual {v0}, Lcom/viber/voip/registration/RegistrationActivity;->b()V

    goto :goto_0
.end method

.method protected c()V
    .locals 6

    .prologue
    .line 175
    const-string/jumbo v0, "sendRegisterRequest()"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ai;->h(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getKeyChainDeviceKey()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const-string/jumbo v1, "1"

    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/ai;->c(Ljava/lang/String;)V

    .line 184
    :cond_0
    const-string/jumbo v1, "waiting_for_activation_dialog"

    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/ai;->f(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/viber/voip/registration/ai;->l()V

    .line 186
    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getRegNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->e()Ljava/lang/String;

    move-result-object v3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/registration/ActivationController;->startRegistration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/registration/r;)V

    .line 187
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/viber/voip/registration/ai;->b:Ljava/lang/String;

    .line 76
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 89
    const-string/jumbo v0, "waiting_for_activation_dialog"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ai;->g(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 94
    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/viber/voip/registration/ai;->c:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/registration/ai;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 117
    :cond_0
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/registration/ai;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/viber/voip/registration/ai;->c:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    .line 125
    :cond_0
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/registration/ai;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    return-void
.end method

.method protected f(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 280
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 283
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_2

    .line 285
    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 290
    :cond_2
    const-string/jumbo v0, "country_code_loading_dialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    const v0, 0x7f0c02ed

    move v1, v0

    .line 298
    :goto_1
    if-eq v1, v2, :cond_5

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_5

    .line 299
    invoke-static {v1, v6}, Lcom/viber/voip/widget/e;->a(IZ)Lcom/viber/voip/widget/e;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v4, p1, v6}, Lcom/viber/voip/widget/e;->a(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;Z)I

    goto :goto_0

    .line 292
    :cond_3
    const-string/jumbo v0, "waiting_for_activation_dialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    const v0, 0x7f0c02f8

    move v1, v0

    goto :goto_1

    .line 294
    :cond_4
    const-string/jumbo v0, "activation_waiting_dialog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    const v0, 0x7f0c0365

    move v1, v0

    goto :goto_1

    .line 302
    :cond_5
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/RegistrationActivity;

    invoke-virtual {v0}, Lcom/viber/voip/registration/RegistrationActivity;->h()Lcom/viber/voip/widget/MessageBar;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/ai;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    move v4, v3

    move v5, v3

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/widget/MessageBar;->a(Ljava/lang/String;Ljava/lang/String;IIZZZ)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method protected g()Lcom/viber/voip/registration/ActivationController;
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    return-object v0
.end method

.method protected g(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dismissDialog tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ai;->h(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 312
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 313
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/RegistrationActivity;

    invoke-virtual {v0}, Lcom/viber/voip/registration/RegistrationActivity;->h()Lcom/viber/voip/widget/MessageBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/MessageBar;->a()V

    goto :goto_0

    .line 314
    :cond_2
    if-eqz v1, :cond_0

    .line 316
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 317
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error in dismissDialog tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ai;->h(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    .line 103
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    return-void
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->showDialog(I)V

    .line 108
    return-void
.end method

.method protected j()V
    .locals 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getAlphaCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getRegNumber()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/registration/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method protected k()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0604

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v3}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 171
    return-void
.end method

.method public onActivityBackPressed()Z
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/viber/voip/registration/ai;->f()V

    .line 346
    invoke-super {p0}, Lcom/viber/voip/ui/al;->onActivityBackPressed()Z

    move-result v0

    return v0
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public onActivitySearchRequested()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/registration/aj;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/aj;-><init>(Lcom/viber/voip/registration/ai;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/viber/voip/registration/ai;->a:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

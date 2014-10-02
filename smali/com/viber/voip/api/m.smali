.class public Lcom/viber/voip/api/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/api/aa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;[Ljava/lang/String;Lcom/viber/voip/api/y;Landroid/net/Uri;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 249
    .line 250
    array-length v2, p2

    if-ne v2, v3, :cond_11

    .line 251
    const-string/jumbo v2, "welcome"

    aget-object v5, p2, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 252
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.viber.voip.action.MESSAGES"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    :cond_0
    :goto_0
    if-eqz v2, :cond_10

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_1
    invoke-interface {p3, v0, v2}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    .line 311
    :goto_2
    return-void

    .line 255
    :cond_1
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/ActivationController;->getStep()I

    move-result v2

    .line 256
    const/4 v5, 0x4

    if-ne v5, v2, :cond_2

    .line 257
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/ActivationController;->resumeActivation()V

    .line 261
    :goto_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_4
    invoke-interface {p3, v0, v4}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto :goto_2

    .line 259
    :cond_2
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    goto :goto_3

    :cond_3
    move v0, v1

    .line 261
    goto :goto_4

    .line 264
    :cond_4
    const-string/jumbo v2, "registration"

    aget-object v5, p2, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 265
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 266
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.viber.voip.action.MESSAGES"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_5
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 269
    invoke-interface {p3, v1, v4}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto :goto_2

    .line 272
    :cond_6
    aget-object v2, p2, v0

    const-string/jumbo v5, "activation"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 273
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 274
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.viber.voip.action.MESSAGES"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_7
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/ActivationController;->getRegNumberCanonized()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v3

    .line 277
    :goto_5
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/registration/ActivationController;->getStep()I

    move-result v5

    .line 278
    if-eq v3, v5, :cond_8

    if-eqz v2, :cond_b

    .line 279
    :cond_8
    if-eq v3, v5, :cond_9

    .line 280
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    invoke-virtual {v2, v3, v0}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 282
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.viber.voip.action.ACTIVATION"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    aget-object v4, p2, v0

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 284
    const-string/jumbo v5, "code"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 286
    const-string/jumbo v5, "activation_code"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_a
    move v2, v0

    .line 276
    goto :goto_5

    .line 289
    :cond_b
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 290
    invoke-interface {p3, v1, v4}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 294
    :cond_c
    const-string/jumbo v2, "enterdetails"

    aget-object v5, p2, v0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 295
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/registration/ActivationController;->getStep()I

    move-result v2

    .line 296
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 297
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 298
    invoke-interface {p3, v0, v4}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 300
    :cond_d
    if-ne v3, v2, :cond_e

    .line 301
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 305
    :goto_6
    invoke-interface {p3, v1, v4}, Lcom/viber/voip/api/y;->a(ILandroid/content/Intent;)V

    goto/16 :goto_2

    .line 303
    :cond_e
    invoke-static {}, Lcom/viber/voip/api/ViberUrlHandlerActivity;->a()Lcom/viber/voip/registration/ActivationController;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    goto :goto_6

    :cond_f
    move v0, v1

    .line 310
    goto/16 :goto_1

    :cond_10
    move v0, v3

    goto/16 :goto_1

    :cond_11
    move-object v2, v4

    goto/16 :goto_0
.end method

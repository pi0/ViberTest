.class public Lcom/viber/voip/registration/bn;
.super Lcom/viber/voip/registration/ai;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/viber/voip/registration/ai;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/registration/bn;->b:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/bn;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/viber/voip/registration/bn;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    .line 104
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 105
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/viber/voip/registration/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/bn;->d(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/registration/dj;->a(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/viber/voip/registration/bn;->j()V

    .line 90
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/registration/bn;->b:Z

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/registration/ai;->c()V

    .line 120
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/viber/voip/registration/ai;->d()V

    .line 124
    invoke-virtual {p0}, Lcom/viber/voip/registration/bn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/bn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/registration/bn;->b:Z

    .line 127
    :cond_0
    return-void
.end method

.method public onActivityBackPressed()Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/registration/bn;->l()V

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/viber/voip/registration/bn;->b:Z

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 66
    :sswitch_0
    const-string/jumbo v0, "http://viber.com/itunes"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/bn;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :sswitch_1
    invoke-virtual {p0}, Lcom/viber/voip/registration/bn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/hb;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 63
    :sswitch_2
    invoke-direct {p0}, Lcom/viber/voip/registration/bn;->l()V

    goto :goto_0

    .line 69
    :sswitch_3
    const-string/jumbo v0, "http://viber.com/market"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/bn;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :sswitch_4
    const-string/jumbo v0, "http://viber.com/windowsphone"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/bn;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :sswitch_5
    const-string/jumbo v0, "http://viber.com/blackberry"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/bn;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :sswitch_6
    const-string/jumbo v0, "http://viber.com"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/bn;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :sswitch_data_0
    .sparse-switch
        0x7f070114 -> :sswitch_0
        0x7f070115 -> :sswitch_3
        0x7f070116 -> :sswitch_4
        0x7f070117 -> :sswitch_5
        0x7f0702b9 -> :sswitch_1
        0x7f070336 -> :sswitch_6
        0x7f070339 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/viber/voip/registration/ai;->onCreate(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    const v0, 0x7f0300ee

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    const v1, 0x7f070339

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v1, 0x7f070336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/bn;->a(Landroid/view/View;)V

    .line 46
    const v1, 0x7f070114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v1, 0x7f070115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v1, 0x7f070117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-object v0
.end method

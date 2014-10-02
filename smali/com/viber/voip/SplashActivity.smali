.class public Lcom/viber/voip/SplashActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 70
    :sswitch_0
    invoke-static {p0}, Lcom/viber/voip/util/hb;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 73
    :sswitch_1
    invoke-static {p0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    .line 76
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    goto :goto_0

    .line 78
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/viber/voip/SplashActivity;->showDialog(I)V

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x7f0702b9 -> :sswitch_0
        0x7f0703b0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030124

    invoke-virtual {p0, v0}, Lcom/viber/voip/SplashActivity;->setContentView(I)V

    .line 39
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->a:Lcom/viber/voip/a/az;

    invoke-virtual {v1}, Lcom/viber/voip/a/az;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 41
    const v0, 0x7f0703b0

    invoke-virtual {p0, v0}, Lcom/viber/voip/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/SplashActivity;->a:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/viber/voip/SplashActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v0, 0x7f0702b9

    invoke-virtual {p0, v0}, Lcom/viber/voip/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/SplashActivity;->b:Landroid/widget/TextView;

    .line 44
    iget-object v0, p0, Lcom/viber/voip/SplashActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f0703af

    invoke-virtual {p0, v0}, Lcom/viber/voip/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/SplashActivity;->c:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0703b3

    invoke-virtual {p0, v0}, Lcom/viber/voip/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/SplashActivity;->d:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0703b4

    invoke-virtual {p0, v0}, Lcom/viber/voip/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/SplashActivity;->e:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0703b5

    invoke-virtual {p0, v0}, Lcom/viber/voip/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/SplashActivity;->f:Landroid/widget/TextView;

    .line 50
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    .line 87
    packed-switch p1, :pswitch_data_0

    .line 95
    :goto_0
    return-object v0

    .line 89
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0360

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0361

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c02b5

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 54
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onWindowFocusChanged(Z)V

    .line 55
    if-eqz p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/viber/voip/SplashActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/viber/voip/SplashActivity;->c:Landroid/widget/TextView;

    const/high16 v1, 0x41e0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/SplashActivity;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/viber/voip/util/gj;->a(Landroid/widget/TextView;)V

    .line 60
    iget-object v0, p0, Lcom/viber/voip/SplashActivity;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/viber/voip/util/gj;->a(Landroid/widget/TextView;)V

    .line 61
    iget-object v0, p0, Lcom/viber/voip/SplashActivity;->f:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/viber/voip/util/gj;->a(Landroid/widget/TextView;)V

    .line 64
    :cond_1
    return-void
.end method

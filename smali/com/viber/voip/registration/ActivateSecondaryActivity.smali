.class public Lcom/viber/voip/registration/ActivateSecondaryActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcom/viber/voip/sound/ISoundService;

.field private b:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/registration/ActivateSecondaryActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->c:I

    return v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->a:Lcom/viber/voip/sound/ISoundService;

    const/high16 v1, 0x7f06

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/sound/ISoundService;->getRingtone(IZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->b:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    .line 102
    iget-object v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->b:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    new-instance v1, Lcom/viber/voip/registration/a;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/a;-><init>(Lcom/viber/voip/registration/ActivateSecondaryActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->setEndPlaybackCallback(Ljava/lang/Runnable;)V

    .line 110
    iget-object v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->a:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->b:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->playRingtone(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    .line 111
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/registration/ActivateSecondaryActivity;)Lcom/viber/voip/sound/IRingtoneService$Ringtone;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->b:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->b:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->b:Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->setEndPlaybackCallback(Ljava/lang/Runnable;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->a:Lcom/viber/voip/sound/ISoundService;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->a:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stopRingtone()Z

    .line 120
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/registration/ActivateSecondaryActivity;)Lcom/viber/voip/sound/ISoundService;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->a:Lcom/viber/voip/sound/ISoundService;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 46
    const-string/jumbo v0, "code"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "code"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 48
    const/high16 v0, 0x48

    invoke-virtual {v3, v0}, Landroid/view/Window;->addFlags(I)V

    .line 50
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 51
    const-string/jumbo v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 52
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    const/high16 v0, 0x20

    invoke-virtual {v3, v0}, Landroid/view/Window;->addFlags(I)V

    .line 54
    iput-boolean v8, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->d:Z

    .line 59
    :cond_0
    :goto_0
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->a:Lcom/viber/voip/sound/ISoundService;

    .line 62
    invoke-direct {p0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->a()V

    .line 64
    const-string/jumbo v0, "device_type"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    const-string/jumbo v0, "code"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 67
    const v0, 0x7f070162

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    const v1, 0x7f070164

    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    const v2, 0x7f070163

    invoke-virtual {p0, v2}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    const v3, 0x7f070161

    invoke-virtual {p0, v3}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    const v6, 0x7f0c0624

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v0, 0x7f0c0626

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v9

    invoke-virtual {p0, v0, v6}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v0, 0x7f0c0628

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v4, v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_1
    return-void

    .line 55
    :cond_1
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iput-boolean v8, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->d:Z

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->b()V

    .line 97
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 98
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->d:Z

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/registration/ActivateSecondaryActivity;->d:Z

    .line 91
    :goto_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStop()V

    .line 92
    return-void

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->b()V

    .line 89
    invoke-virtual {p0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->finish()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/viber/voip/registration/ActivateSecondaryActivity;->b()V

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/viber/voip/phone/b/ac;
.super Lcom/viber/voip/phone/b/ah;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/call/f;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field c:Landroid/content/DialogInterface$OnCancelListener;

.field private final f:Ljava/lang/String;

.field private g:Lcom/viber/voip/ui/call/WavesView;

.field private h:[Ljava/lang/String;

.field private i:Landroid/app/AlertDialog;

.field private j:Lcom/viber/voip/sound/ISoundService;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/phone/b/ah;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    .line 28
    const-string/jumbo v0, "IncomingStateWrapper"

    iput-object v0, p0, Lcom/viber/voip/phone/b/ac;->f:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/viber/voip/phone/b/ae;

    invoke-direct {v0, p0}, Lcom/viber/voip/phone/b/ae;-><init>(Lcom/viber/voip/phone/b/ac;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/ac;->c:Landroid/content/DialogInterface$OnCancelListener;

    .line 45
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/ac;->j:Lcom/viber/voip/sound/ISoundService;

    .line 46
    const v0, 0x7f070089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/call/WavesView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/ac;->g:Lcom/viber/voip/ui/call/WavesView;

    .line 47
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->g:Lcom/viber/voip/ui/call/WavesView;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->g:Lcom/viber/voip/ui/call/WavesView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/ui/call/WavesView;->setTargetListener(Lcom/viber/voip/ui/call/f;)V

    .line 51
    :cond_0
    invoke-virtual {p2}, Lcom/viber/voip/phone/PhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/ac;->h:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/b/ac;)Lcom/viber/voip/phone/PhoneActivity;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->b:Lcom/viber/voip/phone/PhoneActivity;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/phone/b/ac;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/phone/b/ac;)Lcom/viber/voip/phone/PhoneActivity;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->b:Lcom/viber/voip/phone/PhoneActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/phone/b/ac;)Lcom/viber/voip/sound/ISoundService;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->j:Lcom/viber/voip/sound/ISoundService;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/phone/b/ac;)Lcom/viber/voip/ui/call/WavesView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->g:Lcom/viber/voip/ui/call/WavesView;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/PhoneActivity;->e()V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/PhoneActivity;->f()V

    goto :goto_0

    .line 86
    :pswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/ac;->c()V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/viber/voip/phone/b/ah;->a(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 56
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->g:Lcom/viber/voip/ui/call/WavesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/WavesView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->b:Lcom/viber/voip/phone/PhoneActivity;

    iget-object v1, p0, Lcom/viber/voip/phone/b/ac;->j:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->stream_Ring()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->setVolumeControlStream(I)V

    .line 58
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 62
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/viber/voip/phone/b/ah;->b()V

    .line 66
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->g:Lcom/viber/voip/ui/call/WavesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/WavesView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->i:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 70
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->j:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stopRingtone()Z

    .line 94
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->g:Lcom/viber/voip/ui/call/WavesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/WavesView;->setVisibility(I)V

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/viber/voip/phone/b/ac;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0001

    new-instance v2, Lcom/viber/voip/phone/b/ad;

    invoke-direct {v2, p0}, Lcom/viber/voip/phone/b/ad;-><init>(Lcom/viber/voip/phone/b/ac;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/b/ac;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/ac;->i:Landroid/app/AlertDialog;

    .line 108
    iget-object v0, p0, Lcom/viber/voip/phone/b/ac;->i:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 109
    return-void
.end method

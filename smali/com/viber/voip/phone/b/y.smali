.class public Lcom/viber/voip/phone/b/y;
.super Lcom/viber/voip/phone/b/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/viber/voip/ui/call/f;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/viber/voip/ui/call/WavesView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/viber/voip/phone/call/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/viber/voip/phone/b/c;-><init>()V

    return-void
.end method

.method private a()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0001

    new-instance v2, Lcom/viber/voip/phone/b/aa;

    invoke-direct {v2, p0}, Lcom/viber/voip/phone/b/aa;-><init>(Lcom/viber/voip/phone/b/y;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/b/z;

    invoke-direct {v1, p0}, Lcom/viber/voip/phone/b/z;-><init>(Lcom/viber/voip/phone/b/y;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 190
    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/phone/b/y;)Lcom/viber/voip/ui/call/WavesView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/phone/b/y;->c:Lcom/viber/voip/ui/call/WavesView;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v2

    .line 217
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 218
    invoke-interface {v2}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    const-wide/16 v3, 0x0

    const-string/jumbo v5, ""

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v9, Lcom/viber/voip/phone/b/ab;

    invoke-direct {v9, p0, p2, p1, v2}, Lcom/viber/voip/phone/b/ab;-><init>(Lcom/viber/voip/phone/b/y;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/i;)V

    move-object v2, p2

    move v6, v1

    invoke-interface/range {v0 .. v9}, Lcom/viber/voip/messages/controller/x;->a(ILjava/lang/String;JLjava/lang/String;IZLcom/viber/jni/PublicGroupInfo;Lcom/viber/voip/messages/controller/ad;)V

    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    .line 115
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 120
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->d()Lcom/viber/jni/dialer/DialerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/jni/dialer/DialerController;->handleDecline()V

    .line 123
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->h()Lcom/viber/voip/a/g;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->t()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/a/g;->b(Ljava/lang/Long;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 126
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 129
    :pswitch_1
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->d()Lcom/viber/jni/dialer/DialerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/jni/dialer/DialerController;->handleAnswer()V

    .line 130
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->h()Lcom/viber/voip/a/g;

    move-result-object v2

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->t()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/a/g;->a(Ljava/lang/Long;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 135
    :pswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->e()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stopRingtone()Z

    .line 136
    iget-object v0, p0, Lcom/viber/voip/phone/b/y;->c:Lcom/viber/voip/ui/call/WavesView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/WavesView;->setVisibility(I)V

    .line 137
    invoke-direct {p0}, Lcom/viber/voip/phone/b/y;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/viber/voip/phone/call/k;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 205
    if-eqz p1, :cond_0

    .line 207
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/util/gn;->a(Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/viber/voip/phone/b/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->h()Lcom/viber/voip/a/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Option "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->t()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/viber/voip/a/g;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->d()Lcom/viber/jni/dialer/DialerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/jni/dialer/DialerController;->handleDecline()V

    .line 201
    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/phone/b/y;->a(Lcom/viber/voip/phone/call/k;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/viber/voip/phone/b/c;->onAttach(Landroid/app/Activity;)V

    .line 75
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->e()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stream_Ring()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    const v0, 0x7f0300fa

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/y;->a:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/viber/voip/phone/b/y;->a:Landroid/view/View;

    const v1, 0x7f07035a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/call/WavesView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/y;->c:Lcom/viber/voip/ui/call/WavesView;

    .line 62
    iget-object v0, p0, Lcom/viber/voip/phone/b/y;->a:Landroid/view/View;

    const v1, 0x7f070346

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/y;->b:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/viber/voip/phone/b/y;->a:Landroid/view/View;

    const v1, 0x7f070347

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/y;->d:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/viber/voip/phone/b/y;->a:Landroid/view/View;

    const v1, 0x7f070348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/y;->e:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/viber/voip/phone/b/y;->c:Lcom/viber/voip/ui/call/WavesView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/ui/call/WavesView;->setTargetListener(Lcom/viber/voip/ui/call/f;)V

    .line 69
    iget-object v0, p0, Lcom/viber/voip/phone/b/y;->a:Landroid/view/View;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 110
    invoke-super {p0}, Lcom/viber/voip/phone/b/c;->onDestroyView()V

    .line 111
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x18

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x19

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 147
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stopRingtone()Z

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 150
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 162
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 155
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/b/y;->a(I)V

    .line 157
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Lcom/viber/voip/phone/b/c;->onPause()V

    .line 105
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const v4, 0x7f020371

    const/4 v3, 0x1

    .line 80
    invoke-super {p0}, Lcom/viber/voip/phone/b/c;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/phone/b/y;->f:Lcom/viber/voip/phone/call/k;

    if-eq v1, v0, :cond_0

    .line 85
    iput-object v0, p0, Lcom/viber/voip/phone/b/y;->f:Lcom/viber/voip/phone/call/k;

    .line 86
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/viber/voip/phone/b/y;->d:Landroid/widget/TextView;

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/viber/voip/phone/b/y;->b:Landroid/widget/ImageView;

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/viber/voip/phone/b/y;->a(Landroid/view/View;Landroid/net/Uri;I)V

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/y;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 100
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/phone/b/y;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lcom/viber/voip/phone/b/y;->a(Landroid/view/View;Landroid/net/Uri;I)V

    .line 92
    iget-object v1, p0, Lcom/viber/voip/phone/b/y;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

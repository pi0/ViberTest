.class public Lcom/viber/voip/phone/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# instance fields
.field private a:Lcom/viber/voip/sound/ISoundService;

.field private b:Lcom/viber/jni/dialer/DialerController;

.field private c:Z

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/ToggleButton;

.field private g:Landroid/widget/ToggleButton;

.field private h:Landroid/widget/ToggleButton;

.field private i:Landroid/widget/ToggleButton;

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/View$OnClickListener;

.field private l:[Landroid/view/View;

.field private m:Z

.field private n:Lcom/viber/voip/phone/call/k;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/phone/call/k;ZLcom/viber/voip/sound/ISoundService;Lcom/viber/jni/dialer/DialerController;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/viber/voip/phone/b/a/a;-><init>(Lcom/viber/voip/phone/call/k;ZLcom/viber/voip/sound/ISoundService;Lcom/viber/jni/dialer/DialerController;)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0, p1}, Lcom/viber/voip/phone/b/a/a;->a(Landroid/view/View;)V

    .line 60
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/phone/call/k;ZLcom/viber/voip/sound/ISoundService;Lcom/viber/jni/dialer/DialerController;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/phone/b/a/a;->m:Z

    .line 48
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/a;->n:Lcom/viber/voip/phone/call/k;

    .line 49
    iput-object p3, p0, Lcom/viber/voip/phone/b/a/a;->a:Lcom/viber/voip/sound/ISoundService;

    .line 50
    iput-object p4, p0, Lcom/viber/voip/phone/b/a/a;->b:Lcom/viber/jni/dialer/DialerController;

    .line 51
    invoke-virtual {p0, p2}, Lcom/viber/voip/phone/b/a/a;->a(Z)V

    .line 52
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/a;->k:Landroid/view/View$OnClickListener;

    .line 89
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 63
    const v0, 0x7f070353

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/a;->d:Landroid/widget/Button;

    .line 64
    const v0, 0x7f0700ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/a;->e:Landroid/widget/Button;

    .line 65
    const v0, 0x7f070354

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/a;->f:Landroid/widget/ToggleButton;

    .line 66
    const v0, 0x7f070355

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/a;->g:Landroid/widget/ToggleButton;

    .line 67
    const v0, 0x7f070356

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/a;->h:Landroid/widget/ToggleButton;

    .line 68
    const v0, 0x7f070357

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/a;->i:Landroid/widget/ToggleButton;

    .line 69
    const v0, 0x7f070352

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/a;->j:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->i:Landroid/widget/ToggleButton;

    iget-boolean v1, p0, Lcom/viber/voip/phone/b/a/a;->c:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/phone/b/a/a;->e:Landroid/widget/Button;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/viber/voip/phone/b/a/a;->g:Landroid/widget/ToggleButton;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/viber/voip/phone/b/a/a;->h:Landroid/widget/ToggleButton;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/phone/b/a/a;->l:[Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->k:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/a;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/viber/voip/phone/b/a/a;->n:Lcom/viber/voip/phone/call/k;

    .line 127
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/viber/voip/phone/b/a/a;->c:Z

    .line 100
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->i:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 103
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->j:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method public b(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/viber/voip/phone/b/a/a;->m:Z

    move v0, v1

    .line 109
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/phone/b/a/a;->l:[Landroid/view/View;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/viber/voip/phone/b/a/a;->l:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->n:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 117
    :goto_1
    iget-object v3, p0, Lcom/viber/voip/phone/b/a/a;->j:Landroid/widget/Button;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/viber/voip/phone/c;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    iget-object v1, p0, Lcom/viber/voip/phone/b/a/a;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 119
    return-void

    :cond_1
    move v0, v1

    .line 116
    goto :goto_1

    :cond_2
    move v2, v1

    .line 117
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->h:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->h:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->b:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleLocalHold()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->b:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleLocalUnhold()V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->g:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->g:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->b:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleMute()V

    goto :goto_0

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->b:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleUnmute()V

    goto :goto_0

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->i:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_5

    .line 161
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->a:Lcom/viber/voip/sound/ISoundService;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/a;->i:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 162
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->f:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_6

    .line 163
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->b:Lcom/viber/jni/dialer/DialerController;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/a;->f:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/jni/dialer/DialerController;->handleTransfer(Z)V

    goto :goto_0

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->b:Lcom/viber/jni/dialer/DialerController;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a/a;->n:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/jni/dialer/DialerController;->handleSwitchToGSM(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    check-cast p1, Lcom/viber/voip/phone/call/n;

    .line 134
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->n:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/b/a/a;->b(Z)V

    .line 136
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->g:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 137
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->i:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 138
    iget-object v1, p0, Lcom/viber/voip/phone/b/a/a;->h:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->f:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->u()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 141
    iget-boolean v0, p0, Lcom/viber/voip/phone/b/a/a;->c:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/viber/voip/phone/b/a/a;->i:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 144
    :cond_0
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

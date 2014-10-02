.class public Lcom/viber/voip/phone/b/a;
.super Lcom/viber/voip/phone/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallInterruption;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageButton;

.field private h:Lcom/viber/voip/phone/b/a/a;

.field private i:Lcom/viber/voip/phone/b/a/c;

.field private j:Lcom/viber/voip/phone/b/a/i;

.field private k:Lcom/viber/voip/phone/call/k;

.field private l:[I

.field private m:Lcom/viber/voip/phone/b/a/j;

.field private n:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/viber/voip/phone/b/c;-><init>()V

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->l:[I

    .line 128
    new-instance v0, Lcom/viber/voip/phone/b/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/phone/b/b;-><init>(Lcom/viber/voip/phone/b/a;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->n:Landroid/view/View$OnClickListener;

    return-void

    .line 75
    nop

    :array_0
    .array-data 0x4
        0x4et 0x5t 0xct 0x7ft
        0x4ft 0x5t 0xct 0x7ft
        0x50t 0x5t 0xct 0x7ft
        0x51t 0x5t 0xct 0x7ft
    .end array-data
.end method

.method private a(Lcom/viber/voip/phone/call/k;)V
    .locals 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->k:Lcom/viber/voip/phone/call/k;

    if-eq v0, p1, :cond_0

    .line 184
    iput-object p1, p0, Lcom/viber/voip/phone/b/a;->k:Lcom/viber/voip/phone/call/k;

    .line 185
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/b/a/a;->a(Lcom/viber/voip/phone/call/k;)V

    .line 186
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->i:Lcom/viber/voip/phone/b/a/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/b/a/c;->a(Lcom/viber/voip/phone/call/k;)V

    .line 188
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_2

    .line 197
    iget-object v1, p0, Lcom/viber/voip/phone/b/a;->b:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :cond_0
    :goto_1
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->f:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private b(Lcom/viber/voip/phone/call/k;)V
    .locals 4
    .parameter

    .prologue
    .line 205
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/call/n;

    .line 207
    iget-object v2, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/call/n;->addObserver(Ljava/util/Observer;)V

    .line 208
    iget-object v2, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/phone/b/a/a;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 210
    iget-object v2, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->b()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/phone/b/a/a;->a(Z)V

    .line 213
    iget-object v2, p0, Lcom/viber/voip/phone/b/a;->i:Lcom/viber/voip/phone/b/a/c;

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/call/n;->addObserver(Ljava/util/Observer;)V

    .line 214
    iget-object v2, p0, Lcom/viber/voip/phone/b/a;->i:Lcom/viber/voip/phone/b/a/c;

    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/phone/b/a/c;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 216
    iget-object v2, p0, Lcom/viber/voip/phone/b/a;->j:Lcom/viber/voip/phone/b/a/i;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/viber/voip/phone/b/a;->j:Lcom/viber/voip/phone/b/a/i;

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/call/n;->addObserver(Ljava/util/Observer;)V

    .line 218
    iget-object v2, p0, Lcom/viber/voip/phone/b/a;->j:Lcom/viber/voip/phone/b/a/i;

    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/phone/b/a/i;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 221
    :cond_0
    return-void
.end method

.method private c(Lcom/viber/voip/phone/call/k;)V
    .locals 2
    .parameter

    .prologue
    .line 224
    if-nez p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->deleteObserver(Ljava/util/Observer;)V

    .line 231
    iget-object v1, p0, Lcom/viber/voip/phone/b/a;->i:Lcom/viber/voip/phone/b/a/c;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->deleteObserver(Ljava/util/Observer;)V

    .line 233
    iget-object v1, p0, Lcom/viber/voip/phone/b/a;->j:Lcom/viber/voip/phone/b/a/i;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/viber/voip/phone/b/a;->j:Lcom/viber/voip/phone/b/a/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/call/n;->deleteObserver(Ljava/util/Observer;)V

    goto :goto_0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->m:Lcom/viber/voip/phone/b/a/j;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/a/j;->a()V

    .line 273
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->m:Lcom/viber/voip/phone/b/a/j;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/a/j;->b()V

    .line 279
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/phone/b/a/a;
    .locals 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/viber/voip/phone/b/a/a;

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->e()Lcom/viber/voip/sound/ISoundService;

    move-result-object v3

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->d()Lcom/viber/jni/dialer/DialerController;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/phone/b/a/a;-><init>(Lcom/viber/voip/phone/call/k;ZLcom/viber/voip/sound/ISoundService;Lcom/viber/jni/dialer/DialerController;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    return-object v0
.end method

.method public b()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->e()Lcom/viber/voip/sound/ISoundService;

    move-result-object v3

    .line 283
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->f()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/registration/HardwareParameters;->isGsmSupported()Z

    move-result v4

    .line 284
    invoke-interface {v3}, Lcom/viber/voip/sound/ISoundService;->isSpeakerphoneAllowed()Z

    move-result v5

    .line 285
    invoke-interface {v3}, Lcom/viber/voip/sound/ISoundService;->isHeadsetPluggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v3}, Lcom/viber/voip/sound/ISoundService;->isBluetoothScoOn()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v0

    .line 287
    :goto_0
    if-nez v4, :cond_1

    if-nez v2, :cond_1

    if-eqz v5, :cond_1

    .line 289
    invoke-interface {v3, v0}, Lcom/viber/voip/sound/ISoundService;->setSpeakerphoneOn(Z)V

    .line 292
    :cond_1
    if-eqz v5, :cond_4

    if-nez v4, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    :goto_1
    return v0

    :cond_3
    move v2, v1

    .line 285
    goto :goto_0

    :cond_4
    move v0, v1

    .line 292
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 83
    const v0, 0x7f0300f9

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->a:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->a:Landroid/view/View;

    const v1, 0x7f070347

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->b:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->a:Landroid/view/View;

    const v1, 0x7f070348

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->c:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->a:Landroid/view/View;

    const v1, 0x7f070359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->d:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->a:Landroid/view/View;

    const v1, 0x7f070358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->e:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->a:Landroid/view/View;

    const v1, 0x7f070349

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->f:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->a:Landroid/view/View;

    const v1, 0x7f07034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->g:Landroid/widget/ImageButton;

    .line 92
    new-instance v0, Lcom/viber/voip/phone/b/a/j;

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->d()Lcom/viber/jni/dialer/DialerController;

    move-result-object v2

    iget-object v4, p0, Lcom/viber/voip/phone/b/a;->d:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/viber/voip/phone/b/a;->l:[I

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/viber/voip/phone/b/a/j;-><init>(Lcom/viber/voip/phone/call/a;Lcom/viber/jni/dialer/DialerController;Landroid/widget/TextView;[I)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->m:Lcom/viber/voip/phone/b/a/j;

    .line 94
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v2

    .line 96
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/viber/voip/phone/b/a/a;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->e()Lcom/viber/voip/sound/ISoundService;

    move-result-object v4

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->d()Lcom/viber/jni/dialer/DialerController;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/phone/b/a/a;-><init>(Landroid/view/View;Lcom/viber/voip/phone/call/k;ZLcom/viber/voip/sound/ISoundService;Lcom/viber/jni/dialer/DialerController;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/b/a/a;->b(Landroid/view/View$OnClickListener;)V

    .line 103
    new-instance v0, Lcom/viber/voip/phone/b/a/c;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a;->c:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/phone/b/a/c;-><init>(Landroid/widget/TextView;Lcom/viber/voip/phone/call/k;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->i:Lcom/viber/voip/phone/b/a/c;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/phone/b/a;->k:Lcom/viber/voip/phone/call/k;

    .line 123
    invoke-direct {p0, v2}, Lcom/viber/voip/phone/b/a;->a(Lcom/viber/voip/phone/call/k;)V

    .line 125
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->a:Landroid/view/View;

    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    iget-object v1, p0, Lcom/viber/voip/phone/b/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/b/a/a;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDataInterruption(Z)V
    .locals 2
    .parameter

    .prologue
    .line 317
    iget-object v1, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/phone/b/a/a;->b(Z)V

    .line 318
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 259
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/phone/b/a;->h:Lcom/viber/voip/phone/b/a/a;

    invoke-virtual {v1, v0}, Lcom/viber/voip/phone/b/a/a;->b(Z)V

    .line 264
    if-eqz v0, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/viber/voip/phone/b/a;->i()V

    .line 269
    :goto_1
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/phone/b/a;->j()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Lcom/viber/voip/phone/b/c;->onResume()V

    .line 165
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 166
    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0, v0}, Lcom/viber/voip/phone/b/a;->a(Lcom/viber/voip/phone/call/k;)V

    .line 172
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/viber/voip/phone/b/a;->i()V

    .line 178
    :goto_1
    invoke-direct {p0, v0}, Lcom/viber/voip/phone/b/a;->b(Lcom/viber/voip/phone/call/k;)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/phone/b/a;->j()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/viber/voip/phone/b/c;->onStart()V

    .line 155
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->g()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v1}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 156
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->g()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerCallInterruptionListener()Lcom/viber/jni/dialer/DialerCallInterruptionListener;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v1}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/dialer/DialerCallInterruptionListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 157
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->g()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerTransferCallListener()Lcom/viber/jni/dialer/DialerTransferCallListener;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-virtual {v1}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/viber/jni/dialer/DialerTransferCallListener;->registerDelegate(Ljava/lang/Object;Landroid/os/Handler;)Lcom/viber/jni/controller/ControllerListener;

    .line 158
    const-string/jumbo v0, "xxx"

    const-string/jumbo v1, "onPhoneStateChanged listener bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/viber/voip/phone/b/c;->onStop()V

    .line 248
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->m:Lcom/viber/voip/phone/b/a/j;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/a/j;->b()V

    .line 250
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->k:Lcom/viber/voip/phone/call/k;

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/b/a;->c(Lcom/viber/voip/phone/call/k;)V

    .line 251
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->g()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->removeDelegate(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->g()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerCallInterruptionListener()Lcom/viber/jni/dialer/DialerCallInterruptionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/dialer/DialerCallInterruptionListener;->removeDelegate(Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->g()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerTransferCallListener()Lcom/viber/jni/dialer/DialerTransferCallListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/jni/dialer/DialerTransferCallListener;->removeDelegate(Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public onTransferFailed(I)V
    .locals 3
    .parameter

    .prologue
    .line 298
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/viber/voip/phone/b/b/a;->a(ILjava/lang/String;)Lcom/viber/voip/phone/b/b/a;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tag_transfer_failed_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/b/b/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTransferReplyOK(J)V
    .locals 0
    .parameter

    .prologue
    .line 313
    return-void
.end method

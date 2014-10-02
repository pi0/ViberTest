.class public Lcom/viber/voip/phone/b/k;
.super Lcom/viber/voip/phone/b/ah;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final c:Ljava/lang/String;


# instance fields
.field private f:Lcom/viber/voip/phone/b/o;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/viber/voip/phone/b/a/e;

.field private k:Landroid/content/DialogInterface;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageButton;

.field private o:Lcom/viber/voip/phone/call/a;

.field private p:Lcom/viber/jni/dialer/DialerController;

.field private q:Lcom/viber/voip/sound/ISoundService;

.field private r:Lcom/viber/voip/phone/b/p;

.field private s:Lcom/viber/voip/phone/b/a/j;

.field private t:Lcom/viber/voip/a/u;

.field private u:[I

.field private v:Z

.field private w:Z

.field private x:Lcom/viber/voip/util/fy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/viber/voip/phone/b/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/phone/b/k;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/phone/b/ah;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    .line 72
    new-instance v0, Lcom/viber/voip/phone/b/p;

    invoke-direct {v0, p0}, Lcom/viber/voip/phone/b/p;-><init>(Lcom/viber/voip/phone/b/k;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->r:Lcom/viber/voip/phone/b/p;

    .line 75
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->t:Lcom/viber/voip/a/u;

    .line 84
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->u:[I

    .line 86
    iput-boolean v1, p0, Lcom/viber/voip/phone/b/k;->v:Z

    .line 87
    iput-boolean v1, p0, Lcom/viber/voip/phone/b/k;->w:Z

    .line 94
    new-instance v0, Lcom/viber/voip/util/fy;

    const/4 v3, 0x7

    new-array v3, v3, [[I

    new-array v4, v5, [I

    fill-array-data v4, :array_1

    aput-object v4, v3, v2

    new-array v4, v7, [I

    fill-array-data v4, :array_2

    aput-object v4, v3, v1

    new-array v4, v7, [I

    fill-array-data v4, :array_3

    aput-object v4, v3, v6

    new-array v4, v6, [I

    fill-array-data v4, :array_4

    aput-object v4, v3, v7

    new-array v4, v5, [I

    fill-array-data v4, :array_5

    aput-object v4, v3, v5

    const/4 v4, 0x5

    new-array v5, v6, [I

    fill-array-data v5, :array_6

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-array v5, v6, [I

    fill-array-data v5, :array_7

    aput-object v5, v3, v4

    invoke-direct {v0, v3}, Lcom/viber/voip/util/fy;-><init>([[I)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->x:Lcom/viber/voip/util/fy;

    .line 109
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->o:Lcom/viber/voip/phone/call/a;

    .line 110
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->p:Lcom/viber/jni/dialer/DialerController;

    .line 111
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->q:Lcom/viber/voip/sound/ISoundService;

    .line 113
    const v0, 0x7f070081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->m:Landroid/view/View;

    .line 115
    const v0, 0x7f07008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->l:Landroid/widget/ImageButton;

    .line 117
    const v0, 0x7f070343

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->h:Landroid/view/View;

    .line 119
    const v0, 0x7f0701ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->g:Landroid/view/View;

    .line 120
    const v0, 0x7f0700fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->i:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0701aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->n:Landroid/widget/ImageButton;

    .line 123
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v0, Lcom/viber/voip/phone/b/a/j;

    iget-object v3, p0, Lcom/viber/voip/phone/b/k;->o:Lcom/viber/voip/phone/call/a;

    iget-object v4, p0, Lcom/viber/voip/phone/b/k;->p:Lcom/viber/jni/dialer/DialerController;

    iget-object v5, p0, Lcom/viber/voip/phone/b/k;->i:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/viber/voip/phone/b/k;->u:[I

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/viber/voip/phone/b/a/j;-><init>(Lcom/viber/voip/phone/call/a;Lcom/viber/jni/dialer/DialerController;Landroid/widget/TextView;[I)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->s:Lcom/viber/voip/phone/b/a/j;

    .line 127
    new-instance v0, Lcom/viber/voip/phone/b/o;

    const v3, 0x7f07008a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/viber/voip/phone/b/o;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    .line 128
    new-instance v0, Lcom/viber/voip/phone/b/a/e;

    const v3, 0x7f07008b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/viber/voip/phone/b/a/e;-><init>(Landroid/view/View;Lcom/viber/voip/sound/ISoundService;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->j:Lcom/viber/voip/phone/b/a/e;

    .line 130
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->h:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->b:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->d:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->e:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->e:Lcom/viber/voip/phone/h;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/viber/voip/phone/h;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->c:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->c:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/h;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->c:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->c:Lcom/viber/voip/phone/h;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/viber/voip/phone/h;->setTag(Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->isGsmSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/phone/b/k;->v:Z

    .line 147
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->a:Lcom/viber/voip/phone/h;

    iget-boolean v3, p0, Lcom/viber/voip/phone/b/k;->v:Z

    invoke-virtual {v0, v3}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->a:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->isSpeakerphoneAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/phone/b/k;->w:Z

    .line 151
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->f:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-direct {p0}, Lcom/viber/voip/phone/b/k;->e()V

    .line 154
    iget-boolean v0, p0, Lcom/viber/voip/phone/b/k;->w:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->e:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->e:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/viber/voip/phone/b/k;->f()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 158
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v3, v3, Lcom/viber/voip/phone/b/o;->f:Lcom/viber/voip/phone/h;

    invoke-virtual {v3, v0}, Lcom/viber/voip/phone/h;->setChecked(Z)V

    .line 161
    iget-object v3, p0, Lcom/viber/voip/phone/b/k;->o:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v3, v0}, Lcom/viber/voip/phone/call/a;->a(Z)V

    .line 163
    iget-boolean v0, p0, Lcom/viber/voip/phone/b/k;->v:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/phone/b/k;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->setSpeakerphoneOn(Z)V

    .line 167
    :cond_0
    invoke-static {}, Lcom/viber/voip/phone/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->g:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/h;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->g:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->g:Lcom/viber/voip/phone/h;

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 171
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->e:Lcom/viber/voip/phone/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/h;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v0, v0, Lcom/viber/voip/phone/b/o;->d:Lcom/viber/voip/phone/h;

    new-instance v1, Lcom/viber/voip/phone/b/l;

    invoke-direct {v1, p0}, Lcom/viber/voip/phone/b/l;-><init>(Lcom/viber/voip/phone/b/k;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/h;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 212
    :cond_1
    const v0, 0x7f070083

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 154
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    goto :goto_1

    .line 84
    :array_0
    .array-data 0x4
        0x4et 0x5t 0xct 0x7ft
        0x4ft 0x5t 0xct 0x7ft
        0x50t 0x5t 0xct 0x7ft
        0x51t 0x5t 0xct 0x7ft
    .end array-data

    .line 94
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xfdt 0x1t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xfdt 0x1t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x2t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x2t 0x2t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x6t 0x2t 0x2t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xfat 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/b/o;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    return-object v0
.end method

.method private a(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f0c03ba

    const v1, 0x7f0c03b3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 397
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->e:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    const v4, 0x7f0c0370

    invoke-virtual {v2, v4}, Lcom/viber/voip/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->e:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 402
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 425
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0, v5}, Lcom/viber/voip/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    :goto_0
    if-eq p1, v6, :cond_1

    const/4 v2, 0x7

    if-ne p1, v2, :cond_3

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    const v2, 0x7f0c03b5

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v4, p0, Lcom/viber/voip/phone/b/k;->t:Lcom/viber/voip/a/u;

    iget-object v5, p0, Lcom/viber/voip/phone/b/k;->t:Lcom/viber/voip/a/u;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "345"

    invoke-virtual {v4, v5}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 432
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    new-instance v4, Lcom/viber/voip/phone/b/m;

    invoke-direct {v4, p0}, Lcom/viber/voip/phone/b/m;-><init>(Lcom/viber/voip/phone/b/k;)V

    const v5, 0x7f0c03b6

    const v6, 0x7f0c03b7

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IIZ)Landroid/content/DialogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->k:Landroid/content/DialogInterface;

    .line 448
    :cond_2
    :goto_1
    return-void

    .line 404
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    const v2, 0x7f0c03b4

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 408
    :pswitch_1
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    const v4, 0x7f0c03b8

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v2, v4, v5}, Lcom/viber/voip/phone/PhoneActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 413
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0, v5}, Lcom/viber/voip/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 417
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    const v2, 0x7f0c03b9

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 421
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    const v2, 0x7f0c03bb

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 441
    :cond_3
    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    .line 446
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    iget-object v4, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v4, v1}, Lcom/viber/voip/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0, v3, v7}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/k;->k:Landroid/content/DialogInterface;

    goto :goto_1

    .line 402
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/viber/voip/phone/b/k;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/b/k;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/PhoneActivity;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/PhoneActivity;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/PhoneActivity;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/PhoneActivity;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v1, v0, Lcom/viber/voip/phone/b/o;->f:Lcom/viber/voip/phone/h;

    iget-boolean v0, p0, Lcom/viber/voip/phone/b/k;->w:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/phone/b/k;->v:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/phone/b/k;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 219
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/PhoneActivity;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    return-object v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->q:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->isHeadsetPluggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->q:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/viber/voip/phone/b/k;)Lcom/viber/voip/phone/PhoneActivity;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.VIDEO_CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 386
    return-void
.end method

.method static synthetic h(Lcom/viber/voip/phone/b/k;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/viber/voip/phone/b/k;->g()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    invoke-super {p0, p1}, Lcom/viber/voip/phone/b/ah;->a(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 228
    iget-boolean v0, p0, Lcom/viber/voip/phone/b/k;->w:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->q:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p0}, Lcom/viber/voip/sound/ISoundService;->registerSpeakerStateListener(Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;)V

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerCallbackListener()Lcom/viber/jni/dialer/DialerCallbackListener;

    move-result-object v0

    new-array v1, v4, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerCallback;

    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->r:Lcom/viber/voip/phone/b/p;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/dialer/DialerCallbackListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 233
    invoke-virtual {p1}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerVideoListener()Lcom/viber/jni/dialer/DialerVideoListener;

    move-result-object v0

    new-array v1, v4, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;

    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->r:Lcom/viber/voip/phone/b/p;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/dialer/DialerVideoListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 234
    invoke-virtual {p1}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerHoldStateListener()Lcom/viber/jni/dialer/DialerHoldStateListener;

    move-result-object v0

    new-array v1, v4, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;

    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->r:Lcom/viber/voip/phone/b/p;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/dialer/DialerHoldStateListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 235
    invoke-virtual {p1}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerTransferCallListener()Lcom/viber/jni/dialer/DialerTransferCallListener;

    move-result-object v0

    new-array v1, v4, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerTransferCall;

    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->r:Lcom/viber/voip/phone/b/p;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/dialer/DialerTransferCallListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 237
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->d:Lcom/viber/voip/phone/CallCard;

    invoke-virtual {v0, v3}, Lcom/viber/voip/phone/CallCard;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    invoke-virtual {v0, v3}, Lcom/viber/voip/phone/b/o;->a(I)V

    .line 242
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->s:Lcom/viber/voip/phone/b/a/j;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/a/j;->a()V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    iget-object v1, p0, Lcom/viber/voip/phone/b/k;->q:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->stream_Voice()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->setVolumeControlStream(I)V

    .line 247
    return-void
.end method

.method public declared-synchronized a(Lcom/viber/voip/phone/call/k;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 286
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/viber/voip/phone/b/ah;->a(Lcom/viber/voip/phone/call/k;)V

    .line 287
    if-eqz p1, :cond_6

    .line 288
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/n;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->d:Lcom/viber/voip/phone/CallCard;

    const v3, 0x7f0c035c

    invoke-virtual {v2, v3}, Lcom/viber/voip/phone/CallCard;->setChronometerText(I)V

    .line 291
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v4

    .line 292
    if-eqz v4, :cond_6

    .line 293
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v3, v2, Lcom/viber/voip/phone/b/o;->e:Lcom/viber/voip/phone/h;

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->B()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/viber/voip/phone/h;->setChecked(Z)V

    .line 294
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v2, v2, Lcom/viber/voip/phone/b/o;->d:Lcom/viber/voip/phone/h;

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->q()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/phone/h;->setChecked(Z)V

    .line 295
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v2, v2, Lcom/viber/voip/phone/b/o;->f:Lcom/viber/voip/phone/h;

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->s()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/phone/h;->setChecked(Z)V

    .line 297
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    iget-object v5, p0, Lcom/viber/voip/phone/b/k;->u:[I

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->y()I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Lcom/viber/voip/phone/PhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v2, v2, Lcom/viber/voip/phone/b/o;->c:Lcom/viber/voip/phone/h;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/phone/call/n;->u()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/phone/h;->setChecked(Z)V

    .line 301
    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->n()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/n;->u()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    move v3, v0

    .line 302
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v5, v2, Lcom/viber/voip/phone/b/o;->e:Lcom/viber/voip/phone/h;

    if-nez v3, :cond_9

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->C()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/n;->d()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v0

    :goto_2
    invoke-virtual {v5, v2}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 303
    iget-boolean v2, p0, Lcom/viber/voip/phone/b/k;->v:Z

    if-eqz v2, :cond_2

    .line 304
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v5, v2, Lcom/viber/voip/phone/b/o;->f:Lcom/viber/voip/phone/h;

    if-nez v3, :cond_a

    move v2, v0

    :goto_3
    invoke-virtual {v5, v2}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 305
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v5, v2, Lcom/viber/voip/phone/b/o;->a:Lcom/viber/voip/phone/h;

    if-nez v3, :cond_b

    move v2, v0

    :goto_4
    invoke-virtual {v5, v2}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v5, v2, Lcom/viber/voip/phone/b/o;->d:Lcom/viber/voip/phone/h;

    if-nez v3, :cond_c

    move v2, v0

    :goto_5
    invoke-virtual {v5, v2}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 308
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v5, v2, Lcom/viber/voip/phone/b/o;->b:Lcom/viber/voip/phone/h;

    if-nez v3, :cond_d

    move v2, v0

    :goto_6
    invoke-virtual {v5, v2}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 309
    invoke-static {}, Lcom/viber/voip/phone/c;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v2, v2, Lcom/viber/voip/phone/b/o;->g:Lcom/viber/voip/phone/h;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 313
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    iget-object v2, v2, Lcom/viber/voip/phone/b/o;->c:Lcom/viber/voip/phone/h;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->a()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->C()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/phone/call/n;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/phone/call/n;->u()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_5
    :goto_7
    invoke-virtual {v2, v0}, Lcom/viber/voip/phone/h;->setEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->n:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_6
    monitor-exit p0

    return-void

    :cond_7
    move v2, v1

    .line 293
    goto/16 :goto_0

    :cond_8
    move v3, v1

    .line 301
    goto/16 :goto_1

    :cond_9
    move v2, v1

    .line 302
    goto :goto_2

    :cond_a
    move v2, v1

    .line 304
    goto :goto_3

    :cond_b
    move v2, v1

    .line 305
    goto :goto_4

    :cond_c
    move v2, v1

    .line 307
    goto :goto_5

    :cond_d
    move v2, v1

    .line 308
    goto :goto_6

    :cond_e
    move v0, v1

    .line 313
    goto :goto_7

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->k:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->k:Landroid/content/DialogInterface;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->k:Landroid/content/DialogInterface;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 253
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_0
    return-void

    .line 253
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 259
    invoke-super {p0}, Lcom/viber/voip/phone/b/ah;->b()V

    .line 260
    iget-boolean v0, p0, Lcom/viber/voip/phone/b/k;->w:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->q:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0, p0}, Lcom/viber/voip/sound/ISoundService;->unregisterSpeakerStateListener(Lcom/viber/voip/sound/ISoundService$SpeakerStateListener;)V

    .line 263
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerCallbackListener()Lcom/viber/jni/dialer/DialerCallbackListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->r:Lcom/viber/voip/phone/b/p;

    invoke-virtual {v1, v2}, Lcom/viber/jni/dialer/DialerCallbackListener;->removeDelegate(Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerVideoListener()Lcom/viber/jni/dialer/DialerVideoListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->r:Lcom/viber/voip/phone/b/p;

    invoke-virtual {v1, v2}, Lcom/viber/jni/dialer/DialerVideoListener;->removeDelegate(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerHoldStateListener()Lcom/viber/jni/dialer/DialerHoldStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->r:Lcom/viber/voip/phone/b/p;

    invoke-virtual {v1, v2}, Lcom/viber/jni/dialer/DialerHoldStateListener;->removeDelegate(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerTransferCallListener()Lcom/viber/jni/dialer/DialerTransferCallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/b/k;->r:Lcom/viber/voip/phone/b/p;

    invoke-virtual {v0, v1}, Lcom/viber/jni/dialer/DialerTransferCallListener;->removeDelegate(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->l:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->f:Lcom/viber/voip/phone/b/o;

    invoke-virtual {v0, v3}, Lcom/viber/voip/phone/b/o;->a(I)V

    .line 273
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 275
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->s:Lcom/viber/voip/phone/b/a/j;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/a/j;->b()V

    .line 282
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 334
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->e:Lcom/viber/voip/phone/call/k;

    if-nez v2, :cond_0

    .line 382
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 339
    :sswitch_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->o:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->a()V

    .line 340
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->p:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleHangup()V

    .line 341
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->e:Lcom/viber/voip/phone/call/k;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a(Lcom/viber/voip/phone/call/k;)Z

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->d(Z)V

    goto :goto_0

    .line 344
    :sswitch_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/b/k;->e:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->l()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 347
    :sswitch_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/b/k;->e:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->l()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 348
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/k;->c()Z

    goto :goto_0

    .line 351
    :sswitch_3
    check-cast p1, Lcom/viber/voip/phone/h;

    invoke-virtual {p1}, Lcom/viber/voip/phone/h;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->p:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleUnmute()V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->p:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleMute()V

    goto :goto_0

    .line 358
    :sswitch_4
    check-cast p1, Lcom/viber/voip/phone/h;

    invoke-virtual {p1}, Lcom/viber/voip/phone/h;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->p:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleLocalUnhold()V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->p:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleLocalHold()V

    goto :goto_0

    .line 365
    :sswitch_5
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->o:Lcom/viber/voip/phone/call/a;

    check-cast p1, Lcom/viber/voip/phone/h;

    invoke-virtual {p1}, Lcom/viber/voip/phone/h;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Lcom/viber/voip/phone/call/a;->a(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 368
    :sswitch_6
    iget-object v2, p0, Lcom/viber/voip/phone/b/k;->p:Lcom/viber/jni/dialer/DialerController;

    check-cast p1, Lcom/viber/voip/phone/h;

    invoke-virtual {p1}, Lcom/viber/voip/phone/h;->isChecked()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-interface {v2, v0}, Lcom/viber/jni/dialer/DialerController;->handleTransfer(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    .line 371
    :sswitch_7
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->p:Lcom/viber/jni/dialer/DialerController;

    iget-object v1, p0, Lcom/viber/voip/phone/b/k;->e:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/jni/dialer/DialerController;->handleSwitchToGSM(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    :sswitch_8
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/PhoneActivity;->c()V

    goto/16 :goto_0

    .line 377
    :sswitch_9
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->o:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->d()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 380
    :cond_5
    invoke-direct {p0}, Lcom/viber/voip/phone/b/k;->g()V

    goto/16 :goto_0

    .line 337
    :sswitch_data_0
    .sparse-switch
        0x7f07008f -> :sswitch_0
        0x7f0700ef -> :sswitch_1
        0x7f0701aa -> :sswitch_8
        0x7f070343 -> :sswitch_2
        0x7f070352 -> :sswitch_9
        0x7f070353 -> :sswitch_7
        0x7f070354 -> :sswitch_6
        0x7f070355 -> :sswitch_3
        0x7f070356 -> :sswitch_4
        0x7f070357 -> :sswitch_5
    .end sparse-switch
.end method

.method public onHeadphonesConnected(Z)V
    .locals 0
    .parameter

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/viber/voip/phone/b/k;->e()V

    .line 474
    return-void
.end method

.method public onSpeakerStateChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lcom/viber/voip/phone/b/k;->b:Lcom/viber/voip/phone/PhoneActivity;

    new-instance v1, Lcom/viber/voip/phone/b/n;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/phone/b/n;-><init>(Lcom/viber/voip/phone/b/k;Z)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method

.method public onSpeakerStatePreChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 459
    return-void
.end method

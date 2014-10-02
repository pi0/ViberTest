.class public Lcom/viber/voip/phone/b/j;
.super Lcom/viber/voip/phone/b/ah;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static l:[[I

.field private static m:[[I


# instance fields
.field private c:[[I

.field private f:[[I

.field private g:[[I

.field private h:[[I

.field private i:[[I

.field private j:[[I

.field private k:[[I

.field private n:[I

.field private o:Landroid/widget/Button;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/Button;

.field private t:Lcom/viber/voip/phone/call/a;

.field private u:Lcom/viber/jni/dialer/DialerController;

.field private v:Lcom/viber/voip/sound/ISoundService;

.field private w:Landroid/view/View;

.field private x:Lcom/viber/voip/phone/CallCard;

.field private y:Lcom/viber/voip/phone/call/k;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    sput-object v0, Lcom/viber/voip/phone/b/j;->l:[[I

    .line 111
    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v2

    new-array v1, v2, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    sput-object v0, Lcom/viber/voip/phone/b/j;->m:[[I

    return-void

    .line 103
    :array_0
    .array-data 0x4
        0x8ct 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x88t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x8ft 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x8dt 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x87t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 111
    :array_5
    .array-data 0x4
        0x8ct 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x88t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x8ft 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x8dt 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x87t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/phone/b/ah;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->c:[[I

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->f:[[I

    .line 62
    new-array v0, v5, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->g:[[I

    .line 70
    new-array v0, v5, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->h:[[I

    .line 78
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_19

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_1b

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->i:[[I

    .line 87
    new-array v0, v5, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_1c

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_1d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1e

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_1f

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->j:[[I

    .line 95
    new-array v0, v5, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_21

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->k:[[I

    .line 120
    new-array v0, v5, [I

    fill-array-data v0, :array_26

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->n:[I

    .line 152
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->t:Lcom/viber/voip/phone/call/a;

    .line 153
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->u:Lcom/viber/jni/dialer/DialerController;

    .line 154
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->v:Lcom/viber/voip/sound/ISoundService;

    .line 156
    const v0, 0x7f07008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->o:Landroid/widget/Button;

    .line 157
    const v0, 0x7f07008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->p:Landroid/view/View;

    .line 158
    const v0, 0x7f070088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->q:Landroid/view/View;

    .line 159
    const v0, 0x7f07008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->s:Landroid/widget/Button;

    .line 160
    const v0, 0x7f070087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->r:Landroid/view/View;

    .line 162
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->q:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->s:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v0, 0x7f070081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->w:Landroid/view/View;

    .line 169
    const v0, 0x7f070082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/CallCard;

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->x:Lcom/viber/voip/phone/CallCard;

    .line 170
    return-void

    .line 44
    nop

    :array_0
    .array-data 0x4
        0x8ct 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x88t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x8et 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x8ft 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x8dt 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x87t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_6
    .array-data 0x4
        0x8ct 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x88t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x8et 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x8ft 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x8dt 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x87t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 62
    :array_c
    .array-data 0x4
        0x8ct 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x88t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x8ft 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x8dt 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x87t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 70
    :array_11
    .array-data 0x4
        0x8ct 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x88t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x8ft 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x8dt 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x87t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 78
    :array_16
    .array-data 0x4
        0x8ct 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x88t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x8et 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x8ft 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x8dt 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x87t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 87
    :array_1c
    .array-data 0x4
        0x8ct 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0x88t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0x8ft 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x8dt 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0x87t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 95
    :array_21
    .array-data 0x4
        0x8ct 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0x88t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0x8ft 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_24
    .array-data 0x4
        0x8dt 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_25
    .array-data 0x4
        0x87t 0x0t 0x7t 0x7ft
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 120
    :array_26
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private c()V
    .locals 3

    .prologue
    const/high16 v2, 0x1000

    const/4 v1, 0x0

    .line 310
    invoke-static {}, Lcom/viber/voip/phone/PhoneActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    invoke-static {v1}, Lcom/viber/voip/phone/PhoneActivity;->c(Z)V

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.RATE_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lcom/viber/voip/phone/b/j;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/phone/PhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-static {}, Lcom/viber/voip/phone/PhoneActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-static {v1}, Lcom/viber/voip/phone/PhoneActivity;->d(Z)V

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.FACEBOOK_LIKE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 321
    iget-object v1, p0, Lcom/viber/voip/phone/b/j;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/phone/PhoneActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 4
    .parameter

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/viber/voip/phone/b/ah;->a(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 175
    invoke-virtual {p1}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/b/j;->a(Lcom/viber/voip/phone/call/k;)V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/j;->z:Landroid/graphics/drawable/Drawable;

    .line 178
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->w:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/viber/voip/phone/b/j;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v2}, Lcom/viber/voip/phone/PhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 179
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0c0357

    const/16 v4, 0xa

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 237
    invoke-super {p0, p1}, Lcom/viber/voip/phone/b/ah;->a(Lcom/viber/voip/phone/call/k;)V

    .line 238
    iput-object p1, p0, Lcom/viber/voip/phone/b/j;->y:Lcom/viber/voip/phone/call/k;

    .line 239
    const/4 v0, 0x0

    check-cast v0, [[I

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateState, callInfo: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", disconnectedState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 241
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    sget-object v3, Lcom/viber/voip/phone/b/j;->l:[[I

    .line 243
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->x:Lcom/viber/voip/phone/CallCard;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->x:Lcom/viber/voip/phone/CallCard;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/CallCard;->a(Z)V

    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/16 v4, 0xc

    if-ne v0, v4, :cond_1

    .line 248
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->x:Lcom/viber/voip/phone/CallCard;

    invoke-virtual {v0}, Lcom/viber/voip/phone/CallCard;->getUpperTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 249
    sget-object v0, Lcom/viber/voip/phone/b/j;->m:[[I

    :goto_0
    move v3, v2

    .line 298
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_e

    .line 299
    iget-object v4, p0, Lcom/viber/voip/phone/b/j;->a:Landroid/view/View;

    aget-object v5, v0, v3

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aget-object v5, v0, v3

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 298
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->n:[I

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_2

    move v0, v1

    .line 252
    :goto_2
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 253
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->x:Lcom/viber/voip/phone/CallCard;

    invoke-virtual {v0}, Lcom/viber/voip/phone/CallCard;->getUpperTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    .line 251
    goto :goto_2

    .line 254
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/16 v4, 0xb

    if-eq v0, v4, :cond_4

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    if-ne v0, v5, :cond_10

    .line 256
    :cond_4
    sget-object v0, Lcom/viber/voip/phone/b/j;->m:[[I

    goto :goto_0

    .line 261
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 263
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->j:[[I

    .line 264
    const-string/jumbo v3, "Failed DISCONNECTED"

    invoke-static {v3}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/viber/voip/phone/b/j;->x:Lcom/viber/voip/phone/CallCard;

    invoke-virtual {v3}, Lcom/viber/voip/phone/CallCard;->getUpperTitle()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 266
    :cond_6
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    if-ne v0, v4, :cond_8

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_7

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_7

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_7

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    .line 272
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->g:[[I

    .line 273
    const-string/jumbo v3, "Failed TIMEOUT"

    invoke-static {v3}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    if-ne v0, v4, :cond_9

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 277
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->h:[[I

    .line 278
    const-string/jumbo v3, "Failed BUSY"

    invoke-static {v3}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 281
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->f:[[I

    .line 282
    const-string/jumbo v3, "Failed FAILED"

    invoke-static {v3}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/16 v3, 0xb

    if-eq v0, v3, :cond_b

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    if-ne v0, v5, :cond_c

    .line 286
    :cond_b
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->i:[[I

    .line 287
    const-string/jumbo v3, "Failed ENDED"

    invoke-static {v3}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :cond_c
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_d

    .line 290
    const-string/jumbo v0, "Failed TRANSFERED"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->k:[[I

    goto/16 :goto_0

    .line 293
    :cond_d
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->c:[[I

    .line 294
    const-string/jumbo v3, "Failed DEFAULT"

    invoke-static {v3}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 302
    :cond_e
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v0

    if-nez v0, :cond_f

    .line 303
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->s:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    :cond_f
    invoke-direct {p0}, Lcom/viber/voip/phone/b/j;->c()V

    .line 307
    return-void

    :cond_10
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 183
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 187
    invoke-super {p0}, Lcom/viber/voip/phone/b/ah;->b()V

    .line 188
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->o:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->s:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->w:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/phone/b/j;->z:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->y:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->y:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->v:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->stopTone()V

    .line 199
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->u:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleClose()V

    .line 201
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->b:Lcom/viber/voip/phone/PhoneActivity;

    iget-object v1, p0, Lcom/viber/voip/phone/b/j;->y:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/phone/call/k;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->t:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->a()V

    .line 211
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->u:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleHangup()V

    goto :goto_0

    .line 214
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->y:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->y:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->b()Lcom/viber/voip/phone/call/l;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/phone/call/l;->a:Lcom/viber/voip/phone/call/l;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->y:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->b:Lcom/viber/voip/phone/PhoneActivity;

    iget-object v1, p0, Lcom/viber/voip/phone/b/j;->y:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/phone/call/k;)V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/PhoneActivity;->d()V

    goto :goto_0

    .line 223
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->y:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    const-string/jumbo v0, "tel"

    iget-object v1, p0, Lcom/viber/voip/phone/b/j;->y:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    const-string/jumbo v0, "viber_out"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    iget-object v0, p0, Lcom/viber/voip/phone/b/j;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0, v1}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x7f070088
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.class public abstract Lcom/viber/voip/messages/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:Landroid/view/View;

.field protected c:Landroid/view/ViewGroup;

.field protected d:Lcom/viber/voip/messages/ui/a/a;

.field protected e:Landroid/view/View;

.field protected f:I

.field protected g:Landroid/os/Handler;

.field protected h:Z

.field private i:Landroid/content/Context;

.field private j:Landroid/widget/ListView;

.field private k:Lcom/viber/voip/messages/ui/q;

.field private l:Landroid/widget/ImageButton;

.field private m:Lcom/viber/voip/messages/ui/p;

.field private n:Lcom/viber/voip/messages/ui/u;

.field private o:Lcom/viber/voip/messages/ui/v;

.field private p:I

.field private q:Ljava/lang/Runnable;

.field private r:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/viber/voip/messages/ui/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/k;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/viber/voip/messages/ui/u;Lcom/viber/voip/messages/ui/p;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 83
    iput-object p1, p0, Lcom/viber/voip/messages/ui/k;->i:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/viber/voip/messages/ui/k;->b:Landroid/view/View;

    .line 85
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/k;->g:Landroid/os/Handler;

    .line 86
    iput-object p4, p0, Lcom/viber/voip/messages/ui/k;->m:Lcom/viber/voip/messages/ui/p;

    .line 87
    iput-object p3, p0, Lcom/viber/voip/messages/ui/k;->n:Lcom/viber/voip/messages/ui/u;

    .line 88
    iput p5, p0, Lcom/viber/voip/messages/ui/k;->f:I

    .line 89
    const v0, 0x7f070203

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/k;->c:Landroid/view/ViewGroup;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    .line 97
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/viber/voip/settings/f;Lcom/viber/voip/stickers/b;Lcom/viber/voip/messages/ui/u;)Lcom/viber/voip/messages/ui/a/a;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/k;->g()I

    move-result v5

    .line 250
    sget-object v0, Lcom/viber/voip/messages/ui/o;->a:[I

    invoke-virtual {p2}, Lcom/viber/voip/settings/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown stickers display mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :pswitch_0
    new-instance v0, Lcom/viber/voip/messages/ui/a/c;

    sget-object v2, Lcom/viber/voip/messages/ui/a/h;->a:Lcom/viber/voip/messages/ui/a/h;

    iget v6, p0, Lcom/viber/voip/messages/ui/k;->f:I

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/ui/a/c;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/ui/a/h;Lcom/viber/voip/stickers/b;Lcom/viber/voip/messages/ui/u;II)V

    .line 265
    :goto_0
    return-object v0

    .line 257
    :pswitch_1
    new-instance v0, Lcom/viber/voip/messages/ui/a/c;

    sget-object v2, Lcom/viber/voip/messages/ui/a/h;->b:Lcom/viber/voip/messages/ui/a/h;

    iget v6, p0, Lcom/viber/voip/messages/ui/k;->f:I

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/ui/a/c;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/ui/a/h;Lcom/viber/voip/stickers/b;Lcom/viber/voip/messages/ui/u;II)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/k;)Lcom/viber/voip/messages/ui/p;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->m:Lcom/viber/voip/messages/ui/p;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/k;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/k;->b(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/k;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b(Landroid/widget/EditText;)V
    .locals 8
    .parameter

    .prologue
    .line 239
    new-instance v0, Landroid/view/KeyEvent;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x43

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 241
    new-instance v0, Landroid/view/KeyEvent;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x43

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 243
    return-void
.end method

.method private g()I
    .locals 4

    .prologue
    .line 269
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    .line 270
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v2

    .line 271
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;)[I

    move-result-object v0

    .line 272
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    aget v0, v0, v3

    .line 273
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 274
    int-to-float v0, v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/k;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/viber/voip/util/gl;->g(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 276
    :cond_0
    return v0

    .line 272
    :cond_1
    const/4 v3, 0x0

    aget v0, v0, v3

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/EditText;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/viber/voip/messages/ui/k;->r:Landroid/widget/EditText;

    .line 206
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->l:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/ui/m;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/ui/m;-><init>(Lcom/viber/voip/messages/ui/k;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/k;->q:Ljava/lang/Runnable;

    .line 222
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->l:Landroid/widget/ImageButton;

    new-instance v1, Lcom/viber/voip/messages/ui/n;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/ui/n;-><init>(Lcom/viber/voip/messages/ui/k;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method protected a()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 103
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/k;->h:Z

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return v5

    .line 104
    :cond_0
    iput v5, p0, Lcom/viber/voip/messages/ui/k;->p:I

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/k;->h:Z

    .line 108
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/viber/voip/messages/ui/k;->i:Landroid/content/Context;

    sget-object v2, Lcom/viber/voip/settings/f;->a:Lcom/viber/voip/settings/f;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/k;->n:Lcom/viber/voip/messages/ui/u;

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/viber/voip/messages/ui/k;->a(Landroid/content/Context;Lcom/viber/voip/settings/f;Lcom/viber/voip/stickers/b;Lcom/viber/voip/messages/ui/u;)Lcom/viber/voip/messages/ui/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/k;->d:Lcom/viber/voip/messages/ui/a/a;

    .line 111
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 113
    const v1, 0x7f0300ce

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/k;->e:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->e:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->e:Landroid/view/View;

    const v1, 0x7f0702ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/k;->j:Landroid/widget/ListView;

    .line 116
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/k;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/high16 v2, 0x40e0

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v1, p0, Lcom/viber/voip/messages/ui/k;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/k;->b()V

    .line 122
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->e:Landroid/view/View;

    const v1, 0x7f0702cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/k;->l:Landroid/widget/ImageButton;

    .line 123
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->r:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->r:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/k;->a(Landroid/widget/EditText;)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->d:Lcom/viber/voip/messages/ui/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/a/a;->a()Landroid/view/View;

    move-result-object v0

    .line 128
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v1, p0, Lcom/viber/voip/messages/ui/k;->i:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03012c

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/viber/voip/messages/ui/v;

    invoke-direct {v2, p0, v0, v1}, Lcom/viber/voip/messages/ui/v;-><init>(Lcom/viber/voip/messages/ui/k;Landroid/view/View;Landroid/view/View;)V

    iput-object v2, p0, Lcom/viber/voip/messages/ui/k;->o:Lcom/viber/voip/messages/ui/v;

    .line 134
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->e:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->d:Lcom/viber/voip/messages/ui/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/a/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 137
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/k;->d:Lcom/viber/voip/messages/ui/a/a;

    invoke-interface {v1}, Lcom/viber/voip/messages/ui/a/a;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/k;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected b()V
    .locals 8

    .prologue
    const/16 v7, 0x2d0

    const/16 v6, 0x258

    const/16 v5, 0x190

    const/16 v4, 0x168

    .line 144
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/k;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/ui/k;->p:I

    iget-object v1, p0, Lcom/viber/voip/messages/ui/k;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/k;->p:I

    .line 147
    const/4 v0, 0x5

    .line 148
    iget v1, p0, Lcom/viber/voip/messages/ui/k;->p:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/k;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x4320

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 149
    const/16 v2, 0x140

    if-le v1, v2, :cond_4

    if-gt v1, v4, :cond_4

    .line 150
    const/4 v0, 0x6

    .line 161
    :cond_2
    :goto_1
    iget v1, p0, Lcom/viber/voip/messages/ui/k;->p:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/k;->j:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/viber/voip/messages/ui/k;->j:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 162
    iget-object v2, p0, Lcom/viber/voip/messages/ui/k;->k:Lcom/viber/voip/messages/ui/q;

    if-eqz v2, :cond_3

    .line 163
    iget-object v2, p0, Lcom/viber/voip/messages/ui/k;->k:Lcom/viber/voip/messages/ui/q;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/q;->notifyDataSetInvalidated()V

    .line 165
    :cond_3
    new-instance v2, Lcom/viber/voip/messages/ui/q;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/k;->i:Landroid/content/Context;

    int-to-float v1, v1

    invoke-direct {v2, v3, v1, v0}, Lcom/viber/voip/messages/ui/q;-><init>(Landroid/content/Context;FI)V

    iput-object v2, p0, Lcom/viber/voip/messages/ui/k;->k:Lcom/viber/voip/messages/ui/q;

    .line 166
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->k:Lcom/viber/voip/messages/ui/q;

    new-instance v1, Lcom/viber/voip/messages/ui/l;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/l;-><init>(Lcom/viber/voip/messages/ui/k;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/q;->a(Lcom/viber/voip/messages/ui/t;)V

    .line 175
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/k;->k:Lcom/viber/voip/messages/ui/q;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->k:Lcom/viber/voip/messages/ui/q;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/q;->notifyDataSetChanged()V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->j:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0

    .line 151
    :cond_4
    if-le v1, v4, :cond_5

    if-gt v1, v5, :cond_5

    .line 152
    const/4 v0, 0x7

    goto :goto_1

    .line 153
    :cond_5
    if-le v1, v5, :cond_6

    if-ge v1, v6, :cond_6

    .line 154
    const/16 v0, 0x8

    goto :goto_1

    .line 155
    :cond_6
    if-lt v1, v6, :cond_7

    if-ge v1, v7, :cond_7

    .line 156
    const/16 v0, 0x9

    goto :goto_1

    .line 157
    :cond_7
    if-lt v1, v7, :cond_2

    .line 158
    const/16 v0, 0xa

    goto :goto_1
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/k;->h:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->d:Lcom/viber/voip/messages/ui/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/a/a;->a()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/k;->h:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->d:Lcom/viber/voip/messages/ui/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/a/a;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/k;->h:Z

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/k;->d:Lcom/viber/voip/messages/ui/a/a;

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/k;->h:Z

    .line 199
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->d:Lcom/viber/voip/messages/ui/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/k;->d:Lcom/viber/voip/messages/ui/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/a/a;->b()V

    .line 488
    :cond_0
    return-void
.end method

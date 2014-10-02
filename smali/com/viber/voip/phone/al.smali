.class public Lcom/viber/voip/phone/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcom/viber/voip/phone/VideoCallMenuButton;

.field private g:Lcom/viber/voip/widget/PausableChronometer;

.field private h:Lcom/viber/voip/phone/VideoCallActivity;

.field private i:Landroid/os/Handler;

.field private j:Lcom/viber/voip/phone/ao;

.field private k:Lcom/viber/jni/dialer/DialerController;

.field private l:Lcom/viber/voip/phone/call/a;

.field private m:Lcom/viber/voip/util/b/w;

.field private n:Lcom/viber/voip/util/b/a/a;

.field private o:Lcom/viber/voip/phone/b/a/i;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/phone/VideoCallActivity;Landroid/view/View;Lcom/viber/voip/phone/ao;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/al;->i:Landroid/os/Handler;

    .line 79
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/al;->k:Lcom/viber/jni/dialer/DialerController;

    .line 80
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/al;->l:Lcom/viber/voip/phone/call/a;

    move-object v0, p2

    .line 81
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    .line 82
    iput-object p3, p0, Lcom/viber/voip/phone/al;->j:Lcom/viber/voip/phone/ao;

    .line 84
    iput-object p1, p0, Lcom/viber/voip/phone/al;->h:Lcom/viber/voip/phone/VideoCallActivity;

    .line 86
    iget-object v0, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    const v0, 0x7f0703ec

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/viber/voip/phone/al;->e:Landroid/widget/FrameLayout;

    .line 89
    const v0, 0x7f0703ee

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/VideoCallMenuButton;

    iput-object v0, p0, Lcom/viber/voip/phone/al;->f:Lcom/viber/voip/phone/VideoCallMenuButton;

    .line 91
    invoke-virtual {p1}, Lcom/viber/voip/phone/VideoCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 92
    const v1, 0x7f0a0209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/phone/al;->a:I

    .line 93
    const v1, 0x7f0a020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/phone/al;->b:I

    .line 94
    const v1, 0x7f0a020b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/phone/al;->c:I

    .line 96
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/al;->m:Lcom/viber/voip/util/b/w;

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/al;)Lcom/viber/voip/phone/VideoCallActivity;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/phone/al;->h:Lcom/viber/voip/phone/VideoCallActivity;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/phone/al;Lcom/viber/voip/util/b/a/a;)Lcom/viber/voip/util/b/a/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/viber/voip/phone/al;->n:Lcom/viber/voip/util/b/a/a;

    return-object p1
.end method

.method private a(Landroid/view/View;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 481
    new-instance v0, Lcom/viber/voip/phone/an;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/phone/an;-><init>(Lcom/viber/voip/phone/al;Landroid/view/View;Landroid/net/Uri;)V

    invoke-static {p1, v0}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 499
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/phone/al;)Lcom/viber/voip/util/b/w;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/phone/al;->m:Lcom/viber/voip/util/b/w;

    return-object v0
.end method

.method private b(Z)V
    .locals 5
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 433
    iput-boolean p1, p0, Lcom/viber/voip/phone/al;->p:Z

    .line 434
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 435
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    const v3, 0x7f070403

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 436
    iget-object v3, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    const v4, 0x7f070404

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 437
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v1, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 440
    :cond_1
    iget-object v4, p0, Lcom/viber/voip/phone/al;->h:Lcom/viber/voip/phone/VideoCallActivity;

    if-eqz p1, :cond_4

    const/high16 v1, 0x10a

    :goto_1
    invoke-static {v4, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 441
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 442
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 443
    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 444
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 434
    goto :goto_0

    .line 440
    :cond_4
    const v1, 0x10a0001

    goto :goto_1
.end method

.method static synthetic c(Lcom/viber/voip/phone/al;)Lcom/viber/voip/util/b/a/a;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/phone/al;->n:Lcom/viber/voip/util/b/a/a;

    return-object v0
.end method

.method private c(I)V
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 323
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    return-void
.end method

.method private o()Lcom/viber/voip/phone/call/n;
    .locals 2

    .prologue
    .line 327
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/viber/voip/phone/al;->i:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 468
    iget-object v0, p0, Lcom/viber/voip/phone/al;->i:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 469
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 109
    return-void
.end method

.method public a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lcom/viber/voip/phone/al;->e:Landroid/widget/FrameLayout;

    const v1, 0x7f0703ed

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 417
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 418
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, p1, :cond_1

    .line 419
    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 422
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 423
    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0703eb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 429
    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 3
    .parameter

    .prologue
    .line 472
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/phone/al;->a(Landroid/view/View;Landroid/net/Uri;)V

    .line 478
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/phone/al;->h:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-virtual {v1}, Lcom/viber/voip/phone/VideoCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020253

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/phone/call/n;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 135
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->stop()V

    .line 136
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PausableChronometer;->setVisibility(I)V

    .line 139
    :goto_1
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    :cond_1
    const v0, 0x7f0c0412

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/al;->b(I)V

    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PausableChronometer;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/widget/PausableChronometer;->setBase(J)V

    .line 127
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->start()V

    goto :goto_1

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PausableChronometer;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->x()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/widget/PausableChronometer;->setBase(J)V

    .line 132
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->stop()V

    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/n;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 142
    const v0, 0x7f0c0413

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/al;->b(I)V

    goto :goto_0

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/phone/al;->c()V

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x53

    const/16 v7, 0x33

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 165
    iget-object v0, p0, Lcom/viber/voip/phone/al;->h:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 167
    iget-object v2, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    const v3, 0x7f070402

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 168
    iget-object v3, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    const v4, 0x7f070408

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 169
    iget-object v4, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    const v5, 0x7f070407

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 170
    sget-object v5, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation90Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    if-ne p1, v5, :cond_4

    .line 171
    if-eqz v2, :cond_0

    .line 172
    iget-object v5, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_0
    if-eqz v4, :cond_1

    .line 175
    iget-object v2, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 177
    :cond_1
    if-nez v3, :cond_2

    .line 178
    const v2, 0x7f03013b

    iget-object v3, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/viber/voip/phone/al;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/viber/voip/phone/al;->a:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 181
    iget-object v0, p0, Lcom/viber/voip/phone/al;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/viber/voip/phone/al;->c:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 182
    iget-object v0, p0, Lcom/viber/voip/phone/al;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 184
    iget-object v0, p0, Lcom/viber/voip/phone/al;->f:Lcom/viber/voip/phone/VideoCallMenuButton;

    invoke-virtual {v0}, Lcom/viber/voip/phone/VideoCallMenuButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 185
    iget-object v0, p0, Lcom/viber/voip/phone/al;->f:Lcom/viber/voip/phone/VideoCallMenuButton;

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/VideoCallMenuButton;->setRotation(I)V

    .line 223
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    const v2, 0x7f070355

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/VideoCallMenuButton;

    .line 224
    iget-object v2, p0, Lcom/viber/voip/phone/al;->l:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v2

    .line 225
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->q()Z

    move-result v1

    :cond_3
    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/VideoCallMenuButton;->setChecked(Z)V

    .line 227
    invoke-virtual {p0}, Lcom/viber/voip/phone/al;->d()V

    .line 228
    invoke-virtual {p0}, Lcom/viber/voip/phone/al;->e()V

    .line 229
    invoke-virtual {p0}, Lcom/viber/voip/phone/al;->g()V

    .line 230
    invoke-virtual {p0}, Lcom/viber/voip/phone/al;->f()V

    .line 232
    invoke-direct {p0}, Lcom/viber/voip/phone/al;->p()V

    .line 233
    return-void

    .line 187
    :cond_4
    sget-object v5, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation270Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    if-ne p1, v5, :cond_7

    .line 188
    if-eqz v2, :cond_5

    .line 189
    iget-object v5, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 191
    :cond_5
    if-eqz v3, :cond_6

    .line 192
    iget-object v2, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 194
    :cond_6
    if-nez v4, :cond_2

    .line 195
    const v2, 0x7f03013a

    iget-object v3, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/viber/voip/phone/al;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/viber/voip/phone/al;->a:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 198
    iget-object v0, p0, Lcom/viber/voip/phone/al;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/viber/voip/phone/al;->c:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 199
    iget-object v0, p0, Lcom/viber/voip/phone/al;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 201
    iget-object v0, p0, Lcom/viber/voip/phone/al;->f:Lcom/viber/voip/phone/VideoCallMenuButton;

    invoke-virtual {v0}, Lcom/viber/voip/phone/VideoCallMenuButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x55

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 202
    iget-object v0, p0, Lcom/viber/voip/phone/al;->f:Lcom/viber/voip/phone/VideoCallMenuButton;

    const/16 v2, 0x10e

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/VideoCallMenuButton;->setRotation(I)V

    goto :goto_0

    .line 205
    :cond_7
    if-eqz v3, :cond_8

    .line 206
    iget-object v5, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 208
    :cond_8
    if-eqz v4, :cond_9

    .line 209
    iget-object v3, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 211
    :cond_9
    if-nez v2, :cond_2

    .line 212
    const v2, 0x7f030139

    iget-object v3, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/viber/voip/phone/al;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/viber/voip/phone/al;->b:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 215
    iget-object v0, p0, Lcom/viber/voip/phone/al;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/viber/voip/phone/al;->a:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 216
    iget-object v0, p0, Lcom/viber/voip/phone/al;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 218
    iget-object v0, p0, Lcom/viber/voip/phone/al;->f:Lcom/viber/voip/phone/VideoCallMenuButton;

    invoke-virtual {v0}, Lcom/viber/voip/phone/VideoCallMenuButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 219
    iget-object v0, p0, Lcom/viber/voip/phone/al;->f:Lcom/viber/voip/phone/VideoCallMenuButton;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/VideoCallMenuButton;->setRotation(I)V

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/viber/voip/phone/al;->q:Z

    .line 503
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    if-nez v0, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->b()V

    .line 153
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->stop()V

    .line 154
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/PausableChronometer;->setText(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PausableChronometer;->c()V

    goto :goto_0
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/viber/voip/phone/al;->l:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->d()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->c()Z

    move-result v3

    .line 237
    iget-object v0, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    const v1, 0x7f070406

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/VideoCallMenuButton;

    .line 238
    if-eqz v0, :cond_0

    .line 239
    if-nez v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/VideoCallMenuButton;->setChecked(Z)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/al;->e:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 242
    return-void

    :cond_1
    move v1, v2

    .line 239
    goto :goto_0

    .line 241
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public e()V
    .locals 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    const v1, 0x7f0700d8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 246
    iget-object v1, p0, Lcom/viber/voip/phone/al;->l:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v1

    .line 247
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    .line 249
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/phone/al;->h:Lcom/viber/voip/phone/VideoCallActivity;

    const v4, 0x7f0c0370

    invoke-virtual {v3, v4}, Lcom/viber/voip/phone/VideoCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getBiDiAwareFormatter()Lcom/viber/voip/util/l;

    move-result-object v2

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/viber/voip/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public f()V
    .locals 4

    .prologue
    const v3, 0x7f07034a

    .line 258
    iget-object v0, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 259
    new-instance v1, Lcom/viber/voip/phone/am;

    invoke-direct {v1, p0}, Lcom/viber/voip/phone/am;-><init>(Lcom/viber/voip/phone/al;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/viber/voip/phone/al;->l:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->c()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    .line 272
    iget-object v0, p0, Lcom/viber/voip/phone/al;->o:Lcom/viber/voip/phone/b/a/i;

    if-nez v0, :cond_0

    .line 273
    new-instance v2, Lcom/viber/voip/phone/b/a/i;

    iget-object v0, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-direct {v2, v0}, Lcom/viber/voip/phone/b/a/i;-><init>(Landroid/widget/ImageButton;)V

    iput-object v2, p0, Lcom/viber/voip/phone/al;->o:Lcom/viber/voip/phone/b/a/i;

    .line 274
    iget-object v0, p0, Lcom/viber/voip/phone/al;->o:Lcom/viber/voip/phone/b/a/i;

    invoke-virtual {v1, v0}, Lcom/viber/voip/phone/call/n;->addObserver(Ljava/util/Observer;)V

    .line 278
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/phone/al;->o:Lcom/viber/voip/phone/b/a/i;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/b/a/i;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 279
    return-void

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/phone/al;->o:Lcom/viber/voip/phone/b/a/i;

    iget-object v0, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Lcom/viber/voip/phone/b/a/i;->a(Landroid/widget/ImageButton;)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/viber/voip/phone/al;->d:Landroid/view/ViewGroup;

    const v1, 0x7f07010d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/PausableChronometer;

    iput-object v0, p0, Lcom/viber/voip/phone/al;->g:Lcom/viber/voip/widget/PausableChronometer;

    .line 283
    invoke-direct {p0}, Lcom/viber/voip/phone/al;->o()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/al;->a(Lcom/viber/voip/phone/call/n;)V

    .line 287
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 290
    const v0, 0x7f070405

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/al;->c(I)V

    .line 291
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 294
    const v0, 0x7f070406

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/al;->c(I)V

    .line 295
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/viber/voip/phone/al;->f:Lcom/viber/voip/phone/VideoCallMenuButton;

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/VideoCallMenuButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 302
    const v0, 0x7f0703c5

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/al;->c(I)V

    .line 303
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 306
    const v0, 0x7f070355

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/al;->c(I)V

    .line 307
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 314
    const v0, 0x7f0703c6

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/al;->c(I)V

    .line 315
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/viber/voip/phone/al;->q:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 333
    invoke-direct {p0}, Lcom/viber/voip/phone/al;->o()Lcom/viber/voip/phone/call/n;

    move-result-object v4

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 389
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/viber/voip/phone/al;->p()V

    .line 390
    return-void

    .line 336
    :sswitch_0
    iget-object v0, p0, Lcom/viber/voip/phone/al;->l:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    move-object v4, v0

    .line 338
    :goto_1
    if-eqz v4, :cond_0

    .line 339
    iget-object v0, p0, Lcom/viber/voip/phone/al;->h:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v6

    move-wide v4, v2

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/util/gn;->a(Landroid/app/Activity;Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)V

    .line 340
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/phone/call/k;->l()Lcom/viber/voip/a/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/a/au;->q()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 341
    iget-object v0, p0, Lcom/viber/voip/phone/al;->h:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/VideoCallActivity;->finish()V

    goto :goto_0

    :cond_1
    move-object v4, v7

    .line 337
    goto :goto_1

    .line 345
    :sswitch_1
    iget-object v0, p0, Lcom/viber/voip/phone/al;->k:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleHangup()V

    goto :goto_0

    .line 348
    :sswitch_2
    if-eqz v4, :cond_0

    .line 349
    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->q()Z

    move-result v2

    .line 350
    check-cast p1, Lcom/viber/voip/phone/VideoCallMenuButton;

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/viber/voip/phone/VideoCallMenuButton;->setChecked(Z)V

    .line 351
    if-eqz v2, :cond_3

    .line 352
    iget-object v0, p0, Lcom/viber/voip/phone/al;->k:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleUnmute()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 350
    goto :goto_2

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/phone/al;->k:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleMute()V

    goto :goto_0

    .line 369
    :sswitch_3
    if-eqz v4, :cond_0

    .line 370
    invoke-virtual {v4}, Lcom/viber/voip/phone/call/n;->u()Z

    move-result v2

    if-nez v2, :cond_4

    .line 371
    :goto_3
    iget-object v1, p0, Lcom/viber/voip/phone/al;->k:Lcom/viber/jni/dialer/DialerController;

    invoke-interface {v1, v0}, Lcom/viber/jni/dialer/DialerController;->handleTransfer(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 370
    goto :goto_3

    .line 378
    :sswitch_4
    iget-object v1, p0, Lcom/viber/voip/phone/al;->l:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/a;->g()V

    .line 379
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/phone/call/k;->l()Lcom/viber/voip/a/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/a/au;->r()Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 380
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/al;->a(Z)V

    goto/16 :goto_0

    .line 383
    :sswitch_5
    iget-object v0, p0, Lcom/viber/voip/phone/al;->j:Lcom/viber/voip/phone/ao;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/viber/voip/phone/al;->j:Lcom/viber/voip/phone/ao;

    invoke-interface {v0}, Lcom/viber/voip/phone/ao;->a()V

    goto/16 :goto_0

    .line 334
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070355 -> :sswitch_2
        0x7f0703c5 -> :sswitch_1
        0x7f0703c6 -> :sswitch_3
        0x7f0703ee -> :sswitch_4
        0x7f070405 -> :sswitch_0
        0x7f070406 -> :sswitch_5
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 451
    iget-boolean v0, p0, Lcom/viber/voip/phone/al;->p:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/viber/voip/phone/al;->i:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 453
    invoke-direct {p0, v1}, Lcom/viber/voip/phone/al;->b(Z)V

    .line 458
    :goto_0
    return v1

    .line 455
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/al;->b(Z)V

    .line 456
    invoke-direct {p0}, Lcom/viber/voip/phone/al;->p()V

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/al;->b(Z)V

    .line 464
    return-void
.end method

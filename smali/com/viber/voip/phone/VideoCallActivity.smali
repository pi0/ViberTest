.class public Lcom/viber/voip/phone/VideoCallActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/phone/ao;
.implements Lcom/viber/voip/sound/VoENativeDebugHelper$MediaStatisticsListener;
.implements Lorg/webrtc/videoengine/EngineDelegate$VideoEngineEventSubscriber;
.implements Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;
.implements Lorg/webrtc/videoengine/VideoCaptureAndroid$CaptureEventCallback;
.implements Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$VideoCaptureEventListener;


# static fields
.field static b:D

.field static c:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

.field static d:I

.field static e:I

.field static f:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field a:Lcom/viber/voip/phone/ag;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lcom/viber/voip/phone/al;

.field private j:Lcom/viber/voip/phone/ai;

.field private k:Lcom/viber/voip/phone/ah;

.field private l:Lcom/viber/voip/phone/call/k;

.field private m:Lcom/c/a/h;

.field private n:Lcom/c/a/h;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 657
    const-wide v0, 0x3fe921fb54442d18L

    sput-wide v0, Lcom/viber/voip/phone/VideoCallActivity;->b:D

    .line 658
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation180Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    sput-object v0, Lcom/viber/voip/phone/VideoCallActivity;->c:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    .line 659
    sput v2, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    .line 660
    sput v2, Lcom/viber/voip/phone/VideoCallActivity;->e:I

    .line 662
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/viber/voip/phone/VideoCallActivity;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->g:Landroid/view/View;

    .line 63
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->h:Landroid/view/View;

    .line 65
    new-instance v0, Lcom/viber/voip/phone/ai;

    invoke-direct {v0, p0}, Lcom/viber/voip/phone/ai;-><init>(Lcom/viber/voip/phone/VideoCallActivity;)V

    iput-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->j:Lcom/viber/voip/phone/ai;

    .line 66
    new-instance v0, Lcom/viber/voip/phone/ah;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/phone/ah;-><init>(Lcom/viber/voip/phone/VideoCallActivity;Lcom/viber/voip/phone/ad;)V

    iput-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->k:Lcom/viber/voip/phone/ah;

    .line 72
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->m:Lcom/c/a/h;

    .line 73
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->n:Lcom/c/a/h;

    .line 74
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->o:Landroid/widget/TextView;

    .line 75
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->p:Landroid/widget/TextView;

    .line 76
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->q:Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->r:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->s:Landroid/widget/TextView;

    .line 79
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->t:Landroid/widget/TextView;

    .line 80
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->u:Landroid/widget/TextView;

    .line 81
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->v:Landroid/widget/TextView;

    .line 82
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->w:Landroid/widget/TextView;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->x:I

    .line 655
    iput-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->a:Lcom/viber/voip/phone/ag;

    return-void
.end method

.method private a(I)Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;
    .locals 1
    .parameter

    .prologue
    .line 669
    sparse-switch p1, :sswitch_data_0

    .line 677
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation0Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    :goto_0
    return-object v0

    .line 671
    :sswitch_0
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation270Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    goto :goto_0

    .line 673
    :sswitch_1
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation180Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    goto :goto_0

    .line 675
    :sswitch_2
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation90Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    goto :goto_0

    .line 669
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 216
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 217
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 218
    const-wide/high16 v0, 0x4010

    const-wide/high16 v5, 0x4008

    .line 219
    invoke-static {}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->getCurrentCaptureObject()Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setLocalRenderView: aspect ratio "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->a(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 230
    const v0, 0x7f0a020d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 231
    const v2, 0x7f0a020c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 232
    if-le v3, v4, :cond_1

    move v2, v0

    .line 233
    :goto_0
    if-le v4, v3, :cond_2

    .line 234
    :goto_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 235
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->g:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 236
    const-string/jumbo v0, "setting new local render view"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->a(Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Lcom/viber/voip/phone/VideoCallActivity;->g:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->g:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->b(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->g:Landroid/view/View;

    const v2, 0x106000c

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 240
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->g:Landroid/view/View;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->g:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    iget-object v2, p0, Lcom/viber/voip/phone/VideoCallActivity;->g:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/phone/al;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 246
    return-void

    :cond_1
    move v2, v1

    .line 232
    goto :goto_0

    :cond_2
    move v0, v1

    .line 233
    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/phone/VideoCallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->p()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/VideoCallActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/VideoCallActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/VideoCallActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/VideoCallActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 748
    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->h()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    .line 271
    iput-boolean p1, v0, Lcom/viber/voip/phone/call/k;->a:Z

    .line 273
    :cond_0
    return-void
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 665
    sget v0, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/phone/VideoCallActivity;)Lcom/viber/voip/phone/al;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 477
    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 480
    :cond_0
    return-void
.end method

.method private b(Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;)V
    .locals 1
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0}, Lcom/viber/voip/phone/al;->h()V

    .line 552
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0}, Lcom/viber/voip/phone/al;->i()V

    .line 553
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0}, Lcom/viber/voip/phone/al;->k()V

    .line 554
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0}, Lcom/viber/voip/phone/al;->l()V

    .line 556
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0}, Lcom/viber/voip/phone/al;->m()V

    .line 558
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0}, Lcom/viber/voip/phone/al;->j()V

    .line 564
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/phone/VideoCallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->n()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 120
    invoke-static {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->addEventListener(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$VideoCaptureEventListener;)V

    .line 121
    invoke-static {p0}, Lorg/webrtc/videoengine/EngineDelegate;->addEventSubscriber(Lorg/webrtc/videoengine/EngineDelegate$VideoEngineEventSubscriber;)V

    .line 123
    new-instance v0, Lcom/viber/voip/phone/ag;

    invoke-direct {v0, p0, p0}, Lcom/viber/voip/phone/ag;-><init>(Lcom/viber/voip/phone/VideoCallActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->a:Lcom/viber/voip/phone/ag;

    .line 124
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->a:Lcom/viber/voip/phone/ag;

    invoke-virtual {v0}, Lcom/viber/voip/phone/ag;->enable()V

    .line 126
    const v0, 0x7f030138

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->setContentView(I)V

    .line 128
    new-instance v0, Lcom/viber/voip/phone/al;

    const v1, 0x7f0703e9

    invoke-virtual {p0, v1}, Lcom/viber/voip/phone/VideoCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/viber/voip/phone/al;-><init>(Lcom/viber/voip/phone/VideoCallActivity;Landroid/view/View;Lcom/viber/voip/phone/ao;)V

    iput-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    .line 129
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    sget-object v1, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation0Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/al;->a(Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;)V

    .line 130
    sget-object v0, Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;->kRenderOrientation0Deg:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->b(Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;)V

    .line 132
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->f()V

    .line 161
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/phone/VideoCallActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->o()V

    return-void
.end method

.method static synthetic e(Lcom/viber/voip/phone/VideoCallActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 186
    const v0, 0x488000

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 189
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 190
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/high16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 193
    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 197
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 198
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 202
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-static {v2}, Lorg/webrtc/videoengine/ViERenderer;->CreateRemoteRenderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/phone/VideoCallActivity;->h:Landroid/view/View;

    .line 203
    iget-object v2, p0, Lcom/viber/voip/phone/VideoCallActivity;->h:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/viber/voip/phone/VideoCallActivity;->b(Landroid/view/View;)V

    .line 204
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 205
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 206
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    iget-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/al;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 207
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->h:Landroid/view/View;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 208
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->h:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViERenderer;->CreateLocalRenderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->a(Landroid/view/View;)V

    .line 211
    invoke-static {p0}, Lorg/webrtc/videoengine/ViERenderer;->addRenderEventSubscriber(Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;)V

    .line 212
    return-void
.end method

.method private g()Lcom/viber/voip/sound/ISoundService;
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/viber/voip/phone/call/k;
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->j()Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    return-object v0
.end method

.method private i()Lcom/viber/voip/phone/call/n;
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->h()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->h()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Lcom/viber/jni/PhoneControllerWrapper;
    .locals 2

    .prologue
    .line 362
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    return-object v0
.end method

.method private k()Lcom/viber/voip/phone/g;
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->j()Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->d()Lcom/viber/voip/phone/g;

    move-result-object v0

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 567
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 570
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->g()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/viber/voip/sound/ISoundService;->setSpeakerphoneOn(Z)V

    .line 574
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/viber/jni/dialer/DialerController;->startSendVideo(Ljava/lang/Object;)I

    .line 575
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/g;->c(Z)V

    .line 576
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0}, Lcom/viber/voip/phone/al;->d()V

    .line 582
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->stopSendVideo()I

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/g;->c(Z)V

    .line 592
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0}, Lcom/viber/voip/phone/al;->d()V

    .line 593
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->g:Landroid/view/View;

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 598
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 603
    new-instance v0, Lcom/viber/voip/phone/ad;

    invoke-direct {v0, p0}, Lcom/viber/voip/phone/ad;-><init>(Lcom/viber/voip/phone/VideoCallActivity;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 613
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/viber/jni/dialer/DialerController;->startRecvVideo(Ljava/lang/Object;)I

    .line 617
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/g;->d(Z)V

    .line 623
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 628
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->stopRecvVideo()I

    .line 633
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/phone/g;->d(Z)V

    .line 634
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->g()Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/viber/voip/sound/ISoundService;->setSpeakerphoneOn(Z)V

    .line 636
    new-instance v0, Lcom/viber/voip/phone/ae;

    invoke-direct {v0, p0}, Lcom/viber/voip/phone/ae;-><init>(Lcom/viber/voip/phone/VideoCallActivity;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 653
    return-void
.end method

.method private p()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 697
    sget v0, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->a(I)Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    move-result-object v0

    .line 698
    sget-object v1, Lcom/viber/voip/phone/VideoCallActivity;->c:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    if-eq v1, v0, :cond_7

    .line 699
    sget v1, Lcom/viber/voip/phone/VideoCallActivity;->e:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_4

    .line 700
    sput-object v0, Lcom/viber/voip/phone/VideoCallActivity;->c:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    .line 701
    sput v3, Lcom/viber/voip/phone/VideoCallActivity;->e:I

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "orientation changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/phone/VideoCallActivity;->c:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/phone/VideoCallActivity;->a(Ljava/lang/String;)V

    .line 704
    invoke-static {}, Lcom/viber/voip/sound/AbstractSoundService;->isVideoSupportBuiltin()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/viber/voip/sound/AbstractSoundService;->getEngineStatus()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/webrtc/videoengine/ViEVideoSupport;->isVideoCallSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 705
    sget-object v1, Lcom/viber/voip/phone/VideoCallActivity;->c:Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/webrtc/videoengine/ViERenderer;->setRenderOrientation(Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;F)V

    .line 708
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 709
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 710
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 712
    invoke-static {}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->getCurrentCaptureObject()Lorg/webrtc/videoengine/VideoCaptureAndroid;

    move-result-object v3

    .line 713
    if-eqz v3, :cond_2

    .line 714
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 716
    sget-object v4, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v3}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->getCaptureCameraFacing()Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    move-result-object v5

    if-eq v4, v5, :cond_1

    sget v4, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_0

    sget v4, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_1

    .line 717
    :cond_0
    sget v4, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    add-int/lit16 v4, v4, 0xb4

    sput v4, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    .line 725
    :cond_1
    :goto_0
    sget-object v4, Lcom/viber/voip/phone/VideoCallActivity;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    sget v5, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    invoke-virtual {v3}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->getDeviceRotationHint()I

    move-result v3

    add-int/2addr v3, v5

    rem-int/lit16 v3, v3, 0x168

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 726
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->j()Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v3

    sget-object v4, Lcom/viber/voip/phone/VideoCallActivity;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4, v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->setDeviceOrientation(III)I

    .line 730
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->i()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    .line 731
    if-eqz v1, :cond_4

    .line 732
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v1

    .line 733
    const/4 v2, 0x2

    if-eq v2, v1, :cond_3

    const/4 v2, 0x3

    if-ne v2, v1, :cond_4

    .line 734
    :cond_3
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->a(Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;)V

    .line 738
    :cond_4
    sget v0, Lcom/viber/voip/phone/VideoCallActivity;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/phone/VideoCallActivity;->e:I

    .line 742
    :goto_1
    return-void

    .line 721
    :cond_5
    sget-object v4, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->Android23:Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v3}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->getCaptureCameraFacing()Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    move-result-object v5

    if-eq v4, v5, :cond_1

    sget v4, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    if-eqz v4, :cond_6

    sget v4, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_1

    .line 722
    :cond_6
    sget v4, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    add-int/lit16 v4, v4, 0xb4

    sput v4, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    goto :goto_0

    .line 740
    :cond_7
    sput v3, Lcom/viber/voip/phone/VideoCallActivity;->e:I

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 373
    :goto_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/phone/call/k;->l()Lcom/viber/voip/a/au;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/viber/voip/a/au;->j(Z)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 374
    if-eqz v0, :cond_2

    .line 375
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->l()V

    .line 383
    :cond_0
    :goto_1
    return-void

    .line 372
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 377
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->m()V

    .line 379
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallActivity;->finish()V

    goto :goto_1
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 2
    .parameter

    .prologue
    .line 432
    if-eqz p1, :cond_1

    .line 433
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    const v1, 0x7f0c035c

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/al;->b(I)V

    .line 436
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_1

    .line 438
    iget-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v1}, Lcom/viber/voip/phone/al;->e()V

    .line 439
    iget-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->y()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/phone/al;->a(I)V

    .line 440
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/al;->a(Lcom/viber/voip/phone/call/n;)V

    .line 443
    :cond_1
    return-void
.end method

.method public a(Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;)V
    .locals 1
    .parameter

    .prologue
    .line 546
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0, p1}, Lcom/viber/voip/phone/al;->a(Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;)V

    .line 547
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/VideoCallActivity;->b(Lorg/webrtc/videoengine/ViERenderer$kRenderOrientation;)V

    .line 548
    return-void
.end method

.method public c()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 683
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 684
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 685
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 686
    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_1

    :cond_0
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_3

    :cond_1
    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    :cond_2
    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_4

    .line 690
    :cond_3
    const/4 v0, 0x0

    .line 692
    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public onCaptureAllocated(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 1
    .parameter

    .prologue
    .line 762
    const-string/jumbo v0, "onCaptureAllocated"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->a(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p1, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->addEventCallback(Lorg/webrtc/videoengine/VideoCaptureAndroid$CaptureEventCallback;)V

    .line 764
    return-void
.end method

.method public onCaptureDeleted(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 1
    .parameter

    .prologue
    .line 768
    const-string/jumbo v0, "onCaptureDeleted"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->a(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0, p1}, Lcom/viber/voip/phone/VideoCallActivity;->onStopCapture(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V

    .line 770
    invoke-virtual {p1, p0}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->removeEventCallback(Lorg/webrtc/videoengine/VideoCaptureAndroid$CaptureEventCallback;)V

    .line 771
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    sget-boolean v0, Lcom/viber/voip/dx;->d:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallActivity;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->setRequestedOrientation(I)V

    .line 170
    :cond_0
    invoke-static {}, Lcom/viber/voip/phone/c;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->e()V

    .line 174
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->d()V

    .line 176
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_initiator"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/g;->c(Z)V

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onDestroy()V

    .line 333
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->a:Lcom/viber/voip/phone/ag;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->a:Lcom/viber/voip/phone/ag;

    invoke-virtual {v0}, Lcom/viber/voip/phone/ag;->disable()V

    .line 336
    :cond_0
    invoke-static {p0}, Lorg/webrtc/videoengine/ViERenderer;->removeRenderEventSubscriber(Lorg/webrtc/videoengine/ViERenderer$ViERendererCallback;)V

    .line 337
    invoke-static {p0}, Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid;->removeEventListener(Lorg/webrtc/videoengine/VideoCaptureDeviceInfoAndroid$VideoCaptureEventListener;)V

    .line 338
    invoke-static {p0}, Lcom/viber/voip/sound/VoENativeDebugHelper;->removeMediaStatisticsListener(Lcom/viber/voip/sound/VoENativeDebugHelper$MediaStatisticsListener;)V

    .line 339
    invoke-static {p0}, Lorg/webrtc/videoengine/EngineDelegate;->removeEventSubscriber(Lorg/webrtc/videoengine/EngineDelegate$VideoEngineEventSubscriber;)V

    .line 340
    return-void
.end method

.method public onFailure(I)V
    .locals 0
    .parameter

    .prologue
    .line 845
    return-void
.end method

.method public onLocalSurfaceChanged()V
    .locals 1

    .prologue
    .line 752
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/videoengine/ViERenderer;->CreateLocalRenderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->a(Landroid/view/View;)V

    .line 753
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onPause()V

    .line 306
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->m()V

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->o()V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->k:Lcom/viber/voip/phone/ah;

    invoke-virtual {v0}, Lcom/viber/voip/phone/ah;->b()V

    .line 314
    return-void
.end method

.method public onRenderGone()V
    .locals 0

    .prologue
    .line 758
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onResume()V

    .line 279
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->h()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 280
    if-nez v0, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallActivity;->finish()V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->l:Lcom/viber/voip/phone/call/k;

    if-eq v0, v1, :cond_2

    .line 286
    iput-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->l:Lcom/viber/voip/phone/call/k;

    .line 287
    iget-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v1, v0}, Lcom/viber/voip/phone/al;->a(Lcom/viber/voip/phone/call/k;)V

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->k:Lcom/viber/voip/phone/ah;

    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->h()Lcom/viber/voip/phone/call/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/ah;->a(Lcom/viber/voip/phone/call/k;)V

    .line 291
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->k:Lcom/viber/voip/phone/ah;

    invoke-virtual {v0}, Lcom/viber/voip/phone/ah;->a()V

    .line 293
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->k:Lcom/viber/voip/phone/ah;

    invoke-virtual {v0}, Lcom/viber/voip/phone/ah;->c()V

    .line 295
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->i()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->n()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 250
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onStart()V

    .line 252
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerHoldStateListener()Lcom/viber/jni/dialer/DialerHoldStateListener;

    move-result-object v1

    new-array v2, v4, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;

    iget-object v3, p0, Lcom/viber/voip/phone/VideoCallActivity;->j:Lcom/viber/voip/phone/ai;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/viber/jni/dialer/DialerHoldStateListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 254
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerVideoListener()Lcom/viber/jni/dialer/DialerVideoListener;

    move-result-object v0

    new-array v1, v4, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerVideo;

    iget-object v2, p0, Lcom/viber/voip/phone/VideoCallActivity;->j:Lcom/viber/voip/phone/ai;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/viber/jni/dialer/DialerVideoListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 255
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0}, Lcom/viber/voip/phone/al;->a()V

    .line 257
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->l()V

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->k()Lcom/viber/voip/phone/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/g;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->n()V

    .line 264
    :cond_1
    invoke-direct {p0, v4}, Lcom/viber/voip/phone/VideoCallActivity;->a(Z)V

    .line 265
    invoke-static {}, Lcom/viber/voip/phone/i;->a()Lcom/viber/voip/phone/i;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/viber/voip/phone/i;->a(ZZ)V

    .line 266
    return-void
.end method

.method public onStartCapture(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 2
    .parameter

    .prologue
    .line 775
    const-string/jumbo v0, "onStartCapture"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->a(Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/al;->a(Z)V

    .line 777
    new-instance v0, Lcom/viber/voip/phone/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/phone/af;-><init>(Lcom/viber/voip/phone/VideoCallActivity;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 783
    return-void
.end method

.method public onStartRecvVideo()V
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 835
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStartSendVideo()V
    .locals 0

    .prologue
    .line 825
    return-void
.end method

.method public onStatisticsUpdate(Lcom/viber/jni/MediaStats;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x5a

    const/4 v6, 0x1

    .line 804
    if-nez p1, :cond_0

    .line 821
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->o:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->voiceStats:Lcom/viber/jni/MediaStats$VoiceStats;

    iget v2, v2, Lcom/viber/jni/MediaStats$VoiceStats;->rtt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v0, v0, Lcom/viber/jni/MediaStats$VideoStats;->bwEstimation:Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->q:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->bwEstimation:Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;->estimatedRecvBandwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v0, v0, Lcom/viber/jni/MediaStats$VideoStats;->bwEstimation:Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->r:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->bwEstimation:Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;->estimatedSendBandwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->p:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/viber/jni/MediaStats;->send_bitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/viber/jni/MediaStats;->recv_bitrate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v0, v0, Lcom/viber/jni/MediaStats$VideoStats;->bwUtilization:Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->bwUtilization:Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;->totalBitrateSent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v0, v0, Lcom/viber/jni/MediaStats$VideoStats;->bwUtilization:Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->t:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->bwUtilization:Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats$BandwidthUtilization;->videoBitrateSent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->voiceStats:Lcom/viber/jni/MediaStats$VoiceStats;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->u:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->voiceStats:Lcom/viber/jni/MediaStats$VoiceStats;

    iget v2, v2, Lcom/viber/jni/MediaStats$VoiceStats;->packets_lost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->discardedPacketsCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v0, v0, Lcom/viber/jni/MediaStats$VideoStats;->local:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->v:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->local:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats$RTCP;->fractionLost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->local:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats$RTCP;->cumulativeLost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->local:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats$RTCP;->jitter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->local:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats$RTCP;->rttMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 813
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v0, v0, Lcom/viber/jni/MediaStats$VideoStats;->remote:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->w:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->remote:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats$RTCP;->fractionLost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->remote:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats$RTCP;->cumulativeLost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->remote:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats$RTCP;->jitter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v2, v2, Lcom/viber/jni/MediaStats$VideoStats;->remote:Lcom/viber/jni/MediaStats$VideoStats$RTCP;

    iget v2, v2, Lcom/viber/jni/MediaStats$VideoStats$RTCP;->rttMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->m:Lcom/c/a/h;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v0, v0, Lcom/viber/jni/MediaStats$VideoStats;->bwEstimation:Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

    if-eqz v0, :cond_a

    .line 815
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->m:Lcom/c/a/h;

    new-instance v1, Lcom/c/a/e;

    iget v2, p0, Lcom/viber/voip/phone/VideoCallActivity;->x:I

    int-to-double v2, v2

    iget-object v4, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v4, v4, Lcom/viber/jni/MediaStats$VideoStats;->bwEstimation:Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

    iget v4, v4, Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;->estimatedRecvBandwidth:I

    int-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/c/a/e;-><init>(DD)V

    invoke-virtual {v0, v1, v6, v7}, Lcom/c/a/h;->a(Lcom/c/a/g;ZI)V

    .line 817
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->n:Lcom/c/a/h;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v0, v0, Lcom/viber/jni/MediaStats$VideoStats;->bwEstimation:Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

    if-eqz v0, :cond_b

    .line 818
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->n:Lcom/c/a/h;

    new-instance v1, Lcom/c/a/e;

    iget v2, p0, Lcom/viber/voip/phone/VideoCallActivity;->x:I

    int-to-double v2, v2

    iget-object v4, p1, Lcom/viber/jni/MediaStats;->videoStats:Lcom/viber/jni/MediaStats$VideoStats;

    iget-object v4, v4, Lcom/viber/jni/MediaStats$VideoStats;->bwEstimation:Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;

    iget v4, v4, Lcom/viber/jni/MediaStats$VideoStats$BandwidthEstimation;->estimatedSendBandwidth:I

    int-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/c/a/e;-><init>(DD)V

    invoke-virtual {v0, v1, v6, v7}, Lcom/c/a/h;->a(Lcom/c/a/g;ZI)V

    .line 820
    :cond_b
    iget v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->x:I

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onStop()V

    .line 320
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->j()Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/phone/VideoCallActivity;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/viber/jni/PhoneControllerWrapper;->setDeviceOrientation(III)I

    .line 321
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->j()Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerHoldStateListener()Lcom/viber/jni/dialer/DialerHoldStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->j:Lcom/viber/voip/phone/ai;

    invoke-virtual {v0, v1}, Lcom/viber/jni/dialer/DialerHoldStateListener;->removeDelegate(Ljava/lang/Object;)V

    .line 322
    invoke-direct {p0}, Lcom/viber/voip/phone/VideoCallActivity;->j()Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerVideoListener()Lcom/viber/jni/dialer/DialerVideoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/VideoCallActivity;->j:Lcom/viber/voip/phone/ai;

    invoke-virtual {v0, v1}, Lcom/viber/jni/dialer/DialerVideoListener;->removeDelegate(Ljava/lang/Object;)V

    .line 323
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0}, Lcom/viber/voip/phone/al;->b()V

    .line 325
    invoke-direct {p0, v2}, Lcom/viber/voip/phone/VideoCallActivity;->a(Z)V

    .line 326
    invoke-static {}, Lcom/viber/voip/phone/i;->a()Lcom/viber/voip/phone/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/phone/i;->a(ZZ)V

    .line 327
    return-void
.end method

.method public onStopCapture(Lorg/webrtc/videoengine/VideoCaptureAndroid;)V
    .locals 1
    .parameter

    .prologue
    .line 787
    const-string/jumbo v0, "onStopCapture"

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/VideoCallActivity;->a(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->i:Lcom/viber/voip/phone/al;

    invoke-virtual {v0}, Lcom/viber/voip/phone/al;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/viber/voip/phone/VideoCallActivity;->finish()V

    .line 800
    :cond_0
    return-void
.end method

.method public onStopRecvVideo()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->h:Landroid/view/View;

    if-nez v0, :cond_0

    .line 841
    :goto_0
    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/VideoCallActivity;->h:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStopSendVideo()V
    .locals 0

    .prologue
    .line 829
    return-void
.end method

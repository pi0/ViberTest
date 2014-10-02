.class public abstract Lcom/viber/voip/messages/ui/media/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/VideoView;

.field private final c:Landroid/widget/SeekBar;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private f:Lcom/viber/voip/messages/ui/media/am;

.field private g:Lcom/viber/voip/messages/ui/media/ao;

.field private h:Lcom/viber/voip/messages/ui/media/ap;

.field private i:Landroid/os/Handler;

.field private j:I

.field private k:I

.field private l:Landroid/net/Uri;

.field private m:Landroid/net/Uri;

.field private n:Lcom/viber/voip/messages/ui/media/an;


# direct methods
.method public constructor <init>(Landroid/widget/VideoView;Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/viber/voip/messages/ui/media/ap;->d:Lcom/viber/voip/messages/ui/media/ap;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->h:Lcom/viber/voip/messages/ui/media/ap;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/ui/media/ai;->j:I

    .line 59
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/viber/voip/messages/ui/media/ai;->k:I

    .line 186
    new-instance v0, Lcom/viber/voip/messages/ui/media/an;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/ui/media/an;-><init>(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/aj;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->n:Lcom/viber/voip/messages/ui/media/an;

    .line 69
    const-string/jumbo v0, "VideoPlayer CREATED!"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->c(Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    .line 71
    iput-object p3, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    .line 72
    iput-object p4, p0, Lcom/viber/voip/messages/ui/media/ai;->d:Landroid/widget/TextView;

    .line 73
    iput-object p5, p0, Lcom/viber/voip/messages/ui/media/ai;->e:Landroid/widget/TextView;

    .line 74
    iput-object p2, p0, Lcom/viber/voip/messages/ui/media/ai;->a:Landroid/widget/ImageView;

    .line 75
    new-instance v0, Lcom/viber/voip/messages/ui/media/am;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/ui/media/am;-><init>(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/aj;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->f:Lcom/viber/voip/messages/ui/media/am;

    .line 76
    new-instance v0, Lcom/viber/voip/messages/ui/media/ao;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/ui/media/ao;-><init>(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/aj;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->g:Lcom/viber/voip/messages/ui/media/ao;

    .line 77
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->i:Landroid/os/Handler;

    .line 78
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/viber/voip/messages/ui/media/aj;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/aj;-><init>(Lcom/viber/voip/messages/ui/media/ai;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/ai;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/viber/voip/messages/ui/media/ai;->j:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/ai;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ai;->l:Landroid/net/Uri;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.NO_INTERNET_CONNECTION_DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 312
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/ai;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ai;->m()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/ap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ap;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/ai;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/ai;->b(Z)V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/ui/media/ap;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 88
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ai;->h:Lcom/viber/voip/messages/ui/media/ap;

    .line 90
    sget-object v0, Lcom/viber/voip/messages/ui/media/al;->a:[I

    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/media/ap;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 108
    invoke-virtual {p0, v3, v2}, Lcom/viber/voip/messages/ui/media/ai;->a(ILandroid/view/animation/Animation;)V

    .line 111
    :goto_0
    return-void

    .line 95
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/messages/ui/media/ai;->a(ILandroid/view/animation/Animation;)V

    .line 97
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->a:Landroid/widget/ImageView;

    sget-object v0, Lcom/viber/voip/messages/ui/media/ap;->b:Lcom/viber/voip/messages/ui/media/ap;

    if-eq p1, v0, :cond_0

    const v0, 0x7f0200ea

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0200e7

    goto :goto_1

    .line 100
    :pswitch_1
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ai;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ai;->c()V

    .line 103
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/viber/voip/messages/ui/media/ai;->a(ILandroid/view/animation/Animation;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/ai;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/viber/voip/messages/ui/media/ai;->k:I

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->l:Landroid/net/Uri;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 236
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 237
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 238
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 239
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 241
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/viber/voip/messages/ui/media/ai;->k:I

    .line 242
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/util/hx;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/ai;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/ai;->b(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/ai;Lcom/viber/voip/messages/ui/media/ap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ap;)V

    return-void
.end method

.method private b(Lcom/viber/voip/messages/ui/media/ap;)V
    .locals 3
    .parameter

    .prologue
    .line 116
    :try_start_0
    sget-object v0, Lcom/viber/voip/messages/ui/media/al;->a:[I

    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/media/ap;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ap;)V

    .line 149
    :goto_1
    return-void

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 120
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->g:Lcom/viber/voip/messages/ui/media/ao;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePlayerEvents error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->c(Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/viber/voip/messages/ui/media/ap;->f:Lcom/viber/voip/messages/ui/media/ap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ap;)V

    goto :goto_1

    .line 123
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 125
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/util/hx;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->g:Lcom/viber/voip/messages/ui/media/ao;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->g:Lcom/viber/voip/messages/ui/media/ao;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 137
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 138
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->g:Lcom/viber/voip/messages/ui/media/ao;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->f:Lcom/viber/voip/messages/ui/media/am;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-static {p0}, Lcom/viber/voip/messages/ui/media/ai;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .locals 2
    .parameter

    .prologue
    const/16 v0, 0x8

    .line 479
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 483
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/media/ai;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->m:Landroid/net/Uri;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 520
    const/4 v0, 0x3

    const-string/jumbo v1, "VideoPlayer"

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/media/ai;)Lcom/viber/voip/messages/ui/media/ap;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->h:Lcom/viber/voip/messages/ui/media/ap;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/media/ai;)Lcom/viber/voip/messages/ui/media/am;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->f:Lcom/viber/voip/messages/ui/media/am;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/SeekBar;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/messages/ui/media/ai;)I
    .locals 2
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/viber/voip/messages/ui/media/ai;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/viber/voip/messages/ui/media/ai;->j:I

    return v0
.end method

.method static synthetic h(Lcom/viber/voip/messages/ui/media/ai;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ai;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic j(Lcom/viber/voip/messages/ui/media/ai;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/viber/voip/messages/ui/media/ai;->k:I

    return v0
.end method

.method static synthetic k(Lcom/viber/voip/messages/ui/media/ai;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 288
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    .line 290
    const-string/jumbo v0, ""

    .line 292
    sget-object v2, Lcom/viber/voip/messages/ui/media/ap;->f:Lcom/viber/voip/messages/ui/media/ap;

    invoke-direct {p0, v2}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ap;)V

    .line 294
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 295
    const v0, 0x7f0c0460

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    :cond_0
    :goto_0
    return-object v0

    .line 296
    :cond_1
    invoke-static {v1}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->getServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v2

    sget-object v3, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-eq v2, v3, :cond_3

    .line 298
    :cond_2
    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/media/ai;->a(Landroid/content/Context;)V

    .line 299
    const v0, 0x7f0c03a2

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ai;->l:Landroid/net/Uri;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ai;->l:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 301
    const v0, 0x7f0c0441

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 302
    :cond_4
    invoke-static {v4}, Lcom/viber/voip/messages/extras/image/h;->a(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 303
    const v0, 0x7f0c039b

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/viber/voip/messages/ui/media/ai;)Z
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ai;->p()Z

    move-result v0

    return v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ai;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    sget-object v0, Lcom/viber/voip/messages/ui/media/ap;->e:Lcom/viber/voip/messages/ui/media/ap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ap;)V

    .line 361
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ai;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->a(Z)V

    .line 362
    return-void

    .line 359
    :cond_0
    sget-object v0, Lcom/viber/voip/messages/ui/media/ap;->b:Lcom/viber/voip/messages/ui/media/ap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ap;)V

    goto :goto_0
.end method

.method private n()Z
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->l:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->l:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private p()Z
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->h:Lcom/viber/voip/messages/ui/media/ap;

    sget-object v1, Lcom/viber/voip/messages/ui/media/ap;->c:Lcom/viber/voip/messages/ui/media/ap;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->h:Lcom/viber/voip/messages/ui/media/ap;

    sget-object v1, Lcom/viber/voip/messages/ui/media/ap;->e:Lcom/viber/voip/messages/ui/media/ap;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->h:Lcom/viber/voip/messages/ui/media/ap;

    sget-object v1, Lcom/viber/voip/messages/ui/media/ap;->b:Lcom/viber/voip/messages/ui/media/ap;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->h:Lcom/viber/voip/messages/ui/media/ap;

    sget-object v1, Lcom/viber/voip/messages/ui/media/ap;->d:Lcom/viber/voip/messages/ui/media/ap;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(ILandroid/view/animation/Animation;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 492
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ai;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    if-eqz p2, :cond_1

    .line 498
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->d:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/viber/voip/util/hx;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->e:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/viber/voip/util/hx;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 178
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 180
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ai;->m:Landroid/net/Uri;

    .line 182
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->n:Lcom/viber/voip/messages/ui/media/an;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->n:Lcom/viber/voip/messages/ui/media/an;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method protected abstract a(Z)V
.end method

.method protected abstract b()V
.end method

.method protected abstract c()V
.end method

.method protected abstract d()V
.end method

.method protected abstract e()V
.end method

.method public f()V
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ai;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ai;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ai;->m()V

    .line 353
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ai;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    sget-object v0, Lcom/viber/voip/messages/ui/media/ap;->b:Lcom/viber/voip/messages/ui/media/ap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ap;)V

    .line 367
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ai;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->a(Z)V

    .line 369
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ai;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    sget-object v0, Lcom/viber/voip/messages/ui/media/ap;->e:Lcom/viber/voip/messages/ui/media/ap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ap;)V

    .line 374
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ai;->i()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->a(Z)V

    .line 376
    :cond_0
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->h:Lcom/viber/voip/messages/ui/media/ap;

    sget-object v1, Lcom/viber/voip/messages/ui/media/ap;->b:Lcom/viber/voip/messages/ui/media/ap;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->n:Lcom/viber/voip/messages/ui/media/an;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 472
    sget-object v0, Lcom/viber/voip/messages/ui/media/ap;->d:Lcom/viber/voip/messages/ui/media/ap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ap;)V

    .line 473
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Z)V

    .line 474
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/ai;->a(ILandroid/view/animation/Animation;)V

    .line 475
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 516
    sget-object v0, Lcom/viber/voip/messages/ui/media/ap;->g:Lcom/viber/voip/messages/ui/media/ap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->b(Lcom/viber/voip/messages/ui/media/ap;)V

    .line 517
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 248
    sget-object v0, Lcom/viber/voip/messages/ui/media/ap;->d:Lcom/viber/voip/messages/ui/media/ap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ap;)V

    .line 250
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->g:Lcom/viber/voip/messages/ui/media/ao;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 251
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 252
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/util/hx;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ai;->d()V

    .line 255
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 259
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->g:Lcom/viber/voip/messages/ui/media/ao;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 260
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->f:Lcom/viber/voip/messages/ui/media/am;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 262
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->h:Lcom/viber/voip/messages/ui/media/ap;

    sget-object v1, Lcom/viber/voip/messages/ui/media/ap;->d:Lcom/viber/voip/messages/ui/media/ap;

    if-ne v0, v1, :cond_0

    .line 284
    :goto_0
    return v4

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ai;->l()Ljava/lang/String;

    move-result-object v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msg to user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", attemptCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/messages/ui/media/ai;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ai;->c(Ljava/lang/String;)V

    .line 270
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/viber/voip/messages/ui/media/ai;->j:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ai;->n()Z

    move-result v1

    if-nez v1, :cond_2

    .line 271
    :cond_1
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_2
    const-string/jumbo v0, "onTryToReDownload"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->c(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ai;->e()V

    .line 275
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->i:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/ui/media/ak;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/ak;-><init>(Lcom/viber/voip/messages/ui/media/ai;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 317
    sget-object v0, Lcom/viber/voip/messages/ui/media/ap;->c:Lcom/viber/voip/messages/ui/media/ap;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/ai;->a(Lcom/viber/voip/messages/ui/media/ap;)V

    .line 319
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 325
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->e:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/viber/voip/util/hx;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 328
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 330
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/ai;->a()V

    .line 331
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ai;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/ai;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "seekTo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ai;->c(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ai;->b:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 339
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    return-void
.end method

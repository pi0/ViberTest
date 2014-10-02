.class Lcom/viber/voip/messages/controller/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/dk;

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/controller/dk;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/viber/voip/messages/controller/dm;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p2, p0, Lcom/viber/voip/messages/controller/dm;->b:I

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/controller/dk;ILcom/viber/voip/messages/controller/dl;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/controller/dm;-><init>(Lcom/viber/voip/messages/controller/dk;I)V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/viber/voip/messages/controller/dm;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/controller/dm;->c:I

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/controller/dm;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/dm;->a()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 98
    iput v4, p0, Lcom/viber/voip/messages/controller/dm;->c:I

    .line 99
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dm;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/dk;->a(Lcom/viber/voip/messages/controller/dk;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/controller/dm;->b:I

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dm;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/dk;->a(Lcom/viber/voip/messages/controller/dk;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/viber/voip/sound/ISoundService;->shouldVibrate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dm;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/dk;->a(Lcom/viber/voip/messages/controller/dk;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getVibratorService()Lcom/viber/voip/sound/IVibratorService;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/sound/IVibratorService;->vibrate([JI)V

    goto :goto_0

    .line 107
    :cond_2
    iget v0, p0, Lcom/viber/voip/messages/controller/dm;->b:I

    if-ne v0, v3, :cond_3

    .line 108
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dm;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/dk;->a(Lcom/viber/voip/messages/controller/dk;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    const/high16 v1, 0x7f06

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/sound/ISoundService;->playSample(IFFIIF)V

    goto :goto_0

    .line 109
    :cond_3
    iget v0, p0, Lcom/viber/voip/messages/controller/dm;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 110
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dm;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/dk;->a(Lcom/viber/voip/messages/controller/dk;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/dm;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/dk;->a(Lcom/viber/voip/messages/controller/dk;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/controller/dm;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-static {v2}, Lcom/viber/voip/messages/controller/dk;->b(Lcom/viber/voip/messages/controller/dk;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2, v4, v3}, Lcom/viber/voip/sound/ISoundService;->getRingtone(Landroid/net/Uri;ZZ)Lcom/viber/voip/sound/IRingtoneService$Ringtone;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/sound/ISoundService;->playMessageNotification(Lcom/viber/voip/sound/IRingtoneService$Ringtone;)V

    goto :goto_0

    .line 111
    :cond_4
    iget v0, p0, Lcom/viber/voip/messages/controller/dm;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 112
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dm;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/dk;->a(Lcom/viber/voip/messages/controller/dk;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/dm;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/dk;->c(Lcom/viber/voip/messages/controller/dk;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f060012

    :goto_1
    move v3, v2

    move v5, v4

    move v6, v2

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/sound/ISoundService;->playSample(IFFIIF)V

    goto :goto_0

    :cond_5
    const v1, 0x7f060011

    goto :goto_1

    .line 113
    :cond_6
    iget v0, p0, Lcom/viber/voip/messages/controller/dm;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/viber/voip/messages/controller/dm;->a:Lcom/viber/voip/messages/controller/dk;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/dk;->a(Lcom/viber/voip/messages/controller/dk;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    const v1, 0x7f060015

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/sound/ISoundService;->playSample(IFFIIF)V

    goto/16 :goto_0

    .line 105
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

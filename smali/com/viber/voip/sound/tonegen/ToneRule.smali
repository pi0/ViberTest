.class public Lcom/viber/voip/sound/tonegen/ToneRule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final _tones:Ljava/lang/String;

.field private android_tones:[I

.field private isUrgent:Z

.field private pauses:[I

.field private repeat_count:I

.field private final toneName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/viber/voip/sound/tonegen/ToneRule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/tonegen/ToneRule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I[II)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/sound/tonegen/ToneRule;-><init>(Ljava/lang/String;[I[IIZ)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[I[IIZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->isUrgent:Z

    .line 14
    iput-object p2, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->android_tones:[I

    .line 15
    iput-object p3, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->pauses:[I

    .line 16
    iput p4, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->repeat_count:I

    .line 17
    iput-object p1, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->toneName:Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    move v3, v0

    move-object v0, v1

    move v1, v3

    .line 20
    :goto_0
    if-eqz p2, :cond_1

    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_0

    const-string/jumbo v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string/jumbo v0, ", "

    goto :goto_1

    .line 22
    :cond_1
    iput-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->_tones:Ljava/lang/String;

    .line 23
    iput-boolean p5, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->isUrgent:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final getPauses()[I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->pauses:[I

    return-object v0
.end method

.method public final getRepeatCount()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->repeat_count:I

    return v0
.end method

.method public final getTonesArray()[I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->android_tones:[I

    return-object v0
.end method

.method public final isLooped()Z
    .locals 2

    .prologue
    .line 43
    const/4 v0, -0x1

    iget v1, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->repeat_count:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isUrgent()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->isUrgent:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/sound/tonegen/ToneRule;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[loop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/ToneRule;->isLooped()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; tones={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->_tones:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sound/tonegen/ToneRule;->toneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

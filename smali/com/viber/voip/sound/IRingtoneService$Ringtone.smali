.class public Lcom/viber/voip/sound/IRingtoneService$Ringtone;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "SoundService.Ringtone"


# instance fields
.field private final blockVibrateWhenSilent:Z

.field private durationMs:I

.field private endCallback:Ljava/lang/Runnable;

.field public final loop:Z

.field public final m_Uri:Landroid/net/Uri;

.field private mode:I

.field private startCallback:Ljava/lang/Runnable;

.field private stream:I

.field private tag:Ljava/lang/Object;

.field private volume:I


# direct methods
.method protected constructor <init>(Lcom/viber/voip/sound/ISoundService;Landroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;-><init>(Lcom/viber/voip/sound/ISoundService;Landroid/net/Uri;Z)V

    .line 31
    return-void
.end method

.method protected constructor <init>(Lcom/viber/voip/sound/ISoundService;Landroid/net/Uri;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/viber/voip/sound/IRingtoneService$Ringtone;-><init>(Lcom/viber/voip/sound/ISoundService;Landroid/net/Uri;ZZ)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/viber/voip/sound/ISoundService;Landroid/net/Uri;ZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->endCallback:Ljava/lang/Runnable;

    .line 14
    iput-object v1, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->startCallback:Ljava/lang/Runnable;

    .line 15
    iput v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->durationMs:I

    .line 17
    iput v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->volume:I

    .line 18
    iput v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->mode:I

    .line 20
    iput-object p2, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->m_Uri:Landroid/net/Uri;

    .line 21
    iput-boolean p3, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->loop:Z

    .line 22
    iput-object v1, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->tag:Ljava/lang/Object;

    .line 23
    iput-boolean p4, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->blockVibrateWhenSilent:Z

    .line 24
    invoke-interface {p1}, Lcom/viber/voip/sound/ISoundService;->stream_Ring()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->stream:I

    .line 25
    return-void
.end method


# virtual methods
.method protected final blockVibrateInSilentMode()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->blockVibrateWhenSilent:Z

    return v0
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->mode:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->durationMs:I

    return v0
.end method

.method public final getEndPlaybackCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->endCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getStartPlaybackCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->startCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->stream:I

    return v0
.end method

.method protected final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->volume:I

    return v0
.end method

.method public final loop()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->loop:Z

    return v0
.end method

.method public setAudioMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->mode:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->durationMs:I

    return-void
.end method

.method public setEndPlaybackCallback(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->endCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setStartPlaybackCallback(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->startCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setStreamType(I)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->stream:I

    return-void
.end method

.method protected setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->tag:Ljava/lang/Object;

    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->volume:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SoundService.Ringtone ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sound/IRingtoneService$Ringtone;->m_Uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

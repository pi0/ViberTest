.class public Lcom/viber/voip/sound/AudioFocusController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mManager:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/viber/voip/sound/AudioFocusController$1;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/AudioFocusController$1;-><init>(Lcom/viber/voip/sound/AudioFocusController;)V

    iput-object v0, p0, Lcom/viber/voip/sound/AudioFocusController;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 25
    iput-object p1, p0, Lcom/viber/voip/sound/AudioFocusController;->mManager:Landroid/media/AudioManager;

    .line 26
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/sound/AudioFocusController;->mManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/viber/voip/sound/AudioFocusController;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 40
    return-void
.end method

.method public requestAudioFocus()V
    .locals 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/sound/AudioFocusController;->mManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/viber/voip/sound/AudioFocusController;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 31
    return-void
.end method

.method public requestShortAudioFocus()V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/sound/AudioFocusController;->mManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/viber/voip/sound/AudioFocusController;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 36
    return-void
.end method

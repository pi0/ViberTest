.class public Lcom/viber/voip/sound/quirks/ModeNormalGenericSoundService;
.super Lcom/viber/voip/sound/GenericSoundService;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/viber/voip/sound/GenericSoundService;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public mode_InCall()I
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

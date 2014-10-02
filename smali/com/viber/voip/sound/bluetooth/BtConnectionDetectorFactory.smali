.class public Lcom/viber/voip/sound/bluetooth/BtConnectionDetectorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/viber/voip/sound/bluetooth/BtConnectionDetector;
    .locals 2
    .parameter

    .prologue
    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 12
    new-instance v0, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/bluetooth/Post11BtConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 14
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/bluetooth/Pre10BtConnectionDetector;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

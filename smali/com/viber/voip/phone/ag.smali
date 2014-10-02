.class public Lcom/viber/voip/phone/ag;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/VideoCallActivity;


# direct methods
.method public constructor <init>(Lcom/viber/voip/phone/VideoCallActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/viber/voip/phone/ag;->a:Lcom/viber/voip/phone/VideoCallActivity;

    .line 88
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x13b

    const/16 v1, 0x2d

    .line 97
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 101
    :cond_0
    const/16 v0, 0xe1

    if-le p1, v0, :cond_1

    if-gt p1, v2, :cond_1

    .line 102
    const/16 v0, 0x5a

    sput v0, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/phone/ag;->a:Lcom/viber/voip/phone/VideoCallActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/VideoCallActivity;->a(Lcom/viber/voip/phone/VideoCallActivity;)V

    goto :goto_0

    .line 104
    :cond_1
    if-le p1, v2, :cond_2

    if-gt p1, v1, :cond_2

    .line 105
    const/16 v0, 0xb4

    sput v0, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    goto :goto_1

    .line 107
    :cond_2
    if-le p1, v1, :cond_3

    const/16 v0, 0x87

    if-gt p1, v0, :cond_3

    .line 108
    const/16 v0, 0x10e

    sput v0, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    goto :goto_1

    .line 111
    :cond_3
    const/4 v0, 0x0

    sput v0, Lcom/viber/voip/phone/VideoCallActivity;->d:I

    goto :goto_1
.end method

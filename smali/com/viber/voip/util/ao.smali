.class public final enum Lcom/viber/voip/util/ao;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/voip/util/ao;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/viber/voip/util/ao;

.field public static final enum b:Lcom/viber/voip/util/ao;

.field private static final synthetic c:[Lcom/viber/voip/util/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/viber/voip/util/ao;

    const-string/jumbo v1, "PORTRAIT"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/util/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/ao;->a:Lcom/viber/voip/util/ao;

    new-instance v0, Lcom/viber/voip/util/ao;

    const-string/jumbo v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/viber/voip/util/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/voip/util/ao;->b:Lcom/viber/voip/util/ao;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/viber/voip/util/ao;

    sget-object v1, Lcom/viber/voip/util/ao;->a:Lcom/viber/voip/util/ao;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/voip/util/ao;->b:Lcom/viber/voip/util/ao;

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/util/ao;->c:[Lcom/viber/voip/util/ao;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/viber/voip/util/ao;
    .locals 2
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 20
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/viber/voip/util/ao;->a:Lcom/viber/voip/util/ao;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/viber/voip/util/ao;->b:Lcom/viber/voip/util/ao;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-static {p0}, Lcom/viber/voip/util/ao;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/viber/voip/util/ao;->c(Landroid/app/Activity;)I

    move-result v0

    .line 35
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 37
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 40
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 43
    :pswitch_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 46
    :pswitch_3
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    invoke-static {p0}, Lcom/viber/voip/util/ao;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 25
    sget-object v0, Lcom/viber/voip/util/ao;->a:Lcom/viber/voip/util/ao;

    invoke-static {p0}, Lcom/viber/voip/util/ao;->a(Landroid/content/Context;)Lcom/viber/voip/util/ao;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/ao;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/app/Activity;)I
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v2, 0x1

    .line 63
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x7

    if-le v1, v6, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 65
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 70
    invoke-static {}, Lcom/viber/voip/util/gl;->h()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    .line 71
    :goto_1
    const-string/jumbo v7, "blockOrientation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " h: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", w: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", rotation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",isKindle:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    if-eqz v1, :cond_2

    .line 73
    packed-switch v0, :pswitch_data_0

    move v3, v0

    .line 107
    :goto_2
    :pswitch_0
    return v3

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 70
    goto :goto_1

    :pswitch_1
    move v3, v4

    .line 79
    goto :goto_2

    :pswitch_2
    move v3, v5

    .line 82
    goto :goto_2

    :pswitch_3
    move v3, v2

    .line 84
    goto :goto_2

    .line 90
    :cond_2
    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v1, v7, :cond_3

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_4

    :cond_3
    iget v1, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v6, :cond_5

    if-eq v0, v5, :cond_4

    if-ne v0, v2, :cond_5

    .line 92
    :cond_4
    packed-switch v0, :pswitch_data_1

    :cond_5
    :goto_3
    move v3, v0

    .line 107
    goto :goto_2

    :pswitch_4
    move v0, v2

    .line 95
    goto :goto_3

    :pswitch_5
    move v0, v5

    .line 98
    goto :goto_3

    :pswitch_6
    move v0, v4

    .line 101
    goto :goto_3

    :pswitch_7
    move v0, v3

    .line 103
    goto :goto_3

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 92
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 59
    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/voip/util/ao;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/viber/voip/util/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/ao;

    return-object v0
.end method

.method public static values()[Lcom/viber/voip/util/ao;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/viber/voip/util/ao;->c:[Lcom/viber/voip/util/ao;

    invoke-virtual {v0}, [Lcom/viber/voip/util/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/util/ao;

    return-object v0
.end method

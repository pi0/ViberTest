.class public Lcom/viber/voip/backgrounds/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field private static final g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/viber/voip/backgrounds/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/backgrounds/n;->a:Ljava/lang/String;

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viber/voip/backgrounds/n;->g:[I

    return-void

    :array_0
    .array-data 0x4
        0x80t 0x7t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
        0x70t 0x4t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
        0x1ct 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 6

    .prologue
    const v3, 0x7fffffff

    const/4 v0, 0x0

    .line 49
    sget v5, Lcom/viber/voip/backgrounds/n;->c:I

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ideal resolution (portrait): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/backgrounds/n;->a(Ljava/lang/String;)V

    move v1, v0

    move v2, v3

    .line 54
    :goto_0
    sget-object v4, Lcom/viber/voip/backgrounds/n;->g:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 55
    sget-object v4, Lcom/viber/voip/backgrounds/n;->g:[I

    aget v4, v4, v0

    .line 56
    if-ge v4, v2, :cond_0

    if-lt v4, v5, :cond_0

    move v2, v4

    .line 59
    :cond_0
    if-ge v1, v4, :cond_1

    move v1, v4

    .line 54
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    if-ne v2, v3, :cond_3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ideal resolution ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") is above the maximum available resolution ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "), taking "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/n;->a(Ljava/lang/String;)V

    .line 67
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Best available resolution: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/n;->a(Ljava/lang/String;)V

    .line 68
    return v1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;)[I

    move-result-object v0

    .line 38
    const/4 v1, 0x0

    aget v1, v0, v1

    sput v1, Lcom/viber/voip/backgrounds/n;->d:I

    .line 39
    const/4 v1, 0x1

    aget v0, v0, v1

    sput v0, Lcom/viber/voip/backgrounds/n;->c:I

    .line 41
    const/high16 v0, 0x4040

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/backgrounds/n;->e:I

    .line 42
    sget v0, Lcom/viber/voip/backgrounds/n;->d:I

    div-int/lit8 v0, v0, 0x3

    sget v1, Lcom/viber/voip/backgrounds/n;->e:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/viber/voip/backgrounds/n;->f:I

    .line 44
    invoke-static {}, Lcom/viber/voip/backgrounds/n;->a()I

    move-result v0

    sput v0, Lcom/viber/voip/backgrounds/n;->b:I

    .line 45
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 78
    invoke-static {p0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    sget v0, Lcom/viber/voip/backgrounds/n;->d:I

    div-int/lit8 v0, v0, 0x3

    sget v1, Lcom/viber/voip/backgrounds/n;->e:I

    sub-int/2addr v0, v1

    .line 81
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/viber/voip/util/gl;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x5

    :goto_1
    sget v1, Lcom/viber/voip/backgrounds/n;->e:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget v0, Lcom/viber/voip/backgrounds/n;->c:I

    div-int/lit8 v0, v0, 0x5

    goto :goto_1
.end method

.class public Lcom/viber/voip/stickers/an;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:I

.field public static final c:F

.field public static final d:F

.field public static final e:F

.field public static final f:[F

.field public static final g:[F

.field public static final h:[F

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:F

.field private static p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Lcom/viber/voip/ui/a;

.field private static final r:I

.field private static s:I

.field private static t:I

.field private static u:I

.field private static final v:[I

.field private static final w:[I

.field private static final x:[I

.field private static y:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x3

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    const/4 v1, 0x2

    .line 23
    const-class v0, Lcom/viber/voip/stickers/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/an;->a:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x5

    sput v0, Lcom/viber/voip/stickers/an;->b:I

    .line 41
    const v0, 0x3e19999a

    sput v0, Lcom/viber/voip/stickers/an;->d:F

    .line 42
    const v0, 0x3cf5c28f

    sput v0, Lcom/viber/voip/stickers/an;->c:F

    .line 52
    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/viber/voip/stickers/an;->p:Landroid/util/SparseArray;

    .line 56
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    const v0, 0x3e3851ec

    sput v0, Lcom/viber/voip/stickers/an;->e:F

    .line 67
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PORT_GAP_PERCENT : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/viber/voip/stickers/an;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "LAND_GAP_PERCENT : 0.016"

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PORT_CELL_PERCENT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/viber/voip/stickers/an;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "LAND_CELL_PERCENT: 0.08"

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LIST_CELL_PERCENT: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/viber/voip/stickers/an;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 75
    new-array v0, v8, [F

    const/4 v2, 0x0

    sget v3, Lcom/viber/voip/stickers/an;->d:F

    mul-float/2addr v3, v6

    sget v4, Lcom/viber/voip/stickers/an;->c:F

    const/4 v5, 0x0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v0, v2

    sget v2, Lcom/viber/voip/stickers/an;->d:F

    mul-float/2addr v2, v7

    sget v3, Lcom/viber/voip/stickers/an;->c:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    aput v2, v0, v9

    sget v2, Lcom/viber/voip/stickers/an;->d:F

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    sget v3, Lcom/viber/voip/stickers/an;->c:F

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    aput v2, v0, v1

    sput-object v0, Lcom/viber/voip/stickers/an;->f:[F

    .line 80
    new-array v0, v8, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viber/voip/stickers/an;->g:[F

    .line 85
    new-array v0, v8, [F

    const/4 v2, 0x0

    sget v3, Lcom/viber/voip/stickers/an;->e:F

    mul-float/2addr v3, v6

    sget v4, Lcom/viber/voip/stickers/an;->c:F

    const/4 v5, 0x0

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v0, v2

    sget v2, Lcom/viber/voip/stickers/an;->e:F

    mul-float/2addr v2, v7

    sget v3, Lcom/viber/voip/stickers/an;->c:F

    mul-float/2addr v3, v6

    add-float/2addr v2, v3

    aput v2, v0, v9

    sget v2, Lcom/viber/voip/stickers/an;->e:F

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    sget v3, Lcom/viber/voip/stickers/an;->c:F

    mul-float/2addr v3, v7

    add-float/2addr v2, v3

    aput v2, v0, v1

    sput-object v0, Lcom/viber/voip/stickers/an;->h:[F

    .line 92
    invoke-static {}, Lcom/viber/voip/util/gl;->e()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    sput v0, Lcom/viber/voip/stickers/an;->r:I

    .line 110
    const/16 v0, 0x32

    sput v0, Lcom/viber/voip/stickers/an;->s:I

    .line 111
    sput v1, Lcom/viber/voip/stickers/an;->t:I

    .line 112
    sput v1, Lcom/viber/voip/stickers/an;->u:I

    .line 116
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/viber/voip/stickers/an;->v:[I

    .line 130
    new-array v0, v8, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/viber/voip/stickers/an;->w:[I

    .line 131
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/viber/voip/stickers/an;->x:[I

    return-void

    .line 44
    :cond_0
    const/16 v0, 0xa

    sput v0, Lcom/viber/voip/stickers/an;->b:I

    .line 45
    const v0, 0x3da3d70a

    sput v0, Lcom/viber/voip/stickers/an;->d:F

    .line 46
    const v0, 0x3c83126f

    sput v0, Lcom/viber/voip/stickers/an;->c:F

    goto/16 :goto_0

    .line 60
    :cond_1
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0160

    invoke-virtual {v0, v3, v2, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 62
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    sput v0, Lcom/viber/voip/stickers/an;->e:F

    goto/16 :goto_1

    .line 92
    :cond_2
    const/4 v0, 0x4

    goto :goto_2

    .line 80
    nop

    :array_0
    .array-data 0x4
        0xat 0xd7t 0xa3t 0x3dt
        0x58t 0x39t 0x34t 0x3et
        0x95t 0x43t 0x8bt 0x3et
    .end array-data

    .line 116
    :array_1
    .array-data 0x4
        0x90t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    .line 130
    :array_2
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    .line 131
    :array_3
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)F
    .locals 2
    .parameter

    .prologue
    .line 250
    sget v0, Lcom/viber/voip/stickers/an;->t:I

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(I)I

    move-result v0

    .line 251
    sget v1, Lcom/viber/voip/stickers/an;->u:I

    invoke-static {v1}, Lcom/viber/voip/stickers/an;->b(I)I

    move-result v1

    .line 253
    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    sget v1, Lcom/viber/voip/stickers/an;->s:I

    mul-int/2addr v0, v1

    .line 254
    sget v1, Lcom/viber/voip/stickers/an;->r:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 256
    invoke-static {p0}, Lcom/viber/voip/stickers/an;->b(Landroid/content/Context;)I

    move-result v1

    .line 257
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 258
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 260
    return v0
.end method

.method static a(Lcom/viber/voip/stickers/c/d;Ljava/lang/Iterable;)F
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/stickers/c/d;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "calculateThumbAxisSchrinkFactor, packageId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/viber/voip/stickers/an;->b(Landroid/content/Context;)I

    move-result v2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Memory budget for sticker thumbs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    .line 167
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    .line 168
    iget v4, v0, Lcom/viber/voip/stickers/c/a;->p:I

    iget v0, v0, Lcom/viber/voip/stickers/c/a;->q:I

    mul-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 170
    :cond_0
    sget v0, Lcom/viber/voip/stickers/an;->r:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    .line 171
    mul-int/lit8 v3, v1, 0x2

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Total memory (that would be) required for stickers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 174
    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thumb schrink factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 176
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Thumb schrink factor for one dimension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 179
    return v0
.end method

.method public static final a()I
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/viber/voip/stickers/an;->v:[I

    sget-object v1, Lcom/viber/voip/stickers/an;->v:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public static a(I)I
    .locals 2
    .parameter

    .prologue
    .line 298
    sget-object v0, Lcom/viber/voip/stickers/an;->h:[F

    add-int/lit8 v1, p0, -0x1

    aget v0, v0, v1

    sget v1, Lcom/viber/voip/stickers/an;->i:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 299
    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static a(I[I)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const v3, 0x7fffffff

    const/4 v0, 0x0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ideal resolution : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from allResolutions : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    move v1, v0

    move v2, v3

    .line 280
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 281
    aget v4, p1, v0

    .line 282
    if-ge v4, v2, :cond_0

    if-lt v4, p0, :cond_0

    move v2, v4

    .line 285
    :cond_0
    if-ge v1, v4, :cond_1

    move v1, v4

    .line 280
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_2
    if-ne v2, v3, :cond_3

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ideal resolution ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 293
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

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 294
    return v1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static a(Z)I
    .locals 1
    .parameter

    .prologue
    .line 158
    if-eqz p0, :cond_0

    sget v0, Lcom/viber/voip/stickers/an;->k:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/viber/voip/stickers/an;->j:I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/viber/voip/ui/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 138
    const-string/jumbo v0, "staticSetup"

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 139
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;)[I

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/viber/voip/stickers/an;->i:I

    .line 141
    sput-object p1, Lcom/viber/voip/stickers/an;->q:Lcom/viber/voip/ui/a;

    .line 142
    const/high16 v0, 0x4170

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/stickers/an;->n:I

    .line 144
    invoke-static {p0}, Lcom/viber/voip/stickers/an;->a(Landroid/content/Context;)F

    move-result v0

    sput v0, Lcom/viber/voip/stickers/an;->o:F

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "default axis schrink factor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/viber/voip/stickers/an;->o:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/viber/voip/stickers/an;->d()I

    move-result v0

    sput v0, Lcom/viber/voip/stickers/an;->j:I

    .line 148
    const/16 v0, 0x12c

    sput v0, Lcom/viber/voip/stickers/an;->k:I

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v1, Lcom/viber/voip/stickers/an;->w:[I

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/an;->a(I[I)I

    move-result v0

    sput v0, Lcom/viber/voip/stickers/an;->l:I

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v1, Lcom/viber/voip/stickers/an;->x:[I

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/an;->a(I[I)I

    move-result v0

    sput v0, Lcom/viber/voip/stickers/an;->m:I

    .line 155
    return-void
.end method

.method public static a(Lcom/viber/voip/stickers/c/a;III)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 209
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 210
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    .line 211
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/viber/voip/stickers/c/a;->j:I

    .line 212
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/viber/voip/stickers/c/a;->k:I

    .line 213
    iget v2, p0, Lcom/viber/voip/stickers/c/a;->j:I

    if-le v2, v6, :cond_2

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid colspan calculated!!! w/r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 215
    iput v6, p0, Lcom/viber/voip/stickers/c/a;->j:I

    .line 220
    :cond_0
    :goto_0
    iget v2, p0, Lcom/viber/voip/stickers/c/a;->k:I

    if-le v2, v5, :cond_3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid colspan calculated!!! h/r: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 222
    iput v5, p0, Lcom/viber/voip/stickers/c/a;->k:I

    .line 227
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSpansFromBitmapSize id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cells:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 228
    return-void

    .line 216
    :cond_2
    iget v2, p0, Lcom/viber/voip/stickers/c/a;->j:I

    if-nez v2, :cond_0

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "colspan is 0!!! w/r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 218
    iput v4, p0, Lcom/viber/voip/stickers/c/a;->j:I

    goto/16 :goto_0

    .line 223
    :cond_3
    iget v1, p0, Lcom/viber/voip/stickers/c/a;->k:I

    if-nez v1, :cond_1

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "colspan is 0!!! h/r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 225
    iput v4, p0, Lcom/viber/voip/stickers/c/a;->k:I

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/d;

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initThumbAxisSchrinkFactorsFromLoadedPackages packageId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " factor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->l()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 310
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->l()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 311
    sget-object v2, Lcom/viber/voip/stickers/an;->p:Landroid/util/SparseArray;

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v3

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->l()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 314
    :cond_1
    return-void
.end method

.method public static a(Lcom/viber/voip/stickers/c/e;Ljava/lang/Iterable;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/stickers/c/e;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-static {p0, p1}, Lcom/viber/voip/stickers/an;->a(Lcom/viber/voip/stickers/c/d;Ljava/lang/Iterable;)F

    move-result v1

    .line 184
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->l()F

    move-result v2

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateThumbSizes package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " thumbAxisSchrinkFactor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (unchanged)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 205
    :goto_0
    return v0

    .line 189
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateThumbSizes package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " thumbAxisSchrinkFactor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (updated)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, v1}, Lcom/viber/voip/stickers/c/e;->a(F)V

    .line 191
    sget-object v2, Lcom/viber/voip/stickers/an;->p:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    .line 197
    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->c()V

    .line 200
    iget v3, v0, Lcom/viber/voip/stickers/c/a;->r:I

    iget v0, v0, Lcom/viber/voip/stickers/c/a;->s:I

    mul-int/2addr v0, v3

    sget v3, Lcom/viber/voip/stickers/an;->r:I

    mul-int/2addr v0, v3

    .line 201
    add-int/2addr v0, v1

    move v1, v0

    .line 202
    goto :goto_1

    .line 204
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateThumbSizes package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " memory required for sticker thumbs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/viber/voip/stickers/an;->q:Lcom/viber/voip/ui/a;

    invoke-virtual {v0}, Lcom/viber/voip/ui/a;->a()I

    move-result v0

    return v0
.end method

.method public static b(I)I
    .locals 2
    .parameter

    .prologue
    .line 303
    sget-object v0, Lcom/viber/voip/stickers/an;->h:[F

    add-int/lit8 v1, p0, -0x1

    aget v0, v0, v1

    sget v1, Lcom/viber/voip/stickers/an;->i:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 304
    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 264
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    .line 266
    const/high16 v1, 0x10

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3c00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 267
    return v0
.end method

.method public static c(I)F
    .locals 1
    .parameter

    .prologue
    .line 317
    sget-object v0, Lcom/viber/voip/stickers/an;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 318
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public static c()I
    .locals 2

    .prologue
    .line 237
    sget-object v0, Lcom/viber/voip/stickers/an;->q:Lcom/viber/voip/ui/a;

    invoke-virtual {v0}, Lcom/viber/voip/ui/a;->b()I

    move-result v0

    int-to-float v0, v0

    .line 239
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    .line 240
    if-eqz v1, :cond_1

    .line 241
    sget-object v1, Lcom/viber/voip/stickers/an;->y:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 242
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/gl;->g(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lcom/viber/voip/stickers/an;->y:Ljava/lang/Float;

    .line 244
    :cond_0
    sget-object v1, Lcom/viber/voip/stickers/an;->y:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    .line 246
    :cond_1
    float-to-int v0, v0

    return v0
.end method

.method private static d()I
    .locals 4

    .prologue
    .line 271
    invoke-static {}, Lcom/viber/voip/stickers/an;->b()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/viber/voip/stickers/an;->e:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 272
    sget-object v1, Lcom/viber/voip/stickers/an;->v:[I

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/an;->a(I[I)I

    move-result v0

    return v0
.end method

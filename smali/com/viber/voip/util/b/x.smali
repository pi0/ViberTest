.class public final Lcom/viber/voip/util/b/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Landroid/graphics/Bitmap;

.field final b:Landroid/graphics/Bitmap;

.field final c:Z

.field final d:Z

.field final e:Z

.field final f:Z

.field final g:Z

.field final h:Lcom/viber/voip/util/b/l;

.field final i:Lcom/viber/voip/util/b/aa;

.field private final j:I

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/viber/voip/util/b/x;->l:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/viber/voip/util/b/z;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/z;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/x;->a:Landroid/graphics/Bitmap;

    .line 40
    invoke-static {p1}, Lcom/viber/voip/util/b/z;->b(Lcom/viber/voip/util/b/z;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/x;->b:Landroid/graphics/Bitmap;

    .line 41
    invoke-static {p1}, Lcom/viber/voip/util/b/z;->c(Lcom/viber/voip/util/b/z;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/util/b/x;->c:Z

    .line 42
    invoke-static {p1}, Lcom/viber/voip/util/b/z;->d(Lcom/viber/voip/util/b/z;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/util/b/x;->d:Z

    .line 43
    invoke-static {p1}, Lcom/viber/voip/util/b/z;->e(Lcom/viber/voip/util/b/z;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/util/b/x;->e:Z

    .line 44
    invoke-static {p1}, Lcom/viber/voip/util/b/z;->f(Lcom/viber/voip/util/b/z;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/util/b/x;->f:Z

    .line 45
    invoke-static {p1}, Lcom/viber/voip/util/b/z;->g(Lcom/viber/voip/util/b/z;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/util/b/x;->g:Z

    .line 46
    invoke-static {p1}, Lcom/viber/voip/util/b/z;->h(Lcom/viber/voip/util/b/z;)Lcom/viber/voip/util/b/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/x;->i:Lcom/viber/voip/util/b/aa;

    .line 47
    invoke-static {p1}, Lcom/viber/voip/util/b/z;->i(Lcom/viber/voip/util/b/z;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/util/b/x;->j:I

    .line 48
    invoke-static {p1}, Lcom/viber/voip/util/b/z;->j(Lcom/viber/voip/util/b/z;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/util/b/x;->k:I

    .line 49
    invoke-static {p1}, Lcom/viber/voip/util/b/z;->k(Lcom/viber/voip/util/b/z;)Lcom/viber/voip/util/b/l;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/b/x;->h:Lcom/viber/voip/util/b/l;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/util/b/z;Lcom/viber/voip/util/b/y;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/viber/voip/util/b/x;-><init>(Lcom/viber/voip/util/b/z;)V

    return-void
.end method

.method public static a()Lcom/viber/voip/util/b/x;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Lcom/viber/voip/util/b/x;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Lcom/viber/voip/util/b/b/c;

    invoke-direct {v0}, Lcom/viber/voip/util/b/b/c;-><init>()V

    .line 58
    new-instance v1, Lcom/viber/voip/util/b/b/e;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/util/b/b/e;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/b/c;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/b/c;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/util/b/b/d;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/util/b/b/d;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/util/b/b/c;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/b/c;

    .line 61
    new-instance v1, Lcom/viber/voip/util/b/z;

    invoke-direct {v1}, Lcom/viber/voip/util/b/z;-><init>()V

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->c(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/viber/voip/util/b/x;
    .locals 2
    .parameter

    .prologue
    const v1, 0x7f0202ca

    .line 100
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    invoke-virtual {v0, v1, p0}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/aa;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILcom/viber/voip/util/b/aa;Z)Lcom/viber/voip/util/b/x;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    invoke-virtual {v0, p1, p0}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/aa;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/viber/voip/util/b/z;->b(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/viber/voip/util/b/x;
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0202d9

    .line 115
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    sget-object v1, Lcom/viber/voip/util/b/aa;->a:Lcom/viber/voip/util/b/aa;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/aa;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/b/b/a;

    invoke-direct {v1}, Lcom/viber/voip/util/b/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/viber/voip/util/b/x;
    .locals 2
    .parameter

    .prologue
    .line 124
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-virtual {v0, v1, p0}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/viber/voip/util/b/x;->l:Ljava/util/Map;

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lcom/viber/voip/util/b/x;
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f02006f

    .line 131
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0, v2, p0}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Lcom/viber/voip/util/b/z;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/viber/voip/util/b/x;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/z;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 141
    iget-object v1, p0, Lcom/viber/voip/util/b/x;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/z;->b(Lcom/viber/voip/util/b/z;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 142
    iget-boolean v1, p0, Lcom/viber/voip/util/b/x;->c:Z

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/z;Z)Z

    .line 143
    iget-boolean v1, p0, Lcom/viber/voip/util/b/x;->d:Z

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/z;->b(Lcom/viber/voip/util/b/z;Z)Z

    .line 144
    iget-boolean v1, p0, Lcom/viber/voip/util/b/x;->f:Z

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/z;->c(Lcom/viber/voip/util/b/z;Z)Z

    .line 145
    iget-boolean v1, p0, Lcom/viber/voip/util/b/x;->e:Z

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/z;->d(Lcom/viber/voip/util/b/z;Z)Z

    .line 146
    iget-object v1, p0, Lcom/viber/voip/util/b/x;->i:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/z;Lcom/viber/voip/util/b/aa;)Lcom/viber/voip/util/b/aa;

    .line 147
    iget v1, p0, Lcom/viber/voip/util/b/x;->j:I

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/z;I)I

    .line 148
    iget v1, p0, Lcom/viber/voip/util/b/x;->k:I

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/z;->b(Lcom/viber/voip/util/b/z;I)I

    .line 149
    iget-object v1, p0, Lcom/viber/voip/util/b/x;->h:Lcom/viber/voip/util/b/l;

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/z;Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/l;

    .line 150
    return-object v0
.end method

.method e(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/viber/voip/util/b/y;->a:[I

    iget-object v2, p0, Lcom/viber/voip/util/b/x;->i:Lcom/viber/voip/util/b/aa;

    invoke-virtual {v2}, Lcom/viber/voip/util/b/aa;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 164
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 157
    :pswitch_0
    const v1, 0x7f0a0228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 159
    :pswitch_1
    const v1, 0x7f0a0229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 161
    :pswitch_2
    iget v0, p0, Lcom/viber/voip/util/b/x;->j:I

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method f(Landroid/content/Context;)I
    .locals 3
    .parameter

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/viber/voip/util/b/y;->a:[I

    iget-object v2, p0, Lcom/viber/voip/util/b/x;->i:Lcom/viber/voip/util/b/aa;

    invoke-virtual {v2}, Lcom/viber/voip/util/b/aa;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 179
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 172
    :pswitch_0
    const v1, 0x7f0a0228

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 174
    :pswitch_1
    const v1, 0x7f0a0229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 176
    :pswitch_2
    iget v0, p0, Lcom/viber/voip/util/b/x;->k:I

    goto :goto_0

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class public Lcom/viber/voip/stickers/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/viber/voip/stickers/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final y:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/io/File;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:I

.field private L:Z

.field private M:Z

.field public b:I

.field public c:Lcom/viber/voip/stickers/c/c;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const-class v0, Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/c/a;->a:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/viber/voip/stickers/an;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/c/a;->y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 110
    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    move v7, v2

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/stickers/c/a;-><init>(IIIIIZZI)V

    .line 111
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string/jumbo v0, ".png"

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->A:Ljava/lang/String;

    .line 126
    iput p7, p0, Lcom/viber/voip/stickers/c/a;->K:I

    .line 127
    invoke-direct/range {p0 .. p6}, Lcom/viber/voip/stickers/c/a;->a(IIIIII)V

    .line 128
    return-void
.end method

.method public constructor <init>(IIIIIZZI)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/stickers/c/a;-><init>(IIIIIZZIZ)V

    .line 115
    return-void
.end method

.method public constructor <init>(IIIIIZZIZ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string/jumbo v1, ".png"

    iput-object v1, p0, Lcom/viber/voip/stickers/c/a;->A:Ljava/lang/String;

    .line 119
    invoke-virtual {p0, p6}, Lcom/viber/voip/stickers/c/a;->c(Z)V

    .line 120
    invoke-virtual {p0, p7}, Lcom/viber/voip/stickers/c/a;->d(Z)V

    .line 121
    move/from16 v0, p9

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/c/a;->b(Z)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p8

    .line 122
    invoke-direct/range {v1 .. v7}, Lcom/viber/voip/stickers/c/a;->a(IIIIII)V

    .line 123
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 414
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 417
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%08d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 418
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 419
    return-object v1
.end method

.method private a(II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "scaled_unknown_frame_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->B:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/stickers/c/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_scaled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(IIIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    .line 131
    iput p1, p0, Lcom/viber/voip/stickers/c/a;->b:I

    .line 132
    invoke-static {p1}, Lcom/viber/voip/stickers/c/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/stickers/c/a;->z:Ljava/lang/String;

    .line 134
    iput p2, p0, Lcom/viber/voip/stickers/c/a;->d:I

    .line 135
    iput p3, p0, Lcom/viber/voip/stickers/c/a;->e:I

    .line 137
    iput p6, p0, Lcom/viber/voip/stickers/c/a;->t:I

    .line 139
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p4, :cond_0

    move p5, v0

    move p4, v0

    .line 144
    :cond_0
    iput p4, p0, Lcom/viber/voip/stickers/c/a;->j:I

    .line 145
    iput p5, p0, Lcom/viber/voip/stickers/c/a;->k:I

    .line 147
    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_1

    .line 148
    sget-object v0, Lcom/viber/voip/stickers/c/c;->a:Lcom/viber/voip/stickers/c/c;

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->c:Lcom/viber/voip/stickers/c/c;

    .line 155
    :goto_0
    invoke-static {p1}, Lcom/viber/voip/stickers/b/h;->d(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/c/a;->C:I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->C:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->D:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->D:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->B:Ljava/io/File;

    .line 159
    invoke-direct {p0}, Lcom/viber/voip/stickers/c/a;->m()V

    .line 161
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->b()V

    .line 162
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->c()V

    .line 163
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->h()V

    .line 164
    return-void

    .line 149
    :cond_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_2

    .line 150
    sget-object v0, Lcom/viber/voip/stickers/c/c;->b:Lcom/viber/voip/stickers/c/c;

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->c:Lcom/viber/voip/stickers/c/c;

    goto :goto_0

    .line 152
    :cond_2
    sget-object v0, Lcom/viber/voip/stickers/c/c;->c:Lcom/viber/voip/stickers/c/c;

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->c:Lcom/viber/voip/stickers/c/c;

    goto :goto_0
.end method

.method public static a(Lcom/viber/voip/stickers/ba;)V
    .locals 3
    .parameter

    .prologue
    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 443
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/stickers/c/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method private b(II)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "scaled_unknown_thumb_frame_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ".svg"

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->A:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stickers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    .line 179
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stickers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->v:Ljava/lang/String;

    .line 190
    :goto_2
    return-void

    .line 171
    :cond_0
    const-string/jumbo v0, ".png"

    goto :goto_0

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/stickers/c/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_orig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    goto :goto_1

    .line 182
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/stickers/c/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_orig_frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->v:Ljava/lang/String;

    goto :goto_2

    .line 185
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/stickers/c/a;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_orig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    .line 186
    const-string/jumbo v0, "stickers/unknown_frame.png"

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->v:Ljava/lang/String;

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;)I
    .locals 2
    .parameter

    .prologue
    .line 424
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->b:I

    iget v1, p1, Lcom/viber/voip/stickers/c/a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(ZZLcom/viber/voip/stickers/ba;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    sget-object v0, Lcom/viber/voip/stickers/c/b;->a:[I

    invoke-virtual {p3}, Lcom/viber/voip/stickers/ba;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 390
    invoke-static {p3}, Lcom/viber/voip/stickers/c/a;->a(Lcom/viber/voip/stickers/ba;)V

    .line 392
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 382
    :pswitch_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->F:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->E:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->H:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->G:Ljava/lang/String;

    goto :goto_0

    .line 386
    :pswitch_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->J:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->I:Ljava/lang/String;

    goto :goto_0

    .line 388
    :pswitch_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->x:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->w:Ljava/lang/String;

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a()V
    .locals 5

    .prologue
    .line 193
    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->e()Lcom/viber/voip/stickers/bb;

    move-result-object v0

    .line 196
    iget-object v2, p0, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/viber/voip/stickers/bb;->a(Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;

    move-result-object v2

    .line 198
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/viber/voip/stickers/bb;->a(Lcom/viber/voip/stickers/f/a;)[I

    move-result-object v2

    .line 199
    if-eqz v2, :cond_0

    .line 200
    new-instance v0, Lcom/viber/voip/stickers/b/n;

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-direct {v0, v3, v2}, Lcom/viber/voip/stickers/b/n;-><init>(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    if-eqz v0, :cond_3

    .line 216
    invoke-virtual {v0}, Lcom/viber/voip/stickers/b/n;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/viber/voip/stickers/b/n;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v2

    invoke-static {v2}, Lcom/viber/voip/stickers/an;->a(Z)I

    move-result v2

    invoke-static {p0, v1, v0, v2}, Lcom/viber/voip/stickers/an;->a(Lcom/viber/voip/stickers/c/a;III)V

    .line 218
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->b()V

    .line 219
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->c()V

    .line 224
    :goto_1
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 208
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v0, :cond_2

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v0, :cond_2

    .line 213
    :cond_2
    new-instance v0, Lcom/viber/voip/stickers/b/n;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {v0, v2, v1}, Lcom/viber/voip/stickers/b/n;-><init>(II)V

    goto :goto_0

    .line 221
    :cond_3
    const-string/jumbo v0, "error loading bitmap size, image may be corrupted, deleting it"

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/c/a;->a(Ljava/lang/String;)V

    .line 222
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method public a(Lcom/viber/voip/util/bi;)V
    .locals 1
    .parameter

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/viber/voip/util/bi;->a(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/viber/voip/util/bi;->a(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->E:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/viber/voip/util/bi;->a(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/viber/voip/util/bi;->a(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/viber/voip/util/bi;->a(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/viber/voip/util/bi;->a(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/viber/voip/util/bi;->a(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/viber/voip/util/bi;->a(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/viber/voip/util/bi;->a(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/viber/voip/util/bi;->a(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/viber/voip/stickers/c/a;->M:Z

    .line 278
    return-void
.end method

.method public b()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f00

    .line 227
    sget-object v0, Lcom/viber/voip/stickers/an;->f:[F

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->j:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    invoke-static {}, Lcom/viber/voip/stickers/an;->b()I

    move-result v1

    sget v2, Lcom/viber/voip/stickers/an;->n:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 228
    sget-object v1, Lcom/viber/voip/stickers/an;->f:[F

    iget v2, p0, Lcom/viber/voip/stickers/c/a;->k:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-static {}, Lcom/viber/voip/stickers/an;->b()I

    move-result v2

    sget v3, Lcom/viber/voip/stickers/an;->n:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 229
    sget-object v2, Lcom/viber/voip/stickers/an;->g:[F

    iget v3, p0, Lcom/viber/voip/stickers/c/a;->j:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-static {}, Lcom/viber/voip/stickers/an;->c()I

    move-result v3

    sget v4, Lcom/viber/voip/stickers/an;->n:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 230
    sget-object v3, Lcom/viber/voip/stickers/an;->g:[F

    iget v4, p0, Lcom/viber/voip/stickers/c/a;->k:I

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    invoke-static {}, Lcom/viber/voip/stickers/an;->c()I

    move-result v4

    sget v5, Lcom/viber/voip/stickers/an;->n:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 232
    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/stickers/c/a;->l:I

    .line 233
    add-float v0, v1, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/stickers/c/a;->m:I

    .line 234
    add-float v0, v2, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/stickers/c/a;->n:I

    .line 235
    add-float v0, v3, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/stickers/c/a;->o:I

    .line 236
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->j:I

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->a(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/c/a;->p:I

    .line 237
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->k:I

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->b(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/c/a;->q:I

    .line 239
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string/jumbo v0, ""

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->l:I

    iget v2, p0, Lcom/viber/voip/stickers/c/a;->m:I

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/stickers/c/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->E:Ljava/lang/String;

    .line 241
    const-string/jumbo v0, "_frame"

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->l:I

    iget v2, p0, Lcom/viber/voip/stickers/c/a;->m:I

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/stickers/c/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->F:Ljava/lang/String;

    .line 242
    const-string/jumbo v0, ""

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->n:I

    iget v2, p0, Lcom/viber/voip/stickers/c/a;->o:I

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/stickers/c/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->G:Ljava/lang/String;

    .line 243
    const-string/jumbo v0, "_frame"

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->n:I

    iget v2, p0, Lcom/viber/voip/stickers/c/a;->o:I

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/stickers/c/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->H:Ljava/lang/String;

    .line 246
    :cond_0
    const-string/jumbo v0, ""

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->p:I

    iget v2, p0, Lcom/viber/voip/stickers/c/a;->q:I

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/stickers/c/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->I:Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    const-string/jumbo v0, "_frame"

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->p:I

    iget v2, p0, Lcom/viber/voip/stickers/c/a;->q:I

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/stickers/c/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->J:Ljava/lang/String;

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_1
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->p:I

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->q:I

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/stickers/c/a;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->J:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 354
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->K:I

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/viber/voip/util/bk;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/c/a;->K:I

    .line 355
    invoke-direct {p0}, Lcom/viber/voip/stickers/c/a;->m()V

    .line 357
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 255
    sget v0, Lcom/viber/voip/stickers/an;->o:F

    .line 256
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->t:I

    invoke-static {v0}, Lcom/viber/voip/stickers/an;->c(I)F

    move-result v0

    .line 258
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 259
    sget v0, Lcom/viber/voip/stickers/an;->o:F

    .line 263
    :cond_0
    iget v1, p0, Lcom/viber/voip/stickers/c/a;->p:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/viber/voip/stickers/c/a;->r:I

    .line 264
    iget v1, p0, Lcom/viber/voip/stickers/c/a;->q:I

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/stickers/c/a;->s:I

    .line 265
    const-string/jumbo v0, "_thumb"

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->r:I

    iget v2, p0, Lcom/viber/voip/stickers/c/a;->s:I

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/stickers/c/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->w:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    const-string/jumbo v0, "_thumb_frame"

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->r:I

    iget v2, p0, Lcom/viber/voip/stickers/c/a;->s:I

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/stickers/c/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->x:Ljava/lang/String;

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_1
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->r:I

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->s:I

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/stickers/c/a;->b(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/c/a;->x:Ljava/lang/String;

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 368
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->K:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/viber/voip/util/bk;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/c/a;->K:I

    .line 369
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    check-cast p1, Lcom/viber/voip/stickers/c/a;

    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/c/a;->a(Lcom/viber/voip/stickers/c/a;)I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 376
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->K:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/viber/voip/util/bk;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/c/a;->K:I

    .line 377
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/viber/voip/stickers/c/a;->M:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->t:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 311
    if-ne p0, p1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 313
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 314
    goto :goto_0

    .line 315
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 316
    goto :goto_0

    .line 317
    :cond_3
    check-cast p1, Lcom/viber/voip/stickers/c/a;

    .line 318
    iget v2, p0, Lcom/viber/voip/stickers/c/a;->b:I

    iget v3, p1, Lcom/viber/voip/stickers/c/a;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 319
    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/viber/voip/stickers/c/a;->B:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 307
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/viber/voip/stickers/c/a;->L:Z

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/stickers/c/a;->L:Z

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/stickers/c/a;->L:Z

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 325
    .line 327
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->b:I

    add-int/lit8 v0, v0, 0x1f

    .line 328
    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->K:I

    return v0
.end method

.method public j()Z
    .locals 4

    .prologue
    .line 360
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->K:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 364
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->K:I

    new-array v1, v3, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 4

    .prologue
    .line 372
    iget v0, p0, Lcom/viber/voip/stickers/c/a;->K:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sticker{ id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", origPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/c/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/stickers/c/a;->L:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", onBoard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/a;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", colSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rowSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", genericRowPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", genericColPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

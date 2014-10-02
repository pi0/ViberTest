.class public final Lcom/viber/voip/util/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/viber/voip/util/b/m;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lcom/viber/voip/util/b/m;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/viber/voip/util/b/r;->a:Lcom/viber/voip/util/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    iput-object p2, p0, Lcom/viber/voip/util/b/r;->b:Ljava/lang/String;

    .line 738
    iput-wide p3, p0, Lcom/viber/voip/util/b/r;->c:J

    .line 739
    iput-object p5, p0, Lcom/viber/voip/util/b/r;->d:[Ljava/io/InputStream;

    .line 740
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/util/b/m;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/viber/voip/util/b/n;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 731
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/util/b/r;-><init>(Lcom/viber/voip/util/b/m;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 1
    .parameter

    .prologue
    .line 755
    iget-object v0, p0, Lcom/viber/voip/util/b/r;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 766
    iget-object v1, p0, Lcom/viber/voip/util/b/r;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 767
    invoke-static {v3}, Lcom/viber/voip/util/b/m;->a(Ljava/io/Closeable;)V

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 769
    :cond_0
    return-void
.end method

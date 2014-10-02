.class public final Lcom/viber/voip/util/am;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z

.field static final synthetic d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12
    const-class v0, Lcom/viber/voip/util/am;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/util/am;->d:Z

    .line 13
    sput-boolean v1, Lcom/viber/voip/util/am;->a:Z

    .line 14
    sput-boolean v1, Lcom/viber/voip/util/am;->b:Z

    .line 15
    sput-boolean v1, Lcom/viber/voip/util/am;->c:Z

    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v0, Lcom/viber/voip/util/am;->d:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/InputStream;II)[B
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    new-array v0, p1, [B

    .line 24
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 26
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 27
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 28
    new-array v0, p1, [B

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.class Lcom/viber/voip/phone/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/c;

.field private b:J

.field private c:I

.field private d:[B

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method private constructor <init>(Lcom/viber/voip/phone/c;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/viber/voip/phone/f;->a:Lcom/viber/voip/phone/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/phone/c;Lcom/viber/voip/phone/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/f;-><init>(Lcom/viber/voip/phone/c;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/phone/f;)I
    .locals 1
    .parameter

    .prologue
    .line 513
    iget v0, p0, Lcom/viber/voip/phone/f;->c:I

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/phone/f;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    iput p1, p0, Lcom/viber/voip/phone/f;->c:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/phone/f;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    iput-wide p1, p0, Lcom/viber/voip/phone/f;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/viber/voip/phone/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/viber/voip/phone/f;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/phone/f;[B)[B
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/viber/voip/phone/f;->d:[B

    return-object p1
.end method

.method static synthetic b(Lcom/viber/voip/phone/f;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 513
    iput p1, p0, Lcom/viber/voip/phone/f;->f:I

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/phone/f;)[B
    .locals 1
    .parameter

    .prologue
    .line 513
    iget-object v0, p0, Lcom/viber/voip/phone/f;->d:[B

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/phone/f;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 513
    iget-object v0, p0, Lcom/viber/voip/phone/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/phone/f;)I
    .locals 1
    .parameter

    .prologue
    .line 513
    iget v0, p0, Lcom/viber/voip/phone/f;->f:I

    return v0
.end method

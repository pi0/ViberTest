.class Lcom/viber/voip/messages/controller/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:I

.field final synthetic c:Lcom/viber/voip/messages/controller/r;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/controller/r;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/viber/voip/messages/controller/v;->c:Lcom/viber/voip/messages/controller/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-wide p2, p0, Lcom/viber/voip/messages/controller/v;->a:J

    .line 255
    iput p4, p0, Lcom/viber/voip/messages/controller/v;->b:I

    .line 256
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/controller/r;JILcom/viber/voip/messages/controller/s;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/controller/v;-><init>(Lcom/viber/voip/messages/controller/r;JI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 265
    if-nez p1, :cond_0

    move v0, v1

    .line 274
    :goto_0
    return v0

    .line 267
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_1

    move v0, v1

    .line 268
    goto :goto_0

    .line 269
    :cond_1
    iget-wide v2, p0, Lcom/viber/voip/messages/controller/v;->a:J

    move-object v0, p1

    check-cast v0, Lcom/viber/voip/messages/controller/v;

    iget-wide v4, v0, Lcom/viber/voip/messages/controller/v;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    move v0, v1

    .line 270
    goto :goto_0

    .line 271
    :cond_2
    iget v0, p0, Lcom/viber/voip/messages/controller/v;->b:I

    check-cast p1, Lcom/viber/voip/messages/controller/v;

    iget v2, p1, Lcom/viber/voip/messages/controller/v;->b:I

    if-eq v0, v2, :cond_3

    move v0, v1

    .line 272
    goto :goto_0

    .line 274
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/viber/voip/messages/controller/v;->a:J

    const/16 v2, 0x10

    shl-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/viber/voip/messages/controller/v;->b:I

    xor-int/2addr v0, v1

    return v0
.end method

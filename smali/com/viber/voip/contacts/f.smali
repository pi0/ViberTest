.class public Lcom/viber/voip/contacts/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/a;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/b;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/b;)V
    .locals 1
    .parameter

    .prologue
    .line 289
    iput-object p1, p0, Lcom/viber/voip/contacts/f;->a:Lcom/viber/voip/contacts/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/contacts/f;->d:I

    return-void
.end method

.method private a(J)I
    .locals 3
    .parameter

    .prologue
    .line 328
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 329
    iget v0, p0, Lcom/viber/voip/contacts/f;->d:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/f;->c(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 330
    iget v0, p0, Lcom/viber/voip/contacts/f;->d:I

    .line 341
    :goto_0
    return v0

    .line 333
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/viber/voip/contacts/f;->c:I

    if-ge v0, v1, :cond_2

    .line 334
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/f;->c(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 335
    iput v0, p0, Lcom/viber/voip/contacts/f;->d:I

    .line 336
    iget v0, p0, Lcom/viber/voip/contacts/f;->d:I

    goto :goto_0

    .line 333
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 340
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/contacts/f;->d:I

    .line 341
    iget v0, p0, Lcom/viber/voip/contacts/f;->d:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/f;)I
    .locals 1
    .parameter

    .prologue
    .line 289
    iget v0, p0, Lcom/viber/voip/contacts/f;->b:I

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/f;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 289
    iput p1, p0, Lcom/viber/voip/contacts/f;->c:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/f;J)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 289
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/f;->a(J)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 345
    iput v0, p0, Lcom/viber/voip/contacts/f;->b:I

    .line 346
    iput v0, p0, Lcom/viber/voip/contacts/f;->c:I

    .line 347
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/contacts/f;)V
    .locals 0
    .parameter

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/viber/voip/contacts/f;->a()V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/contacts/f;)I
    .locals 2
    .parameter

    .prologue
    .line 289
    iget v0, p0, Lcom/viber/voip/contacts/f;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/viber/voip/contacts/f;->c:I

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/contacts/f;)I
    .locals 2
    .parameter

    .prologue
    .line 289
    iget v0, p0, Lcom/viber/voip/contacts/f;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/viber/voip/contacts/f;->b:I

    return v0
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/f;->b(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/viber/voip/contacts/b/e;
    .locals 2
    .parameter

    .prologue
    .line 296
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/viber/voip/contacts/f;->c:I

    if-ge p1, v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/viber/voip/contacts/f;->a:Lcom/viber/voip/contacts/b;

    iget v1, p0, Lcom/viber/voip/contacts/f;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b;->b(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)J
    .locals 2
    .parameter

    .prologue
    .line 310
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/viber/voip/contacts/f;->c:I

    if-ge p1, v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/viber/voip/contacts/f;->a:Lcom/viber/voip/contacts/b;

    iget v1, p0, Lcom/viber/voip/contacts/f;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b;->a_(I)J

    move-result-wide v0

    .line 313
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public c_()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/viber/voip/contacts/f;->a:Lcom/viber/voip/contacts/b;

    invoke-static {v0}, Lcom/viber/voip/contacts/b;->a(Lcom/viber/voip/contacts/b;)I

    move-result v0

    return v0
.end method

.method public d_()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/viber/voip/contacts/f;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->d_()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/viber/voip/contacts/f;->c:I

    return v0
.end method

.class public Lcom/viber/voip/backgrounds/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/backgrounds/q;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/viber/voip/backgrounds/o;->a:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/backgrounds/o;->b:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/backgrounds/q;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/backgrounds/o;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/backgrounds/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    iput-object p1, p0, Lcom/viber/voip/backgrounds/o;->b:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    iget v0, p0, Lcom/viber/voip/backgrounds/o;->c:I

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/backgrounds/o;->c:I

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget v0, p0, Lcom/viber/voip/backgrounds/o;->c:I

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->b(II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/backgrounds/o;->c:I

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget v0, p0, Lcom/viber/voip/backgrounds/o;->c:I

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/backgrounds/o;->c:I

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget v0, p0, Lcom/viber/voip/backgrounds/o;->c:I

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->b(II)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/backgrounds/o;->c:I

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 39
    iget v0, p0, Lcom/viber/voip/backgrounds/o;->c:I

    new-array v1, v3, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 4

    .prologue
    .line 43
    iget v0, p0, Lcom/viber/voip/backgrounds/o;->c:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

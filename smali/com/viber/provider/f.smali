.class public abstract Lcom/viber/provider/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/orm/entity/Entity;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Lcom/viber/provider/a;


# direct methods
.method public constructor <init>(ILcom/viber/provider/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/viber/provider/f;->a:I

    .line 12
    iput-object p2, p0, Lcom/viber/provider/f;->b:Lcom/viber/provider/a;

    .line 13
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 16
    iget-object v0, p0, Lcom/viber/provider/f;->b:Lcom/viber/provider/a;

    invoke-interface {v0}, Lcom/viber/provider/a;->getCount()I

    move-result v0

    iget v1, p0, Lcom/viber/provider/f;->a:I

    div-int v1, v0, v1

    iget-object v0, p0, Lcom/viber/provider/f;->b:Lcom/viber/provider/a;

    invoke-interface {v0}, Lcom/viber/provider/a;->getCount()I

    move-result v0

    iget v2, p0, Lcom/viber/provider/f;->a:I

    rem-int/2addr v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/Object;)Lcom/viber/voip/messages/orm/entity/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public a(I)[Lcom/viber/voip/messages/orm/entity/Entity;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 20
    iget v0, p0, Lcom/viber/provider/f;->a:I

    invoke-virtual {p0, v0}, Lcom/viber/provider/f;->b(I)[Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v2

    .line 21
    iget v0, p0, Lcom/viber/provider/f;->a:I

    mul-int v1, p1, v0

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/viber/provider/f;->b:Lcom/viber/provider/a;

    invoke-interface {v3}, Lcom/viber/provider/a;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 22
    iget-object v3, p0, Lcom/viber/provider/f;->b:Lcom/viber/provider/a;

    invoke-interface {v3, v1}, Lcom/viber/provider/a;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/viber/provider/f;->a(Ljava/lang/Object;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v3

    aput-object v3, v2, v0

    .line 21
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    return-object v2
.end method

.method protected abstract b(I)[Lcom/viber/voip/messages/orm/entity/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation
.end method

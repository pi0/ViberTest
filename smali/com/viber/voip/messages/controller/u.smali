.class public Lcom/viber/voip/messages/controller/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/r;

.field private b:I

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/controller/r;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/viber/voip/messages/controller/u;->a:Lcom/viber/voip/messages/controller/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/controller/u;->c:I

    .line 326
    iput p3, p0, Lcom/viber/voip/messages/controller/u;->c:I

    .line 327
    iput p2, p0, Lcom/viber/voip/messages/controller/u;->b:I

    .line 328
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/viber/voip/messages/controller/u;->b:I

    return v0
.end method

.method public a(ILjava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 335
    if-eq p1, v0, :cond_1

    .line 336
    iget-object v1, p0, Lcom/viber/voip/messages/controller/u;->d:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 337
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/viber/voip/messages/controller/u;->d:Ljava/util/Map;

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/controller/u;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_1
    iget v1, p0, Lcom/viber/voip/messages/controller/u;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/viber/voip/messages/controller/u;->c:I

    .line 342
    iget v1, p0, Lcom/viber/voip/messages/controller/u;->c:I

    if-gtz v1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lcom/viber/voip/messages/controller/u;->d:Ljava/util/Map;

    return-object v0
.end method

.class Lcom/viber/voip/messages/adapters/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Lcom/viber/voip/messages/adapters/v;

.field b:Lcom/viber/voip/messages/adapters/z;

.field c:Lcom/viber/voip/stickers/p;

.field final synthetic d:Lcom/viber/voip/messages/adapters/q;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/adapters/q;Lcom/viber/voip/stickers/p;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/t;->d:Lcom/viber/voip/messages/adapters/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p2, p0, Lcom/viber/voip/messages/adapters/t;->c:Lcom/viber/voip/stickers/p;

    .line 277
    iget-object v1, p2, Lcom/viber/voip/stickers/p;->a:[Lcom/viber/voip/stickers/c/a;

    .line 278
    array-length v0, v1

    new-array v0, v0, [Lcom/viber/voip/messages/adapters/v;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/t;->a:[Lcom/viber/voip/messages/adapters/v;

    .line 279
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 280
    aget-object v2, v1, v0

    .line 281
    new-instance v3, Lcom/viber/voip/messages/adapters/v;

    invoke-direct {v3, p1, v2}, Lcom/viber/voip/messages/adapters/v;-><init>(Lcom/viber/voip/messages/adapters/q;Lcom/viber/voip/stickers/c/a;)V

    .line 282
    iget-object v4, p0, Lcom/viber/voip/messages/adapters/t;->a:[Lcom/viber/voip/messages/adapters/v;

    aput-object v3, v4, v0

    .line 283
    invoke-static {p1}, Lcom/viber/voip/messages/adapters/q;->e(Lcom/viber/voip/messages/adapters/q;)Landroid/util/SparseArray;

    move-result-object v4

    iget v2, v2, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    return-void
.end method

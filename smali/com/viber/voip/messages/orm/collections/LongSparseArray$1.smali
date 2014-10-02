.class Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private currentPos:I

.field final synthetic this$0:Lcom/viber/voip/messages/orm/collections/LongSparseArray;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/orm/collections/LongSparseArray;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;->this$0:Lcom/viber/voip/messages/orm/collections/LongSparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 391
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;->this$0:Lcom/viber/voip/messages/orm/collections/LongSparseArray;

    #getter for: Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->access$000(Lcom/viber/voip/messages/orm/collections/LongSparseArray;)[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;->currentPos:I

    if-le v0, v1, :cond_1

    .line 392
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;->this$0:Lcom/viber/voip/messages/orm/collections/LongSparseArray;

    #getter for: Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->access$000(Lcom/viber/voip/messages/orm/collections/LongSparseArray;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;->currentPos:I

    aget-object v0, v0, v1

    .line 393
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->access$100()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 394
    const/4 v0, 0x1

    .line 398
    :goto_1
    return v0

    .line 396
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;->currentPos:I

    goto :goto_0

    .line 398
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;->this$0:Lcom/viber/voip/messages/orm/collections/LongSparseArray;

    #getter for: Lcom/viber/voip/messages/orm/collections/LongSparseArray;->mValues:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/viber/voip/messages/orm/collections/LongSparseArray;->access$000(Lcom/viber/voip/messages/orm/collections/LongSparseArray;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;->currentPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/viber/voip/messages/orm/collections/LongSparseArray$1;->currentPos:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

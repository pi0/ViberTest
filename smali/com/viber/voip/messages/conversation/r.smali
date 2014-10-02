.class public Lcom/viber/voip/messages/conversation/r;
.super Lcom/viber/voip/messages/conversation/ah;
.source "SourceFile"


# instance fields
.field private h:I

.field private k:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/conversation/ah;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    .line 25
    iput p5, p0, Lcom/viber/voip/messages/conversation/r;->h:I

    .line 26
    return-void
.end method

.method private n()Landroid/util/SparseArray;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 75
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 76
    const/4 v3, -0x1

    .line 78
    const-wide/16 v0, 0x0

    move v7, v2

    move v8, v3

    move-wide v3, v0

    move v1, v2

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/r;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/r;->c(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/r;->e:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 83
    if-eqz v1, :cond_0

    invoke-static {v3, v4, v5, v6}, Lcom/viber/voip/messages/controller/cr;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    add-int/lit8 v0, v8, 0x1

    new-instance v3, Lcom/viber/voip/messages/conversation/s;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/s;-><init>(Lcom/viber/voip/messages/conversation/r;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/viber/voip/messages/conversation/s;->a(Ljava/lang/Integer;)Lcom/viber/voip/messages/conversation/u;

    move-result-object v3

    invoke-virtual {v9, v0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 87
    add-int/lit8 v8, v0, 0x1

    new-instance v0, Lcom/viber/voip/messages/conversation/t;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/t;-><init>(Lcom/viber/voip/messages/conversation/r;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/conversation/t;->a(Ljava/lang/Integer;)Lcom/viber/voip/messages/conversation/u;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move v7, v2

    move v4, v8

    .line 96
    :goto_1
    add-int/lit8 v3, v7, 0x1

    .line 79
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v7, v3

    move v8, v4

    move-wide v3, v5

    goto :goto_0

    .line 89
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/conversation/r;->h:I

    if-ne v7, v0, :cond_2

    .line 91
    add-int/lit8 v8, v8, 0x1

    new-instance v0, Lcom/viber/voip/messages/conversation/t;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/t;-><init>(Lcom/viber/voip/messages/conversation/r;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/conversation/t;->a(Ljava/lang/Integer;)Lcom/viber/voip/messages/conversation/u;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move v7, v2

    move v4, v8

    goto :goto_1

    .line 92
    :cond_2
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/t;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/conversation/t;->a(Ljava/lang/Integer;)Lcom/viber/voip/messages/conversation/u;

    :cond_3
    move v4, v8

    goto :goto_1

    .line 100
    :cond_4
    return-object v9
.end method


# virtual methods
.method public c_(I)Lcom/viber/voip/messages/conversation/u;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/r;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/u;

    return-object v0
.end method

.method protected k()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ah;->k()V

    .line 69
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/r;->n()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/r;->k:Landroid/util/SparseArray;

    .line 70
    return-void
.end method

.method public m()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/r;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.class public Lcom/viber/voip/stickers/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:[I


# instance fields
.field private final a:[Lcom/viber/voip/stickers/p;

.field private final b:[Lcom/viber/voip/stickers/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viber/voip/stickers/q;->c:[I

    return-void

    :array_0
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc9t 0x0t 0x0t 0x0t
        0xcct 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0xd1t 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v2, v3

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    .line 34
    iget v1, v0, Lcom/viber/voip/stickers/c/a;->d:I

    if-nez v1, :cond_6

    iget v1, v0, Lcom/viber/voip/stickers/c/a;->e:I

    if-nez v1, :cond_6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 36
    new-instance v9, Lcom/viber/voip/stickers/p;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/viber/voip/stickers/c/a;

    invoke-direct {v9, v1}, Lcom/viber/voip/stickers/p;-><init>([Lcom/viber/voip/stickers/c/a;)V

    .line 37
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 40
    if-eqz v2, :cond_0

    .line 41
    new-instance v9, Lcom/viber/voip/stickers/p;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/viber/voip/stickers/c/a;

    invoke-direct {v9, v1}, Lcom/viber/voip/stickers/p;-><init>([Lcom/viber/voip/stickers/c/a;)V

    .line 42
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 45
    :cond_0
    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 48
    :goto_1
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget v2, v0, Lcom/viber/voip/stickers/c/a;->e:I

    iput v2, v0, Lcom/viber/voip/stickers/c/a;->g:I

    .line 51
    iget v2, v0, Lcom/viber/voip/stickers/c/a;->e:I

    iput v2, v0, Lcom/viber/voip/stickers/c/a;->i:I

    .line 53
    if-eqz v1, :cond_2

    iget v2, v0, Lcom/viber/voip/stickers/c/a;->d:I

    add-int/lit8 v2, v2, 0x5

    :goto_2
    iput v2, v0, Lcom/viber/voip/stickers/c/a;->h:I

    .line 55
    sget v2, Lcom/viber/voip/stickers/an;->b:I

    if-eq v2, v10, :cond_3

    .line 56
    iget v2, v0, Lcom/viber/voip/stickers/c/a;->d:I

    iput v2, v0, Lcom/viber/voip/stickers/c/a;->f:I

    :goto_3
    move v2, v1

    .line 58
    goto :goto_0

    :cond_1
    move v1, v3

    .line 45
    goto :goto_1

    .line 53
    :cond_2
    iget v2, v0, Lcom/viber/voip/stickers/c/a;->d:I

    goto :goto_2

    .line 58
    :cond_3
    iget v2, v0, Lcom/viber/voip/stickers/c/a;->h:I

    iput v2, v0, Lcom/viber/voip/stickers/c/a;->f:I

    goto :goto_3

    .line 63
    :cond_4
    new-instance v1, Lcom/viber/voip/stickers/p;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/stickers/c/a;

    invoke-direct {v1, v0}, Lcom/viber/voip/stickers/p;-><init>([Lcom/viber/voip/stickers/c/a;)V

    .line 64
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v1, Lcom/viber/voip/stickers/p;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/voip/stickers/c/a;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/stickers/c/a;

    invoke-direct {v1, v0}, Lcom/viber/voip/stickers/p;-><init>([Lcom/viber/voip/stickers/c/a;)V

    .line 67
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/voip/stickers/p;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/stickers/p;

    iput-object v0, p0, Lcom/viber/voip/stickers/q;->b:[Lcom/viber/voip/stickers/p;

    .line 71
    sget v0, Lcom/viber/voip/stickers/an;->b:I

    if-eq v0, v10, :cond_5

    .line 72
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/voip/stickers/p;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/stickers/p;

    iput-object v0, p0, Lcom/viber/voip/stickers/q;->a:[Lcom/viber/voip/stickers/p;

    .line 76
    :goto_4
    return-void

    .line 74
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/stickers/q;->b:[Lcom/viber/voip/stickers/p;

    iput-object v0, p0, Lcom/viber/voip/stickers/q;->a:[Lcom/viber/voip/stickers/p;

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Iterable;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p1, p2}, Lcom/viber/voip/stickers/q;->a(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/q;-><init>(Ljava/lang/Iterable;)V

    .line 21
    return-void
.end method

.method private static a(Ljava/lang/Iterable;I)Ljava/lang/Iterable;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;I)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    packed-switch p1, :pswitch_data_0

    .line 91
    :goto_0
    return-object p0

    .line 89
    :pswitch_0
    sget-object v0, Lcom/viber/voip/stickers/q;->c:[I

    invoke-static {p0, v0}, Lcom/viber/voip/stickers/q;->a(Ljava/lang/Iterable;[I)Ljava/lang/Iterable;

    move-result-object p0

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/Iterable;[I)Ljava/lang/Iterable;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;[I)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v1, Landroid/util/SparseArray;

    array-length v0, p1

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .line 97
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    .line 98
    iget v3, v0, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 103
    aget v3, p1, v0

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_1
    return-object v2
.end method


# virtual methods
.method public a()[Lcom/viber/voip/stickers/p;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/stickers/q;->a:[Lcom/viber/voip/stickers/p;

    return-object v0
.end method

.method public b()[Lcom/viber/voip/stickers/p;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/stickers/q;->b:[Lcom/viber/voip/stickers/p;

    return-object v0
.end method

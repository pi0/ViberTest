.class Lcom/a/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/a/a/a/d;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/e;->a:Ljava/util/ArrayList;

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/e;->b:Ljava/util/ArrayList;

    .line 405
    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/a/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/a/a/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/a/a/a/e;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method a(Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/a/a/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 432
    :goto_0
    return-void

    .line 424
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/d;

    .line 425
    iget-object v1, v0, Lcom/a/a/a/d;->a:Landroid/widget/ListAdapter;

    instance-of v1, v1, Lcom/a/a/b/a;

    if-eqz v1, :cond_0

    .line 426
    iget-object v1, v0, Lcom/a/a/a/d;->a:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/a/a/b/a;

    invoke-virtual {v1, p1}, Lcom/a/a/b/a;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    iput-boolean p2, v0, Lcom/a/a/a/d;->b:Z

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/e;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method a(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/a/a/a/e;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/a/a/a/d;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/a/a/a/d;-><init>(Landroid/widget/ListAdapter;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method

.method a(Landroid/widget/ListAdapter;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/a/a/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/d;

    .line 415
    iget-object v2, v0, Lcom/a/a/a/d;->a:Landroid/widget/ListAdapter;

    if-ne v2, p1, :cond_0

    .line 416
    iput-boolean p2, v0, Lcom/a/a/a/d;->b:Z

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/e;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/a/a/a/e;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/e;->b:Ljava/util/ArrayList;

    .line 442
    iget-object v0, p0, Lcom/a/a/a/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/e;->b:Ljava/util/ArrayList;

    return-object v0

    .line 442
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/d;

    .line 443
    iget-boolean v2, v0, Lcom/a/a/a/d;->b:Z

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/a/a/a/e;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/a/a/a/d;->a:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

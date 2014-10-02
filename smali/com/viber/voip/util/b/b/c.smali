.class public Lcom/viber/voip/util/b/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/l;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/util/b/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/b/b/c;->a:Ljava/util/List;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/util/b/b/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/b/l;

    .line 30
    invoke-interface {v0, p1}, Lcom/viber/voip/util/b/l;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    if-eq v0, p1, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object p1, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-object p1
.end method

.method public a(Lcom/viber/voip/util/b/l;)Lcom/viber/voip/util/b/b/c;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/util/b/b/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-object p0
.end method

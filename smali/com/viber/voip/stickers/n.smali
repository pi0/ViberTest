.class Lcom/viber/voip/stickers/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/bi;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/b;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/viber/voip/stickers/b;)V
    .locals 1
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/viber/voip/stickers/n;->a:Lcom/viber/voip/stickers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/n;->b:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/stickers/b;Lcom/viber/voip/stickers/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/n;-><init>(Lcom/viber/voip/stickers/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 673
    iget-object v0, p0, Lcom/viber/voip/stickers/n;->b:Landroid/util/SparseArray;

    iget v1, p1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/viber/voip/stickers/n;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 684
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/a;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 678
    iget-object v0, p0, Lcom/viber/voip/stickers/n;->b:Landroid/util/SparseArray;

    iget v1, p1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 679
    return-void
.end method

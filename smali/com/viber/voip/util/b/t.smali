.class Lcom/viber/voip/util/b/t;
.super Landroid/support/v4/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/util/b/s;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/b/s;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/viber/voip/util/b/t;->a:Lcom/viber/voip/util/b/s;

    invoke-direct {p0, p2}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-static {p2}, Lcom/viber/voip/util/b/s;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    div-int/lit16 v0, v0, 0x400

    .line 171
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected a(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/viber/voip/util/b/t;->a:Lcom/viber/voip/util/b/s;

    invoke-static {v0}, Lcom/viber/voip/util/b/s;->a(Lcom/viber/voip/util/b/s;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    return-void
.end method

.method protected synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/viber/voip/util/b/t;->a(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 150
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/util/b/t;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

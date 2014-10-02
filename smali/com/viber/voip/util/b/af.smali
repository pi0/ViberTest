.class Lcom/viber/voip/util/b/af;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/viber/voip/util/b/ag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/viber/voip/util/b/ag;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 750
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 751
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/viber/voip/util/b/af;->a:Ljava/lang/ref/WeakReference;

    .line 752
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/util/b/ag;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/viber/voip/util/b/af;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/util/b/ag;

    return-object v0
.end method

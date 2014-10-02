.class public Lcom/viber/voip/util/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/l;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    if-le p1, p2, :cond_0

    :goto_0
    iput p1, p0, Lcom/viber/voip/util/b/b/e;->a:I

    .line 14
    return-void

    :cond_0
    move p1, p2

    .line 13
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/viber/voip/util/b/b/e;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 19
    return-object v0
.end method

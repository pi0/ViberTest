.class public Lcom/viber/voip/util/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/l;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/viber/voip/util/b/b/d;->a:I

    .line 15
    iput p2, p0, Lcom/viber/voip/util/b/b/d;->b:I

    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lcom/viber/voip/util/b/b/d;->a:I

    iget v1, p0, Lcom/viber/voip/util/b/b/d;->b:I

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    return-object v0
.end method

.class Lcom/viber/voip/stickers/f;
.super Lcom/viber/voip/util/fd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/util/fd",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/e;Landroid/content/Context;Ljava/lang/String;F)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Lcom/viber/voip/stickers/f;->a:Lcom/viber/voip/stickers/e;

    invoke-direct {p0, p2, p3, p4}, Lcom/viber/voip/util/fd;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 691
    invoke-static {p2}, Lcom/viber/voip/messages/extras/image/h;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 688
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/stickers/f;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.class public Lcom/viber/voip/util/o;
.super Lcom/viber/voip/util/fd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/viber/voip/util/fd",
        "<TK;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/util/fd;-><init>(Landroid/content/Context;Ljava/lang/String;F)V

    .line 11
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Landroid/graphics/Bitmap;",
            ")I"
        }
    .end annotation

    .prologue
    .line 15
    invoke-static {p2}, Lcom/viber/voip/messages/extras/image/h;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 8
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/util/o;->a(Ljava/lang/Object;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

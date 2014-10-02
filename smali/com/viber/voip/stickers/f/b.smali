.class public Lcom/viber/voip/stickers/f/b;
.super Landroid/graphics/drawable/PictureDrawable;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/viber/voip/stickers/f/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/f/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/stickers/f/b;->b:Z

    .line 23
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/graphics/drawable/PictureDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 49
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .parameter

    .prologue
    .line 56
    .line 59
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget v2, p1, v0

    .line 60
    const v3, 0x101009e

    if-ne v3, v2, :cond_1

    .line 59
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    const v3, 0x10100a7

    if-eq v3, v2, :cond_0

    .line 64
    const v3, 0x101009c

    if-ne v3, v2, :cond_0

    goto :goto_1

    .line 68
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/PictureDrawable;->onStateChange([I)Z

    move-result v0

    return v0
.end method

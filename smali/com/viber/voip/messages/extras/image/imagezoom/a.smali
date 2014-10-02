.class public Lcom/viber/voip/messages/extras/image/imagezoom/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FFFF)F
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    .line 7
    div-float v0, p0, p3

    sub-float/2addr v0, v2

    mul-float v1, v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

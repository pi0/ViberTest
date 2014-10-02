.class public Lcom/viber/svg/jni/svg_view_box_t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field aspect_ratio:I

.field public height:D

.field meet_or_slice:I

.field public width:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DDDDII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/viber/svg/jni/svg_view_box_t;->x:D

    .line 15
    iput-wide p3, p0, Lcom/viber/svg/jni/svg_view_box_t;->y:D

    .line 16
    iput-wide p7, p0, Lcom/viber/svg/jni/svg_view_box_t;->height:D

    .line 17
    iput-wide p5, p0, Lcom/viber/svg/jni/svg_view_box_t;->width:D

    .line 18
    iput p9, p0, Lcom/viber/svg/jni/svg_view_box_t;->aspect_ratio:I

    .line 19
    iput p10, p0, Lcom/viber/svg/jni/svg_view_box_t;->meet_or_slice:I

    .line 20
    return-void
.end method

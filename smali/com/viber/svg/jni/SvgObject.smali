.class public Lcom/viber/svg/jni/SvgObject;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "svg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native svgCreate()J
.end method

.method public static native svgDestroy(J)V
.end method

.method public static native svgGetHeight(J)I
.end method

.method public static native svgGetNumberOfFrames(J)I
.end method

.method public static native svgGetWidth(J)I
.end method

.method public static native svgParseBuffer(JLjava/lang/String;)I
.end method

.method public static native svgRenderToArea(JLandroid/graphics/Canvas;IIIII)I
.end method

.method public static native svgSetAntialiasing(JZ)I
.end method

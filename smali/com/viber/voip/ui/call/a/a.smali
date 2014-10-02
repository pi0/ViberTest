.class public abstract Lcom/viber/voip/ui/call/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/call/a/d;


# instance fields
.field protected a:F

.field protected b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/viber/voip/ui/call/a/a;->a:F

    .line 22
    iput p2, p0, Lcom/viber/voip/ui/call/a/a;->b:F

    .line 23
    return-void
.end method


# virtual methods
.method public a(FFF)F
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    sub-float v0, p3, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method public b(F)F
    .locals 2
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/viber/voip/ui/call/a/a;->a:F

    iget v1, p0, Lcom/viber/voip/ui/call/a/a;->b:F

    invoke-virtual {p0, v0, v1, p1}, Lcom/viber/voip/ui/call/a/a;->a(FFF)F

    move-result v0

    return v0
.end method

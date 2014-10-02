.class public abstract Lcom/viber/voip/backgrounds/b/f;
.super Lcom/viber/voip/backgrounds/l;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/viber/voip/backgrounds/l;-><init>()V

    .line 17
    iput p1, p0, Lcom/viber/voip/backgrounds/b/f;->a:I

    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method protected abstract a(I)V
.end method

.method public a(Lcom/viber/voip/backgrounds/o;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    iget v0, p1, Lcom/viber/voip/backgrounds/o;->a:I

    iget v1, p0, Lcom/viber/voip/backgrounds/b/f;->a:I

    if-eq v0, v1, :cond_0

    .line 29
    :goto_0
    return-void

    .line 28
    :cond_0
    iget v0, p0, Lcom/viber/voip/backgrounds/b/f;->a:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/b/f;->b(I)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/backgrounds/o;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    return-void
.end method

.method protected abstract b(I)V
.end method

.method public b(Lcom/viber/voip/backgrounds/o;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    iget v0, p1, Lcom/viber/voip/backgrounds/o;->a:I

    iget v1, p0, Lcom/viber/voip/backgrounds/b/f;->a:I

    if-eq v0, v1, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget v0, p0, Lcom/viber/voip/backgrounds/b/f;->a:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/b/f;->a(I)V

    goto :goto_0
.end method

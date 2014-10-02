.class Lcom/viber/voip/stickers/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/viber/voip/stickers/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/r;)V
    .locals 0
    .parameter

    .prologue
    .line 949
    iput-object p1, p0, Lcom/viber/voip/stickers/z;->a:Lcom/viber/voip/stickers/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/d;Lcom/viber/voip/stickers/c/d;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 955
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->i()Z

    move-result v2

    invoke-interface {p2}, Lcom/viber/voip/stickers/c/d;->i()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 956
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 964
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 956
    goto :goto_0

    .line 957
    :cond_2
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v2

    invoke-interface {p2}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 958
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 959
    :cond_3
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->c()Z

    move-result v2

    invoke-interface {p2}, Lcom/viber/voip/stickers/c/d;->c()Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 960
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->c()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 961
    :cond_4
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->a()I

    move-result v0

    invoke-interface {p2}, Lcom/viber/voip/stickers/c/d;->a()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 962
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->a()I

    move-result v0

    invoke-interface {p2}, Lcom/viber/voip/stickers/c/d;->a()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 964
    :cond_5
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v0

    invoke-interface {p2}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 949
    check-cast p1, Lcom/viber/voip/stickers/c/d;

    check-cast p2, Lcom/viber/voip/stickers/c/d;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/stickers/z;->a(Lcom/viber/voip/stickers/c/d;Lcom/viber/voip/stickers/c/d;)I

    move-result v0

    return v0
.end method

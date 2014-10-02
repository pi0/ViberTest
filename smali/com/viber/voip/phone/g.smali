.class public Lcom/viber/voip/phone/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/phone/g;->a:I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 548
    if-eqz p1, :cond_0

    .line 549
    iget v0, p0, Lcom/viber/voip/phone/g;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/phone/g;->a:I

    .line 553
    :goto_0
    return-void

    .line 551
    :cond_0
    iget v0, p0, Lcom/viber/voip/phone/g;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/viber/voip/phone/g;->a:I

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Lcom/viber/voip/phone/g;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 556
    if-eqz p1, :cond_0

    .line 557
    iget v0, p0, Lcom/viber/voip/phone/g;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/viber/voip/phone/g;->a:I

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    iget v0, p0, Lcom/viber/voip/phone/g;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/viber/voip/phone/g;->a:I

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/viber/voip/phone/g;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 564
    if-eqz p1, :cond_0

    .line 565
    iget v0, p0, Lcom/viber/voip/phone/g;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/viber/voip/phone/g;->a:I

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    iget v0, p0, Lcom/viber/voip/phone/g;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/viber/voip/phone/g;->a:I

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/viber/voip/phone/g;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget v0, p0, Lcom/viber/voip/phone/g;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/viber/voip/phone/g;->a:I

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    iget v0, p0, Lcom/viber/voip/phone/g;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/viber/voip/phone/g;->a:I

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 544
    iget v0, p0, Lcom/viber/voip/phone/g;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

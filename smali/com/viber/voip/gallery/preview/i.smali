.class public Lcom/viber/voip/gallery/preview/i;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:[Landroid/view/View;

.field c:I

.field d:Lcom/viber/voip/gallery/preview/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 4
    .parameter

    .prologue
    .line 563
    iput p1, p0, Lcom/viber/voip/gallery/preview/i;->c:I

    .line 565
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/viber/voip/gallery/preview/i;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/viber/voip/gallery/preview/i;->d:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v3}, Lcom/viber/voip/gallery/preview/j;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/ViewGroup;[Ljava/lang/Object;)V

    .line 566
    return-void
.end method

.method a(Lcom/viber/voip/gallery/preview/j;)V
    .locals 1
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/i;->d:Lcom/viber/voip/gallery/preview/j;

    .line 571
    iget v0, p0, Lcom/viber/voip/gallery/preview/i;->c:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/i;->a(I)V

    .line 572
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 538
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 540
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/i;->b:[Landroid/view/View;

    .line 541
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->b:[Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d()[Ljava/lang/Integer;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    .line 542
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->b:[Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0700b4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d()[Ljava/lang/Integer;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v1, v2}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v4

    .line 543
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->b:[Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0700b7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d()[Ljava/lang/Integer;

    move-result-object v2

    aget-object v2, v2, v5

    invoke-static {v1, v2}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v5

    .line 544
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->b:[Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0700ba

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d()[Ljava/lang/Integer;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-static {v1, v2}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v6

    .line 545
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->b:[Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v2, 0x7f0700bd

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->d()[Ljava/lang/Integer;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-static {v1, v2}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v7

    .line 548
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0700bf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/gallery/preview/j;->g:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v1}, Lcom/viber/voip/gallery/preview/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 549
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0700be

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/gallery/preview/j;->e:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v1}, Lcom/viber/voip/gallery/preview/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 550
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0700bc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/gallery/preview/j;->d:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v1}, Lcom/viber/voip/gallery/preview/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 551
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0700bb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/gallery/preview/j;->h:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v1}, Lcom/viber/voip/gallery/preview/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 552
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0700b9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/gallery/preview/j;->f:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v1}, Lcom/viber/voip/gallery/preview/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 553
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/gallery/preview/j;->k:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v1}, Lcom/viber/voip/gallery/preview/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 554
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/gallery/preview/j;->c:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v1}, Lcom/viber/voip/gallery/preview/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 555
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/gallery/preview/j;->i:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v1}, Lcom/viber/voip/gallery/preview/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 556
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/gallery/preview/j;->j:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v1}, Lcom/viber/voip/gallery/preview/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 557
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/gallery/preview/j;->b:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {v1}, Lcom/viber/voip/gallery/preview/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 559
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->d:Lcom/viber/voip/gallery/preview/j;

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/i;->a(Lcom/viber/voip/gallery/preview/j;)V

    .line 560
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    const v0, 0x7f030014

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    .line 526
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lcom/viber/voip/gallery/preview/i;->a:Landroid/view/ViewGroup;

    .line 532
    iput-object v0, p0, Lcom/viber/voip/gallery/preview/i;->b:[Landroid/view/View;

    .line 533
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 534
    return-void
.end method

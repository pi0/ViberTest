.class Lcom/viber/voip/market/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/viber/voip/widget/dslv/DragSortListView;

.field final b:Landroid/view/View;

.field final c:Landroid/view/View;

.field final d:Landroid/widget/TextView;

.field final e:Landroid/widget/ProgressBar;

.field final f:Landroid/widget/TextView;

.field final g:Landroid/view/View;

.field final h:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/dslv/DragSortListView;

    iput-object v0, p0, Lcom/viber/voip/market/aj;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    .line 247
    iget-object v0, p0, Lcom/viber/voip/market/aj;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0, p3}, Lcom/viber/voip/widget/dslv/DragSortListView;->addFooterView(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/viber/voip/market/aj;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0, p2}, Lcom/viber/voip/widget/dslv/DragSortListView;->addHeaderView(Landroid/view/View;)V

    .line 250
    iput-object p3, p0, Lcom/viber/voip/market/aj;->h:Landroid/view/View;

    .line 251
    const v0, 0x7f070247

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/market/aj;->f:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f0702c4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/aj;->b:Landroid/view/View;

    .line 253
    const v0, 0x7f0702c7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/aj;->c:Landroid/view/View;

    .line 254
    const v0, 0x7f0702c5

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/market/aj;->d:Landroid/widget/TextView;

    .line 255
    const v0, 0x7f0702c6

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/market/aj;->e:Landroid/widget/ProgressBar;

    .line 256
    const v0, 0x7f0703bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/aj;->g:Landroid/view/View;

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/viber/voip/market/af;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/market/aj;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/aj;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/viber/voip/market/aj;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 260
    iget-object v3, p0, Lcom/viber/voip/market/aj;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v3, p0, Lcom/viber/voip/market/aj;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/viber/voip/market/aj;->e:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 263
    return-void

    :cond_0
    move v0, v2

    .line 260
    goto :goto_0

    :cond_1
    move v0, v1

    .line 261
    goto :goto_1

    :cond_2
    move v2, v1

    .line 262
    goto :goto_2
.end method

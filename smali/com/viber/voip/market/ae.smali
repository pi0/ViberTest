.class public Lcom/viber/voip/market/ae;
.super Lcom/viber/voip/ui/al;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/os/Handler;

.field private c:I

.field private d:Lcom/viber/voip/market/aj;

.field private e:Lcom/viber/voip/stickers/r;

.field private f:Lcom/viber/voip/market/b/a/b;

.field private g:Lcom/viber/voip/market/b/a/g;

.field private h:Lcom/viber/voip/market/b/a/f;

.field private i:Lcom/viber/voip/market/b/a/i;

.field private j:Lcom/viber/voip/stickers/d/b;

.field private k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/viber/voip/market/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/ae;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/viber/voip/ui/al;-><init>()V

    .line 44
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/ae;->b:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/viber/voip/market/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/market/ah;-><init>(Lcom/viber/voip/market/ae;)V

    iput-object v0, p0, Lcom/viber/voip/market/ae;->j:Lcom/viber/voip/stickers/d/b;

    .line 222
    new-instance v0, Lcom/viber/voip/market/ai;

    invoke-direct {v0, p0}, Lcom/viber/voip/market/ai;-><init>(Lcom/viber/voip/market/ae;)V

    iput-object v0, p0, Lcom/viber/voip/market/ae;->k:Ljava/lang/Runnable;

    .line 234
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/ae;)Lcom/viber/voip/market/aj;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/market/ae;->c:I

    .line 153
    invoke-direct {p0}, Lcom/viber/voip/market/ae;->c()V

    .line 154
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/cj;)V

    .line 155
    return-void
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/viber/voip/market/ae;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/market/ae;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 176
    iget v0, p0, Lcom/viber/voip/market/ae;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/viber/voip/market/ae;->c:I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "changeDownloadingStickerPackageCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/market/ae;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/market/ae;->a(Ljava/lang/String;)V

    .line 178
    iget v0, p0, Lcom/viber/voip/market/ae;->c:I

    if-gtz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/viber/voip/market/ae;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/market/ae;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/market/ae;->b:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/market/ag;

    invoke-direct {v1, p0}, Lcom/viber/voip/market/ag;-><init>(Lcom/viber/voip/market/ae;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/market/ae;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/viber/voip/market/ae;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/market/ae;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/viber/voip/market/ae;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v3, v0, Lcom/viber/voip/market/aj;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v0, v0, Lcom/viber/voip/market/aj;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/dslv/DragSortListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 97
    iget-object v1, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v1, v1, Lcom/viber/voip/market/aj;->f:Landroid/widget/TextView;

    const v3, 0x7f0c064e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v0, v0, Lcom/viber/voip/market/aj;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v0, v0, Lcom/viber/voip/market/aj;->h:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v3, v3, Lcom/viber/voip/market/aj;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v2, v4, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    iget-object v3, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v3, v3, Lcom/viber/voip/market/aj;->f:Landroid/widget/TextView;

    const v4, 0x7f0c064d

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v0, v0, Lcom/viber/voip/market/aj;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/viber/voip/market/ae;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->W:Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Lcom/viber/voip/market/ae;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    const v2, 0x7f0c05a3

    invoke-virtual {p0, v2}, Lcom/viber/voip/market/ae;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/viber/voip/ui/GenericWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/market/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/viber/voip/market/ae;->d()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 165
    const-string/jumbo v0, "addStickerDeploymentListener"

    invoke-direct {p0, v0}, Lcom/viber/voip/market/ae;->a(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/ae;->j:Lcom/viber/voip/stickers/d/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/d/b;)V

    .line 167
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 170
    const-string/jumbo v0, "removeStickerDeploymentListener"

    invoke-direct {p0, v0}, Lcom/viber/voip/market/ae;->a(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/ae;->j:Lcom/viber/voip/stickers/d/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->b(Lcom/viber/voip/stickers/d/b;)V

    .line 172
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/viber/voip/market/ae;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/viber/voip/market/ae;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/viber/voip/market/ae;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    const v1, 0x7f0c05a1

    invoke-virtual {p0, v1}, Lcom/viber/voip/market/ae;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/ae;->e:Lcom/viber/voip/stickers/r;

    .line 66
    iget-object v0, p0, Lcom/viber/voip/market/ae;->e:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->h()Ljava/util/List;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/viber/voip/market/b/a/f;

    invoke-direct {v1, v0}, Lcom/viber/voip/market/b/a/f;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/viber/voip/market/ae;->h:Lcom/viber/voip/market/b/a/f;

    .line 68
    new-instance v1, Lcom/viber/voip/market/b/a/i;

    invoke-virtual {p0}, Lcom/viber/voip/market/ae;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/market/ae;->h:Lcom/viber/voip/market/b/a/f;

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/market/b/a/i;-><init>(Landroid/content/Context;Lcom/viber/voip/market/b/a/c;)V

    iput-object v1, p0, Lcom/viber/voip/market/ae;->i:Lcom/viber/voip/market/b/a/i;

    .line 69
    new-instance v1, Lcom/viber/voip/market/b/a/g;

    iget-object v2, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v2, v2, Lcom/viber/voip/market/aj;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget-object v3, p0, Lcom/viber/voip/market/ae;->h:Lcom/viber/voip/market/b/a/f;

    iget-object v4, p0, Lcom/viber/voip/market/ae;->i:Lcom/viber/voip/market/b/a/i;

    iget-object v5, p0, Lcom/viber/voip/market/ae;->f:Lcom/viber/voip/market/b/a/b;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/viber/voip/market/b/a/g;-><init>(Lcom/viber/voip/widget/dslv/DragSortListView;Lcom/viber/voip/market/b/a/c;Lcom/viber/voip/market/b/a/i;Lcom/viber/voip/market/b/a/h;)V

    iput-object v1, p0, Lcom/viber/voip/market/ae;->g:Lcom/viber/voip/market/b/a/g;

    .line 70
    new-instance v1, Lcom/viber/voip/market/af;

    iget-object v2, p0, Lcom/viber/voip/market/ae;->e:Lcom/viber/voip/stickers/r;

    iget-object v3, p0, Lcom/viber/voip/market/ae;->h:Lcom/viber/voip/market/b/a/f;

    iget-object v4, p0, Lcom/viber/voip/market/ae;->i:Lcom/viber/voip/market/b/a/i;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/viber/voip/market/af;-><init>(Lcom/viber/voip/market/ae;Lcom/viber/voip/stickers/r;Lcom/viber/voip/market/b/a/f;Lcom/viber/voip/market/b/a/i;)V

    iput-object v1, p0, Lcom/viber/voip/market/ae;->f:Lcom/viber/voip/market/b/a/b;

    .line 79
    invoke-direct {p0, v0}, Lcom/viber/voip/market/ae;->a(Ljava/util/List;)V

    .line 81
    iget-object v0, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v0, v0, Lcom/viber/voip/market/aj;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget-object v1, p0, Lcom/viber/voip/market/ae;->g:Lcom/viber/voip/market/b/a/g;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setFloatViewManager(Lcom/viber/voip/widget/dslv/p;)V

    .line 82
    iget-object v0, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v0, v0, Lcom/viber/voip/market/aj;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget-object v1, p0, Lcom/viber/voip/market/ae;->g:Lcom/viber/voip/market/b/a/g;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    iget-object v0, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v0, v0, Lcom/viber/voip/market/aj;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget-object v1, p0, Lcom/viber/voip/market/ae;->g:Lcom/viber/voip/market/b/a/g;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setDragScrollProfile(Lcom/viber/voip/widget/dslv/j;)V

    .line 84
    iget-object v0, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v0, v0, Lcom/viber/voip/market/aj;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget-object v1, p0, Lcom/viber/voip/market/ae;->i:Lcom/viber/voip/market/b/a/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setDropListener(Lcom/viber/voip/widget/dslv/o;)V

    .line 85
    iget-object v0, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v0, v0, Lcom/viber/voip/market/aj;->a:Lcom/viber/voip/widget/dslv/DragSortListView;

    iget-object v1, p0, Lcom/viber/voip/market/ae;->i:Lcom/viber/voip/market/b/a/i;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/viber/voip/market/ae;->e:Lcom/viber/voip/stickers/r;

    iget-object v1, p0, Lcom/viber/voip/market/ae;->f:Lcom/viber/voip/market/b/a/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/d/a;)V

    .line 88
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->D:Lcom/viber/voip/a/ab;

    invoke-virtual {v1}, Lcom/viber/voip/a/ab;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    :pswitch_0
    return-void

    .line 143
    :pswitch_1
    invoke-direct {p0}, Lcom/viber/voip/market/ae;->a()V

    goto :goto_0

    .line 146
    :pswitch_2
    invoke-direct {p0}, Lcom/viber/voip/market/ae;->b()V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x7f0702c4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 109
    const v0, 0x7f0300ca

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 110
    const v1, 0x7f0300cb

    invoke-virtual {p1, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    const v2, 0x7f03012a

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 113
    new-instance v3, Lcom/viber/voip/market/aj;

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/viber/voip/market/aj;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/viber/voip/market/af;)V

    iput-object v3, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    .line 114
    iget-object v1, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v1, v1, Lcom/viber/voip/market/aj;->b:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v1, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    iget-object v1, v1, Lcom/viber/voip/market/aj;->c:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v1, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/viber/voip/market/aj;->a(Lcom/viber/voip/market/aj;Z)V

    .line 118
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/viber/voip/ui/al;->onDestroyView()V

    .line 136
    iget-object v0, p0, Lcom/viber/voip/market/ae;->e:Lcom/viber/voip/stickers/r;

    iget-object v1, p0, Lcom/viber/voip/market/ae;->f:Lcom/viber/voip/market/b/a/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->b(Lcom/viber/voip/stickers/d/a;)V

    .line 137
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/viber/voip/ui/al;->onStop()V

    .line 124
    iget-object v0, p0, Lcom/viber/voip/market/ae;->d:Lcom/viber/voip/market/aj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/market/aj;->a(Lcom/viber/voip/market/aj;Z)V

    .line 125
    invoke-direct {p0}, Lcom/viber/voip/market/ae;->d()V

    .line 127
    iget-object v0, p0, Lcom/viber/voip/market/ae;->h:Lcom/viber/voip/market/b/a/f;

    invoke-virtual {v0}, Lcom/viber/voip/market/b/a/f;->c()Ljava/util/List;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/viber/voip/market/ae;->e:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->b(Ljava/util/List;)V

    .line 131
    return-void
.end method

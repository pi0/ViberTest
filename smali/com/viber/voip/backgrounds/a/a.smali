.class public Lcom/viber/voip/backgrounds/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/viber/voip/backgrounds/m;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/backgrounds/o;

.field private final c:Lcom/viber/voip/util/b/w;

.field private final d:Lcom/viber/voip/util/b/x;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/viber/voip/backgrounds/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/backgrounds/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/backgrounds/o;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    .line 38
    invoke-static {p1}, Lcom/viber/voip/backgrounds/n;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/backgrounds/a/a;->e:I

    .line 39
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->c:Lcom/viber/voip/util/b/w;

    .line 40
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->b(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/z;->a(Z)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->d:Lcom/viber/voip/util/b/x;

    .line 43
    invoke-static {}, Lcom/viber/voip/backgrounds/a;->a()Lcom/viber/voip/backgrounds/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/backgrounds/a;->a(Lcom/viber/voip/backgrounds/m;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/backgrounds/a/a;Lcom/viber/voip/backgrounds/o;)Lcom/viber/voip/backgrounds/o;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    return-object p1
.end method

.method private b(Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/q;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    .line 91
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/backgrounds/o;->b(Z)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/a/a;->notifyDataSetChanged()V

    .line 98
    return-void
.end method


# virtual methods
.method public a(I)Lcom/viber/voip/backgrounds/q;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/backgrounds/q;

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/viber/voip/backgrounds/a;->a()Lcom/viber/voip/backgrounds/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/backgrounds/a;->b(Lcom/viber/voip/backgrounds/m;)V

    .line 48
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/o;)V
    .locals 2
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/backgrounds/a/b;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/backgrounds/a/b;-><init>(Lcom/viber/voip/backgrounds/a/a;Lcom/viber/voip/backgrounds/o;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :cond_1
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/o;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/backgrounds/a/a;->b(Lcom/viber/voip/backgrounds/o;Lcom/viber/voip/backgrounds/q;)V

    .line 114
    return-void
.end method

.method public a(Lcom/viber/voip/backgrounds/q;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    return-void
.end method

.method public b(Lcom/viber/voip/backgrounds/o;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    return-void
.end method

.method public c(Lcom/viber/voip/backgrounds/o;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    .line 103
    invoke-virtual {p0}, Lcom/viber/voip/backgrounds/a/a;->notifyDataSetChanged()V

    .line 104
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/viber/voip/backgrounds/a/a;->a(I)Lcom/viber/voip/backgrounds/q;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 68
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->b:Lcom/viber/voip/backgrounds/o;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/o;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/backgrounds/q;

    iget v0, v0, Lcom/viber/voip/backgrounds/q;->a:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 75
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 76
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lcom/viber/voip/backgrounds/a/a;->e:I

    iget v2, p0, Lcom/viber/voip/backgrounds/a/a;->e:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    :goto_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/backgrounds/a/a;->a(I)Lcom/viber/voip/backgrounds/q;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/viber/voip/backgrounds/a/a;->c:Lcom/viber/voip/util/b/w;

    iget-object v0, v0, Lcom/viber/voip/backgrounds/q;->i:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/backgrounds/a/a;->d:Lcom/viber/voip/util/b/x;

    invoke-virtual {v1, v0, p2, v2}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 85
    return-object p2

    .line 79
    :cond_0
    check-cast p2, Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 146
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->c:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/a/a;->c:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    goto :goto_0
.end method

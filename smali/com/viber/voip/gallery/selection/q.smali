.class public Lcom/viber/voip/gallery/selection/q;
.super Lcom/viber/voip/ui/al;
.source "SourceFile"

# interfaces
.implements Lcom/viber/provider/e;
.implements Lcom/viber/voip/gallery/selection/n;
.implements Lcom/viber/voip/gallery/selection/p;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/gallery/selection/i;

.field private c:Lcom/viber/voip/util/b/ad;

.field private d:Lcom/viber/voip/gallery/a/e;

.field private e:Lcom/viber/voip/gallery/selection/j;

.field private f:Lcom/viber/voip/ui/ViberListView;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/viber/voip/gallery/selection/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/gallery/selection/q;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/viber/voip/ui/al;-><init>()V

    return-void
.end method

.method private a(Lcom/viber/voip/gallery/GalleryItem;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->b:Lcom/viber/voip/gallery/selection/i;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/gallery/selection/i;->a(Lcom/viber/voip/gallery/GalleryItem;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->e:Lcom/viber/voip/gallery/selection/j;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/j;->notifyDataSetChanged()V

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->e:Lcom/viber/voip/gallery/selection/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->e:Lcom/viber/voip/gallery/selection/j;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/j;->notifyDataSetChanged()V

    .line 126
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->e:Lcom/viber/voip/gallery/selection/j;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/j;->notifyDataSetChanged()V

    .line 93
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->e:Lcom/viber/voip/gallery/selection/j;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/j;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c061d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/gallery/selection/r;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/selection/r;-><init>(Lcom/viber/voip/gallery/selection/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/gallery/a/d;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/viber/voip/gallery/a/d;->a()Lcom/viber/voip/gallery/GalleryItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/gallery/selection/q;->a(Lcom/viber/voip/gallery/GalleryItem;Z)V

    .line 117
    return-void
.end method

.method public a(Lcom/viber/voip/gallery/GalleryItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->b:Lcom/viber/voip/gallery/selection/i;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->b:Lcom/viber/voip/gallery/selection/i;

    invoke-interface {v0, p1}, Lcom/viber/voip/gallery/selection/i;->a(Lcom/viber/voip/gallery/GalleryItem;)Z

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/gallery/selection/q;->h:Z

    .line 130
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public b(Lcom/viber/voip/gallery/a/d;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/viber/voip/gallery/a/d;->a()Lcom/viber/voip/gallery/GalleryItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/gallery/selection/q;->a(Lcom/viber/voip/gallery/GalleryItem;Z)V

    .line 122
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/gallery/selection/q;->h:Z

    .line 135
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->c:Lcom/viber/voip/util/b/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->c:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/ad;->g()V

    .line 160
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->c:Lcom/viber/voip/util/b/ad;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->c:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/ad;->f()V

    .line 165
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->c:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/ad;->h()V

    .line 167
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onActivityCreated(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/q;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/q;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "extra_bucket_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/q;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/q;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "extra_bucket_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/q;->j:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/q;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "extra_bucket_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/q;->i:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/q;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/viber/voip/util/b/ab;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/viber/voip/util/b/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/q;->c:Lcom/viber/voip/util/b/ad;

    .line 58
    new-instance v0, Lcom/viber/voip/gallery/a/e;

    iget-object v2, p0, Lcom/viber/voip/gallery/selection/q;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/q;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3, p0}, Lcom/viber/voip/gallery/a/e;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/q;->d:Lcom/viber/voip/gallery/a/e;

    .line 59
    new-instance v0, Lcom/viber/voip/gallery/selection/j;

    iget-object v2, p0, Lcom/viber/voip/gallery/selection/q;->c:Lcom/viber/voip/util/b/ad;

    iget-object v3, p0, Lcom/viber/voip/gallery/selection/q;->d:Lcom/viber/voip/gallery/a/e;

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/gallery/selection/j;-><init>(Landroid/content/Context;Lcom/viber/voip/util/b/ad;Lcom/viber/voip/gallery/a/e;Lcom/viber/voip/gallery/selection/n;Lcom/viber/voip/gallery/selection/p;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/q;->e:Lcom/viber/voip/gallery/selection/j;

    .line 60
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->f:Lcom/viber/voip/ui/ViberListView;

    iget-object v1, p0, Lcom/viber/voip/gallery/selection/q;->e:Lcom/viber/voip/gallery/selection/j;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ViberListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 62
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->d:Lcom/viber/voip/gallery/a/e;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/a/e;->e()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onAttach(Landroid/app/Activity;)V

    .line 83
    instance-of v0, p1, Lcom/viber/voip/gallery/selection/i;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "parent must implement Listener and GalleryController of GalleryImagesFragment"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    check-cast p1, Lcom/viber/voip/gallery/selection/i;

    iput-object p1, p0, Lcom/viber/voip/gallery/selection/q;->b:Lcom/viber/voip/gallery/selection/i;

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    const v0, 0x7f03001c

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 68
    const v0, 0x7f03001d

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 70
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/ViberListView;

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/q;->f:Lcom/viber/voip/ui/ViberListView;

    .line 71
    const v0, 0x7f0700da

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/q;->g:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->f:Lcom/viber/voip/ui/ViberListView;

    invoke-virtual {v0, v3}, Lcom/viber/voip/ui/ViberListView;->addFooterView(Landroid/view/View;)V

    .line 74
    iget-boolean v0, p0, Lcom/viber/voip/gallery/selection/q;->h:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/viber/voip/gallery/selection/q;->g:Landroid/view/View;

    iget-boolean v0, p0, Lcom/viber/voip/gallery/selection/q;->h:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_0
    return-object v2

    .line 74
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 154
    invoke-super {p0}, Lcom/viber/voip/ui/al;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/q;->b:Lcom/viber/voip/gallery/selection/i;

    iget-object v1, p0, Lcom/viber/voip/gallery/selection/q;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/gallery/selection/q;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/gallery/selection/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.class public Lcom/viber/voip/gallery/selection/h;
.super Lcom/viber/voip/ui/al;
.source "SourceFile"

# interfaces
.implements Lcom/viber/provider/e;
.implements Lcom/viber/voip/gallery/selection/f;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/gallery/selection/i;

.field private c:Lcom/viber/voip/gallery/a/a;

.field private d:Lcom/viber/voip/util/b/ad;

.field private e:Lcom/viber/voip/gallery/selection/c;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/viber/voip/gallery/selection/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/gallery/selection/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/viber/voip/ui/al;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/gallery/selection/h;->h:Z

    .line 90
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->e:Lcom/viber/voip/gallery/selection/c;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/c;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public a(Lcom/viber/voip/gallery/a/b;)V
    .locals 3
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->b:Lcom/viber/voip/gallery/selection/i;

    invoke-virtual {p1}, Lcom/viber/voip/gallery/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/gallery/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/gallery/selection/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/gallery/selection/h;->h:Z

    .line 95
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->d:Lcom/viber/voip/util/b/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->d:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/ad;->g()V

    .line 100
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->d:Lcom/viber/voip/util/b/ad;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->d:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/ad;->f()V

    .line 105
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->d:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/ad;->h()V

    .line 107
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onActivityCreated(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/ab;->b(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)Lcom/viber/voip/util/b/ab;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/gallery/selection/h;->d:Lcom/viber/voip/util/b/ad;

    .line 40
    new-instance v1, Lcom/viber/voip/gallery/a/a;

    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/h;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/h;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/viber/voip/gallery/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;)V

    iput-object v1, p0, Lcom/viber/voip/gallery/selection/h;->c:Lcom/viber/voip/gallery/a/a;

    .line 41
    new-instance v1, Lcom/viber/voip/gallery/selection/c;

    iget-object v2, p0, Lcom/viber/voip/gallery/selection/h;->d:Lcom/viber/voip/util/b/ad;

    iget-object v3, p0, Lcom/viber/voip/gallery/selection/h;->c:Lcom/viber/voip/gallery/a/a;

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/viber/voip/gallery/selection/c;-><init>(Landroid/content/Context;Lcom/viber/voip/util/b/ad;Lcom/viber/voip/gallery/a/a;Lcom/viber/voip/gallery/selection/f;)V

    iput-object v1, p0, Lcom/viber/voip/gallery/selection/h;->e:Lcom/viber/voip/gallery/selection/c;

    .line 42
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/viber/voip/gallery/selection/h;->e:Lcom/viber/voip/gallery/selection/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->c:Lcom/viber/voip/gallery/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/a/a;->e()V

    .line 45
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onAttach(Landroid/app/Activity;)V

    .line 67
    instance-of v0, p1, Lcom/viber/voip/gallery/selection/i;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "parent must implement GalleryController"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    check-cast p1, Lcom/viber/voip/gallery/selection/i;

    iput-object p1, p0, Lcom/viber/voip/gallery/selection/h;->b:Lcom/viber/voip/gallery/selection/i;

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 49
    const v0, 0x7f03001b

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 50
    const v0, 0x7f03001d

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 52
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/h;->f:Landroid/widget/ListView;

    .line 53
    const v0, 0x7f0700da

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/h;->g:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 56
    iget-boolean v0, p0, Lcom/viber/voip/gallery/selection/h;->h:Z

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/viber/voip/gallery/selection/h;->g:Landroid/view/View;

    iget-boolean v0, p0, Lcom/viber/voip/gallery/selection/h;->h:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/h;->b:Lcom/viber/voip/gallery/selection/i;

    invoke-interface {v0}, Lcom/viber/voip/gallery/selection/i;->b()V

    .line 60
    return-object v2

    .line 56
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

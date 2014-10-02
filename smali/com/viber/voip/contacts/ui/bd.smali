.class Lcom/viber/voip/contacts/ui/bd;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ap;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/viber/voip/util/b/w;

.field private final d:Lcom/viber/voip/util/b/x;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/e;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/viber/voip/contacts/ui/ap;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bd;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bd;->e:Ljava/util/ArrayList;

    .line 777
    iput-object p2, p0, Lcom/viber/voip/contacts/ui/bd;->b:Landroid/content/Context;

    .line 778
    invoke-static {p2}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bd;->c:Lcom/viber/voip/util/b/w;

    .line 779
    invoke-static {p2}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bd;->d:Lcom/viber/voip/util/b/x;

    .line 780
    return-void
.end method


# virtual methods
.method public a(I)Landroid/util/Pair;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 811
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bd;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bd;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 813
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bd;->notifyDataSetChanged()V

    .line 816
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bd;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 794
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bd;->notifyDataSetChanged()V

    .line 795
    return-void
.end method

.method public a(Landroid/util/Pair;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 783
    if-eqz p1, :cond_0

    .line 784
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/ui/bd;->c(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    .line 785
    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bd;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bd;->notifyDataSetChanged()V

    .line 790
    :cond_0
    return-void
.end method

.method public b(I)Landroid/util/Pair;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bd;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public b(Landroid/util/Pair;)Landroid/util/Pair;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/e;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    if-eqz p1, :cond_0

    .line 799
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/ui/bd;->c(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_0

    .line 801
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bd;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 802
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bd;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 803
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bd;->notifyDataSetChanged()V

    .line 807
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/util/Pair;)Landroid/util/Pair;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/e;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bd;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 821
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 825
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bd;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 769
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/ui/bd;->b(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 840
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 846
    if-nez p2, :cond_0

    .line 847
    new-instance p2, Lcom/viber/voip/widget/AvatarView;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bd;->b:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/viber/voip/widget/AvatarView;-><init>(Landroid/content/Context;)V

    .line 848
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v1}, Lcom/viber/voip/widget/AvatarView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 849
    new-instance v1, Lit/sephiroth/android/library/widget/i;

    invoke-static {}, Lcom/viber/voip/contacts/ui/ap;->l()I

    move-result v2

    invoke-static {}, Lcom/viber/voip/contacts/ui/ap;->l()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lit/sephiroth/android/library/widget/i;-><init>(II)V

    invoke-virtual {p2, v1}, Lcom/viber/voip/widget/AvatarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bd;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/viber/voip/widget/AvatarView;->setColorFilter(Landroid/content/res/ColorStateList;)V

    .line 851
    invoke-virtual {p2, v0}, Lcom/viber/voip/widget/AvatarView;->setFocusable(Z)V

    .line 855
    :goto_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/ui/bd;->b(I)Landroid/util/Pair;

    move-result-object v1

    .line 857
    const v2, 0x7f070073

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bd;->a:Lcom/viber/voip/contacts/ui/ap;

    iget-object v3, v3, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/ui/cb;->h()Ljava/util/Set;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bd;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-static {v3}, Lcom/viber/voip/contacts/ui/ap;->f(Lcom/viber/voip/contacts/ui/ap;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/viber/voip/widget/AvatarView;->setTag(ILjava/lang/Object;)V

    .line 859
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/widget/AvatarView;->setTag(Ljava/lang/Object;)V

    .line 860
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/bd;->c:Lcom/viber/voip/util/b/w;

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/contacts/b/e;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bd;->d:Lcom/viber/voip/util/b/x;

    invoke-virtual {v2, v0, p2, v1}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 861
    return-object p2

    .line 853
    :cond_0
    check-cast p2, Lcom/viber/voip/widget/AvatarView;

    goto :goto_0

    .line 857
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 860
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

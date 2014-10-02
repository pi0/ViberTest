.class public Lcom/viber/voip/contacts/ui/ContactDetailsFragment;
.super Lcom/viber/voip/ui/am;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/viber/voip/contacts/c/c/d;
.implements Lcom/viber/voip/contacts/c/d/d;


# static fields
.field private static P:Lcom/viber/voip/contacts/ui/ac;

.field public static final a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/contacts/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/calls/entities/CallEntity;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/actionbarsherlock/view/MenuItem;

.field private G:Lcom/actionbarsherlock/view/MenuItem;

.field private H:Lcom/actionbarsherlock/view/Menu;

.field private I:Z

.field private J:Lcom/viber/voip/a/k;

.field private final K:Lcom/viber/voip/user/UserDetailPhotoSetter;

.field private L:Landroid/view/View$OnClickListener;

.field private M:Lcom/viber/voip/util/b/w;

.field private N:Lcom/viber/voip/util/b/x;

.field private final O:Lcom/viber/voip/util/b/al;

.field private Q:Lcom/viber/voip/contacts/ui/ac;

.field private R:Ljava/lang/Runnable;

.field private S:Ljava/lang/Runnable;

.field private final T:Lcom/viber/jni/lastonline/LastOnlineDelegate;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;

.field private d:Lcom/viber/voip/widget/ProportionalLayout;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Lcom/viber/voip/contacts/ui/aa;

.field private j:Z

.field private k:Z

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/os/Handler;

.field private o:Lcom/viber/voip/contacts/c/d/b;

.field private p:Lcom/viber/voip/contacts/c/c/c;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:J

.field private t:J

.field private u:Landroid/net/Uri;

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a:Ljava/lang/String;

    .line 193
    new-instance v0, Lcom/viber/voip/contacts/ui/o;

    invoke-direct {v0}, Lcom/viber/voip/contacts/ui/o;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->P:Lcom/viber/voip/contacts/ui/ac;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/viber/voip/ui/am;-><init>()V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->B:Ljava/util/Collection;

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->C:Ljava/util/List;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->D:Ljava/util/List;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->E:Ljava/util/Map;

    .line 165
    new-instance v0, Lcom/viber/voip/a/k;

    invoke-direct {v0}, Lcom/viber/voip/a/k;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->J:Lcom/viber/voip/a/k;

    .line 166
    new-instance v0, Lcom/viber/voip/user/UserDetailPhotoSetter;

    invoke-direct {v0}, Lcom/viber/voip/user/UserDetailPhotoSetter;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->K:Lcom/viber/voip/user/UserDetailPhotoSetter;

    .line 173
    new-instance v0, Lcom/viber/voip/contacts/ui/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/ui/a;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->O:Lcom/viber/voip/util/b/al;

    .line 198
    sget-object v0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->P:Lcom/viber/voip/contacts/ui/ac;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->Q:Lcom/viber/voip/contacts/ui/ac;

    .line 473
    new-instance v0, Lcom/viber/voip/contacts/ui/w;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/ui/w;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->R:Ljava/lang/Runnable;

    .line 1008
    new-instance v0, Lcom/viber/voip/contacts/ui/j;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/ui/j;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->S:Ljava/lang/Runnable;

    .line 1235
    new-instance v0, Lcom/viber/voip/contacts/ui/m;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/ui/m;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->T:Lcom/viber/jni/lastonline/LastOnlineDelegate;

    .line 1349
    return-void
.end method

.method private a(ZZLjava/lang/String;Lcom/viber/voip/contacts/b/d;Z)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 666
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(ZZZLjava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    .line 667
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/util/Collection;Lcom/viber/voip/contacts/d/b;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/Collection;Lcom/viber/voip/contacts/d/b;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Collection;Lcom/viber/voip/contacts/d/b;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/contacts/d/a;",
            ">;",
            "Lcom/viber/voip/contacts/d/b;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/d/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/d/a;

    .line 1169
    iget-object v3, v0, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {p2, v3}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1170
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1173
    :cond_1
    return-object v1
.end method

.method private a(Ljava/util/Collection;Lcom/viber/voip/contacts/d/b;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/contacts/d/a;",
            ">;",
            "Lcom/viber/voip/contacts/d/b;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/d/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/d/a;

    .line 1180
    iget-object v3, v0, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {p2, v3}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/viber/voip/contacts/d/a;->f:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1181
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1184
    :cond_1
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1017
    const v0, 0x7f0701c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e:Landroid/widget/ListView;

    .line 1018
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->f:Landroid/view/View;

    .line 1022
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->j:Z

    if-eqz v0, :cond_4

    .line 1023
    :cond_0
    const v0, 0x7f070112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b:Landroid/widget/ImageView;

    .line 1024
    const v0, 0x7f070113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c:Landroid/view/View;

    .line 1025
    const v0, 0x7f0700fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/ProportionalLayout;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->d:Lcom/viber/voip/widget/ProportionalLayout;

    .line 1026
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->d:Lcom/viber/voip/widget/ProportionalLayout;

    if-eqz v0, :cond_1

    .line 1027
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->d:Lcom/viber/voip/widget/ProportionalLayout;

    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f00

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/ProportionalLayout;->setRatio(F)V

    .line 1033
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->j:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1034
    const v0, 0x7f0700ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->l:Landroid/widget/TextView;

    .line 1035
    const v0, 0x7f0701bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->m:Landroid/widget/TextView;

    .line 1037
    :cond_2
    return-void

    .line 1027
    :cond_3
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 1031
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->K:Lcom/viber/voip/user/UserDetailPhotoSetter;

    invoke-virtual {v1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->getTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method private a(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 753
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 754
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 755
    return-void
.end method

.method private a(Lcom/viber/voip/contacts/b/d;)V
    .locals 12
    .parameter

    .prologue
    .line 540
    sget-object v0, Lcom/viber/voip/contacts/ui/ad;->b:Lcom/viber/voip/contacts/ui/ad;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ad;Z)V

    .line 542
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-interface {p1, v0}, Lcom/viber/voip/contacts/b/d;->a([I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->w:Z

    .line 543
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->v:Ljava/lang/String;

    .line 547
    :cond_0
    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e(Ljava/lang/String;)V

    .line 548
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 549
    const/4 v0, 0x1

    .line 550
    const/4 v1, 0x0

    .line 552
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->B:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 553
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/d;->h()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lcom/viber/voip/contacts/b/d;->h()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 554
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/d;->h()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/viber/voip/contacts/b/i;

    .line 555
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->B:Ljava/util/Collection;

    invoke-interface {p1, v5}, Lcom/viber/voip/contacts/b/d;->a(Lcom/viber/voip/contacts/b/i;)Lcom/viber/voip/contacts/b/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/contacts/b/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5}, Lcom/viber/voip/contacts/b/d;->a(Lcom/viber/voip/contacts/b/i;)Lcom/viber/voip/contacts/b/g;

    move-result-object v4

    invoke-interface {v4}, Lcom/viber/voip/contacts/b/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5}, Lcom/viber/voip/contacts/b/d;->a(Lcom/viber/voip/contacts/b/i;)Lcom/viber/voip/contacts/b/g;

    move-result-object v5

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/g;->d()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/b/d;Z)V

    .line 558
    const/4 v0, 0x0

    goto :goto_1

    .line 542
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 560
    :cond_2
    const/4 v1, 0x1

    .line 561
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    move v8, v1

    move v9, v0

    .line 571
    :goto_2
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Lcom/viber/voip/contacts/b/d;)Ljava/util/List;

    move-result-object v0

    .line 572
    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/List;)V

    .line 573
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/d;->o()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/Map;)V

    .line 575
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v1

    .line 576
    if-eqz v1, :cond_6

    .line 577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 579
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/viber/voip/contacts/b/g;

    .line 580
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/g;->d()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/b/d;Z)V

    goto :goto_3

    .line 562
    :cond_3
    iget-boolean v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->z:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 563
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->B:Ljava/util/Collection;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/b/d;Z)V

    .line 564
    const/4 v1, 0x0

    .line 565
    const/4 v0, 0x1

    .line 566
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    move v8, v0

    move v9, v1

    goto :goto_2

    .line 568
    :cond_4
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->h()V

    move v8, v1

    move v9, v0

    goto :goto_2

    .line 583
    :cond_5
    sget-object v0, Lcom/viber/voip/contacts/d/b;->a:Lcom/viber/voip/contacts/d/b;

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/Collection;Lcom/viber/voip/contacts/d/b;)Ljava/util/List;

    move-result-object v0

    .line 584
    invoke-interface {v10, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 595
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(ZLcom/viber/voip/contacts/b/b;)V

    .line 596
    if-eqz v9, :cond_7

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v3, 0x1

    :goto_4
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v10

    move v2, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/List;ZZLjava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    .line 597
    return-void

    .line 596
    :cond_7
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private a(Lcom/viber/voip/contacts/d/a;)V
    .locals 2
    .parameter

    .prologue
    .line 961
    new-instance v0, Lcom/viber/voip/contacts/ui/i;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/contacts/ui/i;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/d/a;)V

    .line 968
    iget-object v1, p1, Lcom/viber/voip/contacts/d/a;->f:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 969
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/d/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Lcom/viber/voip/contacts/d/a;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/ui/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ae;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/ui/ah;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ah;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/viber/voip/contacts/ui/ad;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1213
    sget-object v0, Lcom/viber/voip/contacts/ui/q;->b:[I

    invoke-virtual {p1}, Lcom/viber/voip/contacts/ui/ad;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1215
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1217
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->F:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->F:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, p2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    .line 1222
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1223
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1224
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->F:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->F:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, v3}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0

    .line 1213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/viber/voip/contacts/ui/ae;)V
    .locals 3
    .parameter

    .prologue
    .line 1141
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e()Ljava/util/List;

    move-result-object v0

    .line 1142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1143
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/g;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 1144
    invoke-virtual {p1, v0}, Lcom/viber/voip/contacts/ui/ae;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1145
    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Landroid/content/Intent;)V

    .line 1160
    :goto_0
    return-void

    .line 1147
    :cond_0
    new-instance v1, Lcom/viber/voip/contacts/ui/l;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/ui/l;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/ui/ae;)V

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/List;Lcom/viber/voip/util/ai;)V

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/contacts/ui/ah;)V
    .locals 7
    .parameter

    .prologue
    .line 1071
    sget-object v0, Lcom/viber/voip/contacts/ui/q;->a:[I

    invoke-virtual {p1}, Lcom/viber/voip/contacts/ui/ah;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1081
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown viber action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :pswitch_0
    sget-object v0, Lcom/viber/voip/contacts/d/b;->a:Lcom/viber/voip/contacts/d/b;

    move-object v1, v0

    .line 1084
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->B:Ljava/util/Collection;

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/Collection;Lcom/viber/voip/contacts/d/b;)Ljava/util/List;

    move-result-object v0

    .line 1086
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1087
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/d/a;

    .line 1088
    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/d/a;)V

    .line 1112
    :goto_1
    return-void

    .line 1077
    :pswitch_1
    sget-object v0, Lcom/viber/voip/contacts/d/b;->b:Lcom/viber/voip/contacts/d/b;

    move-object v1, v0

    .line 1078
    goto :goto_0

    .line 1090
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/d/a;

    .line 1092
    new-instance v4, Lcom/viber/voip/contacts/b/b/a/e;

    iget-object v5, v0, Lcom/viber/voip/contacts/d/a;->f:Ljava/lang/String;

    iget-object v6, v0, Lcom/viber/voip/contacts/d/a;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/viber/voip/contacts/d/a;->c:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v0}, Lcom/viber/voip/contacts/b/b/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1096
    :cond_1
    new-instance v0, Lcom/viber/voip/contacts/ui/k;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/contacts/ui/k;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/d/b;)V

    invoke-direct {p0, v2, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/List;Lcom/viber/voip/util/ai;)V

    goto :goto_1

    .line 1071
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->o:Lcom/viber/voip/contacts/c/d/b;

    iget-boolean v6, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->k:Z

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p1

    move-object v7, p0

    invoke-interface/range {v0 .. v7}, Lcom/viber/voip/contacts/c/d/b;->a(JJLjava/lang/String;ZLcom/viber/voip/contacts/c/d/d;)V

    .line 395
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->o:Lcom/viber/voip/contacts/c/d/b;

    new-instance v1, Lcom/viber/voip/contacts/ui/r;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/r;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V

    invoke-interface {v0, p6, v1}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/viber/voip/contacts/b/d;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 269
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 272
    if-eqz v0, :cond_2

    .line 273
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 275
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Z)V

    .line 276
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    if-eqz p2, :cond_3

    .line 279
    invoke-interface {p2}, Lcom/viber/voip/contacts/b/d;->h()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/i;

    .line 280
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object p1

    .line 281
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v2

    .line 289
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    .line 290
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getLastOnlineController()Lcom/viber/jni/lastonline/LastOnlineController;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/lastonline/LastOnlineController;->handleGetLastOnline([Ljava/lang/String;IIJ)Z

    .line 294
    :cond_2
    return-void

    .line 285
    :cond_3
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->v:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 973
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 527
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->B:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 528
    if-eqz p2, :cond_1

    .line 529
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->B:Ljava/util/Collection;

    move-object v2, p1

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/b/d;Z)V

    .line 535
    :cond_0
    :goto_0
    if-nez p2, :cond_2

    move v7, v11

    :goto_1
    iget-boolean v8, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->y:Z

    move-object v5, p0

    move v6, p2

    move-object v9, p1

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(ZZZLjava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    .line 536
    return-void

    .line 530
    :cond_1
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->B:Ljava/util/Collection;

    move-object v8, p1

    move-object v9, p1

    move-object v10, v4

    invoke-static/range {v6 .. v11}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/b/d;Z)V

    goto :goto_0

    :cond_2
    move v7, v5

    .line 535
    goto :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/b/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->C:Ljava/util/List;

    .line 601
    return-void
.end method

.method private a(Ljava/util/List;Lcom/viber/voip/util/ai;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/b/g;",
            ">;",
            "Lcom/viber/voip/util/ai;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1189
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1190
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2, p2}, Lcom/viber/voip/util/w;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;ZLcom/viber/voip/util/ai;)V

    .line 1191
    return-void
.end method

.method private a(Ljava/util/List;ZZLjava/lang/String;Lcom/viber/voip/contacts/b/d;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/d/a;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 628
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 645
    :goto_0
    return-void

    .line 631
    :cond_0
    new-instance v6, Lcom/a/a/a/a;

    invoke-direct {v6}, Lcom/a/a/a/a;-><init>()V

    .line 632
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->j:Z

    if-nez v0, :cond_2

    .line 633
    invoke-direct {p0, p5}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c(Lcom/viber/voip/contacts/b/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/a/a/a/a;->a(Landroid/view/View;)V

    .line 637
    :goto_1
    iget-boolean v5, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->y:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(ZZLjava/lang/String;Lcom/viber/voip/contacts/b/d;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/a/a/a/a;->a(Landroid/view/View;)V

    .line 638
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->y:Z

    if-eqz v0, :cond_1

    .line 639
    new-instance v0, Lcom/viber/voip/contacts/a/i;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->D:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/contacts/a/i;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 640
    invoke-virtual {v6, v0}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 642
    :cond_1
    new-instance v0, Lcom/viber/voip/contacts/a/f;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/viber/voip/contacts/a/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 643
    invoke-virtual {v6, v0}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 644
    invoke-direct {p0, v6}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 635
    :cond_2
    invoke-direct {p0, p5}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c(Lcom/viber/voip/contacts/b/d;)Landroid/view/View;

    goto :goto_1
.end method

.method private a(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->E:Ljava/util/Map;

    .line 1315
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->g()V

    .line 1316
    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 258
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 259
    if-eqz v0, :cond_0

    .line 260
    if-eqz p1, :cond_1

    .line 261
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getLastOnlineListener()Lcom/viber/jni/lastonline/LastOnlineListener;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/viber/jni/lastonline/LastOnlineDelegate;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->T:Lcom/viber/jni/lastonline/LastOnlineDelegate;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/lastonline/LastOnlineListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getLastOnlineListener()Lcom/viber/jni/lastonline/LastOnlineListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->T:Lcom/viber/jni/lastonline/LastOnlineDelegate;

    invoke-virtual {v0, v1}, Lcom/viber/jni/lastonline/LastOnlineListener;->removeDelegate(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private a(ZLcom/viber/voip/contacts/b/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 987
    if-eqz p1, :cond_1

    .line 988
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->F:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->F:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 999
    :cond_0
    :goto_0
    return-void

    .line 993
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->F:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->F:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 997
    :cond_2
    invoke-interface {p2}, Lcom/viber/voip/contacts/b/b;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->I:Z

    .line 998
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->f()V

    goto :goto_0
.end method

.method private a(ZZZLjava/lang/String;Lcom/viber/voip/contacts/b/d;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 671
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    .line 673
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->h:Landroid/view/View;

    const v7, 0x7f0701d7

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v1, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->h:Landroid/view/View;

    const v7, 0x7f0701d1

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->h:Landroid/view/View;

    const v4, 0x7f0701d0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;

    .line 682
    if-eqz v1, :cond_3

    .line 683
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a(IIII)V

    move-object v1, v6

    move-object v2, v6

    .line 749
    :goto_2
    invoke-virtual {v0, v2, v6, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 750
    return-void

    :cond_1
    move v1, v3

    .line 671
    goto :goto_0

    :cond_2
    move v0, v4

    .line 673
    goto :goto_1

    .line 684
    :cond_3
    if-eqz p1, :cond_4

    .line 685
    const v1, 0x7f0c04fa

    const v2, 0x7f0c04fb

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a(IIII)V

    .line 687
    new-instance v2, Lcom/viber/voip/contacts/ui/y;

    invoke-direct {v2, p0}, Lcom/viber/voip/contacts/ui/y;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V

    .line 695
    new-instance v1, Lcom/viber/voip/contacts/ui/z;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/z;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V

    move-object v8, v6

    move-object v6, v1

    move-object v1, v8

    goto :goto_2

    .line 702
    :cond_4
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    move v2, v5

    :cond_5
    const v1, 0x7f0c02fb

    const v3, 0x7f0c02fc

    const v4, 0x7f0c02fa

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a(IIII)V

    .line 705
    new-instance v6, Lcom/viber/voip/contacts/ui/b;

    invoke-direct {v6, p0, p4, p5}, Lcom/viber/voip/contacts/ui/b;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    .line 728
    new-instance v1, Lcom/viber/voip/contacts/ui/d;

    invoke-direct {v1, p0, p4, p5}, Lcom/viber/voip/contacts/ui/d;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    move-object v2, v6

    move-object v6, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->A:Z

    return p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/b/g;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 619
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/g;

    .line 620
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    const/4 v0, 0x1

    .line 624
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->L:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private b(Lcom/viber/voip/contacts/b/d;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/contacts/b/d;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 609
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/d;->m()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/g;

    .line 610
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/g;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 612
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 615
    :cond_1
    return-object v1
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1163
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->z:Z

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->J:Lcom/viber/voip/a/k;

    invoke-static {v0, p1, v1, v2}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;Landroid/content/Intent;ZLcom/viber/voip/a/k;)V

    .line 1164
    return-void
.end method

.method private b(Lcom/viber/voip/contacts/d/a;)V
    .locals 1
    .parameter

    .prologue
    .line 976
    iget-object v0, p1, Lcom/viber/voip/contacts/d/a;->d:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p1, Lcom/viber/voip/contacts/d/a;->d:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Landroid/content/Intent;)V

    .line 979
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/d/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/d/a;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->f(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->d(Ljava/lang/String;)V

    .line 402
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/ViberApplication;->getCachedUnknownNumberInfo(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->z:Z

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkUnknownContact number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in cache, is viber:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 407
    iget-boolean v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->z:Z

    invoke-direct {p0, p1, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;Z)V

    .line 408
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->R:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 415
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1002
    iput-boolean p1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->I:Z

    .line 1004
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->S:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1005
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->n:Landroid/os/Handler;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->S:Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->j:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1006
    return-void

    .line 1005
    :cond_0
    const-wide/16 v0, 0x3e8

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/contacts/ui/ContactDetailsDialogActivity;

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->z:Z

    return p1
.end method

.method private c(Lcom/viber/voip/contacts/b/d;)Landroid/view/View;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 648
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ao;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->j:Z

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->g:Landroid/view/View;

    const v1, 0x7f070112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b:Landroid/widget/ImageView;

    .line 650
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->g:Landroid/view/View;

    const v1, 0x7f070113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c:Landroid/view/View;

    .line 651
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->g:Landroid/view/View;

    const v1, 0x7f0700fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/ProportionalLayout;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->d:Lcom/viber/voip/widget/ProportionalLayout;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 654
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 655
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 661
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->M:Lcom/viber/voip/util/b/w;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->u:Landroid/net/Uri;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->N:Lcom/viber/voip/util/b/x;

    iget-object v5, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->O:Lcom/viber/voip/util/b/al;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/util/b/w;->a(Lcom/viber/voip/contacts/b/d;Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 662
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->g:Landroid/view/View;

    return-object v0

    .line 656
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->K:Lcom/viber/voip/user/UserDetailPhotoSetter;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->j:Z

    if-eqz v4, :cond_4

    move v3, v6

    :cond_4
    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->d:Lcom/viber/voip/widget/ProportionalLayout;

    iget-object v5, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->u:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/user/UserDetailPhotoSetter;->setupContactDetailsPhotoForClick(Landroid/content/Context;Landroid/widget/ImageView;ZLandroid/view/View;Landroid/net/Uri;Z)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->L:Landroid/view/View$OnClickListener;

    .line 659
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 297
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/viber/voip/e/u;->e()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->s:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/viber/voip/e/u;->d()V

    .line 301
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 420
    const-string/jumbo v0, "checkUnknownContact start"

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;)V

    .line 421
    sget-object v0, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/ui/t;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/ui/t;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    return-void
.end method

.method private c(Ljava/util/Set;Z)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1329
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1330
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1331
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1332
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->E:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1333
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->E:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1336
    :cond_1
    new-instance v0, Lcom/viber/voip/contacts/ui/p;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/ui/p;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1342
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->v:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->h:Landroid/view/View;

    const v1, 0x7f0701d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 486
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c(Ljava/lang/String;)V

    .line 490
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 11
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 493
    sget-object v0, Lcom/viber/voip/contacts/ui/ad;->b:Lcom/viber/voip/contacts/ui/ad;

    invoke-direct {p0, v0, v7}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ad;Z)V

    .line 494
    iput-boolean v5, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->w:Z

    .line 495
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 497
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->B:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 498
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->B:Ljava/util/Collection;

    move-object v2, p1

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/b/d;Z)V

    .line 502
    :cond_0
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v0

    .line 503
    if-eqz v0, :cond_1

    .line 504
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->B:Ljava/util/Collection;

    sget-object v2, Lcom/viber/voip/contacts/d/b;->a:Lcom/viber/voip/contacts/d/b;

    invoke-direct {p0, v1, v2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/Collection;Lcom/viber/voip/contacts/d/b;)Ljava/util/List;

    move-result-object v1

    .line 505
    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 508
    :cond_1
    new-instance v1, Lcom/viber/voip/contacts/b/b/a/e;

    const-string/jumbo v2, "0"

    invoke-direct {v1, p1, v2}, Lcom/viber/voip/contacts/b/b/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/List;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->g(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_4

    .line 521
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v4}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    move-object v5, p0

    move v8, v7

    move-object v9, p1

    move-object v10, v4

    .line 522
    invoke-direct/range {v5 .. v10}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/List;ZZLjava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    .line 523
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->H:Lcom/actionbarsherlock/view/Menu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->H:Lcom/actionbarsherlock/view/Menu;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V

    .line 524
    :cond_3
    return-void

    .line 513
    :cond_4
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/ui/x;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/x;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V

    invoke-static {v0, v6, v1}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/b/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->C:Ljava/util/List;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1041
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1050
    :goto_0
    return-void

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1045
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1048
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Lcom/viber/voip/contacts/c/d/b;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->o:Lcom/viber/voip/contacts/c/d/b;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->F:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 868
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->F:Lcom/actionbarsherlock/view/MenuItem;

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->I:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0202d4

    :goto_0
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 870
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->F:Lcom/actionbarsherlock/view/MenuItem;

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->I:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0c0346

    :goto_1
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 873
    :cond_0
    return-void

    .line 868
    :cond_1
    const v0, 0x7f0202d5

    goto :goto_0

    .line 870
    :cond_2
    const v0, 0x7f0c02f2

    goto :goto_1
.end method

.method private f(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1054
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->m:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1063
    :goto_0
    return-void

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1061
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b()Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 876
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->G:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->E:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 878
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->G:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 879
    if-eqz v0, :cond_0

    .line 880
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->G:Lcom/actionbarsherlock/view/MenuItem;

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->E:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0c0635

    :goto_1
    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setTitle(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 884
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 877
    goto :goto_0

    .line 880
    :cond_2
    const v0, 0x7f0c0634

    goto :goto_1
.end method

.method private g(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1308
    invoke-static {p1}, Lcom/viber/voip/block/i;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/util/Map;)V

    .line 1310
    return-void
.end method

.method static synthetic g(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->A:Z

    return v0
.end method

.method static synthetic h(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 1263
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->f(Ljava/lang/String;)V

    .line 1264
    return-void
.end method

.method static synthetic i(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->R:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->z:Z

    return v0
.end method

.method static synthetic l(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->d()V

    return-void
.end method

.method static synthetic m(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Lcom/viber/voip/a/k;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->J:Lcom/viber/voip/a/k;

    return-object v0
.end method

.method static synthetic n(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Lcom/viber/voip/contacts/ui/ac;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->Q:Lcom/viber/voip/contacts/ui/ac;

    return-object v0
.end method

.method static synthetic o(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->I:Z

    return v0
.end method

.method static synthetic p(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->s:J

    return-wide v0
.end method

.method static synthetic q(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->t:J

    return-wide v0
.end method

.method static synthetic r(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Ljava/util/Collection;
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->B:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic t(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->g()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 244
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->q:Ljava/lang/String;

    iget-wide v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->s:J

    iget-wide v4, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->t:J

    iget-object v6, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;JJLjava/lang/String;)V

    .line 245
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 304
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    .line 306
    const-string/jumbo v3, "com.viber.voip.action.VIEW_CONTACT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "com.viber.voip.action.VIEW_CONTACT_DIALOG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->y:Z

    .line 308
    :cond_0
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->v:Ljava/lang/String;

    .line 310
    const-string/jumbo v0, "lookup_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->q:Ljava/lang/String;

    .line 311
    const-string/jumbo v0, "contact_id"

    invoke-virtual {p1, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->s:J

    .line 312
    const-string/jumbo v0, "native_contact_id"

    invoke-virtual {p1, v0, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->t:J

    .line 313
    const-string/jumbo v0, "con_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    .line 314
    const-string/jumbo v0, "photo_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->u:Landroid/net/Uri;

    .line 315
    const-string/jumbo v0, "is_viber"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->z:Z

    .line 316
    const-string/jumbo v0, "unknown"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->A:Z

    .line 317
    new-instance v0, Lcom/viber/voip/a/k;

    const-string/jumbo v3, "prev_action"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/viber/voip/a/k;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->J:Lcom/viber/voip/a/k;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->D:Ljava/util/List;

    .line 321
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->s:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->Q:Lcom/viber/voip/contacts/ui/ac;

    invoke-interface {v0}, Lcom/viber/voip/contacts/ui/ac;->e()V

    .line 358
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 306
    goto :goto_0

    .line 327
    :cond_2
    const-string/jumbo v0, "call_entities"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 328
    const-string/jumbo v0, "call_entities"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 329
    iget-object v5, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->D:Ljava/util/List;

    check-cast v0, Lcom/viber/voip/calls/entities/CallEntity;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 335
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->v:Ljava/lang/String;

    :goto_3
    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 339
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->M:Lcom/viber/voip/util/b/w;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->u:Landroid/net/Uri;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->N:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0, v6, v2, v3, v4}, Lcom/viber/voip/util/b/w;->a(Lcom/viber/voip/contacts/b/d;Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 340
    const-string/jumbo v0, "viber_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-direct {p0, v6}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->f(Ljava/lang/String;)V

    .line 342
    if-eqz v0, :cond_4

    .line 343
    invoke-direct {p0, v0, v6}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->A:Z

    if-eqz v0, :cond_5

    .line 348
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Ljava/lang/String;)V

    .line 354
    :cond_5
    invoke-static {}, Lcom/viber/voip/util/fz;->a()Lcom/viber/voip/util/fz;

    move-result-object v0

    iget-wide v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->s:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/viber/voip/util/fz;->a(JZ)V

    .line 356
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a()V

    .line 357
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->p:Lcom/viber/voip/contacts/c/c/c;

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/c/c;->a(Lcom/viber/voip/contacts/c/c/d;)V

    goto :goto_1

    .line 335
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    goto :goto_3
.end method

.method public a(Landroid/view/View$OnClickListener;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1194
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1198
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1199
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1200
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1198
    goto :goto_1

    .line 1200
    :cond_3
    const/4 v1, 0x4

    goto :goto_2

    .line 1201
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/viber/voip/widget/AvatarView;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1232
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1233
    return-void
.end method

.method public a(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1320
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c(Ljava/util/Set;Z)V

    .line 1321
    return-void
.end method

.method public a(ZJLjava/lang/String;Lcom/viber/voip/contacts/b/d;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    if-eqz p5, :cond_4

    .line 769
    invoke-interface {p5}, Lcom/viber/voip/contacts/b/d;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->s:J

    .line 770
    invoke-interface {p5}, Lcom/viber/voip/contacts/b/d;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->q:Ljava/lang/String;

    .line 771
    invoke-interface {p5}, Lcom/viber/voip/contacts/b/d;->b()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->u:Landroid/net/Uri;

    .line 772
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 773
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "photo_uri"

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->u:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 775
    :cond_2
    invoke-direct {p0, p5}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/b/d;)V

    .line 776
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->z:Z

    if-nez v0, :cond_3

    invoke-interface {p5}, Lcom/viber/voip/contacts/b/d;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->z:Z

    .line 777
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->H:Lcom/actionbarsherlock/view/Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->H:Lcom/actionbarsherlock/view/Menu;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V

    goto :goto_0

    .line 779
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->Q:Lcom/viber/voip/contacts/ui/ac;

    invoke-interface {v0}, Lcom/viber/voip/contacts/ui/ac;->e()V

    goto :goto_0
.end method

.method public b(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1325
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c(Ljava/util/Set;Z)V

    .line 1326
    return-void
.end method

.method public onActivityBackPressed()Z
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->i:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/aa;->a(Lcom/viber/voip/contacts/ui/aa;)Z

    move-result v0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 1284
    invoke-super {p0, p1}, Lcom/viber/voip/ui/am;->onAttach(Landroid/app/Activity;)V

    .line 1285
    instance-of v0, p1, Lcom/viber/voip/contacts/ui/ac;

    if-nez v0, :cond_0

    .line 1286
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :cond_0
    check-cast p1, Lcom/viber/voip/contacts/ui/ac;

    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->Q:Lcom/viber/voip/contacts/ui/ac;

    .line 1290
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-super {p0, p1}, Lcom/viber/voip/ui/am;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->j:Z

    .line 205
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->j:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->k:Z

    .line 207
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->M:Lcom/viber/voip/util/b/w;

    .line 209
    invoke-static {v0}, Lcom/viber/voip/util/b/x;->c(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->N:Lcom/viber/voip/util/b/x;

    .line 210
    sget-object v2, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v2}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->n:Landroid/os/Handler;

    .line 211
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->o:Lcom/viber/voip/contacts/c/d/b;

    .line 212
    new-instance v0, Lcom/viber/voip/contacts/c/c/a/g;

    invoke-direct {v0}, Lcom/viber/voip/contacts/c/c/a/g;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->p:Lcom/viber/voip/contacts/c/c/c;

    .line 214
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->J:Lcom/viber/voip/a/k;

    invoke-virtual {v2}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->c()V

    .line 216
    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->setHasOptionsMenu(Z)V

    .line 217
    return-void

    .line 205
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f070460

    const/4 v2, 0x0

    .line 890
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->H:Lcom/actionbarsherlock/view/Menu;

    .line 891
    const v0, 0x7f10000c

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 892
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 894
    if-eqz v0, :cond_0

    .line 895
    const v0, 0x7f07045f

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 896
    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 900
    :cond_0
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 902
    const v0, 0x7f070462

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 903
    const v0, 0x7f070461

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 904
    const v0, 0x7f070463

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 906
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 221
    const v0, 0x7f030071

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 222
    const v0, 0x7f030076

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->g:Landroid/view/View;

    .line 223
    const v0, 0x7f030077

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->h:Landroid/view/View;

    .line 224
    new-instance v3, Lcom/viber/voip/contacts/ui/aa;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0701be

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v3, v4, v0, v1}, Lcom/viber/voip/contacts/ui/aa;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->i:Lcom/viber/voip/contacts/ui/aa;

    .line 226
    invoke-direct {p0, v2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Landroid/view/View;)V

    .line 227
    sget-object v0, Lcom/viber/voip/contacts/ui/ad;->a:Lcom/viber/voip/contacts/ui/ad;

    invoke-direct {p0, v0, v5}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ad;Z)V

    .line 229
    return-object v2
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 1294
    invoke-super {p0}, Lcom/viber/voip/ui/am;->onDetach()V

    .line 1295
    sget-object v0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->P:Lcom/viber/voip/contacts/ui/ac;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->Q:Lcom/viber/voip/contacts/ui/ac;

    .line 1296
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 785
    .line 786
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->y:Z

    if-eqz v0, :cond_3

    .line 787
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a;

    invoke-virtual {v0, p3}, Lcom/a/a/a/a;->a(I)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 788
    instance-of v1, v0, Lcom/viber/voip/contacts/a/f;

    if-eqz v1, :cond_8

    .line 789
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p3, v1

    add-int/lit8 v1, v1, -0x2

    .line 790
    if-ltz v1, :cond_8

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 791
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/d/a;

    :goto_0
    move-object v6, v0

    .line 798
    :goto_1
    if-eqz v6, :cond_2

    .line 800
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->x:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->w:Z

    if-eqz v0, :cond_4

    .line 802
    iput-boolean v7, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->x:Z

    .line 803
    iget-wide v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->o:Lcom/viber/voip/contacts/c/d/b;

    iget-wide v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->s:J

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->q:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/contacts/c/d/b;->a(JLjava/lang/String;ILcom/viber/voip/contacts/c/d/ap;)V

    .line 806
    :cond_0
    invoke-static {v7}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Z)V

    .line 812
    :cond_1
    :goto_2
    sget-object v0, Lcom/viber/voip/contacts/d/b;->c:Lcom/viber/voip/contacts/d/b;

    iget-object v1, v6, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 813
    sget-object v1, Lcom/viber/voip/contacts/d/b;->a:Lcom/viber/voip/contacts/d/b;

    iget-object v2, v6, Lcom/viber/voip/contacts/d/a;->a:Lcom/viber/voip/contacts/d/b;

    invoke-virtual {v1, v2}, Lcom/viber/voip/contacts/d/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 814
    if-eqz v0, :cond_5

    .line 815
    sget-object v0, Lcom/viber/voip/contacts/ui/ae;->a:Lcom/viber/voip/contacts/ui/ae;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ae;)V

    .line 834
    :cond_2
    :goto_3
    return-void

    .line 794
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/contacts/d/a;

    if-eqz v0, :cond_7

    .line 795
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/d/a;

    move-object v6, v0

    goto :goto_1

    .line 808
    :cond_4
    invoke-static {v4}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Z)V

    goto :goto_2

    .line 816
    :cond_5
    if-eqz v1, :cond_6

    .line 817
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 821
    iget-object v0, v6, Lcom/viber/voip/contacts/d/a;->d:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 822
    new-instance v1, Lcom/viber/voip/billing/ae;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/viber/voip/billing/ae;-><init>(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v1}, Lcom/viber/voip/billing/ae;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/viber/voip/contacts/ui/f;

    invoke-direct {v2, p0, v1}, Lcom/viber/voip/contacts/ui/f;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/billing/ae;)V

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 831
    :cond_6
    invoke-direct {p0, v6}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Lcom/viber/voip/contacts/d/a;)V

    goto :goto_3

    :cond_7
    move-object v6, v5

    goto/16 :goto_1

    :cond_8
    move-object v0, v5

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 910
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 956
    invoke-super {p0, p1}, Lcom/viber/voip/ui/am;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v6

    :cond_0
    :goto_0
    return v6

    .line 912
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 913
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->J:Lcom/viber/voip/a/k;

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->i()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 914
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/bp;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 919
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->J:Lcom/viber/voip/a/k;

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->j()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 920
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/util/gv;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :pswitch_2
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->y:Z

    if-eqz v0, :cond_1

    .line 925
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentCallsManager()Lcom/viber/voip/calls/u;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->D:Ljava/util/List;

    new-instance v2, Lcom/viber/voip/contacts/ui/g;

    invoke-direct {v2, p0}, Lcom/viber/voip/contacts/ui/g;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/calls/u;->b(Ljava/util/Collection;Lcom/viber/voip/calls/y;)V

    goto :goto_0

    .line 933
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->s:J

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->q:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->v:Ljava/lang/String;

    new-instance v5, Lcom/viber/voip/contacts/ui/h;

    invoke-direct {v5, p0}, Lcom/viber/voip/contacts/ui/h;-><init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/bp;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 943
    :pswitch_3
    iget-boolean v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->I:Z

    if-nez v1, :cond_3

    .line 944
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->J:Lcom/viber/voip/a/k;

    invoke-virtual {v2}, Lcom/viber/voip/a/k;->g()Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 949
    :goto_1
    iget-boolean v1, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->I:Z

    if-nez v1, :cond_2

    move v0, v6

    :cond_2
    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Z)V

    .line 950
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->f()V

    goto :goto_0

    .line 946
    :cond_3
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->J:Lcom/viber/voip/a/k;

    invoke-virtual {v2}, Lcom/viber/voip/a/k;->h()Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1

    .line 953
    :pswitch_4
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->v:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->E:Ljava/util/Map;

    invoke-static {v1, v2, v3, v0}, Lcom/viber/voip/contacts/ui/bp;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Z)V

    goto/16 :goto_0

    .line 910
    :pswitch_data_0
    .packed-switch 0x7f07045f
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f07045f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 842
    const v2, 0x7f070461

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    .line 843
    invoke-interface {p1, v10}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    .line 844
    const v4, 0x7f070460

    invoke-interface {p1, v4}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v4

    .line 845
    const v5, 0x7f070462

    invoke-interface {p1, v5}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v5

    .line 847
    iget-wide v6, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->s:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 848
    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 849
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 850
    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 851
    :cond_2
    if-eqz v5, :cond_3

    iget-boolean v2, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->y:Z

    if-nez v2, :cond_4

    :goto_0
    invoke-interface {v5, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 860
    :cond_3
    :goto_1
    invoke-interface {p1, v10}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->F:Lcom/actionbarsherlock/view/MenuItem;

    .line 861
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->f()V

    .line 862
    const v0, 0x7f070463

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->G:Lcom/actionbarsherlock/view/MenuItem;

    .line 863
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->g()V

    .line 864
    return-void

    :cond_4
    move v0, v1

    .line 851
    goto :goto_0

    .line 853
    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 854
    :cond_6
    if-eqz v3, :cond_7

    invoke-interface {v3, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 855
    :cond_7
    if-eqz v4, :cond_8

    invoke-interface {v4, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 856
    :cond_8
    if-eqz v5, :cond_3

    invoke-interface {v5, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/viberout/promotion/a;->f:Lcom/viber/voip/viberout/promotion/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/viberout/e;->a(Lcom/viber/voip/viberout/promotion/a;)V

    .line 240
    invoke-super {p0}, Lcom/viber/voip/ui/am;->onStart()V

    .line 241
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->o:Lcom/viber/voip/contacts/c/d/b;

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/b;->a(Lcom/viber/voip/contacts/c/d/d;)V

    .line 250
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->p:Lcom/viber/voip/contacts/c/c/c;

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/c/c;->b(Lcom/viber/voip/contacts/c/c/d;)V

    .line 251
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Z)V

    .line 252
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->i:Lcom/viber/voip/contacts/ui/aa;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/aa;->a(Lcom/viber/voip/contacts/ui/aa;)Z

    .line 254
    invoke-super {p0}, Lcom/viber/voip/ui/am;->onStop()V

    .line 255
    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1301
    if-eqz v0, :cond_0

    .line 1302
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1304
    :cond_0
    return-void
.end method

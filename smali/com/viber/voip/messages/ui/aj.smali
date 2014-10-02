.class public Lcom/viber/voip/messages/ui/aj;
.super Lcom/viber/voip/messages/ui/k;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/messages/ui/a/b;
.implements Lcom/viber/voip/messages/ui/bn;
.implements Lcom/viber/voip/messages/ui/eh;
.implements Lcom/viber/voip/stickers/d/a;


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field private j:Z

.field private k:Lcom/viber/voip/messages/ui/TabListIndicator;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/Button;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/content/Context;

.field private q:Lcom/viber/voip/messages/ui/az;

.field private r:Lcom/viber/voip/messages/ui/aw;

.field private s:Lcom/viber/voip/stickers/r;

.field private t:Lcom/viber/voip/messages/ui/ay;

.field private u:Landroid/app/ProgressDialog;

.field private v:Lcom/viber/voip/stickers/al;

.field private w:Landroid/content/BroadcastReceiver;

.field private x:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/viber/voip/messages/ui/aj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/aj;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/viber/voip/messages/ui/u;Lcom/viber/voip/messages/ui/p;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 126
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/ui/k;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/viber/voip/messages/ui/u;Lcom/viber/voip/messages/ui/p;I)V

    .line 90
    iput-boolean v4, p0, Lcom/viber/voip/messages/ui/aj;->j:Z

    .line 106
    new-instance v0, Lcom/viber/voip/messages/ui/ak;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/ak;-><init>(Lcom/viber/voip/messages/ui/aj;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/aj;->v:Lcom/viber/voip/stickers/al;

    .line 118
    new-instance v0, Lcom/viber/voip/messages/ui/al;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/al;-><init>(Lcom/viber/voip/messages/ui/aj;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/aj;->w:Landroid/content/BroadcastReceiver;

    .line 413
    new-instance v0, Lcom/viber/voip/messages/ui/at;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/at;-><init>(Lcom/viber/voip/messages/ui/aj;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/aj;->x:Ljava/lang/Runnable;

    .line 128
    iput-object p1, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    .line 130
    new-instance v0, Lcom/viber/voip/messages/ui/az;

    invoke-direct {v0, p0, p1, v1}, Lcom/viber/voip/messages/ui/az;-><init>(Lcom/viber/voip/messages/ui/aj;Landroid/content/Context;Lcom/viber/voip/messages/ui/ak;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/aj;->q:Lcom/viber/voip/messages/ui/az;

    .line 131
    new-instance v0, Lcom/viber/voip/messages/ui/aw;

    invoke-direct {v0, p0, p1, v1}, Lcom/viber/voip/messages/ui/aw;-><init>(Lcom/viber/voip/messages/ui/aj;Landroid/content/Context;Lcom/viber/voip/messages/ui/ak;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/aj;->r:Lcom/viber/voip/messages/ui/aw;

    .line 133
    const v0, 0x7f070207

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/aj;->m:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->m:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f070208

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/aj;->o:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->w:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.viber.voip.stickers.notification.UPDATE_STICKER_PACKAGES_COUNT_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/aj;->a(I)V

    .line 140
    const v0, 0x7f070204

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/aj;->n:Landroid/view/View;

    .line 141
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "pref_menu_emoticons_stickers_switch"

    invoke-interface {v0, v1, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/aj;->j:Z

    .line 149
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/aj;->u:Landroid/app/ProgressDialog;

    .line 150
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->u:Landroid/app/ProgressDialog;

    const-string/jumbo v1, "Checking the package"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 152
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 153
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/aj;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 678
    .line 679
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 680
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 682
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 683
    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 684
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 685
    new-array v1, v5, [I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 687
    return-object v2
.end method

.method private a(IIZLandroid/graphics/drawable/Drawable;)Lcom/viber/voip/messages/ui/ei;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 559
    new-instance v0, Lcom/viber/voip/messages/ui/ei;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    const v2, 0x7f030129

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/ui/ei;-><init>(Landroid/content/Context;I)V

    .line 560
    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/ei;->setPackageId(I)V

    .line 561
    invoke-virtual {v0, p4}, Lcom/viber/voip/messages/ui/ei;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/ei;->setFocusable(Z)V

    .line 563
    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 156
    if-lez p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->o:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->o:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->o:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(ILjava/util/List;)V
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 598
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 599
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/aj;->l()Landroid/util/SparseArray;

    move-result-object v1

    .line 602
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v3, v9

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/d;

    .line 603
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v4

    if-ne v4, p1, :cond_3

    .line 604
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    .line 607
    :goto_1
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v3

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/viber/voip/messages/ui/aj;->b(IZ)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v8

    .line 608
    if-eqz v8, :cond_0

    .line 609
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v3

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v4

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->d()Z

    move-result v5

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v6

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/ui/aj;->a(Landroid/util/SparseArray;Ljava/util/List;IIZZZLandroid/graphics/drawable/Drawable;)V

    :goto_2
    move v3, v10

    .line 613
    goto :goto_0

    .line 611
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/messages/ui/aj;->s:Lcom/viber/voip/stickers/r;

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/stickers/r;->h(I)V

    goto :goto_2

    .line 621
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->k:Lcom/viber/voip/messages/ui/TabListIndicator;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/viber/voip/messages/ui/ei;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/ui/ei;

    invoke-virtual {v1, v0, v3}, Lcom/viber/voip/messages/ui/TabListIndicator;->a([Lcom/viber/voip/messages/ui/ei;I)V

    .line 622
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/aj;->b(I)V

    .line 623
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/aj;->j:Z

    if-eqz v0, :cond_2

    .line 624
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/aj;->c()V

    .line 628
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->n:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 629
    return-void

    .line 626
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/aj;->d()V

    goto :goto_3

    :cond_3
    move v10, v3

    goto :goto_1
.end method

.method private a(Landroid/util/SparseArray;Ljava/util/List;IIZZZLandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/messages/ui/ei;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/messages/ui/ei;",
            ">;IIZZZ",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 581
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/ei;

    .line 582
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/ei;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/ei;->getPackageId()I

    move-result v1

    if-eq v1, p3, :cond_1

    .line 583
    :cond_0
    invoke-direct {p0, p3, p4, p6, p8}, Lcom/viber/voip/messages/ui/aj;->a(IIZLandroid/graphics/drawable/Drawable;)Lcom/viber/voip/messages/ui/ei;

    move-result-object v0

    .line 585
    :cond_1
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/viber/voip/messages/ui/aj;->a(Lcom/viber/voip/messages/ui/ei;ZZZ)V

    .line 586
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/aj;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/aj;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/aj;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/aj;->a(Z)V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/ui/ei;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 568
    invoke-virtual {p1, p2}, Lcom/viber/voip/messages/ui/ei;->setShowNewPackageStatus(Z)V

    .line 569
    invoke-virtual {p1, p4}, Lcom/viber/voip/messages/ui/ei;->setIgnorePress(Z)V

    .line 570
    invoke-virtual {p1, p3}, Lcom/viber/voip/messages/ui/ei;->setPromotion(Z)V

    .line 577
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 692
    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 360
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/as;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/ui/as;-><init>(Lcom/viber/voip/messages/ui/aj;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    return-void
.end method

.method private b(IZ)Landroid/graphics/drawable/StateListDrawable;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0xb4

    .line 654
    const/16 v1, 0x190

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 656
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 657
    const-string/jumbo v2, "stickers_package_icons/<id>.png"

    const-string/jumbo v3, "<id>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/16 v3, 0xb4

    invoke-static {v2, v3}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 658
    const-string/jumbo v3, "stickers_package_icons/<id>.png"

    const-string/jumbo v4, "<id>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 659
    invoke-direct {p0, v2, v1}, Lcom/viber/voip/messages/ui/aj;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 673
    :goto_0
    return-object v0

    .line 660
    :catch_0
    move-exception v1

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error loading icon from asset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "stickers_package_icons/<id>.png"

    const-string/jumbo v3, "<id>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/aj;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_1
    invoke-static {p1}, Lcom/viber/voip/stickers/c/e;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 666
    invoke-static {p1}, Lcom/viber/voip/stickers/c/e;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 668
    if-nez v1, :cond_2

    .line 669
    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->s:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, p1}, Lcom/viber/voip/stickers/r;->h(I)V

    goto :goto_0

    .line 673
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/viber/voip/messages/ui/aj;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/aj;)Lcom/viber/voip/stickers/r;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->s:Lcom/viber/voip/stickers/r;

    return-object v0
.end method

.method private b(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 632
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 633
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 634
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 635
    if-ge v0, v1, :cond_0

    .line 637
    :goto_0
    add-int/lit8 v1, p1, 0x3

    mul-int/2addr v1, v2

    if-lt v1, v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->m:Landroid/widget/Button;

    const v1, 0x7f02022c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 639
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->m:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 640
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->m:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 641
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->m:Landroid/widget/Button;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v4}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 650
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 635
    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->m:Landroid/widget/Button;

    const v1, 0x7f020229

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 645
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->m:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 646
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->m:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 647
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->m:Landroid/widget/Button;

    const v1, 0x7f0c0649

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 648
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->o:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41a0

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v1

    invoke-static {v4}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/aj;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->u:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/aj;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->x:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/aj;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->n:Landroid/view/View;

    return-object v0
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 277
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    const v3, 0x7f0d0134

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 278
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 279
    const v2, 0x7f030133

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 280
    const v0, 0x7f0703d8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 282
    const-string/jumbo v3, "Enter sticker id"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    const-string/jumbo v3, "Sticker id"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 284
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 285
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v6

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 287
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 288
    const v3, 0x7f0c02b5

    new-instance v4, Lcom/viber/voip/messages/ui/ao;

    invoke-direct {v4, p0, v2, v0}, Lcom/viber/voip/messages/ui/ao;-><init>(Lcom/viber/voip/messages/ui/aj;Landroid/view/View;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 330
    const v2, 0x7f0c02b6

    invoke-virtual {v1, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 334
    new-instance v2, Lcom/viber/voip/messages/ui/ar;

    invoke-direct {v2, p0, v1}, Lcom/viber/voip/messages/ui/ar;-><init>(Lcom/viber/voip/messages/ui/aj;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 355
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 357
    return-void
.end method

.method private k()Z
    .locals 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 389
    const/4 v0, 0x0

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private l()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/messages/ui/ei;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 591
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->k:Lcom/viber/voip/messages/ui/TabListIndicator;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/TabListIndicator;->getTabItemView()[Lcom/viber/voip/messages/ui/ei;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 592
    invoke-virtual {v4}, Lcom/viber/voip/messages/ui/ei;->getPackageId()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 594
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 696
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/aj;->h:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 697
    :cond_0
    if-nez p1, :cond_1

    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/aj;->h:Z

    .line 700
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/aj;->a()Z

    .line 701
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/aj;->b()V

    .line 703
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->b:Landroid/view/View;

    const v1, 0x7f070202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(IZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 218
    packed-switch p1, :pswitch_data_0

    .line 239
    if-eqz p2, :cond_3

    .line 240
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/aj;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->t:Lcom/viber/voip/messages/ui/ay;

    if-nez v0, :cond_2

    .line 242
    :cond_0
    invoke-static {p1}, Lcom/viber/voip/market/MarketActivity;->d(I)V

    .line 259
    :cond_1
    :goto_0
    return-void

    .line 220
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "Deleting packages"

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 222
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/ui/am;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/messages/ui/am;-><init>(Lcom/viber/voip/messages/ui/aj;Landroid/app/ProgressDialog;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v3, v2, v0}, Lcom/viber/voip/stickers/r;->a(ZLjava/lang/Runnable;Z)V

    goto :goto_0

    .line 232
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->m()V

    .line 233
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    const-string/jumbo v1, "All package names where deleted"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 236
    :pswitch_2
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/aj;->j()V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->t:Lcom/viber/voip/messages/ui/ay;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/ui/ay;->e_(I)V

    goto :goto_0

    .line 248
    :cond_3
    iput p1, p0, Lcom/viber/voip/messages/ui/aj;->f:I

    .line 249
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->d:Lcom/viber/voip/messages/ui/a/a;

    new-instance v1, Lcom/viber/voip/messages/ui/an;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/an;-><init>(Lcom/viber/voip/messages/ui/aj;)V

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/messages/ui/a/a;->a(ILcom/viber/voip/messages/adapters/u;)V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/viber/voip/messages/ui/ay;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/viber/voip/messages/ui/aj;->t:Lcom/viber/voip/messages/ui/ay;

    .line 428
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    const-string/jumbo v0, "onStickerPackageChanged"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/aj;->a(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->d:Lcom/viber/voip/messages/ui/a/a;

    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->s:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->v()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/aj;->f:I

    .line 195
    iget v0, p0, Lcom/viber/voip/messages/ui/aj;->f:I

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/ui/aj;->a(ILjava/util/List;)V

    .line 196
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->d:Lcom/viber/voip/messages/ui/a/a;

    iget v1, p0, Lcom/viber/voip/messages/ui/aj;->f:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/ui/a/a;->a(ILcom/viber/voip/messages/adapters/u;)V

    goto :goto_0
.end method

.method protected a()Z
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->b:Landroid/view/View;

    const v1, 0x7f070205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/aj;->l:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->l:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->b:Landroid/view/View;

    const v1, 0x7f070206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/TabListIndicator;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/aj;->k:Lcom/viber/voip/messages/ui/TabListIndicator;

    .line 169
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->k:Lcom/viber/voip/messages/ui/TabListIndicator;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/ui/TabListIndicator;->setTabClickListener(Lcom/viber/voip/messages/ui/eh;)V

    .line 170
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->k:Lcom/viber/voip/messages/ui/TabListIndicator;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/settings/j;->ai()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/TabListIndicator;->setAnimateToTab(Z)V

    .line 172
    invoke-super {p0}, Lcom/viber/voip/messages/ui/k;->a()Z

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->d:Lcom/viber/voip/messages/ui/a/a;

    invoke-interface {v1, p0}, Lcom/viber/voip/messages/ui/a/a;->a(Lcom/viber/voip/messages/ui/a/b;)V

    .line 175
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/ui/aj;->s:Lcom/viber/voip/stickers/r;

    .line 176
    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->s:Lcom/viber/voip/stickers/r;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/aj;->v:Lcom/viber/voip/stickers/al;

    invoke-virtual {v1, v2}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/d/b;)V

    .line 177
    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->s:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, p0}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/d/a;)V

    .line 179
    iget v1, p0, Lcom/viber/voip/messages/ui/aj;->f:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/aj;->s:Lcom/viber/voip/stickers/r;

    invoke-virtual {v2}, Lcom/viber/voip/stickers/r;->f()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/viber/voip/messages/ui/aj;->a(ILjava/util/List;)V

    .line 181
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/aj;->j:Z

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/aj;->c()V

    .line 186
    :goto_0
    return v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/aj;->d()V

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 373
    invoke-super {p0}, Lcom/viber/voip/messages/ui/k;->c()V

    .line 374
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 375
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/aj;->j:Z

    .line 376
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->k:Lcom/viber/voip/messages/ui/TabListIndicator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/TabListIndicator;->setCurrentItem(I)V

    .line 377
    return-void
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 381
    invoke-super {p0}, Lcom/viber/voip/messages/ui/k;->d()V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/aj;->j:Z

    .line 383
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 384
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 201
    const-string/jumbo v0, "detach"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/aj;->a(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/aj;->h:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->s:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0, p0}, Lcom/viber/voip/stickers/r;->b(Lcom/viber/voip/stickers/d/a;)V

    .line 207
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->s:Lcom/viber/voip/stickers/r;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->v:Lcom/viber/voip/stickers/al;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->b(Lcom/viber/voip/stickers/d/b;)V

    .line 210
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "pref_menu_emoticons_stickers_switch"

    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/aj;->j:Z

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 211
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->q:Lcom/viber/voip/messages/ui/az;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    invoke-super {p0}, Lcom/viber/voip/messages/ui/k;->e()V

    .line 214
    return-void
.end method

.method public g()V
    .locals 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->r:Lcom/viber/voip/messages/ui/aw;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/aw;->run()V

    .line 399
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->q:Lcom/viber/voip/messages/ui/az;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 400
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->q:Lcom/viber/voip/messages/ui/az;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 401
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->q:Lcom/viber/voip/messages/ui/az;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/az;->run()V

    .line 406
    return-void
.end method

.method public i()V
    .locals 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/aj;->q:Lcom/viber/voip/messages/ui/az;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->m:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 264
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/aj;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->p:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->t:Lcom/viber/voip/messages/ui/ay;

    if-nez v0, :cond_2

    .line 266
    :cond_0
    invoke-static {}, Lcom/viber/voip/market/MarketActivity;->a()V

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->t:Lcom/viber/voip/messages/ui/ay;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ay;->f_()V

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/aj;->l:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/aj;->c()V

    goto :goto_0
.end method

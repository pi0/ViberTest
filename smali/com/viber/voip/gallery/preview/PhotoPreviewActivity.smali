.class public Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;
.super Lcom/viber/voip/gallery/preview/DoodleBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/viber/voip/gallery/preview/ad;
.implements Lcom/viber/voip/gallery/preview/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/gallery/preview/DoodleBaseActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/viber/voip/gallery/GalleryItem;",
        ">;>;",
        "Lcom/viber/voip/gallery/preview/ad;",
        "Lcom/viber/voip/gallery/preview/n;"
    }
.end annotation


# instance fields
.field private r:Lcom/actionbarsherlock/app/ActionBar;

.field private s:Lcom/viber/voip/as;

.field private t:Lcom/viber/voip/gallery/preview/ae;

.field private u:Lcom/viber/voip/gallery/preview/o;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/viber/voip/messages/ui/bb;

.field private x:Z

.field private y:Lcom/viber/voip/ax;

.field private z:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Lcom/viber/voip/gallery/preview/v;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/preview/v;-><init>(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->y:Lcom/viber/voip/ax;

    .line 439
    new-instance v0, Lcom/viber/voip/gallery/preview/y;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/preview/y;-><init>(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->z:Landroid/text/TextWatcher;

    return-void
.end method

.method public static a(Lcom/viber/voip/messages/conversation/ui/ConversationData;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/conversation/ui/ConversationData;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.PREVIEW_PHOTO_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v1, "image_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 125
    const-string/jumbo v1, "extra_conversation_data"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    return-object v0
.end method

.method public static a(Lcom/viber/voip/messages/conversation/ui/ConversationData;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/conversation/ui/ConversationData;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 107
    invoke-static {v0}, Lcom/viber/voip/gallery/GalleryItem;->a(Landroid/net/Uri;)Lcom/viber/voip/gallery/GalleryItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {p0, v1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Lcom/viber/voip/messages/conversation/ui/ConversationData;[Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 116
    invoke-static {v3}, Lcom/viber/voip/gallery/GalleryItem;->a(Landroid/net/Uri;)Lcom/viber/voip/gallery/GalleryItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {p0, v1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 476
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0620

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 477
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 478
    const-string/jumbo v1, "image_uri_list"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 479
    const-string/jumbo v1, "max_size"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 480
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v5, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 481
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 188
    const-string/jumbo v0, "image_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 189
    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 194
    if-le v1, v2, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a()V

    .line 196
    invoke-direct {p0, v2, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(ILjava/util/ArrayList;)V

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    const-string/jumbo v1, "photo_preview"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 201
    return-void

    .line 198
    :cond_1
    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/gallery/preview/j;)V
    .locals 4
    .parameter

    .prologue
    .line 525
    sget-object v0, Lcom/viber/voip/gallery/preview/j;->a:Lcom/viber/voip/gallery/preview/j;

    if-ne p1, v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    iget v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->p:I

    invoke-virtual {p1, v1}, Lcom/viber/voip/gallery/preview/j;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/preview/o;->a(I)V

    .line 532
    :goto_0
    return-void

    .line 527
    :cond_0
    sget-object v0, Lcom/viber/voip/gallery/preview/j;->b:Lcom/viber/voip/gallery/preview/j;

    if-ne p1, v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    iget v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->o:I

    invoke-virtual {p1, v1}, Lcom/viber/voip/gallery/preview/j;->a(I)I

    move-result v1

    iget v2, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->n:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/gallery/preview/o;->a(II)V

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    iget v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->n:I

    invoke-virtual {p1}, Lcom/viber/voip/gallery/preview/j;->a()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->o:I

    invoke-virtual {p1, v3}, Lcom/viber/voip/gallery/preview/j;->a(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/gallery/preview/o;->a(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/gallery/preview/j;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/ae;->b()I

    move-result v1

    .line 509
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 510
    sget-object v0, Lcom/viber/voip/gallery/preview/j;->a:Lcom/viber/voip/gallery/preview/j;

    if-ne p1, v0, :cond_1

    .line 511
    iget v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->p:I

    invoke-virtual {p1, v0}, Lcom/viber/voip/gallery/preview/j;->a(I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/viber/voip/gallery/preview/o;->a(IZ)Lcom/viber/voip/gallery/preview/o;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    .line 516
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->b()Landroid/net/Uri;

    move-result-object v0

    .line 517
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    iget-object v3, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->s:Lcom/viber/voip/as;

    invoke-virtual {v3, v1, v0}, Lcom/viber/voip/as;->a(ILandroid/net/Uri;)Lcom/viber/voip/aw;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/viber/voip/gallery/preview/o;->a(Landroid/net/Uri;Lcom/viber/voip/aw;)V

    .line 518
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->s:Lcom/viber/voip/as;

    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/as;->d(ILandroid/net/Uri;)V

    .line 520
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    const-string/jumbo v1, "photo_edit"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->b(Landroid/support/v4/app/Fragment;Ljava/lang/String;Z)V

    .line 522
    :cond_0
    return-void

    .line 513
    :cond_1
    iget v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->o:I

    invoke-virtual {p1, v0}, Lcom/viber/voip/gallery/preview/j;->a(I)I

    move-result v0

    iget v2, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->n:I

    invoke-virtual {p1}, Lcom/viber/voip/gallery/preview/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3, p2}, Lcom/viber/voip/gallery/preview/o;->a(IILjava/lang/String;Z)Lcom/viber/voip/gallery/preview/o;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->w:Lcom/viber/voip/messages/ui/bb;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f:Landroid/widget/EditText;

    sget v2, Lcom/viber/voip/messages/ui/bd;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZ)V

    .line 360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 361
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Lcom/viber/voip/gallery/preview/ae;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Lcom/viber/voip/gallery/preview/o;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Lcom/viber/voip/as;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->s:Lcom/viber/voip/as;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->x:Z

    return v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->r:Lcom/actionbarsherlock/app/ActionBar;

    .line 167
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->z:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 168
    new-instance v0, Lcom/viber/voip/messages/ui/bb;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->w:Lcom/viber/voip/messages/ui/bb;

    .line 170
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    new-instance v1, Lcom/viber/voip/gallery/preview/w;

    invoke-direct {v1, p0}, Lcom/viber/voip/gallery/preview/w;-><init>(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;->setPositioningListener(Lcom/viber/voip/messages/ui/dv;)V

    .line 185
    return-void
.end method

.method static synthetic g(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->h()V

    return-void
.end method

.method static synthetic h(Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;)Lcom/viber/voip/messages/ui/bb;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->w:Lcom/viber/voip/messages/ui/bb;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 204
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/preview/ae;->a(Ljava/util/ArrayList;)V

    .line 206
    iput-boolean v2, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->x:Z

    .line 208
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/ae;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->c(I)V

    .line 210
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "gallery_coach_show"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/gallery/GalleryCoach;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "gallery_coach_show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 214
    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 333
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 334
    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/ae;->b()I

    move-result v1

    .line 486
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->a()Landroid/net/Uri;

    move-result-object v0

    .line 488
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->s:Lcom/viber/voip/as;

    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/as;->a(ILandroid/net/Uri;)Lcom/viber/voip/aw;

    move-result-object v2

    .line 489
    if-nez v2, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a()V

    .line 491
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->s:Lcom/viber/voip/as;

    invoke-virtual {v2, v1, v0}, Lcom/viber/voip/as;->b(ILandroid/net/Uri;)V

    .line 501
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->h()V

    goto :goto_0

    .line 499
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->h()V

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/o;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 245
    invoke-super {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->a()V

    .line 246
    return-void
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->r:Lcom/actionbarsherlock/app/ActionBar;

    const v1, 0x7f0c061f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/ae;->b()I

    move-result v1

    .line 234
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    .line 236
    invoke-virtual {v0, p1}, Lcom/viber/voip/gallery/GalleryItem;->b(Landroid/net/Uri;)V

    .line 237
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->s:Lcom/viber/voip/as;

    invoke-virtual {v0, v1, p2}, Lcom/viber/voip/as;->a(ILandroid/graphics/Bitmap;)V

    .line 238
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->onBackPressed()V

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->b()V

    .line 241
    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 319
    invoke-virtual {p0, p2}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Ljava/util/ArrayList;)V

    .line 320
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->x:Z

    .line 220
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    .line 221
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->j()V

    .line 222
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->b()V

    .line 251
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    .line 340
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/GalleryItem;->a(Ljava/lang/String;)V

    .line 343
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->c()V

    .line 229
    return-void
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/GalleryItem;

    .line 349
    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->c()Ljava/lang/String;

    move-result-object v0

    .line 350
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Ljava/lang/String;Z)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->f:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 367
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->i()V

    .line 299
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->s:Lcom/viber/voip/as;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->s:Lcom/viber/voip/as;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->y:Lcom/viber/voip/ax;

    invoke-virtual {v0, v1}, Lcom/viber/voip/as;->b(Lcom/viber/voip/ax;)V

    .line 301
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->s:Lcom/viber/voip/as;

    invoke-virtual {v0}, Lcom/viber/voip/as;->b()V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/preview/ae;->a(Lcom/viber/voip/as;)V

    .line 305
    invoke-super {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->finish()V

    .line 306
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_5

    .line 266
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/ae;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->b(I)V

    .line 268
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "open_on_canceled_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 269
    if-eqz v0, :cond_4

    .line 271
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 272
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/gallery/GalleryItem;

    .line 273
    invoke-virtual {v1}, Lcom/viber/voip/gallery/GalleryItem;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/viber/voip/gallery/GalleryItem;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 277
    sget-object v1, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/viber/voip/gallery/preview/a;

    invoke-direct {v3, v2}, Lcom/viber/voip/gallery/preview/a;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    :cond_2
    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 294
    :cond_3
    :goto_1
    return-void

    .line 281
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    const-string/jumbo v1, "image_list"

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 284
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 285
    invoke-super {p0}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onBackPressed()V

    goto :goto_1

    .line 288
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    .line 289
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->c()V

    .line 290
    iget-boolean v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->x:Z

    if-nez v0, :cond_3

    .line 291
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->h()V

    goto :goto_1
.end method

.method public onBackgroundChangeClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 381
    invoke-super {p0, p1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onBackgroundChangeClick(Landroid/view/View;)V

    .line 382
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/o;->b()V

    .line 383
    :cond_0
    return-void
.end method

.method public onBrushSelected(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 387
    invoke-super {p0, p1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onBrushSelected(Landroid/view/View;)V

    .line 388
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->q:Lcom/viber/voip/gallery/preview/j;

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/j;)V

    .line 389
    :cond_0
    return-void
.end method

.method public onBrushSelectorClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 411
    invoke-super {p0, p1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onBrushSelectorClick(Landroid/view/View;)V

    .line 412
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->q:Lcom/viber/voip/gallery/preview/j;

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/j;)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->q:Lcom/viber/voip/gallery/preview/j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/j;Z)V

    goto :goto_0
.end method

.method public onBrushSizeSelected(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onBrushSizeSelected(Landroid/view/View;)V

    .line 394
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->q:Lcom/viber/voip/gallery/preview/j;

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/j;)V

    .line 395
    :cond_0
    return-void
.end method

.method public onClearClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 371
    invoke-super {p0, p1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onClearClick(Landroid/view/View;)V

    .line 372
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/preview/o;->a()V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->q:Lcom/viber/voip/gallery/preview/j;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/j;Z)V

    goto :goto_0
.end method

.method public onColorSelected(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onColorSelected(Landroid/view/View;)V

    .line 406
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->q:Lcom/viber/voip/gallery/preview/j;

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/j;)V

    .line 407
    :cond_0
    return-void
.end method

.method public onColorSelectorClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 431
    invoke-super {p0, p1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onColorSelectorClick(Landroid/view/View;)V

    .line 432
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->q:Lcom/viber/voip/gallery/preview/j;

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/j;)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->q:Lcom/viber/voip/gallery/preview/j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/j;Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;->getWidth()I

    move-result v1

    const v2, 0x7f0a019b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 135
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a:Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/PositioningAwareFrameLayout;->getHeight()I

    move-result v2

    const v3, 0x7f0a019d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    const v4, 0x7f0a019c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    sub-int v0, v2, v0

    .line 136
    new-instance v2, Lcom/viber/voip/as;

    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v4, 0x3f00

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/viber/voip/as;-><init>(Landroid/content/Context;FFF)V

    iput-object v2, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->s:Lcom/viber/voip/as;

    .line 137
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->s:Lcom/viber/voip/as;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->y:Lcom/viber/voip/ax;

    invoke-virtual {v0, v1}, Lcom/viber/voip/as;->a(Lcom/viber/voip/ax;)V

    .line 139
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->g()V

    .line 140
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 141
    const-string/jumbo v0, "photo_preview"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/preview/ae;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    .line 142
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "extra_conversation_data"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 144
    invoke-static {v0}, Lcom/viber/voip/gallery/preview/ae;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)Lcom/viber/voip/gallery/preview/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->t:Lcom/viber/voip/gallery/preview/ae;

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->s:Lcom/viber/voip/as;

    invoke-virtual {v0, v2}, Lcom/viber/voip/gallery/preview/ae;->a(Lcom/viber/voip/as;)V

    .line 149
    if-eqz p1, :cond_1

    .line 150
    const-string/jumbo v0, "photo_data_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    .line 151
    const-string/jumbo v0, "photo_edit"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/preview/o;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->u:Lcom/viber/voip/gallery/preview/o;

    .line 152
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(I)V

    .line 153
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->j()V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 310
    const-string/jumbo v0, "image_uri_list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 311
    new-instance v1, Lcom/viber/voip/gallery/a/f;

    const-string/jumbo v2, "max_size"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/viber/voip/gallery/a/f;-><init>(Ljava/util/List;ILandroid/content/Context;)V

    return-object v1
.end method

.method public onEraserSelectorClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 421
    invoke-super {p0, p1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onEraserSelectorClick(Landroid/view/View;)V

    .line 422
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    sget-object v0, Lcom/viber/voip/gallery/preview/j;->a:Lcom/viber/voip/gallery/preview/j;

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/j;)V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    sget-object v0, Lcom/viber/voip/gallery/preview/j;->a:Lcom/viber/voip/gallery/preview/j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/j;Z)V

    goto :goto_0
.end method

.method public onEraserSizeSelected(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onEraserSizeSelected(Landroid/view/View;)V

    .line 400
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/gallery/preview/j;->a:Lcom/viber/voip/gallery/preview/j;

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/gallery/preview/j;)V

    .line 401
    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Landroid/support/v4/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/gallery/GalleryItem;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 325
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 255
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_0
    return v1

    .line 257
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->onBackPressed()V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/viber/voip/gallery/preview/DoodleBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    const-string/jumbo v0, "photo_data_list"

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 163
    return-void
.end method

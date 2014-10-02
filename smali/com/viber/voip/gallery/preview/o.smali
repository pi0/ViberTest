.class public Lcom/viber/voip/gallery/preview/o;
.super Lcom/viber/voip/ui/al;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/widget/s;


# static fields
.field private static final a:I


# instance fields
.field private b:Lcom/actionbarsherlock/view/MenuItem;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/viber/voip/widget/PhotoDoodleView;

.field private e:Lcom/viber/voip/gallery/preview/n;

.field private f:Landroid/net/Uri;

.field private g:Lcom/viber/voip/aw;

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/Handler;

.field private j:Lcom/viber/voip/gallery/preview/t;

.field private k:Lcom/viber/voip/gallery/preview/u;

.field private l:Z

.field private m:Landroid/content/Context;

.field private n:Landroid/view/View$OnTouchListener;

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v0, 0x500

    const/high16 v2, 0x4420

    .line 52
    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v1

    if-gt v1, v0, :cond_0

    invoke-static {v2}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    :cond_0
    sput v0, Lcom/viber/voip/gallery/preview/o;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/ui/al;-><init>()V

    .line 74
    new-instance v0, Lcom/viber/voip/gallery/preview/p;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/preview/p;-><init>(Lcom/viber/voip/gallery/preview/o;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/o;->n:Landroid/view/View$OnTouchListener;

    .line 82
    new-instance v0, Lcom/viber/voip/gallery/preview/q;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/preview/q;-><init>(Lcom/viber/voip/gallery/preview/o;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/o;->o:Landroid/view/View$OnClickListener;

    .line 376
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/preview/o;)Lcom/viber/voip/gallery/preview/n;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->e:Lcom/viber/voip/gallery/preview/n;

    return-object v0
.end method

.method public static a(IILjava/lang/String;Z)Lcom/viber/voip/gallery/preview/o;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v0, Lcom/viber/voip/gallery/preview/o;

    invoke-direct {v0}, Lcom/viber/voip/gallery/preview/o;-><init>()V

    .line 104
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 105
    const-string/jumbo v2, "brush_size"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string/jumbo v2, "brush_color"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string/jumbo v2, "custom_brush_path"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string/jumbo v2, "clear_doodle"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/preview/o;->setArguments(Landroid/os/Bundle;)V

    .line 110
    return-object v0
.end method

.method public static a(IZ)Lcom/viber/voip/gallery/preview/o;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 90
    new-instance v0, Lcom/viber/voip/gallery/preview/o;

    invoke-direct {v0}, Lcom/viber/voip/gallery/preview/o;-><init>()V

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string/jumbo v2, "eraser_size"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string/jumbo v2, "clear_doodle"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/preview/o;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/gallery/preview/o;Lcom/viber/voip/gallery/preview/t;)Lcom/viber/voip/gallery/preview/t;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/o;->j:Lcom/viber/voip/gallery/preview/t;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/gallery/preview/o;Lcom/viber/voip/gallery/preview/u;)Lcom/viber/voip/gallery/preview/u;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/o;->k:Lcom/viber/voip/gallery/preview/u;

    return-object p1
.end method

.method private a(Lcom/viber/voip/aw;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    if-nez p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->f:Landroid/net/Uri;

    invoke-static {v0}, Lcom/viber/voip/gallery/b/a;->a(Landroid/net/Uri;)Z

    move-result v0

    .line 170
    if-eqz v0, :cond_2

    .line 171
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v1, v4}, Lcom/viber/voip/widget/PhotoDoodleView;->setCanvasDirty(Z)V

    .line 173
    :cond_2
    iget-boolean v1, p1, Lcom/viber/voip/aw;->b:Z

    if-eqz v1, :cond_3

    .line 174
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    iget-object v2, p1, Lcom/viber/voip/aw;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v4}, Lcom/viber/voip/widget/PhotoDoodleView;->a(Landroid/graphics/Bitmap;Z)V

    .line 175
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v1, v3}, Lcom/viber/voip/widget/PhotoDoodleView;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lcom/viber/voip/gallery/preview/t;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->f:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/o;->m:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/voip/gallery/preview/t;-><init>(Lcom/viber/voip/gallery/preview/o;Landroid/net/Uri;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/o;->j:Lcom/viber/voip/gallery/preview/t;

    .line 180
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->j:Lcom/viber/voip/gallery/preview/t;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 184
    iget v1, p1, Lcom/viber/voip/aw;->d:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget v1, p1, Lcom/viber/voip/aw;->c:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->c:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/viber/voip/aw;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 187
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0, v5}, Lcom/viber/voip/widget/PhotoDoodleView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/gallery/preview/o;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/viber/voip/gallery/preview/o;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/gallery/preview/o;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/gallery/preview/o;->g()V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/gallery/preview/o;)Lcom/viber/voip/widget/PhotoDoodleView;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/gallery/preview/o;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/viber/voip/gallery/preview/o;->l:Z

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/viber/voip/gallery/preview/o;->a:I

    return v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->k:Lcom/viber/voip/gallery/preview/u;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->k:Lcom/viber/voip/gallery/preview/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/o;->k:Lcom/viber/voip/gallery/preview/u;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhotoDoodleView;->getDoodle()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v1}, Lcom/viber/voip/widget/PhotoDoodleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 292
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/gallery/preview/o;->e:Lcom/viber/voip/gallery/preview/n;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/viber/voip/gallery/preview/o;->e:Lcom/viber/voip/gallery/preview/n;

    invoke-interface {v2}, Lcom/viber/voip/gallery/preview/n;->a()V

    .line 295
    :cond_3
    new-instance v2, Lcom/viber/voip/gallery/preview/u;

    iget-object v3, p0, Lcom/viber/voip/gallery/preview/o;->f:Landroid/net/Uri;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/viber/voip/gallery/preview/u;-><init>(Lcom/viber/voip/gallery/preview/o;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/viber/voip/gallery/preview/o;->k:Lcom/viber/voip/gallery/preview/u;

    .line 296
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->k:Lcom/viber/voip/gallery/preview/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhotoDoodleView;->c()V

    .line 259
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/PhotoDoodleView;->a(I)V

    .line 255
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/widget/PhotoDoodleView;->a(II)V

    .line 247
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/widget/PhotoDoodleView;->a(ILjava/lang/String;I)V

    .line 243
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->i:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/gallery/preview/s;

    invoke-direct {v1, p0, p2, p1}, Lcom/viber/voip/gallery/preview/s;-><init>(Lcom/viber/voip/gallery/preview/o;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->i:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/gallery/preview/r;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/gallery/preview/r;-><init>(Lcom/viber/voip/gallery/preview/o;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    return-void
.end method

.method public a(Landroid/net/Uri;Lcom/viber/voip/aw;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/viber/voip/gallery/preview/o;->f:Landroid/net/Uri;

    .line 234
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    if-nez v0, :cond_0

    .line 235
    iput-object p2, p0, Lcom/viber/voip/gallery/preview/o;->g:Lcom/viber/voip/aw;

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-direct {p0, p2}, Lcom/viber/voip/gallery/preview/o;->a(Lcom/viber/voip/aw;)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhotoDoodleView;->f()V

    .line 264
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 270
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 276
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 282
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/o;->setHasOptionsMenu(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/o;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment requires arguments."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    const-string/jumbo v1, "eraser_size"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 128
    const-string/jumbo v2, "brush_color"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 129
    const-string/jumbo v3, "brush_size"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 130
    const-string/jumbo v4, "custom_brush_path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    if-eqz p1, :cond_1

    .line 132
    const-string/jumbo v0, "clear_doodle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/gallery/preview/o;->l:Z

    .line 137
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/o;->m:Landroid/content/Context;

    .line 139
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/o;->i:Landroid/os/Handler;

    .line 140
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/o;->h:Landroid/os/Handler;

    .line 142
    invoke-virtual {p0}, Lcom/viber/voip/gallery/preview/o;->getView()Landroid/view/View;

    move-result-object v5

    .line 143
    const v0, 0x7f07032d

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/o;->c:Landroid/widget/ImageView;

    .line 144
    const v0, 0x7f07035e

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/PhotoDoodleView;

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    .line 145
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/PhotoDoodleView;->setDoodleListener(Lcom/viber/voip/widget/s;)V

    .line 146
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    iget-object v5, p0, Lcom/viber/voip/gallery/preview/o;->n:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v5}, Lcom/viber/voip/widget/PhotoDoodleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/PhotoDoodleView;->setPaintColor(I)V

    .line 149
    if-lez v1, :cond_2

    .line 150
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/PhotoDoodleView;->a(I)V

    .line 157
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->g:Lcom/viber/voip/aw;

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/preview/o;->a(Lcom/viber/voip/aw;)V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/o;->g:Lcom/viber/voip/aw;

    .line 159
    return-void

    .line 134
    :cond_1
    const-string/jumbo v5, "clear_doodle"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/gallery/preview/o;->l:Z

    goto :goto_0

    .line 151
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0, v3, v2}, Lcom/viber/voip/widget/PhotoDoodleView;->a(II)V

    goto :goto_1

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0, v2, v4, v3}, Lcom/viber/voip/widget/PhotoDoodleView;->a(ILjava/lang/String;I)V

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onAttach(Landroid/app/Activity;)V

    .line 207
    const-class v0, Lcom/viber/voip/gallery/preview/n;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "parent activity must implement PhotoEditController"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    check-cast p1, Lcom/viber/voip/gallery/preview/n;

    iput-object p1, p0, Lcom/viber/voip/gallery/preview/o;->e:Lcom/viber/voip/gallery/preview/n;

    .line 212
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 224
    const v0, 0x7f100020

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 227
    const v0, 0x7f070450

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/o;->b:Lcom/actionbarsherlock/view/MenuItem;

    .line 228
    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->b:Lcom/actionbarsherlock/view/MenuItem;

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhotoDoodleView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 229
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->b:Lcom/actionbarsherlock/view/MenuItem;

    const v1, 0x7f02006c

    const v2, 0x7f0c0537

    iget-object v3, p0, Lcom/viber/voip/gallery/preview/o;->o:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/view/MenuItem;IILandroid/view/View$OnClickListener;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 230
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    const v0, 0x7f0300fd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhotoDoodleView;->d()V

    .line 196
    iput-object v1, p0, Lcom/viber/voip/gallery/preview/o;->d:Lcom/viber/voip/widget/PhotoDoodleView;

    .line 197
    iput-object v1, p0, Lcom/viber/voip/gallery/preview/o;->c:Landroid/widget/ImageView;

    .line 198
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->k:Lcom/viber/voip/gallery/preview/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->k:Lcom/viber/voip/gallery/preview/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->j:Lcom/viber/voip/gallery/preview/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/gallery/preview/o;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/gallery/preview/o;->j:Lcom/viber/voip/gallery/preview/t;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    :cond_1
    invoke-super {p0}, Lcom/viber/voip/ui/al;->onDestroyView()V

    .line 201
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/gallery/preview/o;->e:Lcom/viber/voip/gallery/preview/n;

    .line 219
    invoke-super {p0}, Lcom/viber/voip/ui/al;->onDetach()V

    .line 220
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 163
    const-string/jumbo v0, "clear_doodle"

    iget-boolean v1, p0, Lcom/viber/voip/gallery/preview/o;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    return-void
.end method

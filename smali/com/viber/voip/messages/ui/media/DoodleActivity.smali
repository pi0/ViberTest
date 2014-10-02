.class public Lcom/viber/voip/messages/ui/media/DoodleActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/viber/voip/messages/extras/doodle/b;


# static fields
.field protected static a:I

.field private static c:I

.field private static final d:[Ljava/lang/Integer;

.field private static final e:[[I


# instance fields
.field private A:Z

.field private B:Ljava/lang/Runnable;

.field public b:Lcom/actionbarsherlock/view/MenuItem;

.field private f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/graphics/drawable/LayerDrawable;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/view/ViewGroup;

.field private p:Landroid/view/ViewGroup;

.field private q:I

.field private r:[Landroid/view/View;

.field private s:I

.field private t:I

.field private u:I

.field private v:Lcom/viber/voip/messages/ui/media/f;

.field private w:Landroid/net/Uri;

.field private x:Landroid/os/Handler;

.field private y:Landroid/app/ProgressDialog;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    sput v3, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a:I

    .line 84
    const/4 v0, -0x1

    sput v0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->c:I

    .line 96
    new-array v0, v6, [Ljava/lang/Integer;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->d:[Ljava/lang/Integer;

    .line 98
    new-array v0, v5, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v6, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->e:[[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x11t 0xadt 0xfet 0xfft
        0x11t 0xdft 0xfet 0xfft
        0x1ct 0xb4t 0x11t 0xfft
        0xdbt 0xb5t 0x52t 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0x77t 0x77t 0x77t 0xfft
        0xd7t 0x6ft 0xa7t 0xfft
        0x9dt 0x51t 0x7bt 0xfft
        0x30t 0x3bt 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 68
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    .line 120
    sget v0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->c:I

    iput v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->q:I

    .line 124
    iput v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->s:I

    .line 125
    iput v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->t:I

    .line 126
    const v0, -0x84ae63

    iput v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->u:I

    .line 127
    sget-object v0, Lcom/viber/voip/messages/ui/media/f;->b:Lcom/viber/voip/messages/ui/media/f;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->x:Landroid/os/Handler;

    .line 657
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->A:Z

    .line 658
    new-instance v0, Lcom/viber/voip/messages/ui/media/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/media/e;-><init>(Lcom/viber/voip/messages/ui/media/DoodleActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->B:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter

    .prologue
    .line 734
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    return-object p1
.end method

.method private a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 739
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 740
    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/DoodleActivity;)Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 326
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->m:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->m:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 329
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 370
    sget-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/viber/voip/messages/ui/media/c;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/ui/media/c;-><init>(Lcom/viber/voip/messages/ui/media/DoodleActivity;Landroid/graphics/Bitmap;Landroid/content/Context;ZLjava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x2d0

    const/16 v2, 0x297

    const/4 v1, 0x0

    .line 518
    invoke-static {p0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->z:Z

    .line 520
    sget v0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a:I

    invoke-static {p1, v0, v3, v1}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;IIZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 525
    :goto_0
    return-void

    .line 522
    :cond_0
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->z:Z

    .line 523
    sget v0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a:I

    invoke-static {p1, v3, v0, v1}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/net/Uri;IIZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    if-eqz p1, :cond_0

    const-string/jumbo v0, "menu_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 208
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_1
    return-void

    .line 206
    :cond_0
    sget v0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->c:I

    goto :goto_0

    .line 210
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Landroid/view/ViewGroup;[Ljava/lang/Object;Z)Z

    goto :goto_1

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->o:Landroid/view/ViewGroup;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Landroid/view/ViewGroup;[Ljava/lang/Object;Z)Z

    goto :goto_1

    .line 216
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->p:Landroid/view/ViewGroup;

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->u:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Landroid/view/ViewGroup;[Ljava/lang/Object;Z)Z

    goto :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x7f07024e
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 678
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 680
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 681
    if-eqz p3, :cond_0

    .line 682
    const v0, 0x7f04000e

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 683
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 684
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 710
    move v2, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 711
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 712
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 713
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move v4, v3

    :goto_1
    move-object v0, v1

    .line 714
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_1

    move-object v0, v1

    .line 715
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 716
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 717
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 718
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/ViewGroup;)V

    .line 714
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 710
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 723
    :cond_2
    return-void
.end method

.method private a(Landroid/view/ViewGroup;[Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 701
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/ViewGroup;)V

    .line 702
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    .line 703
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 704
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 702
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_1
    return-void
.end method

.method private a(Lcom/viber/voip/messages/ui/media/f;)V
    .locals 4
    .parameter

    .prologue
    .line 357
    sget-object v0, Lcom/viber/voip/messages/ui/media/f;->b:Lcom/viber/voip/messages/ui/media/f;

    if-ne p1, v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->s:I

    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/ui/media/f;->a(I)I

    move-result v1

    iget v2, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->u:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(II)V

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->u:I

    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/media/f;->a()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->s:I

    invoke-virtual {p1, v3}, Lcom/viber/voip/messages/ui/media/f;->a(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 790
    const/4 v0, 0x3

    const-string/jumbo v1, "DoodleActivity"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;[Ljava/lang/Object;Z)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 418
    sget v0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->c:I

    iput v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->q:I

    .line 419
    invoke-direct {p0, p2, p1, p4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Landroid/view/View;Landroid/view/View;Z)V

    .line 420
    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    .line 422
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->q:I

    .line 423
    invoke-direct {p0, p2, p1, p4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Landroid/view/View;Z)V

    .line 424
    invoke-direct {p0, p2, p3}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/ViewGroup;[Ljava/lang/Object;)V

    .line 425
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/DoodleActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->A:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/DoodleActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->y:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->z:Z

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(Landroid/graphics/Bitmap;Z)Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    .line 529
    invoke-static {p0, p1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 530
    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 689
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 691
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 692
    if-eqz p3, :cond_0

    .line 693
    const v0, 0x7f04000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 694
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 695
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private b(Lcom/viber/voip/messages/ui/media/f;)V
    .locals 4
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/ViewGroup;[Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/media/DoodleActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/media/DoodleActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->o:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 543
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    iget v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->u:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->setPaintColor(I)V

    .line 544
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 545
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    const/16 v1, 0x2d0

    sget v2, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(IIZ)V

    .line 546
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Lcom/viber/voip/messages/ui/media/f;)V

    .line 547
    return-void
.end method

.method private e()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 554
    const v0, 0x7f07024e

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->g:Landroid/view/View;

    .line 555
    const v0, 0x7f07024f

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->h:Landroid/view/View;

    .line 556
    const v0, 0x7f070250

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i:Landroid/view/View;

    .line 557
    const v0, 0x7f070252

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->j:Landroid/view/View;

    .line 559
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->l:Landroid/widget/ImageView;

    .line 560
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->m:Landroid/graphics/drawable/LayerDrawable;

    .line 561
    const v0, 0x7f0700cd

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    .line 562
    const v0, 0x7f0700ce

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->o:Landroid/view/ViewGroup;

    .line 563
    const v0, 0x7f0700cc

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->p:Landroid/view/ViewGroup;

    .line 565
    const v0, 0x7f070251

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->k:Landroid/view/View;

    .line 566
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 568
    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    .line 569
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->setDrawListener(Lcom/viber/voip/messages/extras/doodle/b;)V

    .line 571
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f()V

    .line 572
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->g()V

    .line 573
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->h()V

    .line 574
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 577
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->r:[Landroid/view/View;

    .line 578
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->r:[Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v2, 0x7f0700b1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/ui/media/DoodleActivity;->d:[Ljava/lang/Integer;

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    .line 579
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->r:[Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v2, 0x7f0700b4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/ui/media/DoodleActivity;->d:[Ljava/lang/Integer;

    aget-object v2, v2, v4

    invoke-direct {p0, v1, v2}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v4

    .line 580
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->r:[Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v2, 0x7f0700b7

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/ui/media/DoodleActivity;->d:[Ljava/lang/Integer;

    aget-object v2, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v5

    .line 581
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->r:[Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v2, 0x7f0700ba

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/ui/media/DoodleActivity;->d:[Ljava/lang/Integer;

    aget-object v2, v2, v6

    invoke-direct {p0, v1, v2}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v6

    .line 582
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->r:[Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v2, 0x7f0700bd

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/ui/media/DoodleActivity;->d:[Ljava/lang/Integer;

    aget-object v2, v2, v7

    invoke-direct {p0, v1, v2}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v7

    .line 585
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v1, 0x7f0700bf

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/ui/media/f;->g:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 586
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v1, 0x7f0700be

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/ui/media/f;->e:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 587
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v1, 0x7f0700bc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/ui/media/f;->d:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 588
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v1, 0x7f0700bb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/ui/media/f;->h:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 589
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v1, 0x7f0700b9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/ui/media/f;->f:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 590
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/ui/media/f;->k:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 591
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/ui/media/f;->c:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 592
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/ui/media/f;->i:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 593
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/ui/media/f;->j:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 594
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/messages/ui/media/f;->b:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 596
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Lcom/viber/voip/messages/ui/media/f;)V

    .line 597
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 600
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/media/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/d;-><init>(Lcom/viber/voip/messages/ui/media/DoodleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 609
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->d:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 610
    invoke-static {p0}, Lcom/viber/voip/util/ao;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 613
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->o:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 614
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->o:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 616
    :cond_1
    return-void
.end method

.method private h()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 619
    invoke-static {p0}, Lcom/viber/voip/util/ao;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    move v1, v0

    .line 621
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 622
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 624
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->p:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    iget v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->u:I

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(I)V

    move v2, v3

    move v4, v3

    .line 628
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 630
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move v5, v3

    :goto_2
    move-object v0, v1

    .line 631
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v5, v0, :cond_1

    move-object v0, v1

    .line 632
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 633
    sget-object v6, Lcom/viber/voip/messages/ui/media/DoodleActivity;->e:[[I

    aget-object v6, v6, v4

    aget v6, v6, v5

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 634
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    sget-object v6, Lcom/viber/voip/messages/ui/media/DoodleActivity;->e:[[I

    aget-object v6, v6, v4

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v0, v6}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Ljava/lang/Object;)Landroid/view/View;

    .line 631
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move v1, v0

    goto :goto_0

    .line 636
    :cond_1
    const/4 v1, 0x1

    .line 628
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_1

    .line 639
    :cond_2
    return-void

    :cond_3
    move v1, v4

    goto :goto_3
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 726
    sget v0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->c:I

    iput v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->q:I

    .line 728
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->o:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->h:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Landroid/view/View;Landroid/view/View;Z)V

    .line 729
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->g:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Landroid/view/View;Landroid/view/View;Z)V

    .line 730
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->p:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i:Landroid/view/View;

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Landroid/view/View;Landroid/view/View;Z)V

    .line 731
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->j:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 757
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->supportInvalidateOptionsMenu()V

    .line 758
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->supportInvalidateOptionsMenu()V

    .line 751
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 766
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->supportInvalidateOptionsMenu()V

    .line 767
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->finish()V

    .line 772
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 776
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->finish()V

    .line 777
    const/4 v0, 0x3

    const-string/jumbo v1, "DoodleActivity"

    const-string/jumbo v2, "finish()"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->c()V

    .line 780
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    .line 782
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 487
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/app/ViberActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 488
    const/4 v0, -0x1

    if-ne v0, p2, :cond_3

    .line 489
    sparse-switch p1, :sswitch_data_0

    .line 515
    :goto_0
    return-void

    .line 492
    :sswitch_0
    const/4 v0, 0x0

    .line 493
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uriFromIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->w:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->w:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 503
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->w:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->w:Landroid/net/Uri;

    goto :goto_1

    .line 506
    :sswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Landroid/net/Uri;)V

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->w:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->w:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_0

    .line 489
    nop

    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_0
        0x1bb -> :sswitch_0
        0x297 -> :sswitch_1
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 643
    iget v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->q:I

    sget v1, Lcom/viber/voip/messages/ui/media/DoodleActivity;->c:I

    if-eq v0, v1, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i()V

    .line 655
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->A:Z

    if-eqz v0, :cond_1

    .line 647
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onBackPressed()V

    goto :goto_0

    .line 649
    :cond_1
    const v0, 0x7f0c05eb

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 650
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 651
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 652
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->A:Z

    goto :goto_0
.end method

.method public onBrushSelected(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/f;->valueOf(Ljava/lang/String;)Lcom/viber/voip/messages/ui/media/f;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    .line 334
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Lcom/viber/voip/messages/ui/media/f;)V

    .line 335
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Lcom/viber/voip/messages/ui/media/f;)V

    .line 336
    return-void
.end method

.method public onBrushSizeSelected(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 340
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->B:Lcom/viber/voip/a/v;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/ui/media/f;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/v;->a(I)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 341
    iput v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->s:I

    .line 343
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/ViewGroup;[Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Lcom/viber/voip/messages/ui/media/f;)V

    .line 345
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 251
    sparse-switch v0, :sswitch_data_0

    .line 306
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->getDoodle()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->finish()V

    .line 323
    :goto_0
    return-void

    .line 253
    :sswitch_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->B:Lcom/viber/voip/a/v;

    iget-object v1, v1, Lcom/viber/voip/a/v;->a:Lcom/viber/voip/a/x;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 255
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Landroid/view/ViewGroup;[Ljava/lang/Object;Z)Z

    .line 256
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Lcom/viber/voip/messages/ui/media/f;)V

    .line 258
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->p:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i:Landroid/view/View;

    invoke-direct {p0, v0, v1, v4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Landroid/view/View;Landroid/view/View;Z)V

    .line 259
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->o:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->h:Landroid/view/View;

    invoke-direct {p0, v0, v1, v4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    .line 262
    :sswitch_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->B:Lcom/viber/voip/a/v;

    iget-object v1, v1, Lcom/viber/voip/a/v;->b:Lcom/viber/voip/a/x;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 264
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->o:Landroid/view/ViewGroup;

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Landroid/view/ViewGroup;[Ljava/lang/Object;Z)Z

    .line 265
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    sget-object v1, Lcom/viber/voip/messages/ui/media/f;->a:Lcom/viber/voip/messages/ui/media/f;

    iget v2, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->t:I

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/ui/media/f;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(I)V

    .line 267
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->p:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i:Landroid/view/View;

    invoke-direct {p0, v0, v1, v4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Landroid/view/View;Landroid/view/View;Z)V

    .line 268
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->g:Landroid/view/View;

    invoke-direct {p0, v0, v1, v4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    .line 271
    :sswitch_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->p:Landroid/view/ViewGroup;

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->u:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/View;Landroid/view/ViewGroup;[Ljava/lang/Object;Z)Z

    .line 273
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->o:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->h:Landroid/view/View;

    invoke-direct {p0, v0, v1, v4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Landroid/view/View;Landroid/view/View;Z)V

    .line 274
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->n:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->g:Landroid/view/View;

    invoke-direct {p0, v0, v1, v4}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b(Landroid/view/View;Landroid/view/View;Z)V

    goto/16 :goto_0

    .line 277
    :sswitch_3
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i()V

    .line 278
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->openContextMenu(Landroid/view/View;)V

    goto/16 :goto_0

    .line 281
    :sswitch_4
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i()V

    .line 282
    const v1, 0x7f0c05e0

    const v2, 0x7f0c05e1

    new-instance v3, Lcom/viber/voip/messages/ui/media/a;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/ui/media/a;-><init>(Lcom/viber/voip/messages/ui/media/DoodleActivity;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILcom/viber/voip/util/az;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 299
    :sswitch_5
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i()V

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->u:I

    .line 301
    iget v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->u:I

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(I)V

    .line 302
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    .line 303
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Lcom/viber/voip/messages/ui/media/f;)V

    goto/16 :goto_0

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 314
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a()Z

    move-result v2

    new-instance v3, Lcom/viber/voip/messages/ui/media/b;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/ui/media/b;-><init>(Lcom/viber/voip/messages/ui/media/DoodleActivity;)V

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/content/Context;Landroid/graphics/Bitmap;ZLjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 251
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0700c0 -> :sswitch_5
        0x7f0700c1 -> :sswitch_5
        0x7f0700c2 -> :sswitch_5
        0x7f0700c3 -> :sswitch_5
        0x7f0700c4 -> :sswitch_5
        0x7f0700c5 -> :sswitch_5
        0x7f0700c6 -> :sswitch_5
        0x7f0700c7 -> :sswitch_5
        0x7f0700c8 -> :sswitch_5
        0x7f0700c9 -> :sswitch_5
        0x7f07024e -> :sswitch_0
        0x7f07024f -> :sswitch_1
        0x7f070250 -> :sswitch_2
        0x7f070251 -> :sswitch_3
        0x7f070252 -> :sswitch_4
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 463
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 482
    :goto_0
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 465
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->B:Lcom/viber/voip/a/v;

    iget-object v1, v1, Lcom/viber/voip/a/v;->e:Lcom/viber/voip/a/x;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 466
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->b()V

    goto :goto_0

    .line 469
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->B:Lcom/viber/voip/a/v;

    iget-object v1, v1, Lcom/viber/voip/a/v;->d:Lcom/viber/voip/a/x;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 470
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 471
    const v1, 0x7f0c041a

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 472
    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 475
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->B:Lcom/viber/voip/a/v;

    iget-object v1, v1, Lcom/viber/voip/a/v;->c:Lcom/viber/voip/a/x;

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 476
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->w:Landroid/net/Uri;

    .line 477
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    const-string/jumbo v1, "output"

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->w:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 479
    const/16 v1, 0x1bb

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x7f07046b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 172
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 176
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 178
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->setContentView(I)V

    .line 180
    if-eqz p1, :cond_2

    const-string/jumbo v0, "cropped_for_landscape"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->z:Z

    .line 181
    if-eqz p1, :cond_3

    const-string/jumbo v0, "bsize"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->s:I

    .line 182
    if-eqz p1, :cond_0

    const-string/jumbo v0, "er_size"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    iput v2, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->t:I

    .line 183
    if-eqz p1, :cond_4

    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->u:I

    .line 184
    if-eqz p1, :cond_5

    const-string/jumbo v0, "brush_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/f;->valueOf(Ljava/lang/String;)Lcom/viber/voip/messages/ui/media/f;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    .line 185
    if-eqz p1, :cond_6

    const-string/jumbo v0, "temp_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :goto_4
    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->w:Landroid/net/Uri;

    .line 187
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->y:Landroid/app/ProgressDialog;

    .line 188
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->y:Landroid/app/ProgressDialog;

    const v2, 0x7f0c02ed

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 191
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->e()V

    .line 192
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/os/Bundle;)V

    .line 195
    sget v0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a:I

    if-nez v0, :cond_1

    .line 196
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/g;->c(Landroid/app/Activity;)I

    move-result v0

    sput v0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a:I

    .line 203
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 180
    goto :goto_0

    :cond_3
    move v0, v2

    .line 181
    goto :goto_1

    .line 183
    :cond_4
    const v0, -0x84ae63

    goto :goto_2

    .line 184
    :cond_5
    sget-object v0, Lcom/viber/voip/messages/ui/media/f;->b:Lcom/viber/voip/messages/ui/media/f;

    goto :goto_3

    .line 185
    :cond_6
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 451
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/app/ViberActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 452
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 453
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const v0, 0x7f0c05e7

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 459
    :goto_0
    return-void

    .line 456
    :cond_0
    const v0, 0x7f07046d

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 457
    const v0, 0x7f0c05e8

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 439
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 440
    const v2, 0x7f100015

    invoke-virtual {v0, v2, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 441
    const v0, 0x7f070476

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b:Lcom/actionbarsherlock/view/MenuItem;

    .line 442
    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b:Lcom/actionbarsherlock/view/MenuItem;

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 445
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->b:Lcom/actionbarsherlock/view/MenuItem;

    const v2, 0x7f02006c

    const v3, 0x7f0c034b

    invoke-static {v0, v2, v3, p0}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/view/MenuItem;IILandroid/view/View$OnClickListener;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 446
    return v1

    .line 442
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 240
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 241
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->y:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 244
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->y:Landroid/app/ProgressDialog;

    .line 245
    return-void
.end method

.method public onEraserSizeSelected(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 349
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->B:Lcom/viber/voip/a/v;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/ui/media/f;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/v;->b(I)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 350
    iput v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->t:I

    .line 352
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->o:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->t:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/view/ViewGroup;[Ljava/lang/Object;)V

    .line 353
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->f:Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;

    sget-object v1, Lcom/viber/voip/messages/ui/media/f;->a:Lcom/viber/voip/messages/ui/media/f;

    iget v2, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->t:I

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/ui/media/f;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/doodle/DoodleDrawingPanel;->a(I)V

    .line 354
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 534
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 539
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 536
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->finish()V

    .line 537
    const/4 v0, 0x1

    goto :goto_0

    .line 534
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onResume()V

    .line 227
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->d()V

    .line 232
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->a(Landroid/net/Uri;)V

    .line 234
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->setIntent(Landroid/content/Intent;)V

    .line 236
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 667
    const-string/jumbo v0, "cropped_for_landscape"

    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->z:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 668
    const-string/jumbo v0, "color"

    iget v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->u:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 669
    const-string/jumbo v0, "bsize"

    iget v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 670
    const-string/jumbo v0, "er_size"

    iget v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->t:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 671
    const-string/jumbo v0, "brush_id"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->v:Lcom/viber/voip/messages/ui/media/f;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string/jumbo v0, "menu_id"

    iget v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 673
    const-string/jumbo v0, "temp_uri"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->w:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 674
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 675
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 431
    iget v0, p0, Lcom/viber/voip/messages/ui/media/DoodleActivity;->q:I

    sget v1, Lcom/viber/voip/messages/ui/media/DoodleActivity;->c:I

    if-eq v0, v1, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/DoodleActivity;->i()V

    .line 434
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

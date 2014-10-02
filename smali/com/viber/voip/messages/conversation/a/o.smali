.class public Lcom/viber/voip/messages/conversation/a/o;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/viber/voip/stickers/d/b;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private c:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

.field private d:Lcom/viber/voip/messages/conversation/v;

.field private e:Lcom/viber/voip/messages/conversation/ui/cq;

.field private f:Lcom/viber/voip/messages/conversation/a/f;

.field private g:Lcom/viber/voip/stickers/b;

.field private h:Lcom/viber/voip/messages/conversation/a/a/b/a/b;

.field private i:Z

.field private j:Lcom/viber/voip/messages/conversation/a/s;

.field private k:I

.field private l:Z

.field private m:I

.field private n:Landroid/os/Handler;

.field private o:Lcom/viber/voip/messages/conversation/a/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/a/o;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;Lcom/viber/voip/messages/conversation/v;Lcom/viber/voip/messages/conversation/ui/cq;Lcom/viber/voip/stickers/b;ZILcom/viber/voip/messages/conversation/a/r;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 60
    new-instance v1, Lcom/viber/voip/messages/conversation/a/p;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/a/p;-><init>(Lcom/viber/voip/messages/conversation/a/o;)V

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/a/o;->a:Ljava/lang/Runnable;

    .line 111
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/a/o;->n:Landroid/os/Handler;

    .line 113
    new-instance v1, Lcom/viber/voip/messages/conversation/a/q;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/a/q;-><init>(Lcom/viber/voip/messages/conversation/a/o;)V

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/a/o;->o:Lcom/viber/voip/messages/conversation/a/s;

    .line 142
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/d/b;)V

    .line 144
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    .line 145
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/o;->c:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    .line 146
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/a/o;->e:Lcom/viber/voip/messages/conversation/ui/cq;

    .line 147
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/a/o;->g:Lcom/viber/voip/stickers/b;

    .line 148
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/o;->i:Z

    .line 149
    move/from16 v0, p6

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/o;->m:I

    .line 151
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/o;->f()V

    .line 153
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    .line 154
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 155
    new-instance v7, Lcom/viber/voip/messages/ui/bb;

    invoke-direct {v7, v1}, Lcom/viber/voip/messages/ui/bb;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v5, Lcom/viber/voip/messages/h;

    invoke-direct {v5, v1}, Lcom/viber/voip/messages/h;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v1, Lcom/viber/voip/messages/conversation/a/f;

    iget-object v8, p0, Lcom/viber/voip/messages/conversation/a/o;->o:Lcom/viber/voip/messages/conversation/a/s;

    iget-object v10, p0, Lcom/viber/voip/messages/conversation/a/o;->j:Lcom/viber/voip/messages/conversation/a/s;

    move-object v3, p1

    move-object v4, p3

    move-object v6, p4

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/viber/voip/messages/conversation/a/f;-><init>(Landroid/view/LayoutInflater;Lcom/viber/voip/messages/conversation/ui/ConversationFragment;Lcom/viber/voip/messages/conversation/ui/cq;Lcom/viber/voip/messages/h;Lcom/viber/voip/stickers/b;Lcom/viber/voip/messages/ui/bb;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;)V

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/a/o;->f:Lcom/viber/voip/messages/conversation/a/f;

    .line 161
    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/an;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x7

    .line 279
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    const/4 v0, 0x0

    .line 293
    :cond_0
    :goto_0
    return v0

    .line 281
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->R()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 282
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->X()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    .line 283
    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->ae()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x9

    goto :goto_0

    .line 284
    :cond_3
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->V()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->af()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_0

    .line 286
    :cond_4
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->ah()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 287
    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    .line 289
    :cond_6
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->X()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    .line 290
    :cond_7
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->ae()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xa

    goto :goto_0

    .line 291
    :cond_8
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->V()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->ah()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_0

    .line 293
    :cond_9
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private a(III)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x14

    const/4 v0, 0x1

    .line 383
    if-eqz p3, :cond_0

    .line 384
    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/a/o;->l:Z

    if-nez v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v1, v0, p1, v3}, Lcom/viber/voip/messages/conversation/v;->a(ZII)[I

    move-result-object v1

    .line 387
    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/o;->l:Z

    .line 388
    iput p1, p0, Lcom/viber/voip/messages/conversation/a/o;->k:I

    .line 389
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->g:Lcom/viber/voip/stickers/b;

    invoke-virtual {v0, v1, v4}, Lcom/viber/voip/stickers/b;->a([ILcom/viber/voip/stickers/bj;)V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    rem-int/lit8 v1, p1, 0xf

    if-nez v1, :cond_0

    iget v1, p0, Lcom/viber/voip/messages/conversation/a/o;->k:I

    if-eq v1, p1, :cond_0

    .line 391
    iget v1, p0, Lcom/viber/voip/messages/conversation/a/o;->k:I

    if-le v1, p1, :cond_2

    move v1, v0

    .line 392
    :goto_1
    if-eqz v1, :cond_3

    move v0, p1

    .line 394
    :goto_2
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v2, v1, v0, v3}, Lcom/viber/voip/messages/conversation/v;->a(ZII)[I

    move-result-object v0

    .line 396
    iput p1, p0, Lcom/viber/voip/messages/conversation/a/o;->k:I

    .line 397
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/o;->g:Lcom/viber/voip/stickers/b;

    invoke-virtual {v1, v0, v4}, Lcom/viber/voip/stickers/b;->a([ILcom/viber/voip/stickers/bj;)V

    goto :goto_0

    .line 391
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    .line 392
    :cond_3
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/a/o;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/o;->d(Z)V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/an;Lcom/viber/voip/messages/conversation/an;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 201
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->U()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->U()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->V()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->V()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->o()I

    move-result v1

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->o()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v0

    .line 204
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->T()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xdbba0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Z)V
    .locals 6
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->h:Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->a(Z)V

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->c:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->getFirstVisiblePosition()I

    move-result v3

    .line 214
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->c:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->getLastVisiblePosition()I

    move-result v4

    move v2, v3

    .line 215
    :goto_0
    if-gt v2, v4, :cond_1

    .line 216
    sub-int v0, v2, v3

    .line 217
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/o;->c:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ConversationListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_0

    instance-of v1, v1, Lcom/viber/voip/messages/conversation/a/a/a/r;

    if-eqz v1, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a/r;

    .line 221
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/r;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/conversation/a/a/a;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/o;->h:Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {v0, v1, v5}, Lcom/viber/voip/messages/conversation/a/a/a/r;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/o;->notifyDataSetChanged()V

    .line 230
    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/o;->i:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/viber/voip/messages/conversation/a/a/b/a/c;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/conversation/a/a/b/a/c;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->h:Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    .line 299
    return-void

    .line 298
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/conversation/a/a/b/a/d;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/conversation/a/a/b/a/d;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/o;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/o;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    return-void
.end method


# virtual methods
.method public a(I)Lcom/viber/voip/messages/conversation/a/a/a;
    .locals 16
    .parameter

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/conversation/v;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v2

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/conversation/v;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v15

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/viber/voip/messages/conversation/a/o;->getCount()I

    move-result v1

    add-int/lit8 v3, p1, 0x1

    if-le v1, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Lcom/viber/voip/messages/conversation/v;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v1

    move-object v6, v1

    .line 174
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/v;->q()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    invoke-virtual {v15}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/v;->n()J

    move-result-wide v7

    cmp-long v1, v3, v7

    if-lez v1, :cond_2

    const/4 v7, 0x1

    .line 175
    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/v;->n()J

    move-result-wide v8

    cmp-long v1, v3, v8

    if-lez v1, :cond_3

    const/4 v1, 0x1

    .line 176
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/messages/conversation/a/o;->h:Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->o()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v7, :cond_5

    if-nez v1, :cond_5

    const/4 v3, 0x1

    .line 177
    :goto_3
    if-nez v2, :cond_6

    const/4 v4, 0x1

    .line 178
    :goto_4
    if-nez v4, :cond_7

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/viber/voip/messages/conversation/a/o;->a(Lcom/viber/voip/messages/conversation/an;Lcom/viber/voip/messages/conversation/an;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v5, 0x1

    .line 180
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/conversation/a/o;->e:Lcom/viber/voip/messages/conversation/ui/cq;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/conversation/a/o;->e:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v10, 0x1

    .line 181
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/conversation/a/o;->e:Lcom/viber/voip/messages/conversation/ui/cq;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/conversation/a/o;->e:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v15}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/viber/voip/messages/conversation/ui/cq;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v11, 0x1

    .line 182
    :goto_7
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/an;->V()Z

    move-result v12

    .line 183
    :goto_8
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/an;->U()Z

    move-result v13

    .line 184
    :goto_9
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/an;->X()Z

    move-result v14

    .line 186
    :goto_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/viber/voip/messages/conversation/a/o;->m:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/viber/voip/messages/conversation/a/o;->m:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 188
    :cond_0
    new-instance v1, Lcom/viber/voip/messages/conversation/a/t;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/conversation/v;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/messages/conversation/ag;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/viber/voip/messages/conversation/a/o;->a(Lcom/viber/voip/messages/conversation/an;Lcom/viber/voip/messages/conversation/an;)Z

    move-result v6

    if-nez p1, :cond_d

    const/4 v8, 0x1

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/viber/voip/messages/conversation/a/o;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move/from16 v0, p1

    if-ne v0, v9, :cond_e

    const/4 v9, 0x1

    :goto_c
    invoke-direct/range {v1 .. v14}, Lcom/viber/voip/messages/conversation/a/t;-><init>(Lcom/viber/voip/messages/conversation/ag;ZZZZZZZZZZZZ)V

    .line 191
    :goto_d
    return-object v1

    .line 172
    :cond_1
    const/4 v1, 0x0

    move-object v6, v1

    goto/16 :goto_0

    .line 174
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 175
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 176
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 177
    :cond_6
    invoke-virtual {v15}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Lcom/viber/voip/messages/controller/cr;->b(JJ)Z

    move-result v4

    goto/16 :goto_4

    .line 178
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 180
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 181
    :cond_9
    const/4 v11, 0x0

    goto :goto_7

    .line 182
    :cond_a
    const/4 v12, 0x0

    goto :goto_8

    .line 183
    :cond_b
    const/4 v13, 0x0

    goto :goto_9

    .line 184
    :cond_c
    const/4 v14, 0x0

    goto :goto_a

    .line 188
    :cond_d
    const/4 v8, 0x0

    goto :goto_b

    :cond_e
    const/4 v9, 0x0

    goto :goto_c

    .line 191
    :cond_f
    new-instance v1, Lcom/viber/voip/messages/conversation/a/u;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15}, Lcom/viber/voip/messages/conversation/a/o;->a(Lcom/viber/voip/messages/conversation/an;Lcom/viber/voip/messages/conversation/an;)Z

    move-result v6

    if-nez p1, :cond_10

    const/4 v8, 0x1

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/viber/voip/messages/conversation/a/o;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_11

    const/4 v9, 0x1

    :goto_f
    move-object v2, v15

    invoke-direct/range {v1 .. v14}, Lcom/viber/voip/messages/conversation/a/u;-><init>(Lcom/viber/voip/messages/conversation/an;ZZZZZZZZZZZZ)V

    goto :goto_d

    :cond_10
    const/4 v8, 0x0

    goto :goto_e

    :cond_11
    const/4 v9, 0x0

    goto :goto_f
.end method

.method public a()Lcom/viber/voip/messages/conversation/a/a/b/a/b;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->h:Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    return-object v0
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->h:Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->a(J)V

    .line 315
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/o;->notifyDataSetChanged()V

    .line 316
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/o;->g()V

    .line 317
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/a/s;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/o;->j:Lcom/viber/voip/messages/conversation/a/s;

    .line 341
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/o;->notifyDataSetChanged()V

    .line 351
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/d;)V
    .locals 0
    .parameter

    .prologue
    .line 360
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 368
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/o;->i:Z

    if-eq v0, p1, :cond_0

    .line 307
    iput-boolean p1, p0, Lcom/viber/voip/messages/conversation/a/o;->i:Z

    .line 308
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/o;->f()V

    .line 309
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/o;->notifyDataSetChanged()V

    .line 311
    :cond_0
    return-void
.end method

.method public a(ZLcom/viber/voip/stickers/c/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 372
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->h:Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->g()V

    .line 337
    return-void
.end method

.method public b(J)V
    .locals 1
    .parameter

    .prologue
    .line 327
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->h:Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b(J)V

    .line 328
    return-void
.end method

.method public b(Lcom/viber/voip/stickers/c/d;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->h:Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->b(Z)V

    .line 321
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 375
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/stickers/r;->b(Lcom/viber/voip/stickers/d/b;)V

    .line 376
    return-void
.end method

.method public c(Lcom/viber/voip/stickers/c/d;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/o;->notifyDataSetChanged()V

    .line 356
    return-void
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/o;->notifyDataSetChanged()V

    .line 345
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/a/o;->l:Z

    .line 380
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->p()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/a/o;->a(I)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/v;->a_(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->d:Lcom/viber/voip/messages/conversation/v;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/v;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/a/o;->a(Lcom/viber/voip/messages/conversation/an;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/a/o;->a(I)Lcom/viber/voip/messages/conversation/a/a/a;

    move-result-object v1

    .line 252
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->f:Lcom/viber/voip/messages/conversation/a/f;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/a/o;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/conversation/a/f;->a(I)Landroid/view/View;

    move-result-object p2

    .line 260
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/b/a;

    .line 262
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/o;->h:Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ui/b/a;->a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V

    .line 263
    const v0, 0x7f070052

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 269
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 274
    const/16 v0, 0xb

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    invoke-direct {p0, p2, p3, p4}, Lcom/viber/voip/messages/conversation/a/o;->a(III)V

    .line 407
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->j:Lcom/viber/voip/messages/conversation/a/s;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->j:Lcom/viber/voip/messages/conversation/a/s;

    invoke-interface {v0, p2, p3, p4}, Lcom/viber/voip/messages/conversation/a/s;->a(III)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->o:Lcom/viber/voip/messages/conversation/a/s;

    invoke-interface {v0, p2, p3, p4}, Lcom/viber/voip/messages/conversation/a/s;->a(III)V

    .line 411
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->j:Lcom/viber/voip/messages/conversation/a/s;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->j:Lcom/viber/voip/messages/conversation/a/s;

    invoke-interface {v0, p2}, Lcom/viber/voip/messages/conversation/a/s;->a(I)V

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->o:Lcom/viber/voip/messages/conversation/a/s;

    invoke-interface {v0, p2}, Lcom/viber/voip/messages/conversation/a/s;->a(I)V

    .line 419
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 424
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->j:Lcom/viber/voip/messages/conversation/a/s;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->j:Lcom/viber/voip/messages/conversation/a/s;

    invoke-interface {v0, p2}, Lcom/viber/voip/messages/conversation/a/s;->a(Landroid/view/MotionEvent;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/o;->o:Lcom/viber/voip/messages/conversation/a/s;

    invoke-interface {v0, p2}, Lcom/viber/voip/messages/conversation/a/s;->a(Landroid/view/MotionEvent;)V

    .line 428
    const/4 v0, 0x0

    return v0
.end method

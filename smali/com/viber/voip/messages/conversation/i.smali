.class public abstract Lcom/viber/voip/messages/conversation/i;
.super Lcom/viber/provider/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;",
        ">",
        "Lcom/viber/provider/b;"
    }
.end annotation


# instance fields
.field protected final h:Lcom/viber/voip/messages/i;

.field protected final i:Landroid/os/Handler;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected m:Ljava/lang/Runnable;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/viber/voip/messages/controller/db;

.field private r:Lcom/viber/voip/messages/controller/df;

.field private s:Lcom/viber/voip/messages/controller/dh;

.field private final t:Lcom/viber/voip/messages/controller/ah;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 212
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, v5

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/conversation/i;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;ZZLcom/viber/provider/e;)V

    .line 213
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;ZZLcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 193
    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p7

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 59
    new-instance v0, Lcom/viber/voip/messages/conversation/j;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/j;-><init>(Lcom/viber/voip/messages/conversation/i;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->q:Lcom/viber/voip/messages/controller/db;

    .line 86
    new-instance v0, Lcom/viber/voip/messages/conversation/k;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/k;-><init>(Lcom/viber/voip/messages/conversation/i;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->r:Lcom/viber/voip/messages/controller/df;

    .line 114
    new-instance v0, Lcom/viber/voip/messages/conversation/l;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/l;-><init>(Lcom/viber/voip/messages/conversation/i;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->s:Lcom/viber/voip/messages/controller/dh;

    .line 142
    new-instance v0, Lcom/viber/voip/messages/conversation/m;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/m;-><init>(Lcom/viber/voip/messages/conversation/i;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->t:Lcom/viber/voip/messages/controller/ah;

    .line 161
    new-instance v0, Lcom/viber/voip/messages/conversation/o;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/o;-><init>(Lcom/viber/voip/messages/conversation/i;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->m:Ljava/lang/Runnable;

    .line 194
    iput-boolean p5, p0, Lcom/viber/voip/messages/conversation/i;->n:Z

    .line 195
    iput-boolean p6, p0, Lcom/viber/voip/messages/conversation/i;->o:Z

    .line 196
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/i;->h:Lcom/viber/voip/messages/i;

    .line 197
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/i;->p()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->k:Ljava/util/Set;

    .line 198
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->i:Landroid/os/Handler;

    .line 200
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/i;->a([Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/i;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/i;->a(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v0, "conversations.date DESC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/i;->b(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/i;->x()V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;ZZLcom/viber/provider/e;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    sget-object v2, Lcom/viber/provider/messages/b/b;->a:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/conversation/i;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;ZZLcom/viber/provider/e;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;ZZLjava/util/ArrayList;Ljava/lang/String;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;ZZLcom/viber/provider/e;)V

    .line 188
    iput-object p6, p0, Lcom/viber/voip/messages/conversation/i;->l:Ljava/util/ArrayList;

    .line 189
    iput-object p7, p0, Lcom/viber/voip/messages/conversation/i;->j:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 215
    const/16 v1, 0xb

    sget-object v2, Lcom/viber/provider/messages/b/b;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 59
    new-instance v0, Lcom/viber/voip/messages/conversation/j;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/j;-><init>(Lcom/viber/voip/messages/conversation/i;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->q:Lcom/viber/voip/messages/controller/db;

    .line 86
    new-instance v0, Lcom/viber/voip/messages/conversation/k;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/k;-><init>(Lcom/viber/voip/messages/conversation/i;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->r:Lcom/viber/voip/messages/controller/df;

    .line 114
    new-instance v0, Lcom/viber/voip/messages/conversation/l;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/l;-><init>(Lcom/viber/voip/messages/conversation/i;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->s:Lcom/viber/voip/messages/controller/dh;

    .line 142
    new-instance v0, Lcom/viber/voip/messages/conversation/m;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/m;-><init>(Lcom/viber/voip/messages/conversation/i;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->t:Lcom/viber/voip/messages/controller/ah;

    .line 161
    new-instance v0, Lcom/viber/voip/messages/conversation/o;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/o;-><init>(Lcom/viber/voip/messages/conversation/i;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->m:Ljava/lang/Runnable;

    .line 216
    iput-boolean v6, p0, Lcom/viber/voip/messages/conversation/i;->n:Z

    .line 217
    iput-boolean v6, p0, Lcom/viber/voip/messages/conversation/i;->o:Z

    .line 218
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/i;->h:Lcom/viber/voip/messages/i;

    .line 219
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/i;->p()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->k:Ljava/util/Set;

    .line 220
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->i:Landroid/os/Handler;

    .line 222
    sget-object v0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/i;->a([Ljava/lang/String;)V

    .line 223
    const-string/jumbo v0, "((conversations.deleted=0 AND conversations.conversation_type=1) OR (conversations.last_message_id>0 AND conversations.conversation_type=0) OR conversations._id IN (%s)) AND conversations.flags & 1 = 0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/i;->k:Ljava/util/Set;

    invoke-static {v2}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/i;->a(Ljava/lang/String;)V

    .line 224
    const-string/jumbo v0, "conversations.date DESC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/i;->b(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/i;->n:Z

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/i;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/i;->w()V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/i;)Lcom/viber/provider/e;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->a:Lcom/viber/provider/e;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/i;)Lcom/viber/provider/e;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->a:Lcom/viber/provider/e;

    return-object v0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/i;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/i;->a(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private x()V
    .locals 0

    .prologue
    .line 239
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/i;->e(I)Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Set;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/messages/ui/dl;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 316
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 317
    invoke-virtual {p0, v4}, Lcom/viber/voip/messages/conversation/i;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/i;->e:Landroid/database/Cursor;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 320
    if-eqz p1, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/i;->u()Lcom/viber/voip/messages/ui/dl;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/i;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    :cond_3
    return-object v0
.end method

.method protected a(Ljava/lang/String;JZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    :cond_0
    iput-object v1, p0, Lcom/viber/voip/messages/conversation/i;->l:Ljava/util/ArrayList;

    .line 339
    iput-object v1, p0, Lcom/viber/voip/messages/conversation/i;->j:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->a:Lcom/viber/provider/e;

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->a:Lcom/viber/provider/e;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/viber/provider/e;->a(Lcom/viber/provider/b;Z)V

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 346
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/i;->j:Ljava/lang/String;

    .line 353
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/i;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/i;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a_(I)J
    .locals 2
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 283
    invoke-super {p0, p1}, Lcom/viber/provider/b;->a_(I)J

    move-result-wide v0

    .line 286
    :goto_0
    return-wide v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    .line 286
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 333
    const-wide/16 v0, 0xc8

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/viber/voip/messages/conversation/i;->a(Ljava/lang/String;JZ)V

    .line 334
    return-void
.end method

.method public e(I)Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/i;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->e:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/i;->a(Landroid/database/Cursor;)Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    .line 272
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    goto :goto_0

    .line 275
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->j:Ljava/lang/String;

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/viber/voip/messages/conversation/i;->a(Ljava/lang/String;JZ)V

    .line 304
    :cond_0
    invoke-super {p0}, Lcom/viber/provider/b;->g()V

    .line 305
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 293
    invoke-super {p0}, Lcom/viber/provider/b;->getCount()I

    move-result v0

    .line 295
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected m()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/i;->o:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "(conversations.deleted=0 AND conversations.conversation_type=1) OR (conversations.last_message_id>0 AND conversations.conversation_type=0) OR conversations._id IN (%s)"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/i;->k:Ljava/util/Set;

    invoke-static {v3}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "((conversations.deleted=0 AND conversations.conversation_type=1) OR (conversations.last_message_id>0 AND conversations.conversation_type=0) OR conversations._id IN (%s)) AND conversations.flags & 1 = 0"

    goto :goto_0
.end method

.method protected n()V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->h:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/i;->o()Lcom/viber/voip/messages/controller/c/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/controller/c/ap;->a()Lcom/viber/voip/messages/controller/c/ao;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/i;->t:Lcom/viber/voip/messages/controller/ah;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/controller/c/ao;Lcom/viber/voip/messages/controller/ah;)V

    .line 170
    return-void
.end method

.method protected o()Lcom/viber/voip/messages/controller/c/ap;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 173
    new-instance v0, Lcom/viber/voip/messages/controller/c/ap;

    invoke-direct {v0}, Lcom/viber/voip/messages/controller/c/ap;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/i;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/ap;->a(Ljava/lang/String;)Lcom/viber/voip/messages/controller/c/ap;

    move-result-object v0

    .line 174
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const v2, 0x7f0c04a3

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/ap;->b(Ljava/lang/String;)Lcom/viber/voip/messages/controller/c/ap;

    .line 175
    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/i;->p:Z

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/ap;->b(Z)Lcom/viber/voip/messages/controller/c/ap;

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/ap;->a(Z)Lcom/viber/voip/messages/controller/c/ap;

    .line 178
    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/ap;->c(Z)Lcom/viber/voip/messages/controller/c/ap;

    .line 180
    :cond_0
    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/i;->o:Z

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/ap;->d(Z)Lcom/viber/voip/messages/controller/c/ap;

    .line 182
    return-object v0
.end method

.method protected p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->h:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->a()Lcom/viber/voip/messages/controller/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/b;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public q()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->h:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/i;->r:Lcom/viber/voip/messages/controller/df;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/de;)V

    .line 253
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->h:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/i;->q:Lcom/viber/voip/messages/controller/db;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/da;)V

    .line 254
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->h:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/i;->s:Lcom/viber/voip/messages/controller/dh;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/dg;)V

    .line 255
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->h:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/i;->r:Lcom/viber/voip/messages/controller/df;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/de;)V

    .line 259
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->h:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/i;->s:Lcom/viber/voip/messages/controller/dh;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/dg;)V

    .line 260
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->h:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/i;->q:Lcom/viber/voip/messages/controller/db;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/da;)V

    .line 261
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/i;->p:Z

    .line 265
    return-void
.end method

.method public t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/messages/ui/dl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/i;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected u()Lcom/viber/voip/messages/ui/dl;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 329
    new-instance v2, Lcom/viber/voip/messages/ui/dl;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/i;->e:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/viber/voip/messages/ui/dl;-><init>(ZZ)V

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public v()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/i;->l:Ljava/util/ArrayList;

    return-object v0
.end method

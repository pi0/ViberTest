.class public Lcom/viber/voip/contacts/b;
.super Lcom/viber/provider/b;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/a;


# static fields
.field private static final m:Lcom/viber/voip/messages/orm/creator/Creator;


# instance fields
.field protected h:Landroid/os/Handler;

.field protected i:Z

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected final l:Ljava/lang/Runnable;

.field private final n:Lcom/viber/voip/contacts/f;

.field private final o:Lcom/viber/voip/contacts/f;

.field private final p:Lcom/viber/voip/contacts/f;

.field private final q:Lcom/viber/voip/contacts/f;

.field private final r:Lcom/viber/voip/contacts/c/d/b;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/viber/voip/contacts/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/viber/voip/contacts/c/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/viber/voip/contacts/b/b/e;->d:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    sput-object v0, Lcom/viber/voip/contacts/b;->m:Lcom/viber/voip/messages/orm/creator/Creator;

    return-void
.end method

.method protected constructor <init>(ILandroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 85
    sget-object v0, Lcom/viber/voip/contacts/b;->m:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/creator/Creator;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 48
    new-instance v0, Lcom/viber/voip/contacts/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/f;-><init>(Lcom/viber/voip/contacts/b;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/b;->n:Lcom/viber/voip/contacts/f;

    .line 49
    new-instance v0, Lcom/viber/voip/contacts/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/f;-><init>(Lcom/viber/voip/contacts/b;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/b;->o:Lcom/viber/voip/contacts/f;

    .line 50
    new-instance v0, Lcom/viber/voip/contacts/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/f;-><init>(Lcom/viber/voip/contacts/b;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/b;->p:Lcom/viber/voip/contacts/f;

    .line 51
    new-instance v0, Lcom/viber/voip/contacts/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/f;-><init>(Lcom/viber/voip/contacts/b;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/b;->q:Lcom/viber/voip/contacts/f;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/contacts/b;->s:I

    .line 61
    new-instance v0, Lcom/viber/voip/contacts/c;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/contacts/c;-><init>(Lcom/viber/voip/contacts/b;I)V

    iput-object v0, p0, Lcom/viber/voip/contacts/b;->u:Landroid/support/v4/util/LruCache;

    .line 68
    new-instance v0, Lcom/viber/voip/contacts/d;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/d;-><init>(Lcom/viber/voip/contacts/b;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/b;->l:Ljava/lang/Runnable;

    .line 76
    new-instance v0, Lcom/viber/voip/contacts/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/e;-><init>(Lcom/viber/voip/contacts/b;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/b;->v:Lcom/viber/voip/contacts/c/d/e;

    .line 86
    iput-object p4, p0, Lcom/viber/voip/contacts/b;->r:Lcom/viber/voip/contacts/c/d/b;

    .line 87
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b;->h:Landroid/os/Handler;

    .line 88
    invoke-virtual {p0, p6, v6}, Lcom/viber/voip/contacts/b;->a(IZ)V

    .line 89
    sget-object v0, Lcom/viber/voip/contacts/b;->m:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/creator/Creator;->getProjections()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b;->a([Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v1, 0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/contacts/b;-><init>(ILandroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/contacts/b;-><init>(ILandroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;I)V

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/b;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/viber/voip/contacts/b;->s:I

    return v0
.end method

.method private varargs a(Lcom/viber/voip/contacts/f;[Lcom/viber/voip/contacts/f;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 244
    if-eqz p1, :cond_0

    .line 245
    invoke-static {p1}, Lcom/viber/voip/contacts/f;->c(Lcom/viber/voip/contacts/f;)I

    .line 247
    :cond_0
    if-eqz p2, :cond_1

    .line 248
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    .line 249
    invoke-static {v2}, Lcom/viber/voip/contacts/f;->d(Lcom/viber/voip/contacts/f;)I

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    return-void
.end method

.method private varargs a([Lcom/viber/voip/contacts/f;)V
    .locals 3
    .parameter

    .prologue
    .line 236
    if-eqz p1, :cond_0

    .line 237
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 238
    invoke-static {v2}, Lcom/viber/voip/contacts/f;->b(Lcom/viber/voip/contacts/f;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(J)I
    .locals 1
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->q:Lcom/viber/voip/contacts/f;

    invoke-static {v0, p1, p2}, Lcom/viber/voip/contacts/f;->a(Lcom/viber/voip/contacts/f;J)I

    move-result v0

    return v0
.end method

.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b;->b(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    return-object v0
.end method

.method public a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    iget v0, p0, Lcom/viber/voip/contacts/b;->s:I

    if-eq v0, p1, :cond_0

    .line 174
    iput p1, p0, Lcom/viber/voip/contacts/b;->s:I

    .line 175
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b;->p()V

    .line 176
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/b;->g()V

    .line 178
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 119
    const-string/jumbo v0, "\u3000"

    const-string/jumbo v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/viber/voip/contacts/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 120
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/contacts/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 281
    invoke-virtual {p0, p3}, Lcom/viber/voip/contacts/b;->f(I)V

    .line 282
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    iput-object p1, p0, Lcom/viber/voip/contacts/b;->j:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lcom/viber/voip/contacts/b;->k:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 143
    :goto_0
    iget-boolean v3, p0, Lcom/viber/voip/contacts/b;->i:Z

    if-eq v0, v3, :cond_0

    .line 144
    iput-boolean v0, p0, Lcom/viber/voip/contacts/b;->i:Z

    .line 145
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b;->p()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/contacts/b;->k:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_1
    iget-boolean v4, p0, Lcom/viber/voip/contacts/b;->i:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v2

    aput-object v3, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    move-object v0, v4

    :goto_2
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b;->b([Ljava/lang/String;)V

    .line 150
    if-eqz p3, :cond_1

    .line 151
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/b;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 152
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/b;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 142
    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 148
    goto :goto_1

    .line 149
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public b(J)I
    .locals 1
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->p:Lcom/viber/voip/contacts/f;

    invoke-static {v0, p1, p2}, Lcom/viber/voip/contacts/f;->a(Lcom/viber/voip/contacts/f;J)I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/viber/voip/contacts/b/e;
    .locals 3
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->u:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/e;

    .line 103
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/b;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget-object v0, Lcom/viber/voip/contacts/b;->m:Lcom/viber/voip/messages/orm/creator/Creator;

    iget-object v1, p0, Lcom/viber/voip/contacts/b;->e:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/creator/Creator;->createInstance(Landroid/database/Cursor;)Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/e;

    .line 105
    iget-object v1, p0, Lcom/viber/voip/contacts/b;->u:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_0
    return-object v0
.end method

.method public c_()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/viber/voip/contacts/b;->s:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    .line 124
    if-nez p1, :cond_2

    .line 125
    iget-object v2, p0, Lcom/viber/voip/contacts/b;->t:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 131
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/viber/voip/contacts/b;->t:Ljava/lang/String;

    .line 132
    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b;->p()V

    .line 134
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b;->g()V

    .line 136
    :cond_1
    return-void

    .line 129
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/contacts/b;->t:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public d_()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/viber/voip/contacts/b;->i:Z

    return v0
.end method

.method protected e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 1
    .parameter

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b;->a(IZ)V

    .line 166
    return-void
.end method

.method public f(I)V
    .locals 1
    .parameter

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/contacts/b;->a(IZ)V

    .line 286
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b;->e()V

    .line 287
    return-void
.end method

.method protected k()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 211
    invoke-super {p0}, Lcom/viber/provider/b;->k()V

    .line 212
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->u:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 214
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/viber/voip/contacts/f;

    iget-object v2, p0, Lcom/viber/voip/contacts/b;->n:Lcom/viber/voip/contacts/f;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/viber/voip/contacts/b;->p:Lcom/viber/voip/contacts/f;

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/viber/voip/contacts/b;->o:Lcom/viber/voip/contacts/f;

    aput-object v2, v0, v7

    iget-object v2, p0, Lcom/viber/voip/contacts/b;->q:Lcom/viber/voip/contacts/f;

    aput-object v2, v0, v8

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/b;->a([Lcom/viber/voip/contacts/f;)V

    .line 216
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->e:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->e:Landroid/database/Cursor;

    const-string/jumbo v2, "alias_union_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move v0, v1

    .line 219
    :goto_1
    iget-object v3, p0, Lcom/viber/voip/contacts/b;->e:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 220
    iget-object v3, p0, Lcom/viber/voip/contacts/b;->e:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 222
    if-ne v3, v6, :cond_2

    .line 223
    iget-object v3, p0, Lcom/viber/voip/contacts/b;->n:Lcom/viber/voip/contacts/f;

    new-array v4, v8, [Lcom/viber/voip/contacts/f;

    iget-object v5, p0, Lcom/viber/voip/contacts/b;->p:Lcom/viber/voip/contacts/f;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/viber/voip/contacts/b;->o:Lcom/viber/voip/contacts/f;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/viber/voip/contacts/b;->q:Lcom/viber/voip/contacts/f;

    aput-object v5, v4, v7

    invoke-direct {p0, v3, v4}, Lcom/viber/voip/contacts/b;->a(Lcom/viber/voip/contacts/f;[Lcom/viber/voip/contacts/f;)V

    .line 219
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    :cond_2
    if-ne v3, v7, :cond_3

    .line 225
    iget-object v3, p0, Lcom/viber/voip/contacts/b;->p:Lcom/viber/voip/contacts/f;

    new-array v4, v7, [Lcom/viber/voip/contacts/f;

    iget-object v5, p0, Lcom/viber/voip/contacts/b;->o:Lcom/viber/voip/contacts/f;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/viber/voip/contacts/b;->q:Lcom/viber/voip/contacts/f;

    aput-object v5, v4, v6

    invoke-direct {p0, v3, v4}, Lcom/viber/voip/contacts/b;->a(Lcom/viber/voip/contacts/f;[Lcom/viber/voip/contacts/f;)V

    goto :goto_2

    .line 226
    :cond_3
    if-ne v3, v8, :cond_4

    .line 227
    iget-object v3, p0, Lcom/viber/voip/contacts/b;->o:Lcom/viber/voip/contacts/f;

    new-array v4, v6, [Lcom/viber/voip/contacts/f;

    iget-object v5, p0, Lcom/viber/voip/contacts/b;->q:Lcom/viber/voip/contacts/f;

    aput-object v5, v4, v1

    invoke-direct {p0, v3, v4}, Lcom/viber/voip/contacts/b;->a(Lcom/viber/voip/contacts/f;[Lcom/viber/voip/contacts/f;)V

    goto :goto_2

    .line 229
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->q:Lcom/viber/voip/contacts/f;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/b;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/contacts/b;->q:Lcom/viber/voip/contacts/f;

    invoke-static {v2}, Lcom/viber/voip/contacts/f;->a(Lcom/viber/voip/contacts/f;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/f;->a(Lcom/viber/voip/contacts/f;I)I

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->r:Lcom/viber/voip/contacts/c/d/b;

    iget-object v1, p0, Lcom/viber/voip/contacts/b;->v:Lcom/viber/voip/contacts/c/d/e;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/d/b;->b(Lcom/viber/voip/contacts/c/d/e;)V

    .line 112
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->r:Lcom/viber/voip/contacts/c/d/b;

    iget-object v1, p0, Lcom/viber/voip/contacts/b;->v:Lcom/viber/voip/contacts/c/d/e;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/d/b;->a(Lcom/viber/voip/contacts/c/d/e;)V

    .line 116
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected p()V
    .locals 3

    .prologue
    .line 185
    const-string/jumbo v0, ""

    .line 186
    iget-boolean v1, p0, Lcom/viber/voip/contacts/b;->i:Z

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/viber/voip/contacts/b;->q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/contacts/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/contacts/b;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phonebookcontact._id NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/b;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/contacts/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_1
    iget v1, p0, Lcom/viber/voip/contacts/b;->s:I

    if-nez v1, :cond_3

    .line 194
    const-string/jumbo v1, "phonebookcontact.viber=1"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/contacts/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/b;->a(Ljava/lang/String;)V

    .line 199
    return-void

    .line 195
    :cond_3
    iget v1, p0, Lcom/viber/voip/contacts/b;->s:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 196
    const-string/jumbo v1, "phonebookcontact.viber=0"

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/contacts/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string/jumbo v0, "(phonebookcontact.native_id IN (%s) OR phonebookcontact._id IN (SELECT phonebookdata.contact_id FROM phonebookdata WHERE phonebookdata.mime_type=0 AND (phonebookdata.data1 LIKE ? OR phonebookdata.data2 LIKE ? OR phonebookdata.data2 LIKE ?)))"

    return-object v0
.end method

.method public r()Lcom/viber/voip/contacts/f;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->n:Lcom/viber/voip/contacts/f;

    return-object v0
.end method

.method public s()Lcom/viber/voip/contacts/f;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->o:Lcom/viber/voip/contacts/f;

    return-object v0
.end method

.method public t()Lcom/viber/voip/contacts/f;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->p:Lcom/viber/voip/contacts/f;

    return-object v0
.end method

.method public u()Lcom/viber/voip/contacts/f;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/viber/voip/contacts/b;->q:Lcom/viber/voip/contacts/f;

    return-object v0
.end method

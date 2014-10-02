.class public Lcom/viber/voip/contacts/c/f/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

.field private d:Lcom/viber/voip/contacts/c/f/a/a/al;

.field private e:Lcom/viber/voip/contacts/c/e/b;

.field private f:Lcom/viber/voip/contacts/c/f/b/u;

.field private g:Lcom/viber/voip/contacts/c/f/a;

.field private h:Lcom/viber/voip/contacts/c/d/c;

.field private i:Lcom/viber/voip/contacts/c/f/a/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/viber/voip/contacts/c/f/a/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/a/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/f/a/a/j;Lcom/viber/voip/contacts/c/d/c;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Lcom/viber/voip/contacts/c/f/a;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->g:Lcom/viber/voip/contacts/c/f/a;

    .line 91
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v1, Lcom/viber/voip/contacts/b/b/d;->a:Lcom/viber/voip/messages/orm/creator/CreatorHelper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;Z)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 92
    invoke-static {p1}, Lcom/viber/voip/contacts/c/e/b;->a(Landroid/content/Context;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->e:Lcom/viber/voip/contacts/c/e/b;

    .line 93
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/al;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->e:Lcom/viber/voip/contacts/c/e/b;

    invoke-direct {v0, p1, p0, v1}, Lcom/viber/voip/contacts/c/f/a/a/al;-><init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/f/a/a/a;Lcom/viber/voip/util/fe;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->d:Lcom/viber/voip/contacts/c/f/a/a/al;

    .line 94
    invoke-static {p1}, Lcom/viber/voip/contacts/c/f/b/u;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/b/u;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->f:Lcom/viber/voip/contacts/c/f/b/u;

    .line 95
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->b:Landroid/content/Context;

    .line 96
    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->h:Lcom/viber/voip/contacts/c/d/c;

    .line 97
    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->i:Lcom/viber/voip/contacts/c/f/a/a/j;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/a/a/a;)Lcom/viber/voip/contacts/c/f/a/a/j;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->i:Lcom/viber/voip/contacts/c/f/a/a/j;

    return-object v0
.end method

.method private a(Lcom/viber/voip/contacts/b/b/a/l;Lcom/viber/voip/contacts/b/b/a/l;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/contacts/b/b/a/l;",
            "Lcom/viber/voip/contacts/b/b/a/l;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 319
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 322
    :goto_0
    instance-of v1, v0, Lcom/viber/voip/contacts/b/b/k;

    if-eqz v1, :cond_0

    .line 323
    check-cast v0, Lcom/viber/voip/contacts/b/b/k;

    .line 324
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->m()Lcom/viber/voip/contacts/b/b/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/contacts/b/b/a/a;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/k;->m()Lcom/viber/voip/contacts/b/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_0
    return-void

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/contacts/b/b/d;)V
    .locals 3
    .parameter

    .prologue
    .line 357
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/d;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/i;

    .line 358
    invoke-virtual {v0}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b/a/l;

    .line 359
    instance-of v0, v0, Lcom/viber/voip/contacts/b/b/k;

    if-eqz v0, :cond_1

    .line 360
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/viber/voip/contacts/b/b/d;->d(Z)V

    .line 366
    :goto_0
    return-void

    .line 365
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/viber/voip/contacts/b/b/d;->d(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/a/a/a;Ljava/lang/String;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/lang/String;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/a/a/h;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/a/a/a;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;ZLcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;ZLcom/viber/voip/contacts/c/f/a/a/h;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/a/a/a;ZLcom/viber/voip/contacts/c/f/a/a/h;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(ZLcom/viber/voip/contacts/c/f/a/a/h;I)V

    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/viber/voip/contacts/c/f/a/a/h;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 146
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->e:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x633

    sget-object v3, Lcom/viber/provider/contacts/e;->a:Landroid/net/Uri;

    new-instance v6, Lcom/viber/voip/contacts/c/f/a/a/c;

    invoke-direct {v6, p0, p2, p3}, Lcom/viber/voip/contacts/c/f/a/a/c;-><init>(Lcom/viber/voip/contacts/c/f/a/a/a;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/a/a/h;)V

    move-object v4, p1

    move-object v5, v2

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;ZZ)V

    .line 157
    return-void
.end method

.method private a(Ljava/util/List;Landroid/net/Uri;Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/contacts/c/f/a/a/i;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Lcom/viber/voip/messages/orm/entity/Entity;",
            "Lcom/viber/voip/contacts/c/f/a/a/i;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 308
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/i;->c:Lcom/viber/voip/contacts/c/f/a/a/i;

    if-ne p4, v0, :cond_1

    .line 309
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/i;->a:Lcom/viber/voip/contacts/c/f/a/a/i;

    if-ne p4, v0, :cond_2

    .line 311
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-interface {p3}, Lcom/viber/voip/messages/orm/entity/Entity;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/viber/voip/messages/orm/entity/Entity;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_2
    sget-object v0, Lcom/viber/voip/contacts/c/f/a/a/i;->b:Lcom/viber/voip/contacts/c/f/a/a/i;

    if-ne p4, v0, :cond_0

    .line 314
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-interface {p3}, Lcom/viber/voip/messages/orm/entity/Entity;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;ZLcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 24
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/contacts/b/b/d;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/contacts/b/b/a/i;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b/d;",
            ">;Z",
            "Lcom/viber/voip/contacts/c/f/a/a/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/contacts/c/f/a/a/a;->g:Lcom/viber/voip/contacts/c/f/a;

    invoke-virtual {v4}, Lcom/viber/voip/contacts/c/f/a;->c()Z

    move-result v4

    .line 200
    if-nez v4, :cond_0

    .line 205
    :cond_0
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 206
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 207
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 209
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 211
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_1
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Lcom/viber/voip/contacts/b/b/d;

    .line 212
    invoke-virtual/range {v16 .. v16}, Lcom/viber/voip/contacts/b/b/d;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-virtual/range {v16 .. v16}, Lcom/viber/voip/contacts/b/b/d;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Lcom/viber/voip/contacts/b/b/d;

    .line 216
    invoke-virtual/range {v16 .. v16}, Lcom/viber/voip/contacts/b/b/d;->b()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_2
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/viber/voip/contacts/b/b/a/i;

    .line 217
    const/4 v5, 0x0

    .line 218
    if-eqz v17, :cond_3

    .line 219
    invoke-virtual {v6}, Lcom/viber/voip/contacts/b/b/a/i;->getId()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/viber/voip/contacts/b/b/d;->a(J)Lcom/viber/voip/contacts/b/b/a/i;

    move-result-object v5

    .line 221
    :cond_3
    if-nez v5, :cond_4

    .line 222
    invoke-virtual {v6}, Lcom/viber/voip/contacts/b/b/a/i;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/viber/voip/contacts/b/b/a/i;

    move-object v5, v4

    .line 225
    :cond_4
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/viber/voip/contacts/b/b/a/i;->a()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/viber/voip/contacts/b/b/a/i;->a()J

    move-result-wide v10

    cmp-long v4, v7, v10

    if-eqz v4, :cond_a

    .line 226
    invoke-virtual {v5}, Lcom/viber/voip/contacts/b/b/a/i;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/viber/voip/contacts/b/b/d;

    .line 227
    invoke-virtual {v4}, Lcom/viber/voip/contacts/b/b/d;->b()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 228
    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    if-eqz v17, :cond_8

    move-object/from16 v7, v17

    .line 243
    :goto_2
    invoke-virtual {v7}, Lcom/viber/voip/contacts/b/b/d;->b()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {v5, v7}, Lcom/viber/voip/contacts/b/b/a/i;->a(Lcom/viber/voip/contacts/b/b/a/a;)V

    .line 245
    invoke-virtual {v7}, Lcom/viber/voip/contacts/b/b/d;->g()Ljava/lang/String;

    move-result-object v8

    .line 247
    invoke-virtual {v4}, Lcom/viber/voip/contacts/b/b/d;->v()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_5

    .line 248
    invoke-virtual {v4}, Lcom/viber/voip/contacts/b/b/d;->v()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Lcom/viber/voip/contacts/b/b/d;->e(J)V

    .line 252
    :cond_5
    invoke-virtual {v4}, Lcom/viber/voip/contacts/b/b/d;->g()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "\\."

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 253
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    array-length v12, v10

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v12, :cond_9

    aget-object v13, v10, v7

    .line 255
    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 256
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-eqz v14, :cond_6

    const-string/jumbo v14, "."

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_6
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v7, v16

    .line 241
    goto :goto_2

    .line 260
    :cond_9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/viber/voip/contacts/b/b/d;->n(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v4}, Lcom/viber/voip/contacts/b/b/d;->b()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-nez v7, :cond_b

    .line 262
    invoke-virtual {v4}, Lcom/viber/voip/contacts/b/b/d;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v7, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    sget-object v8, Lcom/viber/voip/contacts/c/f/a/a/i;->c:Lcom/viber/voip/contacts/c/f/a/a/i;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v4, v8}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/util/List;Landroid/net/Uri;Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/contacts/c/f/a/a/i;)V

    .line 268
    :cond_a
    :goto_4
    invoke-virtual {v6}, Lcom/viber/voip/contacts/b/b/a/i;->c()Lcom/viber/voip/messages/orm/entity/EntityUpdater;

    move-result-object v7

    sget-object v8, Lcom/viber/provider/contacts/e;->a:Landroid/net/Uri;

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/entity/EntityUpdater;Landroid/net/Uri;Ljava/util/List;)Z

    .line 270
    if-nez v5, :cond_c

    .line 271
    invoke-virtual {v6}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/viber/voip/contacts/b/b/a/l;

    .line 272
    sget-object v6, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    sget-object v7, Lcom/viber/voip/contacts/c/f/a/a/i;->b:Lcom/viber/voip/contacts/c/f/a/a/i;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v6, v4, v7}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/util/List;Landroid/net/Uri;Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/contacts/c/f/a/a/i;)V

    .line 273
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v6, v4, v1}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/b/b/a/l;Lcom/viber/voip/contacts/b/b/a/l;Ljava/util/Map;)V

    goto :goto_5

    .line 264
    :cond_b
    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v9}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/b/b/d;Lcom/viber/voip/contacts/b/b/d;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 265
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v4

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Lcom/viber/voip/contacts/b/b/d;->getId()J

    move-result-wide v10

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/viber/voip/util/b/w;->b(Landroid/net/Uri;)V

    goto :goto_4

    .line 276
    :cond_c
    invoke-virtual {v6}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/viber/voip/contacts/b/b/a/l;

    .line 277
    invoke-virtual {v12}, Lcom/viber/voip/contacts/b/b/a/l;->getId()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/viber/voip/contacts/b/b/a/i;->a(J)Lcom/viber/voip/contacts/b/b/a/l;

    move-result-object v11

    .line 278
    invoke-virtual {v12}, Lcom/viber/voip/contacts/b/b/a/l;->o()Lcom/viber/voip/messages/orm/entity/EntityUpdater;

    move-result-object v13

    sget-object v14, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    move-object/from16 v10, p0

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/entity/EntityUpdater;Landroid/net/Uri;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v12, v1}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/b/b/a/l;Lcom/viber/voip/contacts/b/b/a/l;Ljava/util/Map;)V

    goto :goto_6

    .line 282
    :cond_e
    invoke-virtual {v5}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/viber/voip/contacts/b/b/a/l;

    .line 283
    invoke-virtual {v6}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 284
    sget-object v8, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    sget-object v10, Lcom/viber/voip/contacts/c/f/a/a/i;->c:Lcom/viber/voip/contacts/c/f/a/a/i;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v4, v10}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/util/List;Landroid/net/Uri;Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/contacts/c/f/a/a/i;)V

    goto :goto_7

    .line 287
    :cond_10
    invoke-virtual {v6}, Lcom/viber/voip/contacts/b/b/a/i;->b()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/viber/voip/contacts/b/b/a/i;->a(Ljava/util/Set;)V

    goto/16 :goto_1

    .line 291
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v9}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/b/b/d;Lcom/viber/voip/contacts/b/b/d;Ljava/util/List;)Z

    .line 292
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 293
    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 297
    :cond_12
    new-instance v4, Lcom/viber/voip/contacts/c/f/a/a/e;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p5

    invoke-direct {v4, v0, v1, v2}, Lcom/viber/voip/contacts/c/f/a/a/e;-><init>(Lcom/viber/voip/contacts/c/f/a/a/a;Ljava/util/Set;Lcom/viber/voip/contacts/c/f/a/a/h;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/util/Set;Ljava/util/Map;ZLcom/viber/voip/contacts/c/f/a/a/h;)V

    .line 305
    return-void
.end method

.method private a(Ljava/util/Set;Ljava/util/Map;ZLcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;Z",
            "Lcom/viber/voip/contacts/c/f/a/a/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 370
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    .line 371
    new-instance v0, Lcom/viber/voip/contacts/c/f/a/a/f;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/c/f/a/a/f;-><init>(Lcom/viber/voip/contacts/c/f/a/a/a;ILjava/util/Map;ZLcom/viber/voip/contacts/c/f/a/a/h;)V

    .line 391
    if-nez v2, :cond_1

    .line 392
    invoke-direct {p0, p3, p4, v2}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(ZLcom/viber/voip/contacts/c/f/a/a/h;I)V

    .line 400
    :cond_0
    return-void

    .line 396
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 397
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->e:Lcom/viber/voip/contacts/c/e/b;

    const/16 v2, 0x634

    const-string/jumbo v3, "com.viber.provider.vibercontacts"

    const/4 v4, 0x0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/util/List;Lcom/viber/voip/util/ff;)V

    goto :goto_0
.end method

.method private declared-synchronized a(ZLcom/viber/voip/contacts/c/f/a/a/h;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 403
    monitor-enter p0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-interface {p2, v0}, Lcom/viber/voip/contacts/c/f/a/a/h;->a(Z)V

    .line 404
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->g:Lcom/viber/voip/contacts/c/f/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a;->c()Z

    move-result v0

    .line 405
    if-nez p3, :cond_1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->f:Lcom/viber/voip/contacts/c/f/b/u;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/viber/voip/contacts/c/f/a/a/g;

    invoke-direct {v4, p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/g;-><init>(Lcom/viber/voip/contacts/c/f/a/a/a;Z)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/viber/voip/contacts/c/f/b/u;->a(Ljava/util/Set;ZZLcom/viber/voip/contacts/c/f/b/ab;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_2
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/viber/voip/contacts/b/b/d;Lcom/viber/voip/contacts/b/b/d;Ljava/util/List;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/contacts/b/b/d;",
            "Lcom/viber/voip/contacts/b/b/d;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 330
    if-nez p1, :cond_1

    .line 331
    invoke-direct {p0, p2}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/b/b/d;)V

    .line 332
    invoke-virtual {p2}, Lcom/viber/voip/contacts/b/b/d;->i()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/viber/voip/contacts/b/b/d;->b(I)V

    .line 333
    sget-object v0, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/voip/contacts/c/f/a/a/i;->b:Lcom/viber/voip/contacts/c/f/a/a/i;

    invoke-direct {p0, p3, v0, p2, v2}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/util/List;Landroid/net/Uri;Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/contacts/c/f/a/a/i;)V

    .line 336
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->h:Lcom/viber/voip/contacts/c/d/c;

    invoke-virtual {p2}, Lcom/viber/voip/contacts/b/b/d;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/contacts/a/c;->a(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/viber/voip/contacts/c/d/c;->a(Ljava/lang/Character;)V

    .line 352
    :cond_0
    :goto_0
    return v1

    .line 339
    :cond_1
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Lcom/viber/voip/contacts/b/b/d;)V

    .line 340
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/viber/voip/contacts/b/b/d;->k()Lcom/viber/voip/messages/orm/entity/EntityUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->update(Lcom/viber/voip/messages/orm/entity/Entity;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 341
    :goto_1
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/d;->i()I

    move-result v3

    .line 342
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/d;->t()I

    move-result v4

    .line 343
    if-nez v0, :cond_2

    if-eq v3, v4, :cond_5

    .line 344
    :cond_2
    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/d;->w()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/viber/voip/contacts/b/b/d;->c(I)V

    .line 345
    :cond_3
    invoke-virtual {p1, v3}, Lcom/viber/voip/contacts/b/b/d;->b(I)V

    .line 346
    sget-object v0, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    sget-object v2, Lcom/viber/voip/contacts/c/f/a/a/i;->a:Lcom/viber/voip/contacts/c/f/a/a/i;

    invoke-direct {p0, p3, v0, p1, v2}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/util/List;Landroid/net/Uri;Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/contacts/c/f/a/a/i;)V

    .line 349
    if-eq v3, v4, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->h:Lcom/viber/voip/contacts/c/d/c;

    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/contacts/a/c;->a(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/viber/voip/contacts/c/d/c;->a(Ljava/lang/Character;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 340
    goto :goto_1

    :cond_5
    move v1, v2

    .line 352
    goto :goto_0
.end method

.method private a(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/entity/EntityUpdater;Landroid/net/Uri;Ljava/util/List;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/messages/orm/entity/Entity;",
            "Lcom/viber/voip/messages/orm/entity/Entity;",
            "Lcom/viber/voip/messages/orm/entity/EntityUpdater",
            "<+",
            "Lcom/viber/voip/messages/orm/entity/Entity;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 442
    if-nez p1, :cond_0

    .line 443
    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/i;->b:Lcom/viber/voip/contacts/c/f/a/a/i;

    invoke-direct {p0, p5, p4, p2, v1}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/util/List;Landroid/net/Uri;Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/contacts/c/f/a/a/i;)V

    .line 449
    :goto_0
    return v0

    .line 445
    :cond_0
    invoke-virtual {p3, p1}, Lcom/viber/voip/messages/orm/entity/EntityUpdater;->update(Lcom/viber/voip/messages/orm/entity/Entity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/i;->a:Lcom/viber/voip/contacts/c/f/a/a/i;

    invoke-direct {p0, p5, p4, p1, v1}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/util/List;Landroid/net/Uri;Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/contacts/c/f/a/a/i;)V

    goto :goto_0

    .line 449
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Lcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 123
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->e:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x633

    sget-object v3, Lcom/viber/provider/contacts/e;->a:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "contact_id"

    aput-object v5, v4, v9

    new-instance v8, Lcom/viber/voip/contacts/c/f/a/a/b;

    invoke-direct {v8, p0, p1, p2}, Lcom/viber/voip/contacts/c/f/a/a/b;-><init>(Lcom/viber/voip/contacts/c/f/a/a/a;Ljava/lang/String;Lcom/viber/voip/contacts/c/f/a/a/h;)V

    move-object v5, p1

    move-object v6, v2

    move-object v7, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 143
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->d:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->a()V

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onInvisible: contactsId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "contact_id IN ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/contacts/c/f/a/a/a;->b(Ljava/lang/String;Lcom/viber/voip/contacts/c/f/a/a/h;)V

    .line 120
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->d:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Z)V

    .line 106
    return-void
.end method

.method public a(ZLjava/lang/String;Lcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDelete: removeIn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", accountIds "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string/jumbo v0, " IN "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/viber/voip/contacts/c/f/a/a/a;->b(Ljava/lang/String;Lcom/viber/voip/contacts/c/f/a/a/h;)V

    .line 115
    return-void

    .line 114
    :cond_0
    const-string/jumbo v0, " NOT IN "

    goto :goto_0
.end method

.method public a(ZLjava/util/Set;Lcom/viber/voip/contacts/c/f/a/a/h;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b/d;",
            ">;",
            "Lcom/viber/voip/contacts/c/f/a/a/h;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 164
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0, p1, p3, v7}, Lcom/viber/voip/contacts/c/f/a/a/a;->a(ZLcom/viber/voip/contacts/c/f/a/a/h;I)V

    .line 194
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static {p2}, Lcom/viber/voip/i/a;->b(Ljava/util/Collection;)Lcom/viber/voip/i/b;

    move-result-object v4

    .line 171
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->i:Lcom/viber/voip/contacts/c/f/a/a/j;

    iget-object v1, v4, Lcom/viber/voip/i/b;->d:Ljava/util/Set;

    iget-object v2, v4, Lcom/viber/voip/i/b;->c:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/contacts/c/f/a/a/j;->a(Ljava/util/Set;Ljava/util/Set;)V

    .line 173
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->e:Lcom/viber/voip/contacts/c/e/b;

    new-instance v2, Lcom/viber/voip/contacts/c/f/a/a/d;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/viber/voip/contacts/c/f/a/a/d;-><init>(Lcom/viber/voip/contacts/c/f/a/a/a;Ljava/util/Set;ZLcom/viber/voip/contacts/c/f/a/a/h;)V

    const/16 v3, 0x630

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "phonebookcontact._id IN ( SELECT contact_id FROM phonebookrawcontact WHERE _id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/viber/voip/i/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")) OR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "phonebookcontact"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/viber/voip/i/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(Lcom/viber/voip/util/fe;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 459
    if-eqz p1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->d:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->d()V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->d:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->b()V

    .line 463
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->d:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->c()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->i:Lcom/viber/voip/contacts/c/f/a/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/a;->i:Lcom/viber/voip/contacts/c/f/a/a/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/j;->c(Z)V

    .line 161
    :cond_0
    return-void
.end method

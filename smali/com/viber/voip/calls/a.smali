.class public Lcom/viber/voip/calls/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static d:I

.field private static e:I

.field private static f:[Ljava/lang/String;

.field private static g:[Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

.field private c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

.field private i:Lcom/viber/voip/ViberApplication;

.field private j:Lcom/viber/voip/contacts/c/e/b;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    const-class v0, Lcom/viber/voip/calls/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/calls/a;->a:Ljava/lang/String;

    .line 71
    sput v2, Lcom/viber/voip/calls/a;->d:I

    .line 72
    sput v3, Lcom/viber/voip/calls/a;->e:I

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "COUNT(*)"

    aput-object v1, v0, v2

    const-string/jumbo v1, "GROUP_CONCAT(call_id)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/calls/a;->f:[Ljava/lang/String;

    .line 75
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "COUNT(*)"

    aput-object v1, v0, v2

    sput-object v0, Lcom/viber/voip/calls/a;->g:[Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "viber_call_type=? AND duration>?"

    sput-object v0, Lcom/viber/voip/calls/a;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v1, Lcom/viber/voip/calls/entities/impl/g;->a:Lcom/viber/voip/messages/orm/creator/Creator;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;Z)V

    iput-object v0, p0, Lcom/viber/voip/calls/a;->b:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 69
    new-instance v0, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    sget-object v1, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->b:Lcom/viber/voip/calls/entities/impl/b;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;-><init>(Lcom/viber/voip/messages/orm/creator/Creator;Z)V

    iput-object v0, p0, Lcom/viber/voip/calls/a;->c:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    .line 116
    iput-object p1, p0, Lcom/viber/voip/calls/a;->i:Lcom/viber/voip/ViberApplication;

    .line 117
    iget-object v0, p0, Lcom/viber/voip/calls/a;->i:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/e/b;->a(Landroid/content/Context;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/a;->j:Lcom/viber/voip/contacts/c/e/b;

    .line 118
    invoke-direct {p0}, Lcom/viber/voip/calls/a;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/calls/a;->k:Z

    .line 119
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/viber/voip/calls/a;->d:I

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/calls/a;)Lcom/viber/voip/contacts/c/e/b;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/calls/a;->j:Lcom/viber/voip/contacts/c/e/b;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/calls/a;Ljava/util/Set;Lcom/viber/voip/calls/o;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/calls/a;->a(Ljava/util/Set;Lcom/viber/voip/calls/o;)V

    return-void
.end method

.method private a(Ljava/util/Set;Lcom/viber/voip/calls/o;)V
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/viber/voip/calls/o;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 316
    iget-object v0, p0, Lcom/viber/voip/calls/a;->j:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x63a

    sget-object v3, Lcom/viber/provider/contacts/c;->a:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "call_id NOT IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/viber/voip/i/a;->c(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/viber/voip/calls/m;

    invoke-direct {v6, p0, p2}, Lcom/viber/voip/calls/m;-><init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/o;)V

    move-object v5, v2

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;ZZ)V

    .line 326
    return-void
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcom/viber/voip/calls/a;->e:I

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/calls/a;)Lcom/viber/voip/ViberApplication;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/calls/a;->i:Lcom/viber/voip/ViberApplication;

    return-object v0
.end method

.method private declared-synchronized c()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 122
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_3

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "pref_ics_samsung_call_log_state"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 124
    if-nez v0, :cond_1

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/calls/a;->i:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "messageid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    move v0, v9

    .line 133
    :goto_0
    if-eqz v1, :cond_0

    .line 134
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "pref_ics_samsung_call_log_state"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    :cond_1
    if-ne v0, v9, :cond_2

    move v0, v6

    .line 140
    :goto_1
    monitor-exit p0

    return v0

    .line 130
    :catch_0
    move-exception v0

    move-object v1, v8

    move v0, v6

    .line 131
    goto :goto_0

    :cond_2
    move v0, v7

    .line 138
    goto :goto_1

    :cond_3
    move v0, v7

    .line 140
    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(ILcom/viber/voip/calls/p;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    .line 144
    iget-object v0, p0, Lcom/viber/voip/calls/a;->j:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x639

    sget-object v3, Lcom/viber/provider/contacts/c;->a:Landroid/net/Uri;

    sget-object v4, Lcom/viber/voip/calls/a;->g:[Ljava/lang/String;

    sget-object v5, Lcom/viber/voip/calls/a;->h:Ljava/lang/String;

    new-array v6, v7, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v8, Lcom/viber/voip/calls/b;

    invoke-direct {v8, p0, p2}, Lcom/viber/voip/calls/b;-><init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/p;)V

    move-object v7, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 162
    return-void
.end method

.method public a(Lcom/viber/voip/calls/entities/impl/CallEntityImpl;Lcom/viber/voip/calls/entities/impl/g;Lcom/viber/voip/calls/o;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    const-string/jumbo v0, "insertViberCallLogEntity: insert call"

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/a;->a(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lcom/viber/voip/calls/entities/impl/CallEntityImpl;->getCreator()Lcom/viber/voip/messages/orm/creator/Creator;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/calls/c;

    invoke-direct {v1, p0, p3}, Lcom/viber/voip/calls/c;-><init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/o;)V

    invoke-static {p1, v0, v1}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->save(Lcom/viber/voip/messages/orm/entity/Entity;Lcom/viber/voip/messages/orm/creator/Creator;Lcom/viber/voip/messages/orm/service/ServiceSaveCallback;)V

    .line 395
    return-void
.end method

.method public a(Lcom/viber/voip/calls/n;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/viber/voip/calls/a;->j:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x63b

    sget-object v3, Lcom/viber/provider/contacts/c;->a:Landroid/net/Uri;

    new-instance v6, Lcom/viber/voip/calls/e;

    invoke-direct {v6, p0, p1, p2}, Lcom/viber/voip/calls/e;-><init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/n;Z)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;ZZ)V

    .line 443
    return-void
.end method

.method public a(Lcom/viber/voip/calls/n;[Ljava/lang/Long;[Ljava/lang/Long;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 398
    iget-object v0, p0, Lcom/viber/voip/calls/a;->j:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x63b

    sget-object v3, Lcom/viber/provider/contacts/c;->a:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Lcom/viber/voip/i/a;->a([Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/viber/voip/calls/d;

    invoke-direct {v6, p0, p1, p2}, Lcom/viber/voip/calls/d;-><init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/n;[Ljava/lang/Long;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v5, v2

    invoke-virtual/range {v0 .. v8}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/voip/util/fh;ZZ)V

    .line 418
    return-void
.end method

.method public a(Lcom/viber/voip/calls/o;Lcom/viber/voip/calls/t;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 266
    iget-object v0, p0, Lcom/viber/voip/calls/a;->j:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x639

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/viber/voip/calls/t;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v5, p0, Lcom/viber/voip/calls/a;->k:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, " AND messageid IS NULL"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/viber/voip/calls/k;

    invoke-direct {v8, p0, p2, p1}, Lcom/viber/voip/calls/k;-><init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/t;Lcom/viber/voip/calls/o;)V

    move-object v6, v2

    move-object v7, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 290
    return-void

    .line 266
    :cond_0
    const-string/jumbo v5, ""

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/calls/q;)V
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 165
    iget-object v0, p0, Lcom/viber/voip/calls/a;->j:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x639

    sget-object v3, Lcom/viber/provider/contacts/c;->a:Landroid/net/Uri;

    sget-object v4, Lcom/viber/voip/calls/a;->f:[Ljava/lang/String;

    new-instance v8, Lcom/viber/voip/calls/f;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/calls/f;-><init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/q;)V

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 184
    return-void
.end method

.method public a(Lcom/viber/voip/calls/r;)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 293
    iget-object v0, p0, Lcom/viber/voip/calls/a;->j:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x639

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "date"

    aput-object v5, v4, v9

    const-string/jumbo v7, "date DESC LIMIT 100"

    new-instance v8, Lcom/viber/voip/calls/l;

    invoke-direct {v8, p0, p1}, Lcom/viber/voip/calls/l;-><init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/r;)V

    move-object v5, v2

    move-object v6, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 313
    return-void
.end method

.method public a(Lcom/viber/voip/calls/s;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    new-instance v0, Lcom/viber/voip/calls/g;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/calls/g;-><init>(Lcom/viber/voip/calls/a;Lcom/viber/voip/calls/s;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/a;->a(Lcom/viber/voip/calls/r;)V

    .line 222
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    return-void
.end method

.method public a(Ljava/util/Set;JLcom/viber/voip/calls/o;Lcom/viber/voip/calls/t;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;J",
            "Lcom/viber/voip/calls/o;",
            "Lcom/viber/voip/calls/t;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/viber/voip/calls/a;->b:Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;

    iget-object v1, p0, Lcom/viber/voip/calls/a;->j:Lcom/viber/voip/contacts/c/e/b;

    new-instance v2, Lcom/viber/voip/calls/i;

    invoke-direct {v2, p0, p1, p4}, Lcom/viber/voip/calls/i;-><init>(Lcom/viber/voip/calls/a;Ljava/util/Set;Lcom/viber/voip/calls/o;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id NOT IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p5, Lcom/viber/voip/calls/t;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v4, p0, Lcom/viber/voip/calls/a;->k:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, " AND messageid IS NULL"

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/orm/manager/AsyncEntityManager;->fillCursor(Lcom/viber/voip/util/fe;Lcom/viber/voip/messages/orm/manager/AsyncEntityManager$FillCursorCompleteCallback;ILjava/lang/String;[Ljava/lang/String;)V

    .line 262
    return-void

    .line 226
    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.class public Lcom/viber/voip/calls/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/am;
.implements Lcom/viber/voip/calls/u;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/viber/voip/calls/z;


# instance fields
.field private c:Lcom/viber/voip/ViberApplication;

.field private d:Lcom/viber/voip/calls/af;

.field private e:Lcom/viber/voip/calls/a;

.field private f:Lcom/viber/voip/contacts/c/d/aa;

.field private g:Lcom/viber/voip/messages/i;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/calls/x;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/Handler;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/viber/voip/calls/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/calls/z;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 2
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/calls/z;->h:Ljava/util/Set;

    .line 101
    new-instance v0, Lcom/viber/voip/calls/aa;

    invoke-direct {v0, p0}, Lcom/viber/voip/calls/aa;-><init>(Lcom/viber/voip/calls/z;)V

    iput-object v0, p0, Lcom/viber/voip/calls/z;->j:Ljava/lang/Runnable;

    .line 57
    iput-object p1, p0, Lcom/viber/voip/calls/z;->c:Lcom/viber/voip/ViberApplication;

    .line 58
    new-instance v0, Lcom/viber/voip/calls/af;

    iget-object v1, p0, Lcom/viber/voip/calls/z;->c:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/calls/af;-><init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/calls/am;)V

    iput-object v0, p0, Lcom/viber/voip/calls/z;->d:Lcom/viber/voip/calls/af;

    .line 59
    new-instance v0, Lcom/viber/voip/contacts/c/d/aa;

    iget-object v1, p0, Lcom/viber/voip/calls/z;->c:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/c/d/aa;-><init>(Lcom/viber/voip/ViberApplication;)V

    iput-object v0, p0, Lcom/viber/voip/calls/z;->f:Lcom/viber/voip/contacts/c/d/aa;

    .line 60
    new-instance v0, Lcom/viber/voip/calls/a;

    iget-object v1, p0, Lcom/viber/voip/calls/z;->c:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1}, Lcom/viber/voip/calls/a;-><init>(Lcom/viber/voip/ViberApplication;)V

    iput-object v0, p0, Lcom/viber/voip/calls/z;->e:Lcom/viber/voip/calls/a;

    .line 61
    sget-object v0, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/z;->i:Landroid/os/Handler;

    .line 63
    iget-object v0, p0, Lcom/viber/voip/calls/z;->c:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/z;->g:Lcom/viber/voip/messages/i;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/calls/z;)Lcom/viber/voip/calls/af;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/calls/z;->d:Lcom/viber/voip/calls/af;

    return-object v0
.end method

.method public static a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/calls/u;
    .locals 2
    .parameter

    .prologue
    .line 67
    sget-object v0, Lcom/viber/voip/calls/z;->b:Lcom/viber/voip/calls/z;

    if-nez v0, :cond_1

    .line 68
    const-class v1, Lcom/viber/voip/calls/z;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/viber/voip/calls/z;->b:Lcom/viber/voip/calls/z;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/viber/voip/calls/z;

    invoke-direct {v0, p0}, Lcom/viber/voip/calls/z;-><init>(Lcom/viber/voip/ViberApplication;)V

    sput-object v0, Lcom/viber/voip/calls/z;->b:Lcom/viber/voip/calls/z;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/viber/voip/calls/z;->b:Lcom/viber/voip/calls/z;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;IZIIIJJILcom/viber/voip/calls/w;)V
    .locals 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-static/range {p9 .. p9}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/calls/z;->c:Lcom/viber/voip/ViberApplication;

    move-object/from16 v0, v20

    move-object/from16 v1, v20

    invoke-static {v2, v0, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 262
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/viber/voip/viberout/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/calls/z;->f:Lcom/viber/voip/contacts/c/d/aa;

    move-object/from16 v21, v0

    new-instance v2, Lcom/viber/voip/calls/ae;

    move-object/from16 v3, p0

    move-wide/from16 v4, p15

    move-object/from16 v6, p8

    move/from16 v8, p10

    move-wide/from16 v9, p17

    move-wide/from16 v12, p1

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move-object/from16 v18, p20

    move/from16 v19, p19

    invoke-direct/range {v2 .. v19}, Lcom/viber/voip/calls/ae;-><init>(Lcom/viber/voip/calls/z;JLjava/lang/String;Ljava/lang/String;IJLjava/lang/String;JZIIILcom/viber/voip/calls/w;I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11, v2}, Lcom/viber/voip/contacts/c/d/aa;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/c/d/as;)V

    .line 314
    return-void
.end method

.method private declared-synchronized b()V
    .locals 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/calls/z;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/x;

    .line 112
    invoke-interface {v0}, Lcom/viber/voip/calls/x;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :cond_0
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/calls/z;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/viber/voip/calls/z;->b()V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/calls/z;)Lcom/viber/voip/messages/i;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/calls/z;->g:Lcom/viber/voip/messages/i;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/viber/voip/calls/z;->d:Lcom/viber/voip/calls/af;

    invoke-virtual {v0}, Lcom/viber/voip/calls/af;->a()V

    .line 79
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/viber/voip/calls/z;->b()V

    .line 119
    return-void
.end method

.method public a(ILcom/viber/voip/calls/v;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/viber/voip/calls/z;->e:Lcom/viber/voip/calls/a;

    new-instance v1, Lcom/viber/voip/calls/ac;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/calls/ac;-><init>(Lcom/viber/voip/calls/z;Lcom/viber/voip/calls/v;)V

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/calls/a;->a(ILcom/viber/voip/calls/p;)V

    .line 241
    return-void
.end method

.method public a(JLjava/lang/String;IZIIIJJILcom/viber/voip/calls/w;)V
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move-wide/from16 v15, p9

    move-wide/from16 v17, p11

    move/from16 v19, p13

    move-object/from16 v20, p14

    invoke-direct/range {v0 .. v20}, Lcom/viber/voip/calls/z;->a(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;IZIIIJJILcom/viber/voip/calls/w;)V

    .line 127
    return-void
.end method

.method public declared-synchronized a(Lcom/viber/voip/calls/x;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/calls/z;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/viber/voip/calls/y;)V
    .locals 3
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/viber/voip/calls/z;->e:Lcom/viber/voip/calls/a;

    new-instance v1, Lcom/viber/voip/calls/ad;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/calls/ad;-><init>(Lcom/viber/voip/calls/z;Lcom/viber/voip/calls/y;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/calls/a;->a(Lcom/viber/voip/calls/n;Z)V

    .line 254
    return-void
.end method

.method public a(Ljava/util/Collection;Lcom/viber/voip/calls/y;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/calls/entities/AggregatedCallEntity;",
            ">;",
            "Lcom/viber/voip/calls/y;",
            ")V"
        }
    .end annotation

    .prologue
    .line 131
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 132
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 133
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    .line 134
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/AggregatedCallEntity;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/viber/voip/calls/z;->b(Ljava/util/Collection;Lcom/viber/voip/calls/y;)V

    .line 141
    :cond_1
    :goto_1
    return-void

    .line 138
    :cond_2
    if-eqz p2, :cond_1

    .line 139
    invoke-interface {p2}, Lcom/viber/voip/calls/y;->a()V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/viber/voip/calls/z;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/calls/z;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 95
    iget-object v0, p0, Lcom/viber/voip/calls/z;->d:Lcom/viber/voip/calls/af;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/calls/af;->a(Z)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/z;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/calls/z;->j:Ljava/lang/Runnable;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public declared-synchronized b(Lcom/viber/voip/calls/x;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/calls/z;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/util/Collection;Lcom/viber/voip/calls/y;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/calls/entities/CallEntity;",
            ">;",
            "Lcom/viber/voip/calls/y;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 145
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 146
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 147
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 148
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/entities/CallEntity;

    .line 149
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v0}, Lcom/viber/voip/calls/entities/CallEntity;->e()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/calls/z;->e:Lcom/viber/voip/calls/a;

    new-instance v4, Lcom/viber/voip/calls/ab;

    invoke-direct {v4, p0, p2}, Lcom/viber/voip/calls/ab;-><init>(Lcom/viber/voip/calls/z;Lcom/viber/voip/calls/y;)V

    new-array v0, v6, [Ljava/lang/Long;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    new-array v2, v6, [Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    invoke-virtual {v3, v4, v0, v1}, Lcom/viber/voip/calls/a;->a(Lcom/viber/voip/calls/n;[Ljava/lang/Long;[Ljava/lang/Long;)V

    .line 165
    :cond_1
    :goto_1
    return-void

    .line 162
    :cond_2
    if-eqz p2, :cond_1

    .line 163
    invoke-interface {p2}, Lcom/viber/voip/calls/y;->a()V

    goto :goto_1
.end method

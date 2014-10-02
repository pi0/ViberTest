.class public Lcom/viber/voip/messages/extras/image/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/viber/voip/messages/extras/image/b;


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/extras/image/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/b;->b:Ljava/util/Set;

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/b;->c:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/b;->d:Ljava/util/Set;

    .line 37
    sget-object v0, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/image/b;->e:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method public static a()Lcom/viber/voip/messages/extras/image/b;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/viber/voip/messages/extras/image/b;->a:Lcom/viber/voip/messages/extras/image/b;

    if-nez v0, :cond_0

    .line 42
    const-class v1, Lcom/viber/voip/messages/extras/image/b;

    monitor-enter v1

    .line 43
    :try_start_0
    new-instance v0, Lcom/viber/voip/messages/extras/image/b;

    invoke-direct {v0}, Lcom/viber/voip/messages/extras/image/b;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/extras/image/b;->a:Lcom/viber/voip/messages/extras/image/b;

    .line 44
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    sget-object v0, Lcom/viber/voip/messages/extras/image/b;->a:Lcom/viber/voip/messages/extras/image/b;

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/image/b;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/b;->b:Ljava/util/Set;

    return-object v0
.end method

.method private a(ILcom/viber/voip/messages/ui/media/SendMediaDataContainer;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/viber/voip/messages/extras/image/c;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/extras/image/c;-><init>(Lcom/viber/voip/messages/extras/image/b;ILcom/viber/voip/messages/ui/media/SendMediaDataContainer;II)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method private a(I[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 110
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/extras/image/d;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/extras/image/d;-><init>(Lcom/viber/voip/messages/extras/image/b;I[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/image/b;ILcom/viber/voip/messages/ui/media/SendMediaDataContainer;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/extras/image/b;->a(ILcom/viber/voip/messages/ui/media/SendMediaDataContainer;II)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/image/b;I[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/extras/image/b;->a(I[Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-static {p0}, Lcom/viber/voip/messages/extras/image/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/extras/image/b;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/b;->c:Ljava/util/Set;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 265
    const/4 v0, 0x3

    const-string/jumbo v1, "ImagePreProcessor"

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/extras/image/b;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/b;->d:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 67
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/b;->c:Ljava/util/Set;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/b;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v1

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ILandroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/messages/extras/image/l;I)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v10, p0, Lcom/viber/voip/messages/extras/image/b;->e:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/extras/image/f;

    const/16 v7, 0x500

    const/4 v9, 0x1

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/messages/extras/image/f;-><init>(Lcom/viber/voip/messages/extras/image/b;ILandroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/messages/extras/image/l;IIZ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method public a(ILandroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/messages/extras/image/l;II)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iget-object v10, p0, Lcom/viber/voip/messages/extras/image/b;->e:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/extras/image/f;

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/viber/voip/messages/extras/image/f;-><init>(Lcom/viber/voip/messages/extras/image/b;ILandroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/messages/extras/image/l;IIZ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

.method public a(Lcom/viber/voip/messages/extras/image/e;)V
    .locals 2
    .parameter

    .prologue
    .line 80
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/b;->b:Ljava/util/Set;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 74
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/b;->d:Ljava/util/Set;

    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/b;->d:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/viber/voip/messages/extras/image/e;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    iget-object v1, p0, Lcom/viber/voip/messages/extras/image/b;->b:Ljava/util/Set;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/image/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

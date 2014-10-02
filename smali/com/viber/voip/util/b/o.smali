.class public final Lcom/viber/voip/util/b/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/util/b/m;

.field private final b:Lcom/viber/voip/util/b/q;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/viber/voip/util/b/m;Lcom/viber/voip/util/b/q;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 779
    iput-object p1, p0, Lcom/viber/voip/util/b/o;->a:Lcom/viber/voip/util/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput-object p2, p0, Lcom/viber/voip/util/b/o;->b:Lcom/viber/voip/util/b/q;

    .line 781
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/util/b/m;Lcom/viber/voip/util/b/q;Lcom/viber/voip/util/b/n;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 775
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/util/b/o;-><init>(Lcom/viber/voip/util/b/m;Lcom/viber/voip/util/b/q;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/b/o;)Lcom/viber/voip/util/b/q;
    .locals 1
    .parameter

    .prologue
    .line 775
    iget-object v0, p0, Lcom/viber/voip/util/b/o;->b:Lcom/viber/voip/util/b/q;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/util/b/o;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 775
    iput-boolean p1, p0, Lcom/viber/voip/util/b/o;->c:Z

    return p1
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .locals 4
    .parameter

    .prologue
    .line 816
    iget-object v1, p0, Lcom/viber/voip/util/b/o;->a:Lcom/viber/voip/util/b/m;

    monitor-enter v1

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/o;->b:Lcom/viber/voip/util/b/q;

    invoke-static {v0}, Lcom/viber/voip/util/b/q;->a(Lcom/viber/voip/util/b/q;)Lcom/viber/voip/util/b/o;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 818
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 820
    :cond_0
    :try_start_1
    new-instance v0, Lcom/viber/voip/util/b/p;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/viber/voip/util/b/o;->b:Lcom/viber/voip/util/b/q;

    invoke-virtual {v3, p1}, Lcom/viber/voip/util/b/q;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/viber/voip/util/b/p;-><init>(Lcom/viber/voip/util/b/o;Ljava/io/OutputStream;Lcom/viber/voip/util/b/n;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/viber/voip/util/b/o;->c:Z

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/viber/voip/util/b/o;->a:Lcom/viber/voip/util/b/m;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/viber/voip/util/b/m;->a(Lcom/viber/voip/util/b/m;Lcom/viber/voip/util/b/o;Z)V

    .line 844
    iget-object v0, p0, Lcom/viber/voip/util/b/o;->a:Lcom/viber/voip/util/b/m;

    iget-object v1, p0, Lcom/viber/voip/util/b/o;->b:Lcom/viber/voip/util/b/q;

    invoke-static {v1}, Lcom/viber/voip/util/b/q;->c(Lcom/viber/voip/util/b/q;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/m;->c(Ljava/lang/String;)Z

    .line 848
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/b/o;->a:Lcom/viber/voip/util/b/m;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/viber/voip/util/b/m;->a(Lcom/viber/voip/util/b/m;Lcom/viber/voip/util/b/o;Z)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/viber/voip/util/b/o;->a:Lcom/viber/voip/util/b/m;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/viber/voip/util/b/m;->a(Lcom/viber/voip/util/b/m;Lcom/viber/voip/util/b/o;Z)V

    .line 856
    return-void
.end method

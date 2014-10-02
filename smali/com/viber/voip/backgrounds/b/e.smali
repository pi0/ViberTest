.class public abstract Lcom/viber/voip/backgrounds/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/backgrounds/q;

.field private c:Lcom/viber/voip/util/upload/d;

.field private d:I

.field private e:J

.field private f:Lcom/viber/voip/backgrounds/m;

.field private g:Lcom/viber/voip/backgrounds/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/viber/voip/backgrounds/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/backgrounds/b/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/backgrounds/q;Lcom/viber/voip/backgrounds/a;Lcom/viber/voip/backgrounds/m;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BackgroundDownloadTask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/viber/voip/backgrounds/q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/e;->a(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/viber/voip/backgrounds/b/e;->b:Lcom/viber/voip/backgrounds/q;

    .line 34
    iput-object p2, p0, Lcom/viber/voip/backgrounds/b/e;->g:Lcom/viber/voip/backgrounds/a;

    .line 35
    iput-object p3, p0, Lcom/viber/voip/backgrounds/b/e;->f:Lcom/viber/voip/backgrounds/m;

    .line 36
    sget v0, Lcom/viber/voip/backgrounds/n;->b:I

    iput v0, p0, Lcom/viber/voip/backgrounds/b/e;->d:I

    .line 38
    iget v0, p1, Lcom/viber/voip/backgrounds/q;->a:I

    iget v1, p0, Lcom/viber/voip/backgrounds/b/e;->d:I

    invoke-static {v0, v1}, Lcom/viber/voip/backgrounds/b/a;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p1, Lcom/viber/voip/backgrounds/q;->g:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    new-instance v3, Lcom/viber/voip/util/upload/d;

    invoke-direct {v3, v0, v1, v2}, Lcom/viber/voip/util/upload/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/viber/voip/backgrounds/b/e;->c:Lcom/viber/voip/util/upload/d;

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/backgrounds/b/e;->e:J

    .line 43
    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/backgrounds/b/e;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/viber/voip/backgrounds/b/e;->e:J

    return-wide v0
.end method

.method public abstract a(I)V
.end method

.method public run()V
    .locals 2

    .prologue
    .line 48
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Downloading DefaultBackground "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/e;->b:Lcom/viber/voip/backgrounds/q;

    iget v1, v1, Lcom/viber/voip/backgrounds/q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/e;->a(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/e;->b:Lcom/viber/voip/backgrounds/q;

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/q;->d()V

    .line 50
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/e;->c:Lcom/viber/voip/util/upload/d;

    invoke-virtual {v0}, Lcom/viber/voip/util/upload/d;->d()V

    .line 52
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/e;->b:Lcom/viber/voip/backgrounds/q;

    iget-object v1, v1, Lcom/viber/voip/backgrounds/q;->g:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/e;->g:Lcom/viber/voip/backgrounds/a;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/e;->b:Lcom/viber/voip/backgrounds/q;

    invoke-virtual {v0, v1}, Lcom/viber/voip/backgrounds/a;->b(Lcom/viber/voip/backgrounds/q;)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/e;->f:Lcom/viber/voip/backgrounds/m;

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/e;->b:Lcom/viber/voip/backgrounds/q;

    invoke-interface {v0, v1}, Lcom/viber/voip/backgrounds/m;->a(Lcom/viber/voip/backgrounds/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/viber/voip/util/upload/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/viber/voip/backgrounds/k; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/e;->b:Lcom/viber/voip/backgrounds/q;

    iget v0, v0, Lcom/viber/voip/backgrounds/q;->a:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/b/e;->a(I)V

    .line 65
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    :try_start_1
    invoke-virtual {v0}, Lcom/viber/voip/util/upload/e;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/e;->b:Lcom/viber/voip/backgrounds/q;

    iget v0, v0, Lcom/viber/voip/backgrounds/q;->a:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/b/e;->a(I)V

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    :try_start_2
    const-string/jumbo v0, "Low storage during deployment! Aborting"

    invoke-static {v0}, Lcom/viber/voip/backgrounds/b/e;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/viber/voip/backgrounds/b/e;->b:Lcom/viber/voip/backgrounds/q;

    iget v0, v0, Lcom/viber/voip/backgrounds/q;->a:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/backgrounds/b/e;->a(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/backgrounds/b/e;->b:Lcom/viber/voip/backgrounds/q;

    iget v1, v1, Lcom/viber/voip/backgrounds/q;->a:I

    invoke-virtual {p0, v1}, Lcom/viber/voip/backgrounds/b/e;->a(I)V

    throw v0
.end method

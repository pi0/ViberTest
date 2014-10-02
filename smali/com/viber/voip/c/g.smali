.class public Lcom/viber/voip/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/viber/voip/c/h;

.field private static b:Lcom/viber/voip/c/b;

.field private static c:Lcom/viber/voip/c/b;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/viber/voip/c/h;

    invoke-direct {v0}, Lcom/viber/voip/c/h;-><init>()V

    sput-object v0, Lcom/viber/voip/c/g;->a:Lcom/viber/voip/c/h;

    .line 12
    invoke-static {}, Lcom/viber/voip/c/g;->e()Lcom/viber/voip/c/b;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/c/g;->b:Lcom/viber/voip/c/b;

    .line 13
    invoke-static {}, Lcom/viber/voip/c/g;->f()Lcom/viber/voip/c/b;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/c/g;->c:Lcom/viber/voip/c/b;

    return-void
.end method

.method public static declared-synchronized a()Lcom/viber/voip/c/b;
    .locals 2

    .prologue
    .line 17
    const-class v0, Lcom/viber/voip/c/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/viber/voip/c/g;->b:Lcom/viber/voip/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 42
    const-class v1, Lcom/viber/voip/c/g;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/viber/voip/c/g;->d:Z

    if-nez v0, :cond_0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    sget-object v0, Lcom/viber/voip/c/g;->c:Lcom/viber/voip/c/b;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/c/b;->b(Landroid/content/Context;)V

    .line 48
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/viber/voip/c/g;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit v1

    return-void

    .line 46
    :cond_1
    :try_start_1
    sget-object v0, Lcom/viber/voip/c/g;->c:Lcom/viber/voip/c/b;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/c/b;->a(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Lcom/viber/voip/c/b;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/viber/voip/c/g;->a(Z)V

    .line 23
    sget-object v0, Lcom/viber/voip/c/g;->c:Lcom/viber/voip/c/b;

    return-object v0
.end method

.method public static c()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/viber/voip/c/g;->b:Lcom/viber/voip/c/b;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/c/b;->b(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public static d()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/c/g;->a(Z)V

    .line 35
    return-void
.end method

.method private static e()Lcom/viber/voip/c/b;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lcom/viber/voip/c/b;

    sget-object v1, Lcom/viber/voip/c/g;->a:Lcom/viber/voip/c/h;

    const-string/jumbo v2, "dexlib"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/c/b;-><init>(Lcom/viber/voip/c/h;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "DexLib.zip"

    const-string/jumbo v2, "com.viber.voip.util.http.HttpRequestFactoryImpl"

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-object v0
.end method

.method private static f()Lcom/viber/voip/c/b;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/viber/voip/c/b;

    sget-object v1, Lcom/viber/voip/c/g;->a:Lcom/viber/voip/c/h;

    const-string/jumbo v2, "zoobe"

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/c/b;-><init>(Lcom/viber/voip/c/h;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "Zoobe.zip"

    invoke-virtual {v0, v1}, Lcom/viber/voip/c/b;->b(Ljava/lang/String;)V

    .line 61
    return-object v0
.end method

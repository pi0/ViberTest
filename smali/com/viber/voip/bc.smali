.class public Lcom/viber/voip/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/viber/voip/bc;


# instance fields
.field private b:Lcom/viber/voip/bd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/viber/voip/bc;
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/viber/voip/bc;->a:Lcom/viber/voip/bc;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/viber/voip/bc;

    invoke-direct {v0}, Lcom/viber/voip/bc;-><init>()V

    sput-object v0, Lcom/viber/voip/bc;->a:Lcom/viber/voip/bc;

    .line 340
    :cond_0
    sget-object v0, Lcom/viber/voip/bc;->a:Lcom/viber/voip/bc;

    return-object v0
.end method

.method public static declared-synchronized b()Lcom/viber/voip/bd;
    .locals 3

    .prologue
    .line 348
    const-class v1, Lcom/viber/voip/bc;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/viber/voip/bc;->a()Lcom/viber/voip/bc;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bc;->b:Lcom/viber/voip/bd;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "ServerConfig is not initialized. Possibly you should inspect Application.onCreate()"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 351
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/viber/voip/bc;->a()Lcom/viber/voip/bc;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bc;->b:Lcom/viber/voip/bd;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method


# virtual methods
.method public a(Lcom/viber/voip/settings/l;)V
    .locals 1
    .parameter

    .prologue
    .line 331
    new-instance v0, Lcom/viber/voip/be;

    invoke-direct {v0, p0}, Lcom/viber/voip/be;-><init>(Lcom/viber/voip/bc;)V

    iput-object v0, p0, Lcom/viber/voip/bc;->b:Lcom/viber/voip/bd;

    .line 333
    return-void
.end method

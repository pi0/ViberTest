.class Lcom/viber/voip/stickers/be;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/bb;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/stickers/f/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/viber/voip/stickers/bb;)V
    .locals 1
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/viber/voip/stickers/be;->a:Lcom/viber/voip/stickers/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/be;->b:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/stickers/bb;Lcom/viber/voip/stickers/bc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/be;-><init>(Lcom/viber/voip/stickers/bb;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/be;Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/be;->a(Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;
    .locals 6
    .parameter

    .prologue
    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/stickers/be;->b:Ljava/util/Map;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/be;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/f/a;

    .line 217
    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/viber/voip/stickers/be;->a:Lcom/viber/voip/stickers/bb;

    invoke-static {v0, p1}, Lcom/viber/voip/stickers/bb;->a(Lcom/viber/voip/stickers/bb;Ljava/lang/String;)Lcom/viber/voip/stickers/f/a;

    move-result-object v0

    .line 219
    iget-wide v2, v0, Lcom/viber/voip/stickers/f/a;->a:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/viber/voip/stickers/be;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lcom/viber/voip/stickers/be;->b:Ljava/util/Map;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/be;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 234
    monitor-exit v1

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/viber/voip/stickers/be;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/viber/voip/stickers/be;->a()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/be;Ljava/lang/String;Lcom/viber/voip/stickers/f/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/stickers/be;->a(Ljava/lang/String;Lcom/viber/voip/stickers/f/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/viber/voip/stickers/f/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 227
    iget-object v1, p0, Lcom/viber/voip/stickers/be;->b:Ljava/util/Map;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/be;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    monitor-exit v1

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/viber/voip/stickers/be;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/viber/voip/stickers/be;->b:Ljava/util/Map;

    return-object v0
.end method

.class Lcom/viber/voip/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/c/f;


# instance fields
.field final synthetic a:Lcom/viber/voip/k/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/k/a;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/viber/voip/k/c;->a:Lcom/viber/voip/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDexLoaded()V
    .locals 3

    .prologue
    .line 136
    :try_start_0
    const-string/jumbo v0, "Dex loaded, instantiating helper class com.zoobe.sdk.helper.ZoobeHelperImpl"

    invoke-static {v0}, Lcom/viber/voip/k/a;->g(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v0, "com.zoobe.sdk.helper.ZoobeHelperImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoobe/sdk/helper/ZoobeHelper;

    .line 139
    iget-object v1, p0, Lcom/viber/voip/k/c;->a:Lcom/viber/voip/k/a;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :try_start_1
    iget-object v2, p0, Lcom/viber/voip/k/c;->a:Lcom/viber/voip/k/a;

    invoke-static {v2, v0}, Lcom/viber/voip/k/a;->a(Lcom/viber/voip/k/a;Lcom/zoobe/sdk/helper/ZoobeHelper;)Lcom/zoobe/sdk/helper/ZoobeHelper;

    .line 141
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :try_start_2
    const-string/jumbo v0, "instantiated"

    invoke-static {v0}, Lcom/viber/voip/k/a;->g(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/k/c;->a:Lcom/viber/voip/k/a;

    invoke-static {v0}, Lcom/viber/voip/k/a;->a(Lcom/viber/voip/k/a;)V

    .line 150
    return-void

    .line 141
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string/jumbo v1, "error instantiating com.zoobe.sdk.helper.ZoobeHelperImpl"

    invoke-static {v1, v0}, Lcom/viber/voip/k/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    iget-object v0, p0, Lcom/viber/voip/k/c;->a:Lcom/viber/voip/k/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/k/a;->a(Lcom/viber/voip/k/a;Z)Z

    goto :goto_0
.end method

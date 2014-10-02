.class final Lcom/viber/voip/sound/VoENativeDebugHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$stats:Lcom/viber/jni/MediaStats;


# direct methods
.method constructor <init>(Lcom/viber/jni/MediaStats;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/viber/voip/sound/VoENativeDebugHelper$2;->val$stats:Lcom/viber/jni/MediaStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    invoke-static {}, Lcom/viber/voip/sound/VoENativeDebugHelper;->access$000()Ljava/util/Set;

    move-result-object v1

    monitor-enter v1

    .line 166
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Lcom/viber/voip/sound/VoENativeDebugHelper;->access$000()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/VoENativeDebugHelper$MediaStatisticsListener;

    .line 169
    iget-object v2, p0, Lcom/viber/voip/sound/VoENativeDebugHelper$2;->val$stats:Lcom/viber/jni/MediaStats;

    invoke-interface {v0, v2}, Lcom/viber/voip/sound/VoENativeDebugHelper$MediaStatisticsListener;->onStatisticsUpdate(Lcom/viber/jni/MediaStats;)V

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 171
    :cond_0
    return-void
.end method

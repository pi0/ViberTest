.class Lcom/viber/voip/util/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/viber/voip/util/b/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/b/h;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/viber/voip/util/b/i;->b:Lcom/viber/voip/util/b/h;

    iput-object p2, p0, Lcom/viber/voip/util/b/i;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/util/b/i;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v0, p0, Lcom/viber/voip/util/b/i;->b:Lcom/viber/voip/util/b/h;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/h;->a()V

    .line 266
    return-void

    .line 264
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/viber/voip/util/b/i;->b:Lcom/viber/voip/util/b/h;

    invoke-virtual {v1}, Lcom/viber/voip/util/b/h;->a()V

    throw v0
.end method

.class Lcom/viber/voip/contacts/c/f/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/b/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/a/e;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/e;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/e;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->c(Lcom/viber/voip/contacts/c/f/b/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/e;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->d(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/voip/contacts/c/f/a;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/viber/voip/contacts/c/f/a;->a(I)V

    .line 94
    :cond_0
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

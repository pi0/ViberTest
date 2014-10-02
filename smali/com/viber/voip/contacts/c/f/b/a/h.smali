.class Lcom/viber/voip/contacts/c/f/b/a/h;
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
    .line 116
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/a/h;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/h;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/h;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/viber/voip/contacts/c/f/b/a/a;->c(Lcom/viber/voip/contacts/c/f/b/a/a;Z)Z

    .line 123
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/h;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->h(Lcom/viber/voip/contacts/c/f/b/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/h;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->b()I

    .line 126
    :cond_0
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

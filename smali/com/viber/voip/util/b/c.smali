.class Lcom/viber/voip/util/b/c;
.super Lcom/viber/voip/util/b/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/util/b/k",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/util/b/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/b/a;)V
    .locals 1
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/viber/voip/util/b/c;->a:Lcom/viber/voip/util/b/a;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/b/k;-><init>(Lcom/viber/voip/util/b/b;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/viber/voip/util/b/c;->a:Lcom/viber/voip/util/b/a;

    invoke-static {v0}, Lcom/viber/voip/util/b/a;->a(Lcom/viber/voip/util/b/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 318
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 320
    iget-object v0, p0, Lcom/viber/voip/util/b/c;->a:Lcom/viber/voip/util/b/a;

    iget-object v1, p0, Lcom/viber/voip/util/b/c;->a:Lcom/viber/voip/util/b/a;

    iget-object v2, p0, Lcom/viber/voip/util/b/c;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/viber/voip/util/b/a;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/b/a;->a(Lcom/viber/voip/util/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

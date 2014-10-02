.class Lcom/viber/voip/process/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/process/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/process/l;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/viber/voip/process/m;->a:Lcom/viber/voip/process/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/process/m;->a:Lcom/viber/voip/process/l;

    invoke-static {v0}, Lcom/viber/voip/process/l;->a(Lcom/viber/voip/process/l;)I

    .line 58
    new-instance v0, Lcom/viber/voip/process/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/viber/voip/process/q;-><init>(Lcom/viber/voip/process/m;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/process/m;->a:Lcom/viber/voip/process/l;

    invoke-static {v2}, Lcom/viber/voip/process/l;->b(Lcom/viber/voip/process/l;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/process/q;->a(ZI)V

    .line 59
    iget-object v0, p0, Lcom/viber/voip/process/m;->a:Lcom/viber/voip/process/l;

    invoke-static {v0}, Lcom/viber/voip/process/l;->b(Lcom/viber/voip/process/l;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWebActivityCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/process/m;->a:Lcom/viber/voip/process/l;

    invoke-static {v1}, Lcom/viber/voip/process/l;->b(Lcom/viber/voip/process/l;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", killing browser process"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/process/l;->a(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->finish()V

    .line 63
    :cond_0
    return-void
.end method

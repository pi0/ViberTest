.class Lcom/viber/voip/backgrounds/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/backgrounds/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/backgrounds/a;)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/viber/voip/backgrounds/i;->a:Lcom/viber/voip/backgrounds/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 592
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/viber/voip/backgrounds/i;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->e(Lcom/viber/voip/backgrounds/a;)Lcom/viber/voip/backgrounds/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/backgrounds/b/a;->a()V

    .line 594
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/viber/voip/w;->B:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/util/bj;->a(Ljava/io/File;Z)Z

    move-result v0

    .line 595
    sget-object v1, Lcom/viber/voip/w;->B:Ljava/lang/String;

    invoke-static {v1}, Lcom/viber/voip/util/bj;->f(Ljava/lang/String;)Z

    move-result v1

    .line 597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete all: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", nomediaFile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->c(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/viber/voip/backgrounds/i;->a:Lcom/viber/voip/backgrounds/a;

    invoke-static {v0}, Lcom/viber/voip/backgrounds/a;->b(Lcom/viber/voip/backgrounds/a;)Ljava/util/List;

    .line 601
    :cond_0
    return-void
.end method

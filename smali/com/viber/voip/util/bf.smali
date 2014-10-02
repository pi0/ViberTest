.class Lcom/viber/voip/util/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/viber/voip/util/be;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/be;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/viber/voip/util/bf;->c:Lcom/viber/voip/util/be;

    iput-object p2, p0, Lcom/viber/voip/util/bf;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/util/bf;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/util/bf;->c:Lcom/viber/voip/util/be;

    iget-object v1, p0, Lcom/viber/voip/util/bf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/be;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/viber/voip/util/bf;->c:Lcom/viber/voip/util/be;

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/be;->a(Ljava/util/List;)V

    .line 23
    iget-object v0, p0, Lcom/viber/voip/util/bf;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/bf;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 24
    :cond_0
    return-void
.end method

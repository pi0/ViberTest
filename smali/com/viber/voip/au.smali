.class Lcom/viber/voip/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/aw;

.field final synthetic c:Lcom/viber/voip/as;


# direct methods
.method constructor <init>(Lcom/viber/voip/as;ILcom/viber/voip/aw;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/viber/voip/au;->c:Lcom/viber/voip/as;

    iput p2, p0, Lcom/viber/voip/au;->a:I

    iput-object p3, p0, Lcom/viber/voip/au;->b:Lcom/viber/voip/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/viber/voip/au;->c:Lcom/viber/voip/as;

    invoke-static {v0}, Lcom/viber/voip/as;->d(Lcom/viber/voip/as;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ax;

    .line 105
    iget v2, p0, Lcom/viber/voip/au;->a:I

    iget-object v3, p0, Lcom/viber/voip/au;->b:Lcom/viber/voip/aw;

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/ax;->b(ILcom/viber/voip/aw;)V

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

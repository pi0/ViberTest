.class Lcom/viber/voip/messages/extras/fb/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/viber/voip/messages/extras/fb/s;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/s;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/ab;->b:Lcom/viber/voip/messages/extras/fb/s;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/ab;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sharePendingMessages count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/messages/extras/fb/s;->g()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->b(Ljava/lang/String;)V

    .line 921
    invoke-static {}, Lcom/viber/voip/messages/extras/fb/s;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 923
    invoke-static {}, Lcom/viber/voip/messages/extras/fb/s;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/viber/voip/messages/extras/fb/ac;

    .line 924
    if-eqz v8, :cond_0

    .line 925
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/ab;->b:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/ab;->a:Landroid/content/Context;

    iget-object v4, v8, Lcom/viber/voip/messages/extras/fb/ac;->a:Ljava/lang/String;

    iget-object v5, v8, Lcom/viber/voip/messages/extras/fb/ac;->b:Ljava/lang/String;

    iget-object v6, v8, Lcom/viber/voip/messages/extras/fb/ac;->c:Ljava/lang/String;

    iget-object v7, v8, Lcom/viber/voip/messages/extras/fb/ac;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/s;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sharePendingMessage #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " , comment : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/viber/voip/messages/extras/fb/ac;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 930
    :cond_1
    return-void
.end method

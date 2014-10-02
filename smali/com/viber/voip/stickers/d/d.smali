.class Lcom/viber/voip/stickers/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/viber/voip/stickers/d/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/d/c;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/viber/voip/stickers/d/d;->e:Lcom/viber/voip/stickers/d/c;

    iput-object p2, p0, Lcom/viber/voip/stickers/d/d;->a:Ljava/util/Set;

    iput-object p3, p0, Lcom/viber/voip/stickers/d/d;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/viber/voip/stickers/d/d;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/viber/voip/stickers/d/d;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/stickers/d/d;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/d/a;

    .line 80
    iget-object v2, p0, Lcom/viber/voip/stickers/d/d;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/viber/voip/stickers/d/d;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/viber/voip/stickers/d/d;->d:Ljava/util/List;

    invoke-interface {v0, v2, v3, v4}, Lcom/viber/voip/stickers/d/a;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method

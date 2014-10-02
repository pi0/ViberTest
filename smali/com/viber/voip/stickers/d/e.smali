.class Lcom/viber/voip/stickers/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:I

.field final synthetic c:Lcom/viber/voip/stickers/d/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/d/c;Ljava/util/Set;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/viber/voip/stickers/d/e;->c:Lcom/viber/voip/stickers/d/c;

    iput-object p2, p0, Lcom/viber/voip/stickers/d/e;->a:Ljava/util/Set;

    iput p3, p0, Lcom/viber/voip/stickers/d/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/stickers/d/e;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/d/g;

    .line 96
    iget v2, p0, Lcom/viber/voip/stickers/d/e;->b:I

    invoke-interface {v0, v2}, Lcom/viber/voip/stickers/d/g;->a(I)V

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

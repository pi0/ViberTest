.class public abstract Lcom/viber/voip/ui/b/b;
.super Lcom/viber/voip/ui/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/viber/voip/ui/b/f;",
        "T:",
        "Lcom/viber/voip/ui/b/a/a;",
        ">",
        "Lcom/viber/voip/ui/b/a",
        "<TU;TT;>;",
        "Lcom/viber/voip/ui/b/e",
        "<TU;TT;>;"
    }
.end annotation


# instance fields
.field protected i:Lcom/viber/voip/ui/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/ui/b/a",
            "<TU;TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/a;-><init>(Landroid/view/View;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/ui/b/b;->j:Ljava/util/List;

    .line 18
    return-void
.end method

.method private b(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TT;)V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/ui/b/b;->j:Ljava/util/List;

    if-nez v0, :cond_1

    .line 36
    :cond_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/ui/b/b;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/b/a;

    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/ui/b/a;->a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;TT;)V"
        }
    .end annotation

    .prologue
    .line 22
    iput-object p1, p0, Lcom/viber/voip/ui/b/b;->i:Lcom/viber/voip/ui/b/f;

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ui/b/b;->b(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V

    .line 24
    return-void
.end method

.method public c()Lcom/viber/voip/ui/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/ui/b/b;->i:Lcom/viber/voip/ui/b/f;

    return-object v0
.end method

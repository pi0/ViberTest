.class public Lcom/viber/voip/market/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/b/a/h;
.implements Lcom/viber/voip/stickers/d/a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/viber/voip/stickers/r;

.field private final c:Lcom/viber/voip/market/b/a/f;

.field private final d:Lcom/viber/voip/market/b/a/i;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/viber/voip/market/b/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/b/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/stickers/r;Lcom/viber/voip/market/b/a/f;Lcom/viber/voip/market/b/a/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/viber/voip/market/b/a/b;->b:Lcom/viber/voip/stickers/r;

    .line 30
    iput-object p2, p0, Lcom/viber/voip/market/b/a/b;->c:Lcom/viber/voip/market/b/a/f;

    .line 31
    iput-object p3, p0, Lcom/viber/voip/market/b/a/b;->d:Lcom/viber/voip/market/b/a/i;

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/viber/voip/market/b/a/b;->f:Z

    .line 64
    iget-boolean v0, p0, Lcom/viber/voip/market/b/a/b;->e:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/viber/voip/market/b/a/b;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/market/b/a/b;->a(Ljava/util/List;)V

    .line 67
    iput-boolean v1, p0, Lcom/viber/voip/market/b/a/b;->e:Z

    .line 69
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/market/b/a/b;->f:Z

    .line 58
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/viber/voip/market/b/a/b;->c:Lcom/viber/voip/market/b/a/f;

    invoke-virtual {v0, p1}, Lcom/viber/voip/market/b/a/f;->a(Ljava/util/List;)V

    .line 37
    iget-object v0, p0, Lcom/viber/voip/market/b/a/b;->d:Lcom/viber/voip/market/b/a/i;

    invoke-virtual {v0}, Lcom/viber/voip/market/b/a/i;->notifyDataSetChanged()V

    .line 38
    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/market/b/a/b;->c:Lcom/viber/voip/market/b/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/market/b/a/b;->b:Lcom/viber/voip/stickers/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/market/b/a/b;->d:Lcom/viber/voip/market/b/a/i;

    if-eqz v0, :cond_0

    .line 44
    iget-boolean v0, p0, Lcom/viber/voip/market/b/a/b;->f:Z

    if-nez v0, :cond_1

    .line 46
    invoke-virtual {p0, p3}, Lcom/viber/voip/market/b/a/b;->a(Ljava/util/List;)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/market/b/a/b;->e:Z

    goto :goto_0
.end method

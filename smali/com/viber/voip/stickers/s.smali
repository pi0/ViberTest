.class Lcom/viber/voip/stickers/s;
.super Lcom/viber/voip/stickers/ay;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/r;Landroid/os/Handler;Lcom/viber/voip/stickers/a/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/viber/voip/stickers/s;->a:Lcom/viber/voip/stickers/r;

    invoke-direct {p0, p2, p3}, Lcom/viber/voip/stickers/ay;-><init>(Landroid/os/Handler;Lcom/viber/voip/stickers/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viber/voip/stickers/s;->a:Lcom/viber/voip/stickers/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Z)V

    .line 112
    return-void
.end method

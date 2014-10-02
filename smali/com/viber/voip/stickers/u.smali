.class Lcom/viber/voip/stickers/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Iterable;

.field final synthetic b:Lcom/viber/voip/stickers/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/r;Ljava/lang/Iterable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 672
    iput-object p1, p0, Lcom/viber/voip/stickers/u;->b:Lcom/viber/voip/stickers/r;

    iput-object p2, p0, Lcom/viber/voip/stickers/u;->a:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/viber/voip/stickers/u;->b:Lcom/viber/voip/stickers/r;

    invoke-static {v0}, Lcom/viber/voip/stickers/r;->c(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/u;->a:Ljava/lang/Iterable;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/b;->a(Ljava/lang/Iterable;)V

    .line 677
    return-void
.end method

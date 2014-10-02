.class Lcom/viber/voip/stickers/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/bg;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/bg;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/viber/voip/stickers/bh;->a:Lcom/viber/voip/stickers/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/viber/voip/stickers/bh;->a:Lcom/viber/voip/stickers/bg;

    invoke-static {v0}, Lcom/viber/voip/stickers/bg;->b(Lcom/viber/voip/stickers/bg;)Lcom/viber/voip/stickers/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/bh;->a:Lcom/viber/voip/stickers/bg;

    invoke-static {v1}, Lcom/viber/voip/stickers/bg;->a(Lcom/viber/voip/stickers/bg;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/stickers/bj;->a(Z)V

    .line 151
    return-void
.end method

.class Lcom/viber/voip/stickers/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/c/d;

.field final synthetic b:Lcom/viber/voip/stickers/b/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/b/b;Lcom/viber/voip/stickers/c/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/stickers/b/d;->b:Lcom/viber/voip/stickers/b/b;

    iput-object p2, p0, Lcom/viber/voip/stickers/b/d;->a:Lcom/viber/voip/stickers/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/stickers/b/d;->b:Lcom/viber/voip/stickers/b/b;

    iget-object v0, v0, Lcom/viber/voip/stickers/b/b;->a:Lcom/viber/voip/stickers/b/a;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/a;->a(Lcom/viber/voip/stickers/b/a;)Lcom/viber/voip/stickers/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/d;->a:Lcom/viber/voip/stickers/c/d;

    invoke-interface {v0, v1}, Lcom/viber/voip/stickers/d/b;->c(Lcom/viber/voip/stickers/c/d;)V

    .line 45
    return-void
.end method

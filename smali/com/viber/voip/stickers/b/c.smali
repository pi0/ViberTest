.class Lcom/viber/voip/stickers/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/c/a;

.field final synthetic b:Lcom/viber/voip/stickers/b/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/b/b;Lcom/viber/voip/stickers/c/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/viber/voip/stickers/b/c;->b:Lcom/viber/voip/stickers/b/b;

    iput-object p2, p0, Lcom/viber/voip/stickers/b/c;->a:Lcom/viber/voip/stickers/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/stickers/b/c;->b:Lcom/viber/voip/stickers/b/b;

    iget-object v0, v0, Lcom/viber/voip/stickers/b/b;->a:Lcom/viber/voip/stickers/b/a;

    invoke-static {v0}, Lcom/viber/voip/stickers/b/a;->a(Lcom/viber/voip/stickers/b/a;)Lcom/viber/voip/stickers/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/b/c;->a:Lcom/viber/voip/stickers/c/a;

    invoke-interface {v0, v1}, Lcom/viber/voip/stickers/d/b;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 35
    return-void
.end method

.class Lcom/viber/voip/stickers/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/ax;

.field final synthetic b:Lcom/viber/voip/stickers/av;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/av;Lcom/viber/voip/stickers/ax;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/viber/voip/stickers/aw;->b:Lcom/viber/voip/stickers/av;

    iput-object p2, p0, Lcom/viber/voip/stickers/aw;->a:Lcom/viber/voip/stickers/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/stickers/aw;->b:Lcom/viber/voip/stickers/av;

    iget-object v0, v0, Lcom/viber/voip/stickers/av;->a:Lcom/viber/voip/stickers/as;

    iget-object v1, p0, Lcom/viber/voip/stickers/aw;->a:Lcom/viber/voip/stickers/ax;

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/as;->a(Lcom/viber/voip/stickers/as;Lcom/viber/voip/stickers/ax;)V

    .line 107
    return-void
.end method

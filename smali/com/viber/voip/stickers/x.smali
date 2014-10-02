.class Lcom/viber/voip/stickers/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/w;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/w;)V
    .locals 0
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/viber/voip/stickers/x;->a:Lcom/viber/voip/stickers/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 913
    iget-object v0, p0, Lcom/viber/voip/stickers/x;->a:Lcom/viber/voip/stickers/w;

    iget-object v0, v0, Lcom/viber/voip/stickers/w;->a:Lcom/viber/voip/stickers/r;

    const-string/jumbo v1, "on sd card mounted!"

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/viber/voip/stickers/x;->a:Lcom/viber/voip/stickers/w;

    iget-object v0, v0, Lcom/viber/voip/stickers/w;->a:Lcom/viber/voip/stickers/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Z)V

    .line 915
    return-void
.end method

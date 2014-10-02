.class Lcom/viber/voip/stickers/ae;
.super Lcom/viber/voip/stickers/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/r;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/viber/voip/stickers/ae;->a:Lcom/viber/voip/stickers/r;

    invoke-direct {p0, p2, p3}, Lcom/viber/voip/stickers/a;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 1
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lcom/viber/voip/stickers/ae;->a:Lcom/viber/voip/stickers/r;

    invoke-static {v0}, Lcom/viber/voip/stickers/r;->d(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/stickers/am;->b(Lcom/viber/voip/stickers/d/b;)V

    .line 449
    return-void
.end method

.method protected b(I)V
    .locals 1
    .parameter

    .prologue
    .line 443
    iget-object v0, p0, Lcom/viber/voip/stickers/ae;->a:Lcom/viber/voip/stickers/r;

    invoke-static {v0}, Lcom/viber/voip/stickers/r;->d(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/stickers/am;->b(Lcom/viber/voip/stickers/d/b;)V

    .line 444
    return-void
.end method

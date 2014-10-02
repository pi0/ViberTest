.class Lcom/viber/voip/stickers/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/stickers/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/r;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 879
    iput-object p1, p0, Lcom/viber/voip/stickers/v;->b:Lcom/viber/voip/stickers/r;

    iput p2, p0, Lcom/viber/voip/stickers/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 882
    iget-object v0, p0, Lcom/viber/voip/stickers/v;->b:Lcom/viber/voip/stickers/r;

    invoke-static {v0, v2}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;I)I

    .line 883
    iget-object v0, p0, Lcom/viber/voip/stickers/v;->b:Lcom/viber/voip/stickers/r;

    iget v1, p0, Lcom/viber/voip/stickers/v;->a:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/viber/voip/stickers/r;->a(IZZ)[Lcom/viber/voip/stickers/p;

    .line 884
    return-void
.end method

.class Lcom/viber/voip/messages/adapters/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/ui/c;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/adapters/v;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/adapters/v;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/viber/voip/messages/adapters/x;->b:Lcom/viber/voip/messages/adapters/v;

    iput p2, p0, Lcom/viber/voip/messages/adapters/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 459
    .line 460
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/x;->b:Lcom/viber/voip/messages/adapters/v;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/v;->c(Lcom/viber/voip/messages/adapters/v;)Lcom/viber/voip/messages/adapters/y;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/x;->b:Lcom/viber/voip/messages/adapters/v;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/v;->b(Lcom/viber/voip/messages/adapters/v;)I

    move-result v0

    iget v3, p0, Lcom/viber/voip/messages/adapters/x;->a:I

    if-ne v0, v3, :cond_2

    .line 461
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/x;->b:Lcom/viber/voip/messages/adapters/v;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/v;->c(Lcom/viber/voip/messages/adapters/v;)Lcom/viber/voip/messages/adapters/y;

    move-result-object v0

    iget-boolean v0, v0, Lcom/viber/voip/messages/adapters/y;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/x;->b:Lcom/viber/voip/messages/adapters/v;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/v;->d(Lcom/viber/voip/messages/adapters/v;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/x;->b:Lcom/viber/voip/messages/adapters/v;

    invoke-static {v0}, Lcom/viber/voip/messages/adapters/v;->c(Lcom/viber/voip/messages/adapters/v;)Lcom/viber/voip/messages/adapters/y;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/adapters/y;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v2

    .line 466
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/messages/adapters/x;->b:Lcom/viber/voip/messages/adapters/v;

    invoke-static {v3, v1}, Lcom/viber/voip/messages/adapters/v;->b(Lcom/viber/voip/messages/adapters/v;Z)Z

    .line 467
    iget-object v3, p0, Lcom/viber/voip/messages/adapters/x;->b:Lcom/viber/voip/messages/adapters/v;

    invoke-static {v3}, Lcom/viber/voip/messages/adapters/v;->d(Lcom/viber/voip/messages/adapters/v;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 468
    iget-object v3, p0, Lcom/viber/voip/messages/adapters/x;->b:Lcom/viber/voip/messages/adapters/v;

    invoke-static {v3, v1}, Lcom/viber/voip/messages/adapters/v;->c(Lcom/viber/voip/messages/adapters/v;Z)Z

    .line 469
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/x;->b:Lcom/viber/voip/messages/adapters/v;

    invoke-static {v1, v2}, Lcom/viber/voip/messages/adapters/v;->a(Lcom/viber/voip/messages/adapters/v;Z)V

    .line 472
    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

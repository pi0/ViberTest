.class Lcom/viber/voip/messages/conversation/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Lcom/viber/voip/messages/conversation/be;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/be;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/bf;->b:Lcom/viber/voip/messages/conversation/be;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/bf;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bf;->b:Lcom/viber/voip/messages/conversation/be;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bf;->b:Lcom/viber/voip/messages/conversation/be;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bf;->b:Lcom/viber/voip/messages/conversation/be;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bf;->b:Lcom/viber/voip/messages/conversation/be;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bf;->b:Lcom/viber/voip/messages/conversation/be;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const-string/jumbo v2, " "

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bf;->b:Lcom/viber/voip/messages/conversation/be;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bf;->b:Lcom/viber/voip/messages/conversation/be;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/bf;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 279
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bf;->b:Lcom/viber/voip/messages/conversation/be;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bf;->b:Lcom/viber/voip/messages/conversation/be;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/aa;->setSelection(I)V

    .line 280
    return-void
.end method

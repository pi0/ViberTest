.class Lcom/viber/voip/messages/conversation/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/widget/ae;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/viber/voip/messages/conversation/ax;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ax;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/bb;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x20

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSelectionChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    .line 210
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_4

    .line 213
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 214
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->d(Lcom/viber/voip/messages/conversation/ax;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/conversation/bc;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/messages/conversation/bc;-><init>(Lcom/viber/voip/messages/conversation/bb;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->b(Lcom/viber/voip/messages/conversation/ax;)I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 236
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->b(Lcom/viber/voip/messages/conversation/ax;)I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;ILcom/viber/voip/messages/conversation/bi;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/bi;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v1

    iget v1, v1, Lcom/viber/voip/messages/conversation/bi;->a:I

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v2

    iget v2, v2, Lcom/viber/voip/messages/conversation/bi;->b:I

    const-class v3, Lcom/viber/voip/messages/conversation/bj;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/conversation/bj;

    .line 242
    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_2

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->d(Lcom/viber/voip/messages/conversation/ax;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/bd;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/bd;-><init>(Lcom/viber/voip/messages/conversation/bb;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;I)I

    .line 256
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->d(Lcom/viber/voip/messages/conversation/ax;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bb;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    :cond_3
    return-void

    .line 222
    :cond_4
    if-eqz p1, :cond_5

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    :cond_5
    move v0, p1

    .line 224
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_6

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selection will be corrected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", curLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Ljava/lang/String;)V

    .line 229
    const/4 v1, 0x1

    .line 230
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/bb;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v2, v0}, Lcom/viber/voip/messages/conversation/ax;->b(Lcom/viber/voip/messages/conversation/ax;I)V

    move v0, v1

    goto/16 :goto_0
.end method

.class Lcom/viber/voip/messages/conversation/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/viber/voip/messages/conversation/ax;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ax;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ba;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    const/4 v0, -0x1

    .line 168
    if-le p4, p3, :cond_3

    .line 169
    add-int/lit8 p2, p2, 0x1

    .line 170
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->b(Lcom/viber/voip/messages/conversation/ax;)I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;ILcom/viber/voip/messages/conversation/bi;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTextChanged mTagRange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cursorPos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/conversation/bi;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v1

    iget v1, v1, Lcom/viber/voip/messages/conversation/bi;->a:I

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v2

    iget v2, v2, Lcom/viber/voip/messages/conversation/bi;->b:I

    const-class v3, Lcom/viber/voip/messages/conversation/bj;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/conversation/bj;

    .line 177
    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v2

    iget v2, v2, Lcom/viber/voip/messages/conversation/bi;->a:I

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v3}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/conversation/bi;->b:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;Landroid/text/Spannable;IIZ)V

    .line 188
    :cond_1
    :goto_0
    if-ltz p2, :cond_2

    .line 189
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0, p2}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;I)I

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ba;->b:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->d(Lcom/viber/voip/messages/conversation/ax;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ba;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void

    .line 184
    :cond_3
    if-lt p4, p3, :cond_1

    move p2, v0

    goto :goto_0
.end method

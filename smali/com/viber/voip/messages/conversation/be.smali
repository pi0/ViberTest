.class Lcom/viber/voip/messages/conversation/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ax;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x14

    const/16 v3, 0x20

    .line 265
    sub-int v0, p3, p2

    .line 266
    if-lez v0, :cond_0

    .line 267
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    if-eq p5, v1, :cond_1

    .line 268
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->d(Lcom/viber/voip/messages/conversation/ax;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/conversation/bf;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/messages/conversation/bf;-><init>(Lcom/viber/voip/messages/conversation/be;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    const-string/jumbo p1, ""

    .line 322
    :cond_0
    :goto_0
    return-object p1

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->e(Lcom/viber/voip/messages/conversation/ax;)I

    move-result v1

    if-le v1, v4, :cond_2

    .line 286
    const-string/jumbo p1, ""

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->e(Lcom/viber/voip/messages/conversation/ax;)I

    move-result v1

    if-ne v1, v4, :cond_4

    if-eqz p5, :cond_3

    add-int/lit8 v1, p5, -0x1

    invoke-interface {p4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_4

    .line 288
    :cond_3
    const-string/jumbo p1, ""

    goto :goto_0

    .line 291
    :cond_4
    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 292
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 293
    if-ne v1, v3, :cond_6

    if-eqz p5, :cond_5

    add-int/lit8 v0, p5, -0x1

    invoke-interface {p4, v0}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_6

    .line 294
    :cond_5
    const-string/jumbo p1, ""

    goto :goto_0

    .line 297
    :cond_6
    if-eq v1, v3, :cond_7

    .line 298
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v0

    const-class v2, Lcom/viber/voip/messages/conversation/bj;

    invoke-interface {v0, p5, p5, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/conversation/bj;

    .line 299
    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 304
    :cond_7
    const/16 v0, 0xa

    if-ne v1, v0, :cond_8

    .line 305
    const-string/jumbo p1, ""

    goto :goto_0

    .line 312
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v1

    invoke-static {v0, p5, v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;ILcom/viber/voip/messages/conversation/bi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 314
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v1

    iget v1, v1, Lcom/viber/voip/messages/conversation/bi;->b:I

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/be;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ax;->c(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/messages/conversation/bi;

    move-result-object v2

    iget v2, v2, Lcom/viber/voip/messages/conversation/bi;->a:I

    sub-int/2addr v1, v2

    .line 315
    if-lt v1, v4, :cond_0

    if-eq v0, v3, :cond_0

    .line 316
    const-string/jumbo p1, ""

    goto/16 :goto_0
.end method

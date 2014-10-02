.class public Lcom/viber/voip/messages/ui/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Lcom/viber/voip/messages/ui/bf;

.field private b:Ljava/lang/String;

.field private c:Lcom/viber/voip/messages/ui/bd;

.field private d:Landroid/widget/EditText;

.field private e:Lcom/viber/voip/a/m;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/ui/bd;Landroid/widget/EditText;Lcom/viber/voip/a/m;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bg;->c:Lcom/viber/voip/messages/ui/bd;

    .line 34
    iput-object p2, p0, Lcom/viber/voip/messages/ui/bg;->d:Landroid/widget/EditText;

    .line 35
    iput-object p3, p0, Lcom/viber/voip/messages/ui/bg;->e:Lcom/viber/voip/a/m;

    .line 36
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bg;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/viber/voip/messages/ui/bg;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v2, v1

    .line 78
    iget-object v2, p0, Lcom/viber/voip/messages/ui/bg;->a:Lcom/viber/voip/messages/ui/bf;

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/bg;->a:Lcom/viber/voip/messages/ui/bf;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/bf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/viber/voip/messages/ui/bg;->a:Lcom/viber/voip/messages/ui/bf;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/bf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    .line 82
    if-lt v0, v2, :cond_0

    .line 83
    sub-int v2, v0, v2

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bg;->a:Lcom/viber/voip/messages/ui/bf;

    if-eqz v0, :cond_1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/bg;->e:Lcom/viber/voip/a/m;

    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/bg;->e:Lcom/viber/voip/a/m;

    iget-object v1, v1, Lcom/viber/voip/a/m;->b:Lcom/viber/voip/a/ac;

    invoke-virtual {v1}, Lcom/viber/voip/a/ac;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 91
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Lcom/viber/voip/messages/ui/bg;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/ui/bg;->b:Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/viber/voip/messages/ui/bg;->a:Lcom/viber/voip/messages/ui/bf;

    .line 45
    iget-object v1, p0, Lcom/viber/voip/messages/ui/bg;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 46
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 47
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 49
    if-ne v2, v3, :cond_0

    if-lez v2, :cond_0

    .line 50
    iget-object v3, p0, Lcom/viber/voip/messages/ui/bg;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/viber/voip/messages/ui/bg;->c:Lcom/viber/voip/messages/ui/bd;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/bd;->e()[Lcom/viber/voip/messages/ui/bf;

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 52
    invoke-virtual {v5}, Lcom/viber/voip/messages/ui/bf;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5}, Lcom/viber/voip/messages/ui/bf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 56
    const-class v3, Landroid/text/style/ImageSpan;

    invoke-interface {v1, v0, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 57
    array-length v0, v0

    if-lez v0, :cond_0

    .line 58
    iput-object v5, p0, Lcom/viber/voip/messages/ui/bg;->a:Lcom/viber/voip/messages/ui/bf;

    .line 64
    :cond_0
    return-void

    .line 51
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    return-void
.end method

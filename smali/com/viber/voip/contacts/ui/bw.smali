.class public Lcom/viber/voip/contacts/ui/bw;
.super Lcom/viber/voip/ui/aa;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private final d:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/ui/ab;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ui/aa;-><init>(Landroid/content/Context;Lcom/viber/voip/ui/ab;)V

    .line 24
    iput-object p3, p0, Lcom/viber/voip/contacts/ui/bw;->a:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->a:Landroid/view/View;

    const v1, 0x7f070341

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->d:Landroid/widget/EditText;

    .line 26
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/viber/voip/contacts/ui/bx;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/bx;-><init>(Lcom/viber/voip/contacts/ui/bw;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 38
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/bw;)Lcom/viber/voip/ui/ab;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->b:Lcom/viber/voip/ui/ab;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/ui/bw;)Lcom/viber/voip/ui/ab;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->b:Lcom/viber/voip/ui/ab;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bw;->d:Landroid/widget/EditText;

    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 48
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 43
    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->d:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->d:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bw;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bw;->a:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bw;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 86
    :cond_0
    return v0
.end method

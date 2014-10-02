.class public Lcom/viber/voip/ui/ViberEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/viber/voip/util/gj;->a(Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-static {p0, p2}, Lcom/viber/voip/util/gj;->a(Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-static {p0, p2}, Lcom/viber/voip/util/gj;->a(Landroid/widget/TextView;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getText()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 33
    :try_start_0
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string/jumbo v0, ""

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/ui/ViberEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 36
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/viber/voip/ui/ViberEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public setInputType(I)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/viber/voip/ui/ViberEditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 43
    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ViberEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    :cond_0
    return-void
.end method

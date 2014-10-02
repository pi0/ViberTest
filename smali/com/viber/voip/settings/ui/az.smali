.class public Lcom/viber/voip/settings/ui/az;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field a:I

.field b:[Ljava/lang/CharSequence;

.field c:[Ljava/lang/CharSequence;

.field d:Lcom/viber/voip/settings/ui/ba;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ILcom/viber/voip/settings/ui/ba;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 233
    iput p5, p0, Lcom/viber/voip/settings/ui/az;->a:I

    .line 234
    iput-object p3, p0, Lcom/viber/voip/settings/ui/az;->b:[Ljava/lang/CharSequence;

    .line 235
    iput-object p4, p0, Lcom/viber/voip/settings/ui/az;->c:[Ljava/lang/CharSequence;

    .line 236
    iput-object p6, p0, Lcom/viber/voip/settings/ui/az;->d:Lcom/viber/voip/settings/ui/ba;

    .line 237
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/az;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 242
    const v1, 0x7f030105

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 243
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/viber/voip/settings/ui/az;->b:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/viber/voip/settings/ui/az;->b:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 247
    const v0, 0x7f070369

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 248
    iget-object v1, p0, Lcom/viber/voip/settings/ui/az;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/settings/ui/az;->c:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 252
    const v0, 0x7f07036a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 253
    iget-object v1, p0, Lcom/viber/voip/settings/ui/az;->c:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_1
    const v0, 0x7f0702c8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 257
    iget v1, p0, Lcom/viber/voip/settings/ui/az;->a:I

    if-ne p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 258
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 259
    return-object v3

    :cond_2
    move v1, v2

    .line 257
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 264
    iget-object v0, p0, Lcom/viber/voip/settings/ui/az;->d:Lcom/viber/voip/settings/ui/ba;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/viber/voip/settings/ui/az;->d:Lcom/viber/voip/settings/ui/ba;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/settings/ui/ba;->a(Ljava/lang/String;)V

    .line 267
    :cond_0
    return-void
.end method

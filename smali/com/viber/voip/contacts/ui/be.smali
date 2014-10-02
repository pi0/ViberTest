.class public Lcom/viber/voip/contacts/ui/be;
.super Lcom/viber/voip/contacts/ui/bu;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/CheckBox;

.field public d:Landroid/view/View;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/EditText;

.field public h:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/bu;-><init>(Landroid/view/View;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/be;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/be;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 67
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/be;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    if-ltz p3, :cond_2

    .line 74
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/be;->f:Landroid/widget/TextView;

    const v1, 0x7f0c03c9

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    if-lt p3, p4, :cond_3

    const/high16 v0, -0x1

    .line 78
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/be;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/viber/voip/contacts/ui/be;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/be;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/be;->d:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_0
    return-void

    .line 59
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/be;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/be;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/be;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/be;->b:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/view/View$OnClickListener;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/viber/voip/contacts/ui/bu;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    .line 42
    :cond_0
    const v0, 0x7f0701d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/be;->b:Landroid/widget/LinearLayout;

    .line 43
    const v0, 0x7f0701da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/be;->d:Landroid/view/View;

    .line 44
    const v0, 0x7f070342

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/be;->f:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f070341

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/be;->g:Landroid/widget/EditText;

    .line 46
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/be;->g:Landroid/widget/EditText;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getBiDiAwareFormatter()Lcom/viber/voip/util/l;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/util/l;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 47
    const v0, 0x7f0701dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/be;->a:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0701db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/be;->e:Landroid/widget/LinearLayout;

    .line 49
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/be;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f0701dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/be;->c:Landroid/widget/CheckBox;

    .line 51
    const v0, 0x7f0700cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/be;->h:Landroid/widget/RelativeLayout;

    .line 53
    const/4 v0, 0x1

    goto :goto_0
.end method

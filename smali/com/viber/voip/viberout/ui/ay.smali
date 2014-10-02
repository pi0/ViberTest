.class Lcom/viber/voip/viberout/ui/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/content/Context;

.field private f:Landroid/app/AlertDialog;

.field private g:Landroid/app/AlertDialog$Builder;

.field private h:Z

.field private i:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/ay;->e:Landroid/content/Context;

    .line 868
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->i:Landroid/view/LayoutInflater;

    .line 869
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->i:Landroid/view/LayoutInflater;

    const v1, 0x7f030134

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 870
    const v0, 0x7f070191

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->b:Landroid/view/ViewGroup;

    .line 871
    const v0, 0x7f0700ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->a:Landroid/widget/TextView;

    .line 872
    const v0, 0x7f0700ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->c:Landroid/widget/TextView;

    .line 873
    const v0, 0x7f0703d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->d:Landroid/view/View;

    .line 874
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/viber/voip/viberout/ui/ay;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->g:Landroid/app/AlertDialog$Builder;

    .line 875
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->g:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 876
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ay;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 855
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->f:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 901
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/viberout/ui/ay;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 905
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->i:Landroid/view/LayoutInflater;

    const v1, 0x7f030135

    iget-object v2, p0, Lcom/viber/voip/viberout/ui/ay;->b:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 906
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 907
    new-instance v1, Lcom/viber/voip/viberout/ui/az;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/viberout/ui/az;-><init>(Lcom/viber/voip/viberout/ui/ay;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 913
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ay;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 914
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->g:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->f:Landroid/app/AlertDialog;

    .line 891
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->f:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 894
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 898
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 879
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/viberout/ui/ay;->h:Z

    .line 882
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter

    .prologue
    .line 922
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->g:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 923
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 885
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 918
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ay;->g:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 919
    return-void
.end method

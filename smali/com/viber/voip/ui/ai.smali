.class public Lcom/viber/voip/ui/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field public c:Landroid/widget/ImageView;

.field public d:I

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/ui/ai;->d:I

    .line 791
    const v0, 0x7fffffff

    iput v0, p0, Lcom/viber/voip/ui/ai;->j:I

    .line 799
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/ui/ai;->k:Z

    .line 800
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter

    .prologue
    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/ui/ai;->d:I

    .line 791
    const v0, 0x7fffffff

    iput v0, p0, Lcom/viber/voip/ui/ai;->j:I

    .line 803
    iput-boolean p1, p0, Lcom/viber/voip/ui/ai;->k:Z

    .line 804
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 824
    iget-object v0, p0, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ui/ai;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/viber/voip/ui/ai;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 828
    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 831
    iget-object v1, p0, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/viber/voip/ui/ai;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/ui/ai;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 834
    iget-object v1, p0, Lcom/viber/voip/ui/ai;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 835
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/ui/ai;->f:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/viber/voip/ui/ai;->k:Z

    if-nez v1, :cond_3

    .line 836
    iget-object v1, p0, Lcom/viber/voip/ui/ai;->f:Landroid/view/View;

    iget-boolean v2, p0, Lcom/viber/voip/ui/ai;->b:Z

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/viber/voip/ui/ai;->a:I

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 838
    :cond_3
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 841
    iput p1, p0, Lcom/viber/voip/ui/ai;->i:I

    .line 842
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 815
    if-eqz p1, :cond_1

    .line 816
    iget v0, p0, Lcom/viber/voip/ui/ai;->i:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/ui/ai;->b:Z

    .line 817
    invoke-direct {p0}, Lcom/viber/voip/ui/ai;->b()V

    .line 821
    :goto_1
    return-void

    .line 816
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 819
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/ui/ai;->a()V

    goto :goto_1
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 850
    iget v0, p0, Lcom/viber/voip/ui/ai;->d:I

    if-le p1, v0, :cond_0

    .line 851
    iget p1, p0, Lcom/viber/voip/ui/ai;->d:I

    .line 853
    :cond_0
    iput p1, p0, Lcom/viber/voip/ui/ai;->i:I

    .line 854
    iget v0, p0, Lcom/viber/voip/ui/ai;->i:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/ui/ai;->b:Z

    .line 855
    return-void

    .line 854
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 862
    iput p1, p0, Lcom/viber/voip/ui/ai;->a:I

    .line 863
    return-void
.end method

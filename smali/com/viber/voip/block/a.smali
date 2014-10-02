.class public Lcom/viber/voip/block/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/viber/voip/block/o;

.field private c:Lcom/viber/voip/block/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/block/o;Lcom/viber/voip/block/d;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/block/a;->a:Landroid/view/LayoutInflater;

    .line 23
    iput-object p2, p0, Lcom/viber/voip/block/a;->b:Lcom/viber/voip/block/o;

    .line 24
    iput-object p3, p0, Lcom/viber/voip/block/a;->c:Lcom/viber/voip/block/d;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/block/a;)Lcom/viber/voip/block/d;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/viber/voip/block/a;->c:Lcom/viber/voip/block/d;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/block/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03009c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/viber/voip/block/c;

    invoke-direct {v1, v0}, Lcom/viber/voip/block/c;-><init>(Landroid/view/View;)V

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    return-object v0
.end method

.method public a(I)Lcom/viber/voip/block/q;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/block/a;->b:Lcom/viber/voip/block/o;

    invoke-virtual {v0, p1}, Lcom/viber/voip/block/o;->e(I)Lcom/viber/voip/block/q;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Lcom/viber/voip/block/q;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/block/c;

    .line 62
    iget-object v1, v0, Lcom/viber/voip/block/c;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/viber/voip/block/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p2}, Lcom/viber/voip/block/q;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, v0, Lcom/viber/voip/block/c;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v1, v0, Lcom/viber/voip/block/c;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/viber/voip/block/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_0
    iget-object v0, v0, Lcom/viber/voip/block/c;->c:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/block/b;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/block/b;-><init>(Lcom/viber/voip/block/a;Lcom/viber/voip/block/q;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void

    .line 67
    :cond_0
    iget-object v1, v0, Lcom/viber/voip/block/c;->b:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/block/a;->b:Lcom/viber/voip/block/o;

    invoke-virtual {v0}, Lcom/viber/voip/block/o;->getCount()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/viber/voip/block/a;->a(I)Lcom/viber/voip/block/q;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/block/a;->b:Lcom/viber/voip/block/o;

    invoke-virtual {v0, p1}, Lcom/viber/voip/block/o;->a_(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    if-nez p2, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/viber/voip/block/a;->a()Landroid/view/View;

    move-result-object p2

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/block/a;->a(I)Lcom/viber/voip/block/q;

    move-result-object v0

    .line 48
    invoke-virtual {p0, p2, v0}, Lcom/viber/voip/block/a;->a(Landroid/view/View;Lcom/viber/voip/block/q;)V

    .line 49
    return-object p2
.end method

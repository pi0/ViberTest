.class public Lcom/viber/voip/messages/conversation/publicgroup/bd;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/messages/conversation/ap;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/viber/voip/messages/conversation/ap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->b:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->a:Lcom/viber/voip/messages/conversation/ap;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->g:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0202

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->c:I

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0201

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->d:I

    .line 28
    iput p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->h:I

    .line 29
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bd;->b()V

    .line 30
    return-void
.end method

.method private a()Lcom/viber/voip/messages/conversation/publicgroup/bc;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/bc;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->b:Landroid/content/Context;

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->g:I

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/bc;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->a:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v0

    .line 80
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->g:I

    div-int v1, v0, v1

    iput v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->f:I

    .line 81
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->f:I

    iput v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->e:I

    .line 82
    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->f:I

    iget v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->g:I

    mul-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    .line 83
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->e:I

    .line 85
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/viber/voip/messages/conversation/ar;
    .locals 1
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->h:I

    .line 72
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->e:I

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bd;->a(I)Lcom/viber/voip/messages/conversation/ar;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    if-nez p2, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bd;->a()Lcom/viber/voip/messages/conversation/publicgroup/bc;

    move-result-object p2

    .line 62
    :goto_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->c:I

    .line 63
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bd;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->c:I

    .line 64
    :goto_2
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/publicgroup/bc;->getPaddingTop()I

    move-result v2

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/publicgroup/bc;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p2, v0, v2, v1, v3}, Lcom/viber/voip/messages/conversation/publicgroup/bc;->setPadding(IIII)V

    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->a:Lcom/viber/voip/messages/conversation/ap;

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->h:I

    invoke-virtual {p2, p1, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/bc;->a(ILcom/viber/voip/messages/conversation/ap;I)V

    .line 67
    return-object p2

    .line 59
    :cond_0
    check-cast p2, Lcom/viber/voip/messages/conversation/publicgroup/bc;

    goto :goto_0

    .line 62
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bd;->d:I

    goto :goto_1

    .line 63
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bd;->b()V

    .line 40
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 41
    return-void
.end method

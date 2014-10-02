.class Lcom/viber/voip/messages/conversation/a/a/a/p;
.super Lcom/viber/voip/ui/b/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/ui/b/a",
        "<",
        "Lcom/viber/voip/messages/conversation/a/a/a;",
        "Lcom/viber/voip/messages/conversation/a/a/b/a/b;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/viber/voip/stickers/r;

.field private e:Lcom/viber/voip/messages/conversation/a/b/f;

.field private f:Lcom/viber/voip/messages/conversation/a/a/a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/f;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/a;-><init>(Landroid/view/View;)V

    .line 35
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->d:Lcom/viber/voip/stickers/r;

    .line 37
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->e:Lcom/viber/voip/messages/conversation/a/b/f;

    .line 39
    const v0, 0x7f070314

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->a:Landroid/widget/LinearLayout;

    .line 40
    const v0, 0x7f070316

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->b:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f070317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->c:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method private varargs a(I[I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p2, v1

    .line 88
    if-ne p1, v3, :cond_1

    .line 89
    const/4 v0, 0x1

    .line 92
    :cond_0
    return v0

    .line 87
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/messages/conversation/a/a/a;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->P()J

    move-result-wide v1

    long-to-int v1, v1

    .line 78
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->d:Lcom/viber/voip/stickers/r;

    invoke-virtual {v2, v1}, Lcom/viber/voip/stickers/r;->l(I)Lcom/viber/voip/stickers/c/a;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    iget v1, v1, Lcom/viber/voip/stickers/c/a;->j:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 83
    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->f:Lcom/viber/voip/messages/conversation/a/a/a;

    .line 52
    const-string/jumbo v0, "sound"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->f:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 54
    :goto_0
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    iget-object v6, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->f:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v6}, Lcom/viber/voip/messages/conversation/a/a/a;->F()I

    move-result v6

    if-ne v1, v6, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->f:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->f:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->F()I

    move-result v0

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/conversation/a/a/a/p;->a(I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_3

    move v0, v2

    .line 59
    :goto_2
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/a/a/p;->a(Lcom/viber/voip/messages/conversation/a/a/a;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 64
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 65
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->j()I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 66
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->j()I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 72
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 73
    return-void

    :cond_1
    move v0, v3

    .line 52
    goto :goto_0

    :cond_2
    move v1, v4

    .line 54
    goto :goto_1

    :cond_3
    move v0, v3

    .line 55
    goto :goto_2

    .line 68
    :cond_4
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 70
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_3

    .line 55
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    check-cast p1, Lcom/viber/voip/messages/conversation/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/p;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070316

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->e:Lcom/viber/voip/messages/conversation/a/b/f;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->f:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/a/b/f;->h(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->e:Lcom/viber/voip/messages/conversation/a/b/f;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/p;->f:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/a/b/f;->i(Lcom/viber/voip/messages/conversation/a/a/a;)V

    goto :goto_0
.end method

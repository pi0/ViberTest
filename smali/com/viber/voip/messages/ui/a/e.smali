.class Lcom/viber/voip/messages/ui/a/e;
.super Lcom/viber/voip/messages/ui/bp;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/a/h;

.field final synthetic b:Lcom/viber/voip/messages/ui/a/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/a/c;Lcom/viber/voip/messages/ui/a/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/a/e;->a:Lcom/viber/voip/messages/ui/a/h;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/bp;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->b(Lcom/viber/voip/messages/ui/a/c;)Lcom/viber/voip/messages/ui/a/b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->c(Lcom/viber/voip/messages/ui/a/c;)I

    move-result v1

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_1

    .line 117
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->d(Lcom/viber/voip/messages/ui/a/c;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 118
    if-nez v1, :cond_3

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->e(Lcom/viber/voip/messages/ui/a/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/a/c;->d(Lcom/viber/voip/messages/ui/a/c;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->d(Lcom/viber/voip/messages/ui/a/c;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/a/c;->d(Lcom/viber/voip/messages/ui/a/c;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 121
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->b(Lcom/viber/voip/messages/ui/a/c;)Lcom/viber/voip/messages/ui/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/ui/a/b;->i()V

    .line 133
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1, p2}, Lcom/viber/voip/messages/ui/a/c;->a(Lcom/viber/voip/messages/ui/a/c;I)I

    .line 134
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/a/c;->b(Lcom/viber/voip/messages/ui/a/c;I)I

    .line 137
    :cond_1
    sget-object v0, Lcom/viber/voip/messages/ui/a/h;->b:Lcom/viber/voip/messages/ui/a/h;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->a:Lcom/viber/voip/messages/ui/a/h;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/a/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v0, p2}, Lcom/viber/voip/messages/ui/a/c;->c(Lcom/viber/voip/messages/ui/a/c;I)V

    .line 140
    :cond_2
    return-void

    .line 118
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 123
    :cond_4
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->c(Lcom/viber/voip/messages/ui/a/c;)I

    move-result v1

    if-ne v1, p2, :cond_5

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->f(Lcom/viber/voip/messages/ui/a/c;)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/a/c;->g(Lcom/viber/voip/messages/ui/a/c;)I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 126
    :cond_5
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->c(Lcom/viber/voip/messages/ui/a/c;)I

    move-result v1

    if-gt p2, v1, :cond_6

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->c(Lcom/viber/voip/messages/ui/a/c;)I

    move-result v1

    if-ne v1, p2, :cond_7

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->f(Lcom/viber/voip/messages/ui/a/c;)I

    move-result v1

    if-le v1, v0, :cond_7

    .line 127
    :cond_6
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->b(Lcom/viber/voip/messages/ui/a/c;)Lcom/viber/voip/messages/ui/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/ui/a/b;->g()V

    goto :goto_1

    .line 129
    :cond_7
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->c(Lcom/viber/voip/messages/ui/a/c;)I

    move-result v1

    if-lt p2, v1, :cond_8

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->c(Lcom/viber/voip/messages/ui/a/c;)I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->f(Lcom/viber/voip/messages/ui/a/c;)I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 130
    :cond_8
    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->b(Lcom/viber/voip/messages/ui/a/c;)Lcom/viber/voip/messages/ui/a/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/ui/a/b;->h()V

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/e;->b:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/a/c;->a(Lcom/viber/voip/messages/ui/a/c;)Lcom/viber/voip/messages/adapters/q;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/adapters/q;->a(Z)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

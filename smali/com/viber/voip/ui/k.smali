.class public Lcom/viber/voip/ui/k;
.super Lcom/viber/voip/ui/aa;
.source "SourceFile"


# instance fields
.field protected a:Z

.field private d:Lcom/actionbarsherlock/view/MenuItem;

.field private e:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/ui/ab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ui/aa;-><init>(Landroid/content/Context;Lcom/viber/voip/ui/ab;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/ui/k;->e:Lcom/actionbarsherlock/widget/SearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ui/k;->e:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public a(Lcom/actionbarsherlock/view/MenuItem;ZLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/viber/voip/ui/k;->a(Lcom/actionbarsherlock/view/MenuItem;ZZLjava/lang/String;)V

    .line 26
    return-void
.end method

.method public a(Lcom/actionbarsherlock/view/MenuItem;ZZLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    iput-object p1, p0, Lcom/viber/voip/ui/k;->d:Lcom/actionbarsherlock/view/MenuItem;

    .line 31
    iget-object v0, p0, Lcom/viber/voip/ui/k;->d:Lcom/actionbarsherlock/view/MenuItem;

    new-instance v3, Lcom/viber/voip/ui/l;

    invoke-direct {v3, p0}, Lcom/viber/voip/ui/l;-><init>(Lcom/viber/voip/ui/k;)V

    invoke-interface {v0, v3}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 52
    iget-object v0, p0, Lcom/viber/voip/ui/k;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v0, p0, Lcom/viber/voip/ui/k;->e:Lcom/actionbarsherlock/widget/SearchView;

    .line 53
    iget-object v0, p0, Lcom/viber/voip/ui/k;->e:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0, p4, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 54
    iget-object v0, p0, Lcom/viber/voip/ui/k;->e:Lcom/actionbarsherlock/widget/SearchView;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/viber/voip/ui/k;->e:Lcom/actionbarsherlock/widget/SearchView;

    const v3, 0x7f070153

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    const v3, 0x7f020115

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ui/k;->e:Lcom/actionbarsherlock/widget/SearchView;

    new-instance v3, Lcom/viber/voip/ui/m;

    invoke-direct {v3, p0}, Lcom/viber/voip/ui/m;-><init>(Lcom/viber/voip/ui/k;)V

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 79
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/ui/k;->a:Z

    .line 80
    if-eqz p2, :cond_2

    .line 81
    iget-object v0, p0, Lcom/viber/voip/ui/k;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->expandActionView()Z

    .line 82
    iget-object v0, p0, Lcom/viber/voip/ui/k;->e:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0, p4, v1}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 84
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 79
    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/viber/voip/ui/k;->e:Lcom/actionbarsherlock/widget/SearchView;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/viber/voip/ui/k;->e:Lcom/actionbarsherlock/widget/SearchView;

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 97
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/ui/k;->d:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/viber/voip/ui/k;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 90
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/ui/k;->e:Lcom/actionbarsherlock/widget/SearchView;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 107
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/viber/voip/ui/k;->e:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/viber/voip/ui/k;->d:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/viber/voip/ui/k;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->expandActionView()Z

    .line 119
    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/viber/voip/ui/k;->d:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/viber/voip/ui/k;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viber/voip/ui/k;->d:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/viber/voip/ui/k;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->collapseActionView()Z

    .line 126
    :cond_0
    return-void
.end method

.class public Lcom/viber/voip/gallery/selection/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

.field private b:Lcom/viber/voip/app/ViberFragmentActivity;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

.field private l:Lcom/viber/voip/gallery/selection/b;


# direct methods
.method public constructor <init>(Lcom/viber/voip/app/ViberFragmentActivity;Landroid/view/View$OnClickListener;Lcom/viber/voip/gallery/selection/b;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/a;->b:Lcom/viber/voip/app/ViberFragmentActivity;

    .line 39
    iput-object p2, p0, Lcom/viber/voip/gallery/selection/a;->c:Landroid/view/View$OnClickListener;

    .line 40
    iput-object p3, p0, Lcom/viber/voip/gallery/selection/a;->l:Lcom/viber/voip/gallery/selection/b;

    .line 42
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->b:Lcom/viber/voip/app/ViberFragmentActivity;

    invoke-virtual {v0}, Lcom/viber/voip/app/ViberFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/selection/a;->g:I

    .line 43
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->b:Lcom/viber/voip/app/ViberFragmentActivity;

    invoke-virtual {v0}, Lcom/viber/voip/app/ViberFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/selection/a;->h:I

    .line 45
    const v0, 0x7f0c061a

    invoke-virtual {p1, v0}, Lcom/viber/voip/app/ViberFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/a;->d:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->l:Lcom/viber/voip/gallery/selection/b;

    invoke-interface {v0}, Lcom/viber/voip/gallery/selection/b;->a()V

    .line 96
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->a:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->k:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/viber/voip/gallery/selection/a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/gallery/selection/a;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/viber/voip/gallery/selection/a;->a:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcom/viber/voip/gallery/selection/a;->k:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    iget v0, p0, Lcom/viber/voip/gallery/selection/a;->e:I

    iget v2, p0, Lcom/viber/voip/gallery/selection/a;->f:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/viber/voip/gallery/selection/a;->g:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setTextColor(I)V

    .line 104
    :cond_0
    return-void

    .line 102
    :cond_1
    iget v0, p0, Lcom/viber/voip/gallery/selection/a;->h:I

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->b:Lcom/viber/voip/app/ViberFragmentActivity;

    invoke-virtual {v0}, Lcom/viber/voip/app/ViberFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget-boolean v0, p0, Lcom/viber/voip/gallery/selection/a;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 108
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->d:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->b:Lcom/viber/voip/app/ViberFragmentActivity;

    invoke-virtual {v0}, Lcom/viber/voip/app/ViberFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0619

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 58
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->b:Lcom/viber/voip/app/ViberFragmentActivity;

    invoke-virtual {v0}, Lcom/viber/voip/app/ViberFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/viber/voip/gallery/selection/a;->f:I

    .line 49
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/a;->e()V

    .line 50
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->b:Lcom/viber/voip/app/ViberFragmentActivity;

    invoke-virtual {v0}, Lcom/viber/voip/app/ViberFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/a;->f()V

    .line 64
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/viber/voip/gallery/selection/a;->j:Z

    .line 68
    return-void
.end method

.method public a(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 71
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->b:Lcom/viber/voip/app/ViberFragmentActivity;

    invoke-virtual {v0}, Lcom/viber/voip/app/ViberFragmentActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 72
    const v1, 0x7f100011

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 75
    const v0, 0x7f070450

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006c

    const v2, 0x7f0c0537

    iget-object v3, p0, Lcom/viber/voip/gallery/selection/a;->c:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/view/MenuItem;IILandroid/view/View$OnClickListener;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 78
    const v0, 0x7f07046e

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/a;->a:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 80
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->a:Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    const v1, 0x7f070139

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/a;->k:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    .line 81
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->k:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/a;->k:Lcom/actionbarsherlock/internal/widget/CapitalizingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/actionbarsherlock/internal/widget/CapitalizingButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 84
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/a;->e()V

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/gallery/selection/a;->i:Z

    .line 112
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/a;->f()V

    .line 113
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/a;->d()V

    .line 114
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/viber/voip/gallery/selection/a;->e:I

    .line 53
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/a;->e()V

    .line 54
    return-void
.end method

.method public b(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 89
    const v0, 0x7f070450

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    iget-boolean v0, p0, Lcom/viber/voip/gallery/selection/a;->i:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/viber/voip/gallery/selection/a;->e:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/gallery/selection/a;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 90
    const v0, 0x7f07046e

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/viber/voip/gallery/selection/a;->i:Z

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 91
    return v1

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/gallery/selection/a;->i:Z

    .line 118
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/a;->f()V

    .line 119
    invoke-direct {p0}, Lcom/viber/voip/gallery/selection/a;->d()V

    .line 120
    return-void
.end method

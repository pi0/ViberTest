.class public Lcom/viber/voip/contacts/a/v;
.super Lcom/viber/voip/contacts/a/k;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field protected i:Lcom/viber/voip/contacts/a;

.field private k:I

.field private l:I

.field private m:Ljava/lang/CharSequence;

.field private n:[Ljava/lang/Character;

.field private o:Lcom/viber/voip/contacts/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/contacts/a/c",
            "<",
            "Lcom/viber/voip/contacts/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/viber/voip/contacts/a/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/v;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/a/k;-><init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V

    .line 36
    iput-object p2, p0, Lcom/viber/voip/contacts/a/v;->i:Lcom/viber/voip/contacts/a;

    .line 37
    const v0, 0x7f0c07ba

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/v;->m:Ljava/lang/CharSequence;

    .line 39
    iget-object v0, p0, Lcom/viber/voip/contacts/a/v;->f:Landroid/content/res/Resources;

    const v1, 0x7f0a0146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/a/v;->k:I

    .line 40
    iget-object v0, p0, Lcom/viber/voip/contacts/a/v;->f:Landroid/content/res/Resources;

    const v1, 0x7f0a0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/a/v;->l:I

    .line 42
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/v;->b()V

    .line 43
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 116
    iget-object v1, v0, Lcom/viber/voip/contacts/a/l;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/contacts/a/v;->n:[Ljava/lang/Character;

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {p0, p2}, Lcom/viber/voip/contacts/a/v;->getSectionForPosition(I)I

    move-result v1

    .line 118
    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/viber/voip/contacts/a/v;->n:[Ljava/lang/Character;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->h()Lcom/viber/voip/contacts/a/a;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/a;->b()[Ljava/lang/Character;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/a/v;->n:[Ljava/lang/Character;

    .line 49
    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/a;->a()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/a/v;->m:Ljava/lang/CharSequence;

    .line 51
    new-instance v1, Lcom/viber/voip/contacts/a/w;

    iget-object v2, p0, Lcom/viber/voip/contacts/a/v;->i:Lcom/viber/voip/contacts/a;

    iget-object v3, p0, Lcom/viber/voip/contacts/a/v;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/a;->c()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/viber/voip/contacts/a/w;-><init>(Lcom/viber/voip/contacts/a/v;Lcom/viber/provider/a;Ljava/lang/CharSequence;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/viber/voip/contacts/a/v;->o:Lcom/viber/voip/contacts/a/c;

    .line 57
    return-void
.end method

.method private d(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/contacts/a/v;->n:[Ljava/lang/Character;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/a/v;->n:[Ljava/lang/Character;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected a(ILandroid/view/View;Lcom/viber/voip/contacts/b/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/a/k;->a(ILandroid/view/View;Lcom/viber/voip/contacts/b/e;)V

    .line 111
    invoke-direct {p0, p2, p1}, Lcom/viber/voip/contacts/a/v;->a(Landroid/view/View;I)V

    .line 112
    return-void
.end method

.method protected b(I)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/a/k;->b(I)Landroid/view/View;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 94
    iget-boolean v2, p0, Lcom/viber/voip/contacts/a/v;->g:Z

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, v0, Lcom/viber/voip/contacts/a/l;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 96
    iget v2, p0, Lcom/viber/voip/contacts/a/v;->k:I

    iget v3, p0, Lcom/viber/voip/contacts/a/v;->l:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/viber/voip/contacts/a/v;->a(Lcom/viber/voip/contacts/a/l;II)V

    .line 98
    :cond_0
    return-object v1
.end method

.method public c(I)Z
    .locals 2
    .parameter

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/v;->getSectionForPosition(I)I

    move-result v1

    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/a/v;->getSectionForPosition(I)I

    move-result v0

    :goto_0
    if-eq v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/viber/voip/contacts/a/v;->o:Lcom/viber/voip/contacts/a/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/a/c;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/viber/voip/contacts/a/v;->o:Lcom/viber/voip/contacts/a/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/a/c;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/viber/voip/contacts/a/v;->o:Lcom/viber/voip/contacts/a/c;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/c;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 67
    if-nez p2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/v;->a()Landroid/view/View;

    move-result-object p2

    .line 71
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 73
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/v;->getSectionForPosition(I)I

    move-result v6

    .line 74
    if-ltz p1, :cond_3

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/viber/voip/contacts/a/v;->getSectionForPosition(I)I

    move-result v2

    move v5, v2

    .line 75
    :goto_0
    if-lez p1, :cond_1

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/a/v;->getSectionForPosition(I)I

    move-result v1

    .line 77
    :cond_1
    iget-object v7, v0, Lcom/viber/voip/contacts/a/l;->e:Landroid/view/View;

    if-eq v6, v1, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v2, v0, Lcom/viber/voip/contacts/a/l;->i:Landroid/view/View;

    if-eq v6, v5, :cond_5

    const/4 v0, 0x4

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    const v0, 0x7f07009c

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/ak;

    .line 81
    invoke-virtual {v0, v4}, Lcom/viber/voip/ui/ak;->b(Z)V

    .line 82
    if-eq v6, v1, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v0, v3}, Lcom/viber/voip/ui/ak;->a(Z)V

    .line 83
    invoke-direct {p0, v6}, Lcom/viber/voip/contacts/a/v;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ak;->a(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ak;->b(Ljava/lang/String;)V

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/a/k;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_3
    move v5, v1

    .line 74
    goto :goto_0

    .line 77
    :cond_4
    const/16 v2, 0x8

    goto :goto_1

    :cond_5
    move v0, v3

    .line 78
    goto :goto_2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/viber/voip/contacts/a/v;->b()V

    .line 62
    invoke-super {p0}, Lcom/viber/voip/contacts/a/k;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

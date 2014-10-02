.class public Lcom/viber/voip/contacts/a/t;
.super Lcom/viber/voip/contacts/a/k;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/viber/voip/contacts/a/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/t;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/a/k;-><init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V

    .line 24
    const v0, 0x7f0c0534

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/t;->j:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 59
    iget-object v2, v0, Lcom/viber/voip/contacts/a/l;->e:Landroid/view/View;

    if-nez p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    if-nez p2, :cond_0

    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/contacts/a/t;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    return-void

    .line 59
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected a(ILandroid/view/View;Lcom/viber/voip/contacts/b/e;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/a/k;->a(ILandroid/view/View;Lcom/viber/voip/contacts/b/e;)V

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 52
    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    invoke-direct {p0, p2, p1}, Lcom/viber/voip/contacts/a/t;->a(Landroid/view/View;I)V

    .line 54
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/viber/voip/contacts/a/k;->getCount()I

    move-result v0

    .line 30
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/a/k;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 38
    iput-boolean v2, v0, Lcom/viber/voip/contacts/a/l;->s:Z

    .line 39
    iget-object v4, v0, Lcom/viber/voip/contacts/a/l;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/t;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 41
    const v0, 0x7f07009c

    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/ak;

    .line 42
    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/ak;->b(Z)V

    .line 43
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ak;->a(Z)V

    .line 44
    iget-object v1, p0, Lcom/viber/voip/contacts/a/t;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ak;->a(Ljava/lang/String;)V

    .line 45
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ak;->b(Ljava/lang/String;)V

    .line 46
    return-object v3

    :cond_1
    move v0, v1

    .line 39
    goto :goto_0
.end method

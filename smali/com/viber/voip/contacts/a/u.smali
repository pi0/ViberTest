.class public Lcom/viber/voip/contacts/a/u;
.super Lcom/viber/voip/contacts/a/k;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/viber/voip/contacts/a/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/u;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/a/k;-><init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V

    .line 29
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 56
    iget-object v2, v0, Lcom/viber/voip/contacts/a/l;->e:Landroid/view/View;

    if-nez p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    if-nez p2, :cond_0

    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->f:Landroid/widget/TextView;

    const v1, 0x7f0c0533

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    :cond_0
    return-void

    .line 56
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected a(ILandroid/view/View;Lcom/viber/voip/contacts/b/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/a/k;->a(ILandroid/view/View;Lcom/viber/voip/contacts/b/e;)V

    .line 50
    invoke-direct {p0, p2, p1}, Lcom/viber/voip/contacts/a/u;->a(Landroid/view/View;I)V

    .line 51
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/a/k;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 36
    iput-boolean v2, v0, Lcom/viber/voip/contacts/a/l;->r:Z

    .line 37
    iget-object v4, v0, Lcom/viber/voip/contacts/a/l;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/u;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    const v0, 0x7f07009c

    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/ak;

    .line 40
    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/ak;->b(Z)V

    .line 41
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ak;->a(Z)V

    .line 42
    iget-object v1, p0, Lcom/viber/voip/contacts/a/u;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0533

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ak;->a(Ljava/lang/String;)V

    .line 43
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ak;->b(Ljava/lang/String;)V

    .line 45
    invoke-super {p0, p1, v3, p3}, Lcom/viber/voip/contacts/a/k;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    .line 37
    goto :goto_0
.end method

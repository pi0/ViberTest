.class public Lcom/viber/voip/settings/ui/bz;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/viber/voip/user/YouFragment$PreferenceItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/user/YouFragment$PreferenceItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 88
    iput p3, p0, Lcom/viber/voip/settings/ui/bz;->a:I

    .line 89
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0, p1}, Lcom/viber/voip/settings/ui/bz;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    iget v0, v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    if-nez p2, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/viber/voip/settings/ui/bz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/settings/ui/bz;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 101
    :cond_0
    const v0, 0x7f0700d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/viber/voip/settings/ui/bz;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    iget v1, v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;->icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/viber/voip/settings/ui/bz;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    iget v1, v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;->title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    return-object p2
.end method

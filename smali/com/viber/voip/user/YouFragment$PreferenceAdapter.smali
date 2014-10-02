.class Lcom/viber/voip/user/YouFragment$PreferenceAdapter;
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
.field private mIsLandscape:Z

.field private newPackageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/user/YouFragment$PreferenceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 168
    iput p2, p0, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->newPackageCount:I

    .line 169
    invoke-static {p1}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->mIsLandscape:Z

    .line 170
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    iget v0, v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 179
    if-nez p2, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d5

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 186
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    .line 188
    const v1, 0x7f0700d6

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->icon:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 190
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->isDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->mIsLandscape:Z

    if-nez v1, :cond_1

    .line 191
    invoke-static {}, Lcom/viber/voip/user/YouFragment;->access$000()I

    move-result v1

    invoke-virtual {p2, v1, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 194
    :cond_1
    const v1, 0x7f070208

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 195
    if-eqz v1, :cond_2

    .line 196
    iget-boolean v0, v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->stickerItem:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->newPackageCount:I

    if-lez v0, :cond_3

    .line 197
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget v0, p0, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->newPackageCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_2
    :goto_0
    return-object p2

    .line 200
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected isDialog()Z
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/user/YouDialogActivity;

    return v0
.end method

.method public setNewPackageCount(I)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput p1, p0, Lcom/viber/voip/user/YouFragment$PreferenceAdapter;->newPackageCount:I

    .line 174
    return-void
.end method

.class Lcom/viber/voip/registration/dc;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/registration/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/viber/voip/registration/CountryCode;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/viber/voip/util/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/viber/voip/registration/CountryCode;)V
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
            "Lcom/viber/voip/registration/CountryCode;",
            ">;",
            "Lcom/viber/voip/registration/CountryCode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 263
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/viber/voip/registration/dc;->c:Landroid/view/LayoutInflater;

    .line 264
    iput-object p2, p0, Lcom/viber/voip/registration/dc;->a:Ljava/util/List;

    .line 265
    iput-object p3, p0, Lcom/viber/voip/registration/dc;->b:Lcom/viber/voip/registration/CountryCode;

    .line 266
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getBiDiAwareFormatter()Lcom/viber/voip/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/dc;->d:Lcom/viber/voip/util/l;

    .line 267
    return-void
.end method


# virtual methods
.method public a(I)Lcom/viber/voip/registration/CountryCode;
    .locals 1
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/viber/voip/registration/dc;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/dc;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/CountryCode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/registration/CountryCode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    iput-object p1, p0, Lcom/viber/voip/registration/dc;->a:Ljava/util/List;

    .line 271
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/viber/voip/registration/dc;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/dc;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/dc;->a(I)Lcom/viber/voip/registration/CountryCode;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 285
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/dc;->a(I)Lcom/viber/voip/registration/CountryCode;

    move-result-object v3

    .line 293
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/dc;->c:Landroid/view/LayoutInflater;

    const v2, 0x7f030086

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 295
    new-instance v0, Lcom/viber/voip/registration/dd;

    invoke-direct {v0, p2}, Lcom/viber/voip/registration/dd;-><init>(Landroid/view/View;)V

    .line 296
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, p2

    .line 301
    :goto_0
    if-eqz v0, :cond_1

    if-nez v2, :cond_3

    :cond_1
    move-object v0, v1

    .line 311
    :goto_1
    return-object v0

    .line 298
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/dd;

    move-object v2, v0

    move-object v0, p2

    goto :goto_0

    .line 304
    :cond_3
    invoke-static {v2, v3}, Lcom/viber/voip/registration/dd;->a(Lcom/viber/voip/registration/dd;Lcom/viber/voip/registration/CountryCode;)Lcom/viber/voip/registration/CountryCode;

    .line 305
    invoke-static {v2}, Lcom/viber/voip/registration/dd;->b(Lcom/viber/voip/registration/dd;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/viber/voip/registration/dc;->d:Lcom/viber/voip/util/l;

    invoke-virtual {v3}, Lcom/viber/voip/registration/CountryCode;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/viber/voip/registration/CountryCode;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/viber/voip/util/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/viber/voip/registration/dc;->b:Lcom/viber/voip/registration/CountryCode;

    invoke-virtual {v3, v1}, Lcom/viber/voip/registration/CountryCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
    invoke-static {v2}, Lcom/viber/voip/registration/dd;->c(Lcom/viber/voip/registration/dd;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0200f7

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 309
    :cond_4
    invoke-static {v2}, Lcom/viber/voip/registration/dd;->c(Lcom/viber/voip/registration/dd;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0200f8

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

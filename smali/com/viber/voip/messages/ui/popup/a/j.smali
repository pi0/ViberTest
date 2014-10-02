.class public Lcom/viber/voip/messages/ui/popup/a/j;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/messages/ui/popup/a/l;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/ui/popup/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/a/j;->a:Lcom/viber/voip/messages/ui/popup/a/l;

    .line 20
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/messages/ui/popup/a/l;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/j;->a:Lcom/viber/voip/messages/ui/popup/a/l;

    return-object v0
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/j;->a:Lcom/viber/voip/messages/ui/popup/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/a/l;->c()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/a/j;->a:Lcom/viber/voip/messages/ui/popup/a/l;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/ui/popup/a/l;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 40
    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 41
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    check-cast p2, Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    return-void
.end method

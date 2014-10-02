.class public Lcom/viber/voip/widget/HListWithDescription;
.super Lcom/viber/voip/widget/am;
.source "SourceFile"


# instance fields
.field private a:Lit/sephiroth/android/library/widget/HListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/am;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/am;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/widget/am;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    new-instance v0, Lit/sephiroth/android/library/widget/HListView;

    invoke-direct {v0, p1, p2}, Lit/sephiroth/android/library/widget/HListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/viber/voip/widget/HListWithDescription;->a:Lit/sephiroth/android/library/widget/HListView;

    .line 33
    iget-object v0, p0, Lcom/viber/voip/widget/HListWithDescription;->a:Lit/sephiroth/android/library/widget/HListView;

    const v1, 0x7f02010f

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/HListView;->setBackgroundResource(I)V

    .line 34
    iget-object v0, p0, Lcom/viber/voip/widget/HListWithDescription;->a:Lit/sephiroth/android/library/widget/HListView;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/widget/HListWithDescription;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/HListView;->f(Landroid/view/View;)V

    .line 47
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/viber/voip/widget/HListWithDescription;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    return-void
.end method

.method public setOnItemClickListener(Lit/sephiroth/android/library/widget/y;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/widget/HListWithDescription;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/HListView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/y;)V

    .line 39
    return-void
.end method

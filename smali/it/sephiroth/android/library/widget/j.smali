.class Lit/sephiroth/android/library/widget/j;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2001
    iput-object p1, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2005
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2007
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->e(Landroid/view/View;)I

    move-result v1

    .line 2008
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2010
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    .line 2035
    :cond_0
    :goto_0
    return-void

    .line 2014
    :cond_1
    iget-object v2, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v2}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2019
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 2020
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2025
    :goto_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2026
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2027
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 2030
    :cond_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2031
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 2032
    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    goto :goto_0

    .line 2022
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2039
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2087
    :goto_0
    return v0

    .line 2043
    :cond_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p1}, Lit/sephiroth/android/library/widget/AbsHListView;->e(Landroid/view/View;)I

    move-result v3

    .line 2044
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2046
    if-eq v3, v6, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 2048
    goto :goto_0

    .line 2051
    :cond_2
    iget-object v4, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v4}, Lit/sephiroth/android/library/widget/AbsHListView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v2

    .line 2053
    goto :goto_0

    .line 2056
    :cond_4
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->f(I)J

    move-result-wide v4

    .line 2058
    sparse-switch p2, :sswitch_data_0

    move v0, v2

    .line 2087
    goto :goto_0

    .line 2060
    :sswitch_0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 2061
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v6}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelection(I)V

    move v0, v1

    .line 2062
    goto :goto_0

    :cond_5
    move v0, v2

    .line 2065
    goto :goto_0

    .line 2067
    :sswitch_1
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->getSelectedItemPosition()I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 2068
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setSelection(I)V

    move v0, v1

    .line 2069
    goto :goto_0

    :cond_6
    move v0, v2

    .line 2072
    goto :goto_0

    .line 2074
    :sswitch_2
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2075
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p1, v3, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_7
    move v0, v2

    .line 2078
    goto :goto_0

    .line 2080
    :sswitch_3
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2081
    iget-object v0, p0, Lit/sephiroth/android/library/widget/j;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0, p1, v3, v4, v5}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v2

    .line 2084
    goto :goto_0

    .line 2058
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

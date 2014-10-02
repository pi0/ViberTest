.class public Lcom/viber/voip/user/PhotoActionPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "PhotoActionPopup"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method public static createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/viber/voip/user/PhotoActionPopup$Listener;I)Landroid/widget/ListPopupWindow;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    and-int/lit8 v0, p3, 0x1

    if-lez v0, :cond_0

    .line 64
    new-instance v0, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;

    const/4 v2, 0x0

    const v3, 0x7f0c0481

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0c034f

    .line 69
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v2, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;

    invoke-direct {v2, v6, v0}, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    const v0, 0x7f0c0606

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v2, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0}, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    and-int/lit8 v0, p3, 0x4

    if-lez v0, :cond_2

    .line 78
    and-int/lit8 v0, p3, 0x8

    if-lez v0, :cond_1

    .line 80
    :cond_1
    const v0, 0x7f0c047f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    const v2, 0x7f0c0480

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    new-instance v3, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;

    invoke-direct {v3, v4, v0}, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;

    invoke-direct {v0, v5, v2}, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    and-int/lit8 v0, p3, 0x2

    if-lez v0, :cond_3

    .line 90
    new-instance v0, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;

    const/4 v2, 0x3

    const v3, 0x7f0c0486

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_3
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f03011d

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 97
    new-instance v2, Landroid/widget/ListPopupWindow;

    invoke-direct {v2, p0}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance v3, Lcom/viber/voip/user/PhotoActionPopup$1;

    invoke-direct {v3, v1, p2, v2}, Lcom/viber/voip/user/PhotoActionPopup$1;-><init>(Ljava/util/ArrayList;Lcom/viber/voip/user/PhotoActionPopup$Listener;Landroid/widget/ListPopupWindow;)V

    .line 127
    invoke-virtual {v2, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 128
    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 131
    invoke-virtual {v2, v5}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ge v1, v0, :cond_4

    .line 135
    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 137
    :cond_4
    return-object v2

    .line 68
    :cond_5
    const v0, 0x7f0c0350

    goto/16 :goto_0
.end method

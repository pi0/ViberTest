.class public Lcom/viber/voip/user/PhotoActionDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static MENU_ITEM_EDIT_NAME:I = 0x0

.field protected static MENU_ITEM_IMPORT_FROM_FB:I = 0x0

.field protected static MENU_ITEM_REMOVE_PIC:I = 0x0

.field protected static MENU_ITEM_SELECT_PIC:I = 0x0

.field protected static MENU_ITEM_TAKE_PIC:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PhotoActionDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_TAKE_PIC:I

    .line 26
    const/4 v0, 0x1

    sput v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_SELECT_PIC:I

    .line 27
    const/4 v0, 0x2

    sput v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_REMOVE_PIC:I

    .line 28
    const/4 v0, 0x3

    sput v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_IMPORT_FROM_FB:I

    .line 29
    const/4 v0, 0x4

    sput v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_EDIT_NAME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/viber/voip/user/PhotoActionPopup$Listener;I)Landroid/app/Dialog;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    new-instance v1, Lcom/viber/voip/user/PhotoActionDialog$1;

    invoke-direct {v1, p2}, Lcom/viber/voip/user/PhotoActionDialog$1;-><init>(Lcom/viber/voip/user/PhotoActionPopup$Listener;)V

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0c034f

    .line 64
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_EDIT_NAME:I

    .line 69
    const v0, 0x7f0c0606

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_IMPORT_FROM_FB:I

    .line 74
    and-int/lit8 v0, p3, 0x4

    if-lez v0, :cond_1

    .line 75
    and-int/lit8 v0, p3, 0x8

    if-lez v0, :cond_0

    .line 77
    :cond_0
    const v0, 0x7f0c047f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    const v3, 0x7f0c0480

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_TAKE_PIC:I

    .line 82
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_SELECT_PIC:I

    .line 87
    :cond_1
    and-int/lit8 v0, p3, 0x2

    if-lez v0, :cond_2

    .line 88
    const v0, 0x7f0c0486

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_REMOVE_PIC:I

    .line 92
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 94
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 96
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ge v3, v2, :cond_3

    .line 101
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 103
    :cond_3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 105
    return-object v0

    .line 63
    :cond_4
    const v0, 0x7f0c0350

    goto/16 :goto_0
.end method

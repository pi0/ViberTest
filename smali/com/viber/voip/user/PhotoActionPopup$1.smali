.class final Lcom/viber/voip/user/PhotoActionPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic val$choices:Ljava/util/ArrayList;

.field final synthetic val$listPopupWindow:Landroid/widget/ListPopupWindow;

.field final synthetic val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/viber/voip/user/PhotoActionPopup$Listener;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/viber/voip/user/PhotoActionPopup$1;->val$choices:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/viber/voip/user/PhotoActionPopup$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    iput-object p3, p0, Lcom/viber/voip/user/PhotoActionPopup$1;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionPopup$1;->val$choices:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;

    .line 102
    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionPopup$1;->val$listPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 124
    return-void

    .line 104
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionPopup$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    invoke-interface {v0}, Lcom/viber/voip/user/PhotoActionPopup$Listener;->onUseAsPrimaryChosen()V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionPopup$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    invoke-interface {v0}, Lcom/viber/voip/user/PhotoActionPopup$Listener;->onRemovePictureChosen()V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionPopup$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    invoke-interface {v0}, Lcom/viber/voip/user/PhotoActionPopup$Listener;->onTakePhotoChosen()V

    goto :goto_0

    .line 113
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionPopup$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    invoke-interface {v0}, Lcom/viber/voip/user/PhotoActionPopup$Listener;->onPickFromGalleryChosen()V

    goto :goto_0

    .line 116
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionPopup$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    invoke-interface {v0}, Lcom/viber/voip/user/PhotoActionPopup$Listener;->onEditName()V

    goto :goto_0

    .line 119
    :pswitch_5
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionPopup$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    invoke-interface {v0}, Lcom/viber/voip/user/PhotoActionPopup$Listener;->onImportFromFB()V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

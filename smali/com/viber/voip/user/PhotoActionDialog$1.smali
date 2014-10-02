.class final Lcom/viber/voip/user/PhotoActionDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoActionPopup$Listener;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/viber/voip/user/PhotoActionDialog$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    sget v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_TAKE_PIC:I

    if-ne p2, v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionDialog$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    invoke-interface {v0}, Lcom/viber/voip/user/PhotoActionPopup$Listener;->onTakePhotoChosen()V

    .line 39
    :cond_0
    sget v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_SELECT_PIC:I

    if-ne p2, v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionDialog$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    invoke-interface {v0}, Lcom/viber/voip/user/PhotoActionPopup$Listener;->onPickFromGalleryChosen()V

    .line 42
    :cond_1
    sget v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_REMOVE_PIC:I

    if-ne p2, v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionDialog$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    invoke-interface {v0}, Lcom/viber/voip/user/PhotoActionPopup$Listener;->onRemovePictureChosen()V

    .line 45
    :cond_2
    sget v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_IMPORT_FROM_FB:I

    if-ne p2, v0, :cond_3

    .line 46
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionDialog$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    invoke-interface {v0}, Lcom/viber/voip/user/PhotoActionPopup$Listener;->onImportFromFB()V

    .line 48
    :cond_3
    sget v0, Lcom/viber/voip/user/PhotoActionDialog;->MENU_ITEM_EDIT_NAME:I

    if-ne p2, v0, :cond_4

    .line 49
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionDialog$1;->val$listener:Lcom/viber/voip/user/PhotoActionPopup$Listener;

    invoke-interface {v0}, Lcom/viber/voip/user/PhotoActionPopup$Listener;->onEditName()V

    .line 52
    :cond_4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 53
    return-void
.end method

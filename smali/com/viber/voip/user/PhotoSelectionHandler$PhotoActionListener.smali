.class public abstract Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/user/PhotoActionPopup$Listener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionHandler;


# direct methods
.method public constructor <init>(Lcom/viber/voip/user/PhotoSelectionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentPhotoFile()Ljava/lang/String;
.end method

.method public abstract onPhotoSelected(Landroid/net/Uri;)V
.end method

.method public abstract onPhotoSelectionDismissed()V
.end method

.method public onPickFromGalleryChosen()V
    .locals 3

    .prologue
    .line 306
    :try_start_0
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

    const/4 v1, 0x0

    #calls: Lcom/viber/voip/user/PhotoSelectionHandler;->startPickFromGalleryActivity(Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/viber/voip/user/PhotoSelectionHandler;->access$300(Lcom/viber/voip/user/PhotoSelectionHandler;Ljava/io/File;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    #calls: Lcom/viber/voip/user/PhotoSelectionHandler;->getPhotoPickerNotFoundText()I
    invoke-static {}, Lcom/viber/voip/user/PhotoSelectionHandler;->access$200()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onRemovePictureChosen()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public onTakePhotoChosen()V
    .locals 3

    .prologue
    .line 296
    :try_start_0
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->b:Lcom/viber/voip/messages/extras/image/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->b(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 297
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

    #calls: Lcom/viber/voip/user/PhotoSelectionHandler;->startTakePhotoActivity(Ljava/io/File;)V
    invoke-static {v1, v0}, Lcom/viber/voip/user/PhotoSelectionHandler;->access$100(Lcom/viber/voip/user/PhotoSelectionHandler;Ljava/io/File;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

    iget-object v0, v0, Lcom/viber/voip/user/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    #calls: Lcom/viber/voip/user/PhotoSelectionHandler;->getPhotoPickerNotFoundText()I
    invoke-static {}, Lcom/viber/voip/user/PhotoSelectionHandler;->access$200()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onUseAsPrimaryChosen()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

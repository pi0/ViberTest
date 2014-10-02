.class Lcom/viber/voip/user/PhotoSelectionHandler$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionHandler;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionHandler$4;->this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler$4;->this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

    #calls: Lcom/viber/voip/user/PhotoSelectionHandler;->showPhotoSelectPopup()V
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionHandler;->access$000(Lcom/viber/voip/user/PhotoSelectionHandler;)V

    .line 147
    return-void
.end method

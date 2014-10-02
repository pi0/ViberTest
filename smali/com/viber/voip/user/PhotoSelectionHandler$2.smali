.class Lcom/viber/voip/user/PhotoSelectionHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

.field final synthetic val$listener:Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionHandler;Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionHandler$2;->this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

    iput-object p2, p0, Lcom/viber/voip/user/PhotoSelectionHandler$2;->val$listener:Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler$2;->val$listener:Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;

    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionHandler$PhotoActionListener;->onPhotoSelectionDismissed()V

    .line 98
    return-void
.end method

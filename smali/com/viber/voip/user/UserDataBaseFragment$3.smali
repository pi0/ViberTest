.class Lcom/viber/voip/user/UserDataBaseFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/UserDataBaseFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/UserDataBaseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/viber/voip/user/UserDataBaseFragment$3;->this$0:Lcom/viber/voip/user/UserDataBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment$3;->this$0:Lcom/viber/voip/user/UserDataBaseFragment;

    #getter for: Lcom/viber/voip/user/UserDataBaseFragment;->imageUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataBaseFragment;->access$000(Lcom/viber/voip/user/UserDataBaseFragment;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment$3;->this$0:Lcom/viber/voip/user/UserDataBaseFragment;

    #calls: Lcom/viber/voip/user/UserDataBaseFragment;->removeImage()V
    invoke-static {v0}, Lcom/viber/voip/user/UserDataBaseFragment;->access$100(Lcom/viber/voip/user/UserDataBaseFragment;)V

    .line 147
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment$3;->this$0:Lcom/viber/voip/user/UserDataBaseFragment;

    invoke-virtual {v0}, Lcom/viber/voip/user/UserDataBaseFragment;->onImageUpdate()V

    .line 149
    :cond_0
    return-void
.end method

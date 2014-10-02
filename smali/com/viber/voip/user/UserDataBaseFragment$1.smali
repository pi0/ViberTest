.class Lcom/viber/voip/user/UserDataBaseFragment$1;
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
    .line 125
    iput-object p1, p0, Lcom/viber/voip/user/UserDataBaseFragment$1;->this$0:Lcom/viber/voip/user/UserDataBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment$1;->this$0:Lcom/viber/voip/user/UserDataBaseFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/viber/voip/user/UserDataBaseFragment;->isRotationEnabled:Z

    .line 128
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment$1;->this$0:Lcom/viber/voip/user/UserDataBaseFragment;

    invoke-virtual {v0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment$1;->this$0:Lcom/viber/voip/user/UserDataBaseFragment;

    invoke-virtual {v0}, Lcom/viber/voip/user/UserDataBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera.front"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment$1;->this$0:Lcom/viber/voip/user/UserDataBaseFragment;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/UserDataBaseFragment;->imageAction(I)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment$1;->this$0:Lcom/viber/voip/user/UserDataBaseFragment;

    invoke-virtual {v0, p2}, Lcom/viber/voip/user/UserDataBaseFragment;->imageAction(I)V

    goto :goto_0
.end method

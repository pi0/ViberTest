.class Lcom/viber/voip/user/UserDataFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/UserDataFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/UserDataFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/viber/voip/user/UserDataFragment$1;->this$0:Lcom/viber/voip/user/UserDataFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/viber/voip/user/UserDataFragment$1;->this$0:Lcom/viber/voip/user/UserDataFragment;

    #getter for: Lcom/viber/voip/user/UserDataFragment;->wrapper:Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment;->access$600(Lcom/viber/voip/user/UserDataFragment;)Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;

    move-result-object v0

    #getter for: Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->userNameContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;->access$700(Lcom/viber/voip/user/UserDataFragment$UserDataActivityWrapper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 106
    return-void
.end method

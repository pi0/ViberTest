.class Lcom/viber/voip/user/YouFragment$FragmentDialogs$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/YouFragment$FragmentDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouFragment$FragmentDialogs;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lcom/viber/voip/user/YouFragment$FragmentDialogs$2;->this$0:Lcom/viber/voip/user/YouFragment$FragmentDialogs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 681
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment$FragmentDialogs$2;->this$0:Lcom/viber/voip/user/YouFragment$FragmentDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/user/YouFragment$FragmentDialogs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/ViberApplication;->exit(Landroid/app/Activity;Z)V

    .line 682
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 683
    return-void
.end method

.class Lcom/viber/voip/user/UserDataBaseFragment$2;
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
    .line 152
    iput-object p1, p0, Lcom/viber/voip/user/UserDataBaseFragment$2;->this$0:Lcom/viber/voip/user/UserDataBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 155
    return-void
.end method

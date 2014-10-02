.class Lcom/viber/voip/user/UserDataBaseFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/UserDataBaseFragment;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/UserDataBaseFragment;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/viber/voip/user/UserDataBaseFragment$5;->this$0:Lcom/viber/voip/user/UserDataBaseFragment;

    iput-object p2, p0, Lcom/viber/voip/user/UserDataBaseFragment$5;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/viber/voip/user/UserDataBaseFragment$5;->val$uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->c(Landroid/net/Uri;)Landroid/net/Uri;

    .line 378
    return-void
.end method

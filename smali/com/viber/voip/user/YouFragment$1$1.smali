.class Lcom/viber/voip/user/YouFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/viber/voip/user/YouFragment$1;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouFragment$1;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/viber/voip/user/YouFragment$1$1;->this$1:Lcom/viber/voip/user/YouFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 235
    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v0

    .line 236
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/b/w;->b(Landroid/net/Uri;)V

    .line 237
    iget-object v1, p0, Lcom/viber/voip/user/YouFragment$1$1;->this$1:Lcom/viber/voip/user/YouFragment$1;

    iget-object v1, v1, Lcom/viber/voip/user/YouFragment$1;->this$0:Lcom/viber/voip/user/YouFragment;

    #getter for: Lcom/viber/voip/user/YouFragment;->headerLayout:Lcom/viber/voip/user/YouHeaderLayout;
    invoke-static {v1}, Lcom/viber/voip/user/YouFragment;->access$200(Lcom/viber/voip/user/YouFragment;)Lcom/viber/voip/user/YouHeaderLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/user/YouFragment$1$1;->this$1:Lcom/viber/voip/user/YouFragment$1;

    iget-object v2, v2, Lcom/viber/voip/user/YouFragment$1;->this$0:Lcom/viber/voip/user/YouFragment;

    #calls: Lcom/viber/voip/user/YouFragment;->createOnHeaderClickListener(Landroid/net/Uri;)Landroid/view/View$OnClickListener;
    invoke-static {v2, v0}, Lcom/viber/voip/user/YouFragment;->access$100(Lcom/viber/voip/user/YouFragment;Landroid/net/Uri;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/user/YouHeaderLayout;->setHeaderInfo(Landroid/view/View$OnClickListener;)V

    .line 238
    return-void
.end method

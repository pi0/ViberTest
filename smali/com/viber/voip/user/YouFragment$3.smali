.class Lcom/viber/voip/user/YouFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/YouFragment;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouFragment;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/viber/voip/user/YouFragment$3;->this$0:Lcom/viber/voip/user/YouFragment;

    iput-object p2, p0, Lcom/viber/voip/user/YouFragment$3;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment$3;->val$listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 483
    return-void
.end method

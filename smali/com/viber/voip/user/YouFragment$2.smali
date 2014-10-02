.class Lcom/viber/voip/user/YouFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/YouFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/viber/voip/user/YouFragment$2;->this$0:Lcom/viber/voip/user/YouFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment$2;->this$0:Lcom/viber/voip/user/YouFragment;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/YouFragment;->showDialog(I)V

    .line 357
    return-void
.end method

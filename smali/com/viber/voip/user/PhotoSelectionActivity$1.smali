.class Lcom/viber/voip/user/PhotoSelectionActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$1;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$1;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-virtual {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->finish()V

    .line 243
    return-void
.end method

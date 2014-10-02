.class Lcom/viber/voip/user/PhotoSelectionActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionActivity$2;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionActivity$2;->this$0:Lcom/viber/voip/user/PhotoSelectionActivity;

    #calls: Lcom/viber/voip/user/PhotoSelectionActivity;->displayPhoto()V
    invoke-static {v0}, Lcom/viber/voip/user/PhotoSelectionActivity;->access$000(Lcom/viber/voip/user/PhotoSelectionActivity;)V

    .line 251
    return-void
.end method

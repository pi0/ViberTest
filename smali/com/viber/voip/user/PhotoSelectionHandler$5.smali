.class Lcom/viber/voip/user/PhotoSelectionHandler$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/PhotoSelectionHandler;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/viber/voip/user/PhotoSelectionHandler$5;->this$0:Lcom/viber/voip/user/PhotoSelectionHandler;

    iput-object p2, p0, Lcom/viber/voip/user/PhotoSelectionHandler$5;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/viber/voip/user/PhotoSelectionHandler$5;->val$file:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/upload/n;->c(Landroid/net/Uri;)Landroid/net/Uri;

    .line 204
    return-void
.end method

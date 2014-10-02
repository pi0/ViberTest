.class Lcom/facebook/android/FbDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/facebook/android/FbDialog;


# direct methods
.method constructor <init>(Lcom/facebook/android/FbDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/facebook/android/FbDialog$1;->this$0:Lcom/facebook/android/FbDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/android/FbDialog$1;->this$0:Lcom/facebook/android/FbDialog;

    #getter for: Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$000(Lcom/facebook/android/FbDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 83
    iget-object v0, p0, Lcom/facebook/android/FbDialog$1;->this$0:Lcom/facebook/android/FbDialog;

    #getter for: Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$100(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    .line 84
    iget-object v0, p0, Lcom/facebook/android/FbDialog$1;->this$0:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->dismiss()V

    .line 85
    return-void
.end method

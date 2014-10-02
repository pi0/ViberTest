.class public Lcom/facebook/widget/WebDialog$CustomWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/WebDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/widget/WebDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 737
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$CustomWebView;->this$0:Lcom/facebook/widget/WebDialog;

    .line 738
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 739
    return-void
.end method

.method public constructor <init>(Lcom/facebook/widget/WebDialog;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$CustomWebView;->this$0:Lcom/facebook/widget/WebDialog;

    .line 746
    invoke-direct {p0, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 747
    return-void
.end method

.method public constructor <init>(Lcom/facebook/widget/WebDialog;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$CustomWebView;->this$0:Lcom/facebook/widget/WebDialog;

    .line 742
    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 743
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 752
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_0
    return-void

    .line 753
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/actionbarsherlock/widget/SearchView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1654
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$12;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 1664
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1656
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$12;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #calls: Lcom/actionbarsherlock/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V
    invoke-static {v0, p1}, Lcom/actionbarsherlock/widget/SearchView;->access$2100(Lcom/actionbarsherlock/widget/SearchView;Ljava/lang/CharSequence;)V

    .line 1661
    return-void
.end method

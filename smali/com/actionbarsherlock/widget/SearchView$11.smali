.class Lcom/actionbarsherlock/widget/SearchView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$11;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$11;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    #calls: Lcom/actionbarsherlock/widget/SearchView;->onItemSelected(I)Z
    invoke-static {v0, p3}, Lcom/actionbarsherlock/widget/SearchView;->access$2000(Lcom/actionbarsherlock/widget/SearchView;I)Z

    .line 1370
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1378
    return-void
.end method

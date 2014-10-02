.class Lcom/viber/voip/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ConversationListView;


# direct methods
.method constructor <init>(Lcom/viber/voip/ConversationListView;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/viber/voip/y;->a:Lcom/viber/voip/ConversationListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/ui/b/c;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/b/c;

    .line 108
    :goto_0
    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/viber/voip/ui/b/c;->a()V

    .line 111
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

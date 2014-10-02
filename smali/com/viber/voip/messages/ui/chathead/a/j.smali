.class Lcom/viber/voip/messages/ui/chathead/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a/j;->a:Lcom/viber/voip/messages/ui/chathead/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

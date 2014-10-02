.class Lcom/viber/voip/widget/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/aa;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/viber/voip/widget/ac;->a:Lcom/viber/voip/widget/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 57
    return-void
.end method

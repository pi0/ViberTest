.class Lcom/viber/voip/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/t;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/viber/voip/ui/v;->a:Lcom/viber/voip/ui/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
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
    const/4 v0, 0x0

    .line 333
    iget-object v1, p0, Lcom/viber/voip/ui/v;->a:Lcom/viber/voip/ui/t;

    invoke-static {v1}, Lcom/viber/voip/ui/t;->a(Lcom/viber/voip/ui/t;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 340
    :goto_0
    return v0

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/ui/v;->a:Lcom/viber/voip/ui/t;

    iget v1, v1, Lcom/viber/voip/ui/t;->d:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 338
    const/4 v0, 0x1

    move v1, v0

    .line 340
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/ui/v;->a:Lcom/viber/voip/ui/t;

    invoke-static {v0}, Lcom/viber/voip/ui/t;->a(Lcom/viber/voip/ui/t;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    sub-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

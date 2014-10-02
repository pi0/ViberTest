.class Lcom/viber/voip/contacts/ui/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/util/Pair;

.field final synthetic b:Lcom/viber/voip/contacts/ui/au;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/au;Landroid/util/Pair;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/av;->b:Lcom/viber/voip/contacts/ui/au;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/av;->a:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/av;->b:Lcom/viber/voip/contacts/ui/au;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ap;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 227
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/av;->b:Lcom/viber/voip/contacts/ui/au;

    iget-object v2, v0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/av;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/contacts/b/e;

    invoke-static {v2, v0}, Lcom/viber/voip/contacts/ui/ap;->a(Lcom/viber/voip/contacts/ui/ap;Lcom/viber/voip/contacts/b/e;)I

    move-result v2

    .line 228
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/av;->b:Lcom/viber/voip/contacts/ui/au;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ap;->d(Lcom/viber/voip/contacts/ui/ap;)Lcom/viber/voip/contacts/a/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/contacts/a/m;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 235
    :goto_1
    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0x64

    if-gt v1, v3, :cond_1

    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v1

    if-nez v1, :cond_3

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/av;->b:Lcom/viber/voip/contacts/ui/au;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/ui/ap;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 240
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/av;->b:Lcom/viber/voip/contacts/ui/au;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v0}, Lcom/viber/voip/ui/aa;->g()Z

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/av;->b:Lcom/viber/voip/contacts/ui/au;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ap;->c(Lcom/viber/voip/contacts/ui/ap;)I

    move-result v0

    goto :goto_1

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/av;->b:Lcom/viber/voip/contacts/ui/au;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/ui/ap;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_2
.end method

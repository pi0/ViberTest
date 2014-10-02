.class Lcom/viber/voip/contacts/ui/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 209
    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/ap;->a(Lcom/viber/voip/contacts/ui/ap;)Lcom/viber/voip/contacts/ui/bd;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/ui/bd;->b(I)Landroid/util/Pair;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_4

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v0}, Lcom/viber/voip/ui/aa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ap;->b(Lcom/viber/voip/contacts/ui/ap;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1f4

    .line 218
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lcom/viber/voip/contacts/ui/ap;->a(Lcom/viber/voip/contacts/ui/ap;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    iget-object v2, v2, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/viber/voip/ui/aa;->a(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-static {v2}, Lcom/viber/voip/contacts/ui/ap;->c(Lcom/viber/voip/contacts/ui/ap;)I

    move-result v2

    if-nez v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/ui/ap;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/viber/voip/contacts/ui/ap;->a(Lcom/viber/voip/contacts/ui/ap;I)I

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-static {v2}, Lcom/viber/voip/contacts/ui/ap;->e(Lcom/viber/voip/contacts/ui/ap;)Lcom/viber/voip/gallery/animation/SwipeableHListView;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/contacts/ui/av;

    invoke-direct {v3, p0, v1}, Lcom/viber/voip/contacts/ui/av;-><init>(Lcom/viber/voip/contacts/ui/au;Landroid/util/Pair;)V

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 217
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 244
    :cond_4
    if-eqz v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/aa;->a(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/viber/voip/contacts/ui/ap;->a(Lcom/viber/voip/contacts/ui/ap;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/au;->a:Lcom/viber/voip/contacts/ui/ap;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/ap;->b(Lcom/viber/voip/contacts/ui/ap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/aa;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

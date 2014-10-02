.class Lcom/viber/voip/messages/ui/dr;
.super Lcom/viber/voip/contacts/a/k;
.source "SourceFile"


# instance fields
.field final synthetic i:Lcom/viber/voip/messages/ui/dp;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/dp;Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/viber/voip/messages/ui/dr;->i:Lcom/viber/voip/messages/ui/dp;

    .line 270
    invoke-direct {p0, p2, p3}, Lcom/viber/voip/contacts/a/k;-><init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V

    .line 271
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 274
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/a/k;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 276
    iget-object v2, v0, Lcom/viber/voip/contacts/a/l;->e:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 279
    if-nez p2, :cond_0

    .line 280
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dr;->i:Lcom/viber/voip/messages/ui/dp;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/dp;->b(Lcom/viber/voip/messages/ui/dp;)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 282
    :cond_0
    return-object v1
.end method

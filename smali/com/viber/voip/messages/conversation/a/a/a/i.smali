.class Lcom/viber/voip/messages/conversation/a/a/a/i;
.super Lcom/viber/voip/ui/b/a;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/ui/b/a",
        "<",
        "Lcom/viber/voip/messages/conversation/a/a/a;",
        "Lcom/viber/voip/messages/conversation/a/a/b/a/b;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/a/a/k;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/a;-><init>(Landroid/view/View;)V

    .line 26
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 28
    const v0, 0x7f07031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->a:Landroid/widget/ImageView;

    .line 30
    const v0, 0x7f0700d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->b:Landroid/widget/CheckBox;

    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 34
    const v0, 0x7f070321

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->c:Landroid/view/View;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 41
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->a:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->b:Landroid/widget/CheckBox;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->b:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->b:Landroid/widget/CheckBox;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->o()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->c:Landroid/view/View;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 41
    goto :goto_0

    :cond_3
    move v0, v2

    .line 44
    goto :goto_1

    :cond_4
    move v1, v2

    .line 47
    goto :goto_2
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    check-cast p1, Lcom/viber/voip/messages/conversation/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/i;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/i;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 55
    :cond_0
    return-void
.end method

.class public Lcom/viber/voip/contacts/ui/by;
.super Lcom/viber/voip/contacts/ui/ContactsFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->b(Z)V

    .line 55
    return-void
.end method

.method protected l()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method protected m()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method protected n()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected o()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/contacts/ui/by;->g:I

    .line 20
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 60
    const v0, 0x7f07043c

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0701de

    .line 25
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 29
    :cond_0
    return-object v0
.end method

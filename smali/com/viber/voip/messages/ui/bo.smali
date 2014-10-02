.class public abstract Lcom/viber/voip/messages/ui/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/actionbarsherlock/view/ActionMode$Callback;"
    }
.end annotation


# instance fields
.field private a:Lcom/actionbarsherlock/view/ActionMode;

.field private b:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/bo;->b:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 54
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bo;->a:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/bo;->a:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 56
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {p2}, Lcom/viber/voip/util/ca;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f030012

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v1, p0, Lcom/viber/voip/messages/ui/bo;->a:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/view/ActionMode;->setCustomView(Landroid/view/View;)V

    move-object v1, v0

    .line 60
    :cond_1
    const v0, 0x7f0700ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v0, 0x7f0700ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void

    .line 56
    :cond_2
    const v0, 0x7f030011

    goto :goto_0
.end method

.method public a(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bo;->a:Lcom/actionbarsherlock/view/ActionMode;

    .line 102
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bo;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/bo;->d()V

    .line 38
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bo;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 82
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bo;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/bo;->d()V

    .line 43
    return-void
.end method

.method public b(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bo;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 86
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/bo;->d()V

    .line 87
    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bo;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract d()V
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bo;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    invoke-virtual {p0, p0}, Lcom/viber/voip/messages/ui/bo;->a(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/bo;->a:Lcom/actionbarsherlock/view/ActionMode;

    .line 94
    return-void
.end method

.method public f()Ljava/util/LinkedList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/bo;->b:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bo;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    return v0
.end method

.method public h()Lcom/actionbarsherlock/view/ActionMode;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bo;->a:Lcom/actionbarsherlock/view/ActionMode;

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bo;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 77
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/bo;->d()V

    .line 78
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bo;->a:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 98
    return-void
.end method

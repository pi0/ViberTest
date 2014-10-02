.class public abstract Lcom/viber/voip/messages/ui/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/actionbarsherlock/view/ActionMode$Callback;"
    }
.end annotation


# instance fields
.field protected a:Lcom/actionbarsherlock/view/ActionMode;

.field private b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/br;->b:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
.end method

.method public a()Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/br;->b:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 49
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->a:Lcom/actionbarsherlock/view/ActionMode;

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->a:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->a:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 54
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v1, p0, Lcom/viber/voip/messages/ui/br;->a:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/view/ActionMode;->setCustomView(Landroid/view/View;)V

    move-object v1, v0

    .line 58
    :cond_2
    const v0, 0x7f0700ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v0, 0x7f0700ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public a(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/viber/voip/messages/ui/br;->a:Lcom/actionbarsherlock/view/ActionMode;

    .line 113
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
    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/br;->f()V

    .line 42
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/br;->f()V

    .line 37
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 80
    return-void
.end method

.method public a(Ljava/util/Map;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 87
    if-eqz p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 91
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/br;->f()V

    .line 92
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    invoke-virtual {p0, p0}, Lcom/viber/voip/messages/ui/br;->a(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/br;->a:Lcom/actionbarsherlock/view/ActionMode;

    .line 103
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/ui/br;->a(Ljava/util/Map;Z)V

    .line 84
    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 75
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/br;->f()V

    .line 76
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p0}, Lcom/viber/voip/messages/ui/br;->a(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/br;->a:Lcom/actionbarsherlock/view/ActionMode;

    .line 96
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->a:Lcom/actionbarsherlock/view/ActionMode;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/viber/voip/messages/ui/br;->a:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 109
    :cond_0
    return-void
.end method

.method protected abstract f()V
.end method

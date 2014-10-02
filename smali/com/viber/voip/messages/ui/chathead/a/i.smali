.class public abstract Lcom/viber/voip/messages/ui/chathead/a/i;
.super Lcom/viber/voip/messages/ui/MessagesFragment;
.source "SourceFile"


# instance fields
.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c(I)V
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/messages/ui/MessagesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 35
    const v1, 0x7f030103

    invoke-virtual {p1, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 38
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 39
    new-instance v3, Lcom/viber/voip/messages/ui/chathead/a/j;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/ui/chathead/a/j;-><init>(Lcom/viber/voip/messages/ui/chathead/a/i;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 46
    const v1, 0x7f070136

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/i;->f:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f070137

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/i;->g:Landroid/widget/TextView;

    .line 49
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/i;->f:Landroid/widget/TextView;

    const v2, 0x7f0c02b2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/a/i;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    new-instance v1, Lcom/viber/voip/messages/ui/chathead/a/k;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/chathead/a/k;-><init>(Lcom/viber/voip/messages/ui/chathead/a/i;)V

    .line 69
    const v2, 0x7f070365

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v2, 0x7f070368

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v2, 0x7f070367

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a/b;

    .line 84
    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/a/a/b;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a;

    .line 85
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/a;->a()J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;JZ)V

    .line 86
    return-void
.end method

.method public t()V
    .locals 0

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/a/i;->e()V

    .line 78
    return-void
.end method

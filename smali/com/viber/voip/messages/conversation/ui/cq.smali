.class public Lcom/viber/voip/messages/conversation/ui/cq;
.super Lcom/viber/voip/messages/ui/bo;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/ui/bo",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/viber/voip/messages/conversation/ui/cr;

.field private b:Lcom/viber/voip/messages/conversation/w;

.field private c:Lcom/viber/voip/app/ViberFragmentActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/ImageButton;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/view/View;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/conversation/ui/cr;Lcom/viber/voip/app/ViberFragmentActivity;Lcom/viber/voip/messages/conversation/w;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/bo;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->h:Z

    .line 52
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/cq;->c:Lcom/viber/voip/app/ViberFragmentActivity;

    .line 53
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    .line 54
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/ui/cq;->b:Lcom/viber/voip/messages/conversation/w;

    .line 55
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/ui/cq;->d:Landroid/view/View;

    .line 59
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->c()V

    .line 60
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->d:Landroid/view/View;

    const v1, 0x7f0702f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->e:Landroid/widget/ImageButton;

    .line 64
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->d:Landroid/view/View;

    const v1, 0x7f0702ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->f:Landroid/widget/ImageButton;

    .line 65
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->d:Landroid/view/View;

    const v1, 0x7f0702f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->g:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->f()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/ui/cr;->a(Ljava/util/List;)V

    .line 72
    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/ui/cq;->h:Z

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/ui/cr;->a(Z)V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->c:Lcom/viber/voip/app/ViberFragmentActivity;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->c:Lcom/viber/voip/app/ViberFragmentActivity;

    invoke-virtual {v0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->c:Lcom/viber/voip/app/ViberFragmentActivity;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->c:Lcom/viber/voip/app/ViberFragmentActivity;

    invoke-virtual {v0}, Lcom/viber/voip/app/ViberFragmentActivity;->getActionBarSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    .line 109
    if-eqz p1, :cond_2

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setUiOptions(I)V

    .line 111
    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchInvalidateOptionsMenu()V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/cq;->d(Ljava/lang/Object;)V

    .line 120
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/viber/voip/messages/conversation/ui/cq;->h:Z

    .line 121
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->k()V

    .line 123
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/ui/cq;->h:Z

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/ui/cr;->e(Z)V

    .line 124
    :cond_1
    return-void

    .line 114
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setUiOptions(I)V

    .line 115
    invoke-virtual {v0}, Lcom/actionbarsherlock/ActionBarSherlock;->dispatchInvalidateOptionsMenu()V

    .line 116
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->j()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->h:Z

    return v0
.end method

.method public a(J)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    .line 91
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/cq;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/cq;->b(Ljava/lang/Object;)V

    .line 93
    const/4 v0, 0x0

    .line 99
    :goto_0
    return v0

    .line 95
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a(Ljava/lang/Object;)V

    .line 96
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->c:Lcom/viber/voip/app/ViberFragmentActivity;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->c:Lcom/viber/voip/app/ViberFragmentActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cq;->c:Lcom/viber/voip/app/ViberFragmentActivity;

    const v2, 0x7f0c03bc

    invoke-virtual {v1, v2}, Lcom/viber/voip/app/ViberFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->g()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/conversation/ui/cq;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 134
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/ui/cq;->h:Z

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/ui/cr;->e(Z)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cq;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->g()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 198
    return-void

    .line 197
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 174
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 159
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->g()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/cq;->b:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->i()V

    .line 166
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->b()V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cq;->b:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/v;->i()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/ui/cq;->b(Ljava/util/Collection;)V

    .line 164
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/ui/cr;->q()V

    goto :goto_1

    .line 169
    :pswitch_1
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->e()V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x7f070451
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a/k;

    .line 77
    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a(Ljava/lang/Object;)V

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->b()V

    .line 85
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cq;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->g()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    return-void

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/cq;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0702f1

    if-ne v0, v1, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->e()V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0702ef

    if-ne v0, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->g()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cq;->b:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->i()V

    .line 212
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->b()V

    goto :goto_0

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->b:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->i()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/cq;->b(Ljava/util/Collection;)V

    .line 210
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/ui/cr;->q()V

    goto :goto_1
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/ui/cr;->r()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/ui/cq;->a(Lcom/actionbarsherlock/view/ActionMode;)V

    .line 143
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->b()V

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 2
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->a:Lcom/viber/voip/messages/conversation/ui/cr;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/ui/cr;->s()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/cq;->h:Z

    .line 182
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/cq;->i()V

    .line 183
    return-void
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

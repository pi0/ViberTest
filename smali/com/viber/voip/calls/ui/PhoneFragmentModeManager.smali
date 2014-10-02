.class public Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;
.super Lcom/viber/voip/messages/ui/bo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/ui/bo",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/viber/voip/calls/ui/n;

.field private b:Lcom/viber/voip/calls/a/a;

.field private c:Lcom/viber/voip/calls/ui/PhoneFragment;

.field private d:Lcom/actionbarsherlock/view/MenuItem;

.field private e:Lcom/actionbarsherlock/view/MenuItem;

.field private f:Z

.field private g:Lcom/viber/voip/calls/entities/AggregatedCallEntity;


# direct methods
.method public constructor <init>(Lcom/viber/voip/calls/ui/n;Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/a/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/bo;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f:Z

    .line 112
    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(Z)V

    .line 113
    iput-object p2, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    .line 114
    iput-object p1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a:Lcom/viber/voip/calls/ui/n;

    .line 115
    iput-object p3, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->b:Lcom/viber/voip/calls/a/a;

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/calls/ui/n;Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/a/a;Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;-><init>(Lcom/viber/voip/calls/ui/n;Lcom/viber/voip/calls/ui/PhoneFragment;Lcom/viber/voip/calls/a/a;)V

    .line 92
    if-eqz p4, :cond_0

    .line 93
    invoke-static {p4}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->a(Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f:Z

    .line 95
    invoke-static {p4}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;->b(Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(Ljava/util/Collection;)V

    .line 97
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f:Z

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/calls/ui/m;

    invoke-direct {v1, p0}, Lcom/viber/voip/calls/ui/m;-><init>(Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/HomeActivity;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/viber/voip/HomeActivity;->b(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a:Lcom/viber/voip/calls/ui/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a:Lcom/viber/voip/calls/ui/n;

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/calls/ui/n;->a(Ljava/util/List;)V

    .line 284
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager$PhoneFragmentModeManagerData;-><init>(Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;Lcom/viber/voip/calls/ui/m;)V

    return-object v0
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 146
    .line 147
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f:Z

    if-nez v0, :cond_5

    .line 148
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 150
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v3}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v4

    .line 152
    if-eq v0, v4, :cond_1

    .line 153
    if-ne v4, v1, :cond_3

    .line 154
    invoke-virtual {v3}, Landroid/widget/ListView;->clearChoices()V

    .line 158
    :cond_0
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 159
    if-ne v0, v1, :cond_4

    .line 160
    invoke-virtual {v3, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 165
    :cond_1
    :goto_2
    return-void

    .line 148
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_3
    if-ne v4, v2, :cond_0

    .line 156
    invoke-virtual {v3}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_1

    .line 161
    :cond_4
    if-nez v0, :cond_1

    .line 162
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/calls/entities/AggregatedCallEntity;)V
    .locals 4
    .parameter

    .prologue
    .line 293
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-["

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "["

    const-string/jumbo v3, "#\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "]"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 296
    const-string/jumbo v1, "Close"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 298
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f:Z

    if-eq v0, p1, :cond_0

    .line 169
    iput-boolean p1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f:Z

    .line 170
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(I)V

    .line 171
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->i()V

    .line 173
    :cond_0
    return-void
.end method

.method public a(ILcom/viber/voip/calls/entities/AggregatedCallEntity;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 123
    .line 125
    iget-boolean v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f:Z

    if-eqz v1, :cond_0

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->b(Ljava/lang/Object;)V

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(Ljava/lang/Object;)V

    .line 131
    const/4 v0, 0x1

    .line 132
    iput-object p2, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->g:Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c05f5

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->g()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 143
    :cond_0
    return-void
.end method

.method public b(ILcom/viber/voip/calls/entities/AggregatedCallEntity;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 196
    iget-boolean v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f:Z

    if-nez v1, :cond_1

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->d(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(Z)V

    .line 199
    iput-object p2, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->g:Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    .line 200
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a:Lcom/viber/voip/calls/ui/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a:Lcom/viber/voip/calls/ui/n;

    invoke-interface {v1}, Lcom/viber/voip/calls/ui/n;->e()V

    .line 203
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f:Z

    return v0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->h()Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->b()V

    .line 240
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->g()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 242
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->g()I

    move-result v0

    .line 243
    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->j()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a:Lcom/viber/voip/calls/ui/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a:Lcom/viber/voip/calls/ui/n;

    invoke-interface {v0}, Lcom/viber/voip/calls/ui/n;->e()V

    .line 249
    :cond_1
    return-void

    .line 240
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->f:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->j()V

    .line 290
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 253
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 255
    :sswitch_0
    iget-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v2}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v2}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 257
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->g()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->i()V

    .line 259
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 260
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->w()V

    goto :goto_0

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->b:Lcom/viber/voip/calls/a/a;

    invoke-virtual {v3}, Lcom/viber/voip/calls/a/a;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->b(Ljava/util/Collection;)V

    .line 263
    :goto_1
    if-ge v1, v2, :cond_2

    .line 264
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->c:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v3}, Lcom/viber/voip/calls/ui/PhoneFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a:Lcom/viber/voip/calls/ui/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a:Lcom/viber/voip/calls/ui/n;

    invoke-interface {v1}, Lcom/viber/voip/calls/ui/n;->d()V

    goto :goto_0

    .line 273
    :sswitch_1
    invoke-direct {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->k()V

    goto :goto_0

    .line 276
    :sswitch_2
    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->g:Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->g:Lcom/viber/voip/calls/entities/AggregatedCallEntity;

    invoke-virtual {p0, v1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(Lcom/viber/voip/calls/entities/AggregatedCallEntity;)V

    goto :goto_0

    .line 253
    :sswitch_data_0
    .sparse-switch
        0x7f070451 -> :sswitch_0
        0x7f070452 -> :sswitch_1
        0x7f070492 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-virtual {p0, v1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(Z)V

    .line 178
    invoke-direct {p0, v2}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->b(Z)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(Lcom/actionbarsherlock/view/ActionMode;)V

    .line 180
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->b()V

    .line 182
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 183
    const v3, 0x7f100021

    invoke-virtual {v0, v3, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 185
    const v0, 0x7f070452

    invoke-interface {p2, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->d:Lcom/actionbarsherlock/view/MenuItem;

    .line 186
    iget-object v3, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->d:Lcom/actionbarsherlock/view/MenuItem;

    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->g()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 188
    const v0, 0x7f070492

    invoke-interface {p2, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->e:Lcom/actionbarsherlock/view/MenuItem;

    .line 189
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->e:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 191
    invoke-direct {p0, v2}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->b(Z)V

    .line 192
    return v1

    :cond_0
    move v0, v2

    .line 186
    goto :goto_0
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 1
    .parameter

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a(Z)V

    .line 219
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->b(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->i()V

    .line 222
    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a:Lcom/viber/voip/calls/ui/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/calls/ui/PhoneFragmentModeManager;->a:Lcom/viber/voip/calls/ui/n;

    invoke-interface {v0}, Lcom/viber/voip/calls/ui/n;->e()V

    .line 223
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

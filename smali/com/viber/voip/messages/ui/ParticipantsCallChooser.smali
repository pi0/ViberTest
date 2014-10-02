.class public Lcom/viber/voip/messages/ui/ParticipantsCallChooser;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/viber/provider/e;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/messages/adapters/l;

.field private c:Lcom/viber/voip/messages/i;

.field private d:Lcom/viber/voip/messages/conversation/ap;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c04ab

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 61
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 78
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "thread_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 80
    cmp-long v0, v7, v2

    if-nez v0, :cond_0

    .line 81
    const-string/jumbo v0, "handleIntent ERROR Thread id not found in incoming intent!"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->a(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->finish()V

    .line 85
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/conversation/ap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v4

    iget-object v5, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->c:Lcom/viber/voip/messages/i;

    move-object v1, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/ap;-><init>(Landroid/content/Context;ZZLandroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->d:Lcom/viber/voip/messages/conversation/ap;

    .line 86
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->d:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->n()V

    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->d:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0, v7, v8}, Lcom/viber/voip/messages/conversation/ap;->b(J)V

    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->d:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->e()V

    .line 90
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 147
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v2, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->d:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->b:Lcom/viber/voip/messages/adapters/l;

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Lcom/viber/voip/messages/adapters/l;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->d:Lcom/viber/voip/messages/conversation/ap;

    invoke-direct {v0, p0, v2, v1}, Lcom/viber/voip/messages/adapters/l;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ap;Z)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->b:Lcom/viber/voip/messages/adapters/l;

    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->b:Lcom/viber/voip/messages/adapters/l;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 128
    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->b:Lcom/viber/voip/messages/adapters/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/l;->notifyDataSetChanged()V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->b()V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->c:Lcom/viber/voip/messages/i;

    .line 49
    const v0, 0x7f0300ef

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->a()V

    .line 52
    const v0, 0x7f07033a

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->e:Landroid/widget/ListView;

    .line 53
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->f:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->a(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onDestroy()V

    .line 142
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->d:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->m()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->b:Lcom/viber/voip/messages/adapters/l;

    .line 144
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ar;

    .line 95
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ar;->h()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {v0}, Lcom/viber/voip/util/gk;->a(Lcom/viber/voip/messages/conversation/ar;)Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v2, Lcom/viber/voip/messages/ui/ds;

    invoke-direct {v2, p0, v1}, Lcom/viber/voip/messages/ui/ds;-><init>(Lcom/viber/voip/messages/ui/ParticipantsCallChooser;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 70
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->finish()V

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onResume()V

    .line 113
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->b()V

    .line 114
    return-void
.end method

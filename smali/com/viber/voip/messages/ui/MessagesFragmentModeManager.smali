.class public Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;
.super Lcom/viber/voip/messages/ui/br;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/messages/ui/br",
        "<",
        "Ljava/lang/Long;",
        "Lcom/viber/voip/messages/ui/dl;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:Lcom/viber/voip/messages/ui/dk;

.field protected c:Lcom/viber/voip/messages/ui/dn;

.field protected d:Landroid/app/AlertDialog;

.field private e:Lcom/viber/voip/ui/k;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/actionbarsherlock/view/MenuItem;

.field private i:Lcom/actionbarsherlock/view/MenuItem;

.field private j:Lcom/actionbarsherlock/view/MenuItem;

.field private k:Lcom/actionbarsherlock/view/MenuItem;

.field private l:Lcom/actionbarsherlock/view/MenuItem;

.field private m:Lcom/actionbarsherlock/view/MenuItem;

.field private n:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/ui/dk;Lcom/viber/voip/messages/ui/dn;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/br;-><init>()V

    .line 169
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->g:Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    .line 210
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    .line 211
    iput-object p2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    .line 213
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->p()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lcom/viber/voip/ui/k;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v1}, Lcom/viber/voip/messages/ui/dk;->p()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/ui/dh;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/ui/dh;-><init>(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)V

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/ui/k;-><init>(Landroid/content/Context;Lcom/viber/voip/ui/ab;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e:Lcom/viber/voip/ui/k;

    .line 237
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/ui/dk;Lcom/viber/voip/messages/ui/dn;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;Lcom/viber/voip/messages/ui/do;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;-><init>(Lcom/viber/voip/messages/ui/dk;Lcom/viber/voip/messages/ui/dn;)V

    .line 183
    invoke-interface {p1}, Lcom/viber/voip/messages/ui/dk;->p()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->n:Z

    .line 185
    if-eqz p3, :cond_0

    .line 186
    iget v0, p3, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->a:I

    iput v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    .line 187
    iget-object v0, p3, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->g:Ljava/lang/String;

    .line 189
    iget-object v0, p3, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->c:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Ljava/util/Map;)V

    .line 191
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 193
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/messages/ui/dg;

    invoke-direct {v3, p0, p4, p3}, Lcom/viber/voip/messages/ui/dg;-><init>(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;Lcom/viber/voip/messages/ui/do;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;)V

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->n:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x578

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    :cond_0
    return-void

    .line 193
    :cond_1
    const-wide/16 v0, 0x3e8

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 625
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 626
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d:Landroid/app/AlertDialog;

    .line 627
    new-instance v2, Lcom/viber/voip/messages/ui/di;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/ui/di;-><init>(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)V

    .line 652
    const v0, 0x7f07023c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 653
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    const v3, 0x7f0c02b6

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 656
    const v0, 0x7f07023d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 657
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    const v3, 0x7f0c0329

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 660
    const v0, 0x7f07023e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 661
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    const v2, 0x7f0c049e

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 664
    const v0, 0x7f070122

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 666
    if-eqz p2, :cond_0

    .line 667
    const v1, 0x7f0c03cf

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 671
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c03d1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 672
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d:Landroid/app/AlertDialog;

    const v1, 0x7f0c03ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 675
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 676
    return-void

    .line 669
    :cond_0
    const v1, 0x7f0c03d0

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 693
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "343"

    .line 694
    if-eqz p1, :cond_0

    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Mute"

    .line 695
    :goto_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3, v1, v0}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 696
    return-void

    .line 694
    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Cancel"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "Leave and Delete"

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->z()Z

    move-result v0

    return v0
.end method

.method private b(Landroid/app/Activity;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 679
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "343"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 681
    const v1, 0x7f0c03ce

    if-eqz p2, :cond_0

    const v0, 0x7f0c03cf

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/messages/ui/dj;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/ui/dj;-><init>(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)V

    const/4 v4, 0x0

    const v5, 0x7f0c049e

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d:Landroid/app/AlertDialog;

    .line 690
    return-void

    .line 681
    :cond_0
    const v0, 0x7f0c03d0

    goto :goto_0
.end method

.method private d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 263
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(I)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(I)V

    goto :goto_0
.end method

.method private e(Z)V
    .locals 2
    .parameter

    .prologue
    .line 299
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->p()Landroid/app/Activity;

    move-result-object v0

    .line 300
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/viber/voip/HomeActivity;

    if-eqz v1, :cond_0

    .line 301
    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/viber/voip/HomeActivity;->b(Z)V

    .line 303
    :cond_0
    return-void

    .line 299
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private z()Z
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/adapters/a/a;)Lcom/viber/voip/messages/ui/dl;
    .locals 4
    .parameter

    .prologue
    .line 240
    new-instance v0, Lcom/viber/voip/messages/ui/dl;

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->e()Z

    move-result v1

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->B()Z

    move-result v2

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->C()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/messages/ui/dl;-><init>(ZZZ)V

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 290
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-eq v0, p1, :cond_0

    .line 291
    iput p1, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    .line 292
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(I)V

    .line 293
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->p()V

    .line 294
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    iget v1, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/dn;->b(I)V

    .line 296
    :cond_0
    return-void
.end method

.method protected a(Landroid/app/Activity;ZZZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 611
    if-nez p5, :cond_3

    if-nez p3, :cond_0

    if-eqz p2, :cond_3

    .line 612
    :cond_0
    if-eqz p4, :cond_2

    .line 613
    invoke-direct {p0, p1, p3}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(Landroid/app/Activity;Z)V

    .line 622
    :cond_1
    :goto_0
    return-void

    .line 615
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 618
    :cond_3
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "330"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 620
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/dn;->b(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Lcom/actionbarsherlock/view/Menu;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 489
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->p()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    const v0, 0x7f07043b

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->j:Lcom/actionbarsherlock/view/MenuItem;

    .line 491
    const v0, 0x7f070455

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->k:Lcom/actionbarsherlock/view/MenuItem;

    .line 492
    const v0, 0x7f070456

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->l:Lcom/actionbarsherlock/view/MenuItem;

    .line 493
    const v0, 0x7f07043d

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->m:Lcom/actionbarsherlock/view/MenuItem;

    .line 495
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->j:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 497
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->j:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/SearchView;

    .line 498
    const v4, 0x7f0c02f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 499
    const v4, 0x7f09009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHintColor(I)V

    .line 501
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 502
    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->m:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/viber/voip/util/gl;->c(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 503
    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 504
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->m:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 510
    :cond_2
    :goto_1
    if-eqz p2, :cond_0

    .line 511
    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e:Lcom/viber/voip/ui/k;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->j:Lcom/actionbarsherlock/view/MenuItem;

    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-ne v0, v5, :cond_4

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v2}, Lcom/viber/voip/ui/k;->a(Lcom/actionbarsherlock/view/MenuItem;ZLjava/lang/String;)V

    .line 512
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-ne v0, v5, :cond_0

    .line 513
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c(Z)V

    goto :goto_0

    .line 505
    :cond_3
    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 506
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->m:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 511
    goto :goto_2
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->p()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->p()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/forward/ForwardActivity;->a(Z)V

    .line 253
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d(Z)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c(Z)V

    .line 256
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d(Z)V

    goto :goto_0
.end method

.method public a(JLcom/viber/voip/messages/ui/dl;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 306
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-nez v0, :cond_1

    .line 307
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dn;->d()V

    .line 309
    :cond_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->q:Lcom/viber/voip/a/ad;

    invoke-virtual {v1}, Lcom/viber/voip/a/ad;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 310
    const/4 v0, 0x1

    .line 312
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 347
    .line 348
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-ne v0, v2, :cond_7

    .line 349
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v1

    .line 351
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v3}, Lcom/viber/voip/messages/ui/dk;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 352
    invoke-virtual {v3}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v4

    .line 353
    if-eq v0, v4, :cond_3

    .line 354
    if-ne v4, v1, :cond_5

    .line 355
    invoke-virtual {v3}, Landroid/widget/ListView;->clearChoices()V

    .line 359
    :cond_2
    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 360
    if-ne v0, v1, :cond_6

    .line 361
    invoke-virtual {v3, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 366
    :cond_3
    :goto_2
    return-void

    .line 349
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 356
    :cond_5
    if-ne v4, v2, :cond_2

    .line 357
    invoke-virtual {v3}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_1

    .line 362
    :cond_6
    if-nez v0, :cond_3

    .line 363
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 537
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-nez v0, :cond_1

    .line 538
    if-eqz p1, :cond_0

    .line 539
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->d()V

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 542
    if-eqz p1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->f()V

    goto :goto_0
.end method

.method public b(JLcom/viber/voip/messages/ui/dl;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 326
    .line 327
    iget v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-ne v2, v1, :cond_0

    .line 328
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Ljava/lang/Object;)V

    .line 336
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    .line 333
    goto :goto_0
.end method

.method public c(I)V
    .locals 2
    .parameter

    .prologue
    .line 549
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->m:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 550
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->m:Lcom/actionbarsherlock/view/MenuItem;

    if-lez p1, :cond_1

    const v0, 0x7f0202fb

    :goto_0
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setIcon(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 552
    :cond_0
    return-void

    .line 550
    :cond_1
    const v0, 0x7f0202fa

    goto :goto_0
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 703
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->p()Landroid/app/Activity;

    move-result-object v0

    .line 704
    instance-of v1, v0, Lcom/viber/voip/HomeActivity;

    if-eqz v1, :cond_0

    .line 705
    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/viber/voip/HomeActivity;->a(Z)V

    .line 707
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->p()V

    .line 708
    return-void
.end method

.method protected f()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 403
    iget v1, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-ne v0, v1, :cond_4

    .line 404
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->o()V

    .line 405
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->h:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->h:Lcom/actionbarsherlock/view/MenuItem;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b()I

    move-result v2

    if-lez v2, :cond_3

    :goto_0
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b()I

    move-result v0

    .line 410
    if-nez v0, :cond_1

    .line 411
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e()V

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dn;->d()V

    .line 420
    :cond_2
    :goto_1
    return-void

    .line 406
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 417
    :cond_4
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-nez v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e:Lcom/viber/voip/ui/k;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/k;->a(Z)V

    goto :goto_1
.end method

.method public g()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;-><init>(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)V

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->p()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/HomeActivity;

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->p()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/messages/ui/forward/ForwardActivity;

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 282
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 286
    iget v1, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e()V

    .line 323
    :cond_0
    return-void
.end method

.method public o()V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    .line 341
    :goto_0
    if-eqz v0, :cond_0

    .line 342
    const v1, 0x7f0c054a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 344
    :cond_0
    return-void

    .line 340
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 424
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 480
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 426
    :pswitch_1
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v2}, Lcom/viber/voip/messages/ui/dk;->getListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v2}, Lcom/viber/voip/messages/ui/dk;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 428
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c()V

    .line 430
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v1}, Lcom/viber/voip/messages/ui/dk;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0

    .line 433
    :cond_1
    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v3}, Lcom/viber/voip/messages/ui/dk;->m()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(Ljava/util/Map;)V

    .line 434
    :goto_1
    if-ge v1, v2, :cond_0

    .line 435
    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v3}, Lcom/viber/voip/messages/ui/dk;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 445
    :pswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->u()V

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x7f070451
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 370
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(I)V

    .line 371
    invoke-direct {p0, v2}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e(Z)V

    .line 372
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Lcom/actionbarsherlock/view/ActionMode;)V

    .line 373
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->o()V

    .line 375
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 376
    const v3, 0x7f100005

    invoke-virtual {v0, v3, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 378
    const v0, 0x7f070452

    invoke-interface {p2, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->h:Lcom/actionbarsherlock/view/MenuItem;

    .line 379
    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->h:Lcom/actionbarsherlock/view/MenuItem;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 381
    const v0, 0x7f070453

    invoke-interface {p2, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->i:Lcom/actionbarsherlock/view/MenuItem;

    .line 382
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->i:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 383
    return v1

    :cond_0
    move v0, v2

    .line 379
    goto :goto_0
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 1
    .parameter

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(I)V

    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e(Z)V

    .line 390
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c()V

    .line 392
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dn;->d()V

    .line 393
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public p()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 521
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->p()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-eq v0, v3, :cond_6

    move v0, v1

    .line 525
    :goto_1
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->j:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->j:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v2, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 526
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->k:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->k:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 527
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->l:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->l:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 528
    :cond_4
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->m:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->m:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v2, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 529
    :cond_5
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e:Lcom/viber/voip/ui/k;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/k;->a(Z)V

    goto :goto_0

    .line 523
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(Z)V

    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public s()V
    .locals 2

    .prologue
    .line 564
    iget v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->g()Z

    .line 567
    :cond_0
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 570
    const-string/jumbo v0, ""

    .line 571
    iget v1, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 572
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 574
    :cond_0
    return-object v0
.end method

.method protected u()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 579
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    .line 580
    :goto_0
    if-nez v1, :cond_2

    .line 608
    :cond_0
    :goto_1
    return-void

    .line 579
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v6

    .line 585
    :goto_2
    if-eqz v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v6

    move v4, v6

    move v2, v3

    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/dl;

    .line 593
    if-nez v2, :cond_8

    iget-boolean v8, v0, Lcom/viber/voip/messages/ui/dl;->a:Z

    if-eqz v8, :cond_8

    move v2, v6

    .line 599
    :cond_4
    :goto_4
    iget-boolean v8, v0, Lcom/viber/voip/messages/ui/dl;->a:Z

    if-eqz v8, :cond_5

    .line 600
    iget-boolean v8, v0, Lcom/viber/voip/messages/ui/dl;->b:Z

    and-int/2addr v4, v8

    .line 602
    :cond_5
    iget-boolean v8, v0, Lcom/viber/voip/messages/ui/dl;->c:Z

    if-eqz v8, :cond_6

    if-eqz v5, :cond_3

    .line 603
    :cond_6
    iget-boolean v0, v0, Lcom/viber/voip/messages/ui/dl;->c:Z

    and-int/2addr v5, v0

    goto :goto_3

    :cond_7
    move v0, v3

    .line 582
    goto :goto_2

    .line 595
    :cond_8
    if-eqz v2, :cond_4

    iget-boolean v8, v0, Lcom/viber/voip/messages/ui/dl;->a:Z

    if-eqz v8, :cond_4

    move v3, v6

    .line 596
    goto :goto_4

    :cond_9
    move-object v0, p0

    .line 607
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Landroid/app/Activity;ZZZZ)V

    goto :goto_1
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/dk;->l()Z

    move-result v0

    return v0
.end method

.method public w()V
    .locals 0

    .prologue
    .line 711
    return-void
.end method

.method protected x()V
    .locals 1

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 719
    :cond_0
    return-void
.end method

.method public y()V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->e:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->b()V

    .line 723
    return-void
.end method

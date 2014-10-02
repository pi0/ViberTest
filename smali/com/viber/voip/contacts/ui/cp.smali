.class public Lcom/viber/voip/contacts/ui/cp;
.super Lcom/viber/voip/contacts/ui/ap;
.source "SourceFile"


# instance fields
.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/cp;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-super {p0}, Lcom/viber/voip/contacts/ui/ap;->k()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 71
    const v1, 0x7f0c02b5

    new-instance v2, Lcom/viber/voip/contacts/ui/cq;

    invoke-direct {v2, p0}, Lcom/viber/voip/contacts/ui/cq;-><init>(Lcom/viber/voip/contacts/ui/cp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    const v1, 0x7f0c02b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 79
    return-void
.end method


# virtual methods
.method protected a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cp;->g:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cp;->g:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cp;->g:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 86
    :cond_0
    return-void
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/cp;->h:Z

    return v0
.end method

.method protected j()Lcom/viber/voip/contacts/ui/cb;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/viber/voip/contacts/ui/ct;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/contacts/ui/ct;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/viber/voip/contacts/ui/co;)V

    return-object v0
.end method

.method protected k()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 40
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/cp;->h:Z

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    const-string/jumbo v1, "added_participants"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/cp;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/ui/cb;->e()[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 45
    const-string/jumbo v1, "removed_participants"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/cp;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/ui/cb;->f()[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cp;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cp;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/ui/cb;->a(J)[Lcom/viber/voip/messages/controller/GroupController$GroupMember;

    move-result-object v0

    .line 53
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 57
    array-length v1, v0

    if-le v1, v3, :cond_2

    .line 58
    const v1, 0x7f0c06a4

    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/ui/cp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    const v2, 0x7f0c06a6

    new-array v3, v3, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/contacts/ui/cp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/viber/voip/contacts/ui/cp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_2
    const v1, 0x7f0c06a3

    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/ui/cp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/viber/voip/messages/controller/GroupController$GroupMember;->a:Lcom/viber/jni/GroupUserInfo;

    .line 63
    const v2, 0x7f0c06a5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    invoke-static {v4}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v0, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    :goto_2
    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/viber/voip/contacts/ui/cp;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/viber/jni/GroupUserInfo;->clientName:Ljava/lang/String;

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/ui/ap;->onActivityCreated(Landroid/os/Bundle;)V

    .line 25
    const-string/jumbo v0, "com.viber.voip.action.PUBLIC_GROUP_ADD_PARTICIPANTS"

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/cp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/cp;->h:Z

    .line 26
    return-void
.end method

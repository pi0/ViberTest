.class public Lcom/viber/voip/contacts/ui/InviteContactsListActivity;
.super Lcom/viber/voip/contacts/ui/ContactsListActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactsListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string/jumbo v0, "contact_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 46
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/contacts/ui/bz;

    invoke-direct {v3, p0}, Lcom/viber/voip/contacts/ui/bz;-><init>(Lcom/viber/voip/contacts/ui/InviteContactsListActivity;)V

    invoke-interface {v2, v0, v1, v3}, Lcom/viber/voip/contacts/c/d/b;->a(JLcom/viber/voip/contacts/c/d/h;)V

    goto :goto_0
.end method

.method protected b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/viber/voip/contacts/ui/by;

    invoke-direct {v0}, Lcom/viber/voip/contacts/ui/by;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/ui/ContactsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/InviteContactsListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c04a0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 34
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/InviteContactsListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 35
    return-void
.end method

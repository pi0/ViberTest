.class public Lcom/viber/voip/contacts/ui/PublicGroupInviteContactsListActivity;
.super Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/viber/voip/contacts/ui/cr;

    invoke-direct {v0}, Lcom/viber/voip/contacts/ui/cr;-><init>()V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/ui/ContactsComposeListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/PublicGroupInviteContactsListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c04a0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 15
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/PublicGroupInviteContactsListActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 16
    return-void
.end method

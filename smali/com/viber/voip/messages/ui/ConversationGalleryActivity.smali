.class public Lcom/viber/voip/messages/ui/ConversationGalleryActivity;
.super Lcom/viber/voip/app/ViberSingleFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/viber/voip/app/ViberSingleFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(JLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.messages.ui.GALLERY_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 49
    const-string/jumbo v1, "conversation_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    return-object v0
.end method


# virtual methods
.method protected b()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/bv;

    invoke-direct {v0}, Lcom/viber/voip/messages/conversation/ui/bv;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/bv;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationGalleryActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationGalleryActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationGalleryActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 27
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 43
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberSingleFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 40
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationGalleryActivity;->finish()V

    .line 41
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

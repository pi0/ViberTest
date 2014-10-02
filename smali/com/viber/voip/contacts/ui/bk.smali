.class Lcom/viber/voip/contacts/ui/bk;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bk;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1123
    const-string/jumbo v0, "vo_enabled"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1124
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bk;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Lcom/viber/voip/contacts/ui/ContactsFragment;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bk;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-static {v1, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Lcom/viber/voip/contacts/ui/ContactsFragment;Z)Z

    .line 1126
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bk;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bk;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->b(Lcom/viber/voip/contacts/ui/ContactsFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/bk;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget v2, v2, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bk;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-static {v3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Lcom/viber/voip/contacts/ui/ContactsFragment;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Lcom/viber/voip/contacts/ui/ContactsFragment;Landroid/view/View;IZ)Landroid/view/View;

    .line 1127
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bk;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->c(I)V

    .line 1129
    :cond_0
    return-void
.end method

.class Lcom/viber/voip/contacts/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/contacts/ui/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/u;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/v;->c:Lcom/viber/voip/contacts/ui/u;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/v;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/contacts/ui/v;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 457
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/v;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/v;->c:Lcom/viber/voip/contacts/ui/u;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/u;->a:Lcom/viber/voip/contacts/ui/t;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/t;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->i(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/v;->c:Lcom/viber/voip/contacts/ui/u;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/u;->a:Lcom/viber/voip/contacts/ui/t;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/t;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->j(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/v;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/v;->c:Lcom/viber/voip/contacts/ui/u;

    iget-object v2, v2, Lcom/viber/voip/contacts/ui/u;->a:Lcom/viber/voip/contacts/ui/t;

    iget-object v2, v2, Lcom/viber/voip/contacts/ui/t;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->k(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->setCachedUnknownNumberInfo(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 461
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/v;->c:Lcom/viber/voip/contacts/ui/u;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/u;->a:Lcom/viber/voip/contacts/ui/t;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/t;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/v;->c:Lcom/viber/voip/contacts/ui/u;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/u;->a:Lcom/viber/voip/contacts/ui/t;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/t;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/v;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/v;->c:Lcom/viber/voip/contacts/ui/u;

    iget-object v2, v2, Lcom/viber/voip/contacts/ui/u;->a:Lcom/viber/voip/contacts/ui/t;

    iget-object v2, v2, Lcom/viber/voip/contacts/ui/t;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->k(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/lang/String;Z)V

    .line 465
    :cond_0
    return-void
.end method

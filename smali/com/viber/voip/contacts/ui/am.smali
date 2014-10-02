.class Lcom/viber/voip/contacts/ui/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/block/n;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/b/e;

.field final synthetic b:Lcom/viber/voip/contacts/ui/al;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/al;Lcom/viber/voip/contacts/b/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/am;->b:Lcom/viber/voip/contacts/ui/al;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/am;->a:Lcom/viber/voip/contacts/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/am;->b:Lcom/viber/voip/contacts/ui/al;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/am;->a:Lcom/viber/voip/contacts/b/e;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p1

    move-wide v3, v1

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/am;->b:Lcom/viber/voip/contacts/ui/al;

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/ui/al;->startActivity(Landroid/content/Intent;)V

    .line 191
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/am;->b:Lcom/viber/voip/contacts/ui/al;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 193
    :cond_0
    return-void
.end method

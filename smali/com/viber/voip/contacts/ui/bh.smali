.class Lcom/viber/voip/contacts/ui/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/aj;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bh;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bh;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bp;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bh;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ContactsFragment;->i:Lcom/viber/voip/ui/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/d;->a(I)V

    .line 306
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bh;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ContactsFragment;->c:Lcom/viber/voip/contacts/c/d/b;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bh;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/d/b;->a(Lcom/viber/voip/contacts/c/d/f;)V

    .line 307
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bh;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bh;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/ui/bp;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Lcom/viber/voip/contacts/ui/ContactsFragment;I)I

    .line 314
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bh;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ContactsFragment;->i:Lcom/viber/voip/ui/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/d;->a(I)V

    .line 311
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bh;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v0}, Lcom/viber/voip/ui/ContactsListView;->n()V

    goto :goto_0
.end method

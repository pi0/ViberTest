.class Lcom/viber/voip/contacts/ui/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/contacts/ui/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactsFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bj;->b:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iput-boolean p2, p0, Lcom/viber/voip/contacts/ui/bj;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bj;->b:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ContactsFragment;->i:Lcom/viber/voip/ui/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bj;->b:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v1, v0, Lcom/viber/voip/contacts/ui/ContactsFragment;->i:Lcom/viber/voip/ui/d;

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/bj;->a:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/ui/d;->a(I)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bj;->b:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bj;->b:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v0}, Lcom/viber/voip/ui/ContactsListView;->n()V

    .line 439
    :cond_1
    return-void

    .line 436
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

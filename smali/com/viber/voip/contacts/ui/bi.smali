.class Lcom/viber/voip/contacts/ui/bi;
.super Lcom/viber/voip/util/as;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bi;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-direct {p0}, Lcom/viber/voip/util/as;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bi;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bp;->b()V

    .line 405
    return-void
.end method

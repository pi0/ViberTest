.class Lcom/viber/voip/contacts/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/j;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/j;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->o(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Z

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/j;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->p(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/j;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v3}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->q(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/viber/voip/contacts/ui/j;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v5}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->r(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/bp;->a(ZJJLjava/lang/String;)V

    .line 1013
    return-void
.end method

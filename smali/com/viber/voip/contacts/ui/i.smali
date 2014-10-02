.class Lcom/viber/voip/contacts/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/d/a;

.field final synthetic b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/d/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 961
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/i;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/i;->a:Lcom/viber/voip/contacts/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/i;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/i;->a:Lcom/viber/voip/contacts/d/a;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/d/a;)V

    .line 966
    return-void
.end method

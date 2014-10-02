.class Lcom/viber/voip/contacts/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/r;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/s;->a:Lcom/viber/voip/contacts/ui/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/s;->a:Lcom/viber/voip/contacts/ui/r;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/s;->a:Lcom/viber/voip/contacts/ui/r;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/r;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->h(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Ljava/lang/String;)V

    .line 387
    return-void
.end method

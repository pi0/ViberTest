.class Lcom/viber/voip/contacts/ui/h;
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
    .line 933
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/h;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/h;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->n(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Lcom/viber/voip/contacts/ui/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/ui/ac;->e()V

    .line 937
    return-void
.end method

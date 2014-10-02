.class Lcom/viber/voip/contacts/ui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/y;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 925
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/g;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/g;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->n(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Lcom/viber/voip/contacts/ui/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/ui/ac;->e()V

    .line 930
    return-void
.end method

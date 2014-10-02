.class Lcom/viber/voip/contacts/ui/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/ContactsFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/ContactsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bf;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bf;->a:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onActivitySearchRequested()Z

    .line 151
    return-void
.end method

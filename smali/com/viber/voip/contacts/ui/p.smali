.class Lcom/viber/voip/contacts/ui/p;
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
    .line 1336
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/p;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/p;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->t(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)V

    .line 1340
    return-void
.end method

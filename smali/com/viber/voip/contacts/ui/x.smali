.class Lcom/viber/voip/contacts/ui/x;
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
    .line 513
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/x;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/x;->a:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    sget-object v1, Lcom/viber/voip/contacts/ui/ae;->b:Lcom/viber/voip/contacts/ui/ae;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Lcom/viber/voip/contacts/ui/ae;)V

    .line 517
    return-void
.end method

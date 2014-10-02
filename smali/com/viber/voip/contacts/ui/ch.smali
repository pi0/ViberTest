.class Lcom/viber/voip/contacts/ui/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/cb;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/cb;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ch;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 521
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ch;->a:Lcom/viber/voip/contacts/ui/cb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMemberAddedToGroup Timeout groupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ch;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-static {v2}, Lcom/viber/voip/contacts/ui/cb;->a(Lcom/viber/voip/contacts/ui/cb;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/cb;->a(Lcom/viber/voip/contacts/ui/cb;Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ch;->a:Lcom/viber/voip/contacts/ui/cb;

    const-string/jumbo v1, "add_participants_dialog"

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/cb;->b(Lcom/viber/voip/contacts/ui/cb;Ljava/lang/String;)V

    .line 523
    return-void
.end method

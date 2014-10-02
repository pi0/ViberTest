.class Lcom/viber/voip/messages/conversation/ui/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/bv;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bw;->a:Lcom/viber/voip/messages/conversation/ui/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/bw;->a:Lcom/viber/voip/messages/conversation/ui/bv;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ui/bv;->a(Lcom/viber/voip/messages/conversation/ui/bv;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->a(Ljava/util/Set;ZLcom/viber/voip/messages/controller/aa;)V

    .line 218
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bw;->a:Lcom/viber/voip/messages/conversation/ui/bv;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/bv;->b(Lcom/viber/voip/messages/conversation/ui/bv;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bw;->a:Lcom/viber/voip/messages/conversation/ui/bv;

    invoke-static {v0, v3}, Lcom/viber/voip/messages/conversation/ui/bv;->a(Lcom/viber/voip/messages/conversation/ui/bv;Lcom/actionbarsherlock/view/ActionMode;)Lcom/actionbarsherlock/view/ActionMode;

    .line 220
    return-void
.end method

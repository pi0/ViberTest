.class Lcom/viber/voip/messages/ui/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/do;

.field final synthetic b:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;

.field final synthetic c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;Lcom/viber/voip/messages/ui/do;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/viber/voip/messages/ui/dg;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/dg;->a:Lcom/viber/voip/messages/ui/do;

    iput-object p3, p0, Lcom/viber/voip/messages/ui/dg;->b:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dg;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d()V

    .line 197
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dg;->a:Lcom/viber/voip/messages/ui/do;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/do;->a()V

    .line 198
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dg;->b:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;

    iget-boolean v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/dg;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string/jumbo v0, "MessagesFragmentModeManager doShowConfirmDeleteDialog"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dg;->c:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->u()V

    .line 202
    :cond_0
    return-void
.end method

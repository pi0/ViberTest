.class Lcom/viber/voip/messages/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/do;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/messages/ui/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/viber/voip/messages/ui/c;->b:Lcom/viber/voip/messages/ui/a;

    iput-boolean p2, p0, Lcom/viber/voip/messages/ui/c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/c;->a:Z

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/viber/voip/messages/ui/c;->b:Lcom/viber/voip/messages/ui/a;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/a;->a(Lcom/viber/voip/messages/ui/a;)Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c()V

    .line 169
    :cond_0
    return-void
.end method

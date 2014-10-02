.class Lcom/viber/voip/messages/ui/ds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/messages/ui/ParticipantsCallChooser;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/ParticipantsCallChooser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ds;->b:Lcom/viber/voip/messages/ui/ParticipantsCallChooser;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/ds;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    const-string/jumbo v0, "tel"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ds;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ds;->b:Lcom/viber/voip/messages/ui/ParticipantsCallChooser;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.CALL"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

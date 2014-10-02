.class public Lcom/viber/voip/PreConversationActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 17
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStart()V

    .line 19
    invoke-virtual {p0}, Lcom/viber/voip/PreConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 21
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CONVERSATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 23
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v1}, Lcom/viber/voip/PreConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 26
    invoke-virtual {p0}, Lcom/viber/voip/PreConversationActivity;->finish()V

    .line 27
    return-void
.end method

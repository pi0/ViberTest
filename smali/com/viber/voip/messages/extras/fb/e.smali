.class Lcom/viber/voip/messages/extras/fb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;Landroid/content/Intent;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/e;->c:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/e;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/viber/voip/messages/extras/fb/e;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/e;->a:Landroid/content/Intent;

    const-string/jumbo v1, "msg_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/e;->a:Landroid/content/Intent;

    const-string/jumbo v1, "msg_body"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/e;->a:Landroid/content/Intent;

    const-string/jumbo v1, "msg_mime_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/e;->a:Landroid/content/Intent;

    const-string/jumbo v1, "msg_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 147
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/e;->c:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;->a(Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;)Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/e;->c:Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    iget-object v7, p0, Lcom/viber/voip/messages/extras/fb/e;->b:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

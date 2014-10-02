.class Lcom/viber/voip/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/service/i;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/viber/voip/cl;->d:Lcom/viber/voip/SystemDialogActivity;

    iput-object p2, p0, Lcom/viber/voip/cl;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/cl;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/voip/cl;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const-wide/16 v1, 0x0

    const/4 v7, 0x1

    .line 910
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call"

    iget-object v3, p0, Lcom/viber/voip/cl;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 911
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->v:Lcom/viber/voip/a/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/g;->i(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 912
    iget-object v0, p0, Lcom/viber/voip/cl;->d:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/cl;->b:Ljava/lang/String;

    sget-object v2, Lcom/viber/voip/a/a;->C:Lcom/viber/voip/a/k;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/gw;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/a/k;)V

    .line 913
    iget-object v0, p0, Lcom/viber/voip/cl;->d:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_message"

    iget-object v3, p0, Lcom/viber/voip/cl;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 915
    iget-object v0, p0, Lcom/viber/voip/cl;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/voip/cl;->c:Ljava/lang/String;

    const/4 v6, 0x0

    move-wide v3, v1

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 916
    const-string/jumbo v1, "com.viber.voip.action.PRE_CONVERSATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    const-string/jumbo v1, "send_1to1"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 918
    iget-object v1, p0, Lcom/viber/voip/cl;->d:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/SystemDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 919
    iget-object v0, p0, Lcom/viber/voip/cl;->d:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    goto :goto_0

    .line 920
    :cond_2
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_none_viber"

    iget-object v1, p0, Lcom/viber/voip/cl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_viber"

    iget-object v1, p0, Lcom/viber/voip/cl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    :cond_3
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->v:Lcom/viber/voip/a/g;

    invoke-virtual {v1, v7}, Lcom/viber/voip/a/g;->i(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 923
    iget-object v0, p0, Lcom/viber/voip/cl;->d:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/cl;->b:Ljava/lang/String;

    sget-object v2, Lcom/viber/voip/a/a;->C:Lcom/viber/voip/a/k;

    invoke-static {v0, v1, v7, v2}, Lcom/viber/voip/util/gw;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/viber/voip/a/k;)V

    .line 924
    iget-object v0, p0, Lcom/viber/voip/cl;->d:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    goto :goto_0
.end method

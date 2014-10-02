.class Lcom/viber/voip/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

.field final synthetic c:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;JLcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/viber/voip/cs;->c:Lcom/viber/voip/SystemDialogActivity;

    iput-wide p2, p0, Lcom/viber/voip/cs;->a:J

    iput-object p4, p0, Lcom/viber/voip/cs;->b:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1153
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "311"

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Retry"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 1157
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    .line 1158
    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/cs;->a:J

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->b(J)V

    .line 1160
    iget-object v0, p0, Lcom/viber/voip/cs;->b:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/viber/voip/cs;->b:Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationType()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/j;->a(JI)Landroid/content/Intent;

    move-result-object v0

    .line 1161
    iget-object v1, p0, Lcom/viber/voip/cs;->c:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v1, p1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/DialogInterface;)V

    .line 1162
    iget-object v1, p0, Lcom/viber/voip/cs;->c:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/SystemDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 1163
    return-void
.end method

.class Lcom/viber/voip/messages/conversation/publicgroup/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/v;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    iput-wide p2, p0, Lcom/viber/voip/messages/conversation/publicgroup/v;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/v;->a:J

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/j;->a(JI)Landroid/content/Intent;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/v;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 456
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/v;->b:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->finish()V

    .line 457
    return-void
.end method

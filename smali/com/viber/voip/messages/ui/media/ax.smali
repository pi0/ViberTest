.class Lcom/viber/voip/messages/ui/media/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ax;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 642
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ax;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->f(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/conversation/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->a(JLcom/viber/voip/messages/controller/aa;)V

    .line 643
    return-void
.end method

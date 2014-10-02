.class Lcom/viber/voip/messages/ui/media/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/af;->a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/af;->a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Send btn clicked! needSendAfterImageReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/af;->a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/af;->a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->b(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V

    .line 149
    return-void
.end method

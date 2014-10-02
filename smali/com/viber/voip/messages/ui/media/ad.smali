.class Lcom/viber/voip/messages/ui/media/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ad;->a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ad;->a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keyboard\'s send btn was clicked! needSendAfterImageReady = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/ad;->a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ad;->a:Lcom/viber/voip/messages/ui/media/SendMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->b(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V

    .line 101
    const/4 v0, 0x1

    .line 103
    :cond_0
    return v0
.end method

.class Lcom/viber/voip/messages/conversation/ui/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ba;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/conversation/ui/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bt;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/conversation/ui/ba;Lcom/viber/voip/messages/conversation/ui/bb;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/bt;-><init>(Lcom/viber/voip/messages/conversation/ui/ba;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 819
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bt;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->e(Lcom/viber/voip/messages/conversation/ui/ba;)Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->d()Landroid/net/Uri;

    .line 820
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 824
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bt;->a:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->e(Lcom/viber/voip/messages/conversation/ui/ba;)Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->d()Landroid/net/Uri;

    .line 825
    return-void
.end method

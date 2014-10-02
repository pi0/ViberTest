.class Lcom/viber/voip/messages/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/viber/voip/messages/ui/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/k;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/viber/voip/messages/ui/m;->b:Lcom/viber/voip/messages/ui/k;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/m;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Lcom/viber/voip/messages/ui/m;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/viber/voip/messages/ui/m;->b:Lcom/viber/voip/messages/ui/k;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/m;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/k;->a(Lcom/viber/voip/messages/ui/k;Landroid/widget/EditText;)V

    .line 217
    iget-object v0, p0, Lcom/viber/voip/messages/ui/m;->b:Lcom/viber/voip/messages/ui/k;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/k;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/m;->b:Lcom/viber/voip/messages/ui/k;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/k;->b(Lcom/viber/voip/messages/ui/k;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    :cond_0
    return-void
.end method

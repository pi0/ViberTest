.class Lcom/viber/voip/messages/conversation/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ax;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/bg;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 331
    if-nez p2, :cond_0

    .line 332
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bg;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/aa;->append(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/bg;->a:Lcom/viber/voip/messages/conversation/ax;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/bg;->a:Lcom/viber/voip/messages/conversation/ax;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;)Lcom/viber/voip/widget/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;Landroid/text/Spannable;)V

    .line 335
    :cond_0
    return-void
.end method

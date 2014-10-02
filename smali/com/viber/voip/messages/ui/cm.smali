.class Lcom/viber/voip/messages/ui/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessageComposerView;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/viber/voip/messages/ui/cm;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cm;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->f(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/a/m;->c()Lcom/viber/voip/a/x;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/viber/voip/messages/ui/cm;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->g(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/LocationEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/LocationEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/x;->a(Ljava/lang/Long;)Lcom/viber/voip/a/x;

    .line 298
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 299
    iget-object v0, p0, Lcom/viber/voip/messages/ui/cm;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->h(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    .line 300
    return-void
.end method

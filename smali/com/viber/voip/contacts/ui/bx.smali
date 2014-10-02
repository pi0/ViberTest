.class Lcom/viber/voip/contacts/ui/bx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/bw;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bx;->a:Lcom/viber/voip/contacts/ui/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bx;->a:Lcom/viber/voip/contacts/ui/bw;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/bw;->a(Lcom/viber/voip/contacts/ui/bw;)Lcom/viber/voip/ui/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bx;->a:Lcom/viber/voip/contacts/ui/bw;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/bw;->b(Lcom/viber/voip/contacts/ui/bw;)Lcom/viber/voip/ui/ab;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/ui/ab;->a(Ljava/lang/String;)Z

    .line 33
    :cond_0
    return-void
.end method

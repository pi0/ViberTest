.class Lcom/viber/voip/phone/a/d;
.super Lcom/viber/voip/phone/ab;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/viber/voip/phone/a/c;


# direct methods
.method public constructor <init>(Lcom/viber/voip/phone/a/c;Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/viber/voip/phone/a/d;->c:Lcom/viber/voip/phone/a/c;

    .line 87
    invoke-direct {p0, p2, p3}, Lcom/viber/voip/phone/ab;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    .line 88
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 3
    .parameter

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/viber/voip/phone/a/d;->b:Lcom/viber/voip/phone/PhoneActivity;

    const-class v2, Lcom/viber/voip/phone/PhoneActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string/jumbo v1, "extra_screen_factory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const/high16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Lcom/viber/voip/phone/a/d;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v1}, Lcom/viber/voip/phone/PhoneActivity;->finish()V

    .line 105
    iget-object v1, p0, Lcom/viber/voip/phone/a/d;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/phone/PhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 97
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.class Lcom/viber/voip/phone/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/b/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/b/c;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/viber/voip/phone/b/b/d;->a:Lcom/viber/voip/phone/b/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/d;->a:Lcom/viber/voip/phone/b/b/c;

    invoke-static {v0}, Lcom/viber/voip/phone/b/b/c;->a(Lcom/viber/voip/phone/b/b/c;)Lcom/viber/voip/phone/call/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/d;->a:Lcom/viber/voip/phone/b/b/c;

    invoke-static {v0}, Lcom/viber/voip/phone/b/b/c;->a(Lcom/viber/voip/phone/b/b/c;)Lcom/viber/voip/phone/call/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/viber/voip/phone/b/b/d;->a:Lcom/viber/voip/phone/b/b/c;

    invoke-static {v1}, Lcom/viber/voip/phone/b/b/c;->b(Lcom/viber/voip/phone/b/b/c;)Lcom/viber/jni/secure/SecureCallsController;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->h()I

    move-result v2

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/n;->i()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/viber/jni/secure/SecureCallsController;->handleSecureCallVerified(I[B)V

    .line 76
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/d;->a:Lcom/viber/voip/phone/b/b/c;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/b/c;->dismiss()V

    .line 79
    :cond_0
    return-void
.end method

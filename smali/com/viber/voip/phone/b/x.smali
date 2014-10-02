.class Lcom/viber/voip/phone/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/u;


# direct methods
.method private constructor <init>(Lcom/viber/voip/phone/b/u;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/viber/voip/phone/b/x;->a:Lcom/viber/voip/phone/b/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/phone/b/u;Lcom/viber/voip/phone/b/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/b/x;-><init>(Lcom/viber/voip/phone/b/u;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/viber/voip/phone/b/x;->a:Lcom/viber/voip/phone/b/u;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/u;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->a()V

    .line 150
    iget-object v0, p0, Lcom/viber/voip/phone/b/x;->a:Lcom/viber/voip/phone/b/u;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/u;->d()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleHangup()V

    .line 151
    iget-object v0, p0, Lcom/viber/voip/phone/b/x;->a:Lcom/viber/voip/phone/b/u;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/u;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a(Lcom/viber/voip/phone/call/k;)Z

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/phone/PhoneActivity;->d(Z)V

    .line 158
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/x;->a:Lcom/viber/voip/phone/b/u;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/u;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 161
    :cond_2
    return-void
.end method

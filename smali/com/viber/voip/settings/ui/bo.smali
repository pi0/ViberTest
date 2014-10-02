.class Lcom/viber/voip/settings/ui/bo;
.super Lcom/viber/voip/messages/extras/fb/ad;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/bn;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bo;->a:Lcom/viber/voip/settings/ui/bn;

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizationCanceled()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bo;->a:Lcom/viber/voip/settings/ui/bn;

    iget-object v0, v0, Lcom/viber/voip/settings/ui/bn;->b:Lcom/viber/voip/settings/ui/bj;

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bj;->b(Lcom/viber/voip/settings/ui/bj;)V

    .line 166
    return-void
.end method

.method public onAuthorizationSuccess(Z)V
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bo;->a:Lcom/viber/voip/settings/ui/bn;

    iget-object v0, v0, Lcom/viber/voip/settings/ui/bn;->b:Lcom/viber/voip/settings/ui/bj;

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bj;->b(Lcom/viber/voip/settings/ui/bj;)V

    .line 161
    return-void
.end method

.method public onFacebookProfileStored()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bo;->a:Lcom/viber/voip/settings/ui/bn;

    iget-object v0, v0, Lcom/viber/voip/settings/ui/bn;->b:Lcom/viber/voip/settings/ui/bj;

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bj;->b(Lcom/viber/voip/settings/ui/bj;)V

    .line 171
    return-void
.end method

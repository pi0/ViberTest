.class Lcom/viber/voip/phone/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/al;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/al;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/viber/voip/phone/am;->a:Lcom/viber/voip/phone/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/viber/voip/phone/am;->a:Lcom/viber/voip/phone/al;

    invoke-static {v0}, Lcom/viber/voip/phone/al;->a(Lcom/viber/voip/phone/al;)Lcom/viber/voip/phone/VideoCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/VideoCallActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "tag_secure_call_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/phone/b/b/c;

    .line 264
    if-nez v0, :cond_0

    .line 265
    new-instance v0, Lcom/viber/voip/phone/b/b/c;

    invoke-direct {v0}, Lcom/viber/voip/phone/b/b/c;-><init>()V

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/phone/am;->a:Lcom/viber/voip/phone/al;

    invoke-static {v1}, Lcom/viber/voip/phone/al;->a(Lcom/viber/voip/phone/al;)Lcom/viber/voip/phone/VideoCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/VideoCallActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "tag_secure_call_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/phone/b/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 268
    return-void
.end method

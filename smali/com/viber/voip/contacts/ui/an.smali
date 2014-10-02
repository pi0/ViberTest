.class Lcom/viber/voip/contacts/ui/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ai;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/b/e;

.field final synthetic b:Lcom/viber/voip/block/n;

.field final synthetic c:Lcom/viber/voip/contacts/ui/al;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/al;Lcom/viber/voip/contacts/b/e;Lcom/viber/voip/block/n;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/an;->c:Lcom/viber/voip/contacts/ui/al;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/an;->a:Lcom/viber/voip/contacts/b/e;

    iput-object p3, p0, Lcom/viber/voip/contacts/ui/an;->b:Lcom/viber/voip/block/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p2, p2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v1

    .line 203
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/an;->c:Lcom/viber/voip/contacts/ui/al;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/al;->a(Lcom/viber/voip/contacts/ui/al;)Lcom/viber/voip/contacts/ui/cb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/cb;->k()V

    .line 209
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/an;->c:Lcom/viber/voip/contacts/ui/al;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/an;->a:Lcom/viber/voip/contacts/b/e;

    invoke-interface {v2}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/an;->b:Lcom/viber/voip/block/n;

    invoke-static {v1, v2, v0, v3, v4}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/viber/voip/block/n;)V

    goto :goto_0
.end method

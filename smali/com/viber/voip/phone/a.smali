.class Lcom/viber/voip/phone/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/b/b;

.field final synthetic b:Lcom/viber/voip/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/CallCard;Lcom/viber/voip/contacts/b/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/viber/voip/phone/a;->b:Lcom/viber/voip/phone/CallCard;

    iput-object p2, p0, Lcom/viber/voip/phone/a;->a:Lcom/viber/voip/contacts/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f02006f

    .line 408
    iget-object v0, p0, Lcom/viber/voip/phone/a;->b:Lcom/viber/voip/phone/CallCard;

    invoke-virtual {v0}, Lcom/viber/voip/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v1

    .line 410
    new-instance v2, Lcom/viber/voip/util/b/z;

    invoke-direct {v2}, Lcom/viber/voip/util/b/z;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/util/b/z;->a(Z)Lcom/viber/voip/util/b/z;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    .line 416
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/voip/phone/a;->a:Lcom/viber/voip/contacts/b/b;

    invoke-interface {v3}, Lcom/viber/voip/contacts/b/b;->b()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/phone/a;->b:Lcom/viber/voip/phone/CallCard;

    invoke-static {v4}, Lcom/viber/voip/phone/CallCard;->a(Lcom/viber/voip/phone/CallCard;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/viber/voip/util/b/w;->a(Lcom/viber/voip/contacts/b/d;Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 417
    return-void
.end method

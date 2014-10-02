.class Lcom/viber/voip/c;
.super Lcom/viber/voip/messages/extras/twitter/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/twitter/l;

.field final synthetic b:Lcom/viber/voip/AboutActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/AboutActivity;Lcom/viber/voip/messages/extras/twitter/l;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/viber/voip/c;->b:Lcom/viber/voip/AboutActivity;

    iput-object p2, p0, Lcom/viber/voip/c;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/twitter/t;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthComplete()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/viber/voip/c;->a:Lcom/viber/voip/messages/extras/twitter/l;

    iget-object v1, p0, Lcom/viber/voip/c;->b:Lcom/viber/voip/AboutActivity;

    iget-object v2, p0, Lcom/viber/voip/c;->b:Lcom/viber/voip/AboutActivity;

    const v3, 0x7f0c04e0

    invoke-virtual {v2, v3}, Lcom/viber/voip/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/extras/twitter/l;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 164
    return-void
.end method

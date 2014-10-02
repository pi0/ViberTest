.class Lcom/viber/voip/api/a;
.super Lcom/viber/voip/e/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/api/ViberApi;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/ViberApi;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/viber/voip/api/a;->a:Lcom/viber/voip/api/ViberApi;

    invoke-direct {p0}, Lcom/viber/voip/e/q;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.API_INCOMING_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v1, "phone_number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/viber/voip/api/a;->a:Lcom/viber/voip/api/ViberApi;

    invoke-static {v1, v0}, Lcom/viber/voip/api/ViberApi;->a(Lcom/viber/voip/api/ViberApi;Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.API_OUTGOING_CALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v1, "phone_number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/viber/voip/api/a;->a:Lcom/viber/voip/api/ViberApi;

    invoke-static {v1, v0}, Lcom/viber/voip/api/ViberApi;->a(Lcom/viber/voip/api/ViberApi;Landroid/content/Intent;)V

    .line 153
    return-void
.end method

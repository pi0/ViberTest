.class final enum Lcom/viber/voip/contacts/ui/af;
.super Lcom/viber/voip/contacts/ui/ae;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/contacts/ui/ae;-><init>(Ljava/lang/String;ILcom/viber/voip/contacts/ui/a;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    .line 1118
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL"

    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1119
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1120
    return-object v0
.end method

.class Lcom/viber/voip/settings/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/a;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/viber/voip/settings/ui/c;->a:Lcom/viber/voip/settings/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/viber/voip/settings/ui/c;->a:Lcom/viber/voip/settings/ui/a;

    invoke-static {v0}, Lcom/viber/voip/settings/ui/a;->b(Lcom/viber/voip/settings/ui/a;)Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/viber/voip/settings/ui/d;

    invoke-direct {v2, p0}, Lcom/viber/voip/settings/ui/d;-><init>(Lcom/viber/voip/settings/ui/c;)V

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->a(ZLcom/viber/voip/messages/controller/z;)V

    .line 181
    return-void
.end method

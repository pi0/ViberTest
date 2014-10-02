.class Lcom/viber/voip/messages/conversation/ui/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/cj;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/cj;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/cl;->a:Lcom/viber/voip/messages/conversation/ui/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 724
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "500"

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Ok"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 727
    return-void
.end method
